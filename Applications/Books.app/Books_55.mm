double sub_1006C1888()
{
  sub_1004AC424(0);
  swift_getObjectType();
  sub_1007A1514();
  swift_getObjectType();
  sub_10079F9C4();
  if (swift_weakLoadStrong())
  {
    sub_10057AD64(0);
  }

  return result;
}

void sub_1006C1934(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v8 = sub_100796CF4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  v16 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v16 - 8);
  v18 = (&v76 - v17);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v79 = v10;
    v80 = a2;
    v83 = v18;
    v20 = *(Strong + 168);

    v81 = v4;
    v21 = *(v4 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService);
    v22 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v21 + v22, v84);
    sub_10000E3E8(v84, v85);
    if (sub_10079EC84())
    {
      v82 = v20;
      v23 = *(v20 + 16);
      v24 = sub_1007A2744();
      v25 = *(v24 - 8);
      v26 = *(v25 + 56);
      v27 = v83;
      v76 = v25 + 56;
      v77 = v26;
      v26(v83, 1, 1, v24);
      v28 = sub_1007A26F4();
      swift_retain_n();
      v78 = v28;
      v29 = sub_1007A26E4();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = &protocol witness table for MainActor;
      v30[4] = v23;
      sub_1003457A0(0, 0, v27, &unk_10083E258, v30);

      if (a1)
      {
        swift_getObjectType();
        if (sub_10079F4F4() == 2)
        {
          goto LABEL_20;
        }
      }

      sub_1007A2154();
      v41 = v79 + 16;
      (*(v79 + 16))(v12, v15, v9);
      sub_100796C94();
      v42 = (v41 - 8);
      if (v80)
      {
        v43 = sub_1007A22B4();
        v45 = v44;
        (*v42)(v15, v9);
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v47 = v83;
        v48 = *(v82 + 16);
        v77(v83, 1, 1, v24);
        swift_retain_n();

        v49 = sub_1007A26E4();
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = &protocol witness table for MainActor;
        *(v50 + 32) = v48;
        *(v50 + 40) = v43;
        *(v50 + 48) = v45;
        *(v50 + 56) = xmmword_100816EB0;
        *(v50 + 72) = 1;
        *(v50 + 80) = sub_1006C5600;
        *(v50 + 88) = v46;
        sub_1003457A0(0, 0, v47, &unk_10083E268, v50);

LABEL_26:

        goto LABEL_27;
      }

      v57 = sub_1007A22B4();
      v59 = v58;
      (*v42)(v15, v9);
      v60 = v83;
      v61 = *(v82 + 16);
      v77(v83, 1, 1, v24);
      swift_retain_n();

      v62 = sub_1007A26E4();
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = &protocol witness table for MainActor;
      *(v63 + 32) = v61;
      *(v63 + 40) = v57;
      *(v63 + 48) = v59;
      *(v63 + 56) = 0;
      *(v63 + 64) = 0;
      *(v63 + 72) = 0;
      *(v63 + 80) = 0;
      *(v63 + 88) = 0;
      sub_1003457A0(0, 0, v60, &unk_10083E260, v63);

LABEL_25:

      goto LABEL_26;
    }

    if (a1 == 2 && a4)
    {
      v35 = *(v20 + 16);
      v36 = sub_1007A2744();
      v37 = v83;
      (*(*(v36 - 8) + 56))(v83, 1, 1, v36);
      sub_1007A26F4();
      swift_retain_n();

      v38 = sub_1007A26E4();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = &protocol witness table for MainActor;
      v40 = v82;
      *(v39 + 32) = v35;
      *(v39 + 40) = v40;
      *(v39 + 48) = a4;
      *(v39 + 56) = xmmword_10083D730;
      *(v39 + 72) = 1;
      *(v39 + 74) = v86;
      *(v39 + 78) = v87;
      *(v39 + 80) = 0;
      *(v39 + 88) = 0;
      sub_1003457A0(0, 0, v37, &unk_10083E250, v39);

LABEL_20:

LABEL_27:
      sub_1000074E0(v84);
      return;
    }

    v51 = *(v20 + 16);
    v52 = sub_1007A2744();
    v53 = *(*(v52 - 8) + 56);
    v54 = v83;
    v53(v83, 1, 1, v52);
    sub_1007A26F4();
    swift_retain_n();
    v55 = sub_1007A26E4();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = &protocol witness table for MainActor;
    v56[4] = v51;
    sub_1003457A0(0, 0, v54, &unk_10083E238, v56);

    if (a1)
    {
      swift_getObjectType();
      if (sub_10079F4F4() == 2)
      {
        goto LABEL_20;
      }

      sub_10000E3E8(v84, v85);
      v71 = sub_10079EC64();
      v73 = v72;
      v74 = *(v20 + 16);
      v54 = v83;
      v53(v83, 1, 1, v52);
      swift_retain_n();

      v75 = sub_1007A26E4();
      v69 = swift_allocObject();
      *(v69 + 16) = v75;
      *(v69 + 24) = &protocol witness table for MainActor;
      *(v69 + 32) = v74;
      *(v69 + 40) = v71;
      *(v69 + 48) = v73;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      *(v69 + 72) = 0;
      *(v69 + 74) = v86;
      *(v69 + 78) = v87;
      *(v69 + 80) = 0;
      *(v69 + 88) = 0;
      v70 = &unk_10083E240;
    }

    else
    {
      sub_10000E3E8(v84, v85);
      v64 = sub_10079EC64();
      v66 = v65;
      v67 = *(v20 + 16);
      v53(v54, 1, 1, v52);
      swift_retain_n();

      v68 = sub_1007A26E4();
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = &protocol witness table for MainActor;
      *(v69 + 32) = v67;
      *(v69 + 40) = v64;
      *(v69 + 48) = v66;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      *(v69 + 72) = 0;
      *(v69 + 74) = v86;
      *(v69 + 78) = v87;
      *(v69 + 80) = 0;
      *(v69 + 88) = 0;
      v70 = &unk_10083E248;
    }

    sub_1003457A0(0, 0, v54, v70, v69);

    goto LABEL_25;
  }

  if (qword_100AD1AE0 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AF23F0);
  v83 = sub_10079ACC4();
  v32 = sub_1007A29B4();
  if (os_log_type_enabled(v83, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v83, v32, "Unable to update persistent infobar message because there is no infobar module", v33, 2u);
  }

  v34 = v83;
}

id sub_1006C2428(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v64 = a3;
  v63 = sub_10079F7E4();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007969B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  sub_1006C10D4(&qword_100AF2680, type metadata accessor for BookReaderPresenter, &unk_10083D958);
  v62 = a2;
  sub_100796944(v19);
  v21 = v20;
  v22 = BEDoesURLPointToUSDZFile();

  if (v22)
  {
    v61 = v8;
    v23 = v63;
    v24 = [objc_allocWithZone(BKARQuicklookViewController) init];
    sub_1007968E4();
    sub_100796904();
    v25 = *(v10 + 8);
    v25(v18, v9);
    sub_100796944(v26);
    v28 = v27;
    v25(v15, v9);
    v29 = BEURLHandlerAssetInfoPathForBookURL();

    if (v29)
    {
      sub_100796974();

      sub_100796944(v30);
      v29 = v31;
      v25(v12, v9);
    }

    v32 = v65;
    v33 = v61;
    [v24 setARModelDataURL:{v29, v60}];

    [v24 setDataSource:v24];
    (*(v32 + 104))(v33, enum case for BookContentUserInterfaceStyle.dark(_:), v23);
    v34 = sub_10079F7D4();
    (*(v32 + 8))(v33, v23);
    if (v34)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v24 setOverrideUserInterfaceStyle:v35];
  }

  else
  {
    v36 = sub_1007A0CA4();
    v37 = objc_allocWithZone(v36);
    v38 = a1;
    v39 = sub_1007A0C94();
    v40 = v61;
    sub_100009864(v61, v69);
    v67 = v36;
    v68 = &protocol witness table for ExpandedContentRouter;
    v66 = v39;
    v41 = objc_allocWithZone(sub_1007A1334());
    v42 = v39;
    v43 = sub_1007A1324();
    v44 = [objc_allocWithZone(BKExpandedContentResource) init];
    sub_100796944(v45);
    v47 = v46;
    [v44 setResource:v46];

    sub_10000E3E8(v40, *(v40 + 3));
    v48 = sub_10079EC14();
    [v44 setCacheItem:v48];

    v49 = v65;
    v50 = v63;
    (*(v65 + 104))(v8, enum case for BookContentUserInterfaceStyle.dark(_:), v63);
    LOBYTE(v48) = sub_10079F7D4();
    (*(v49 + 8))(v8, v50);
    if (v48)
    {
      v51 = 5;
    }

    else
    {
      v51 = 2;
    }

    v52 = [objc_opt_self() themeForEPUBTheme:v51];
    v53 = [objc_allocWithZone(BKExpandedWebContentViewController2) initWithResource:v44];
    v24 = v53;
    if (v53)
    {
      v54 = v40;
      if (v60 == 1)
      {
        [v53 showInvertedImage];
      }

      v55 = v43;
      v56 = v24;
      [v56 setPresenter:v55];
      [v56 setDelegate:v55];

      sub_10000E3E8(v54, *(v54 + 3));
      [v56 setAllowsRemoteInspection:sub_10079EC54() & 1];
      v57 = v56;
      v58 = v52;
      [v57 setTheme:v58];
    }

    else
    {
    }
  }

  return v24;
}

void sub_1006C29EC(uint64_t a1, unint64_t a2)
{
  v2 = sub_100696E20(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005672BC(v4, 1, 0, 0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1006C2AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B9314(a1, v4, v5, v6);
}

uint64_t sub_1006C2B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B90B0(a1, v4, v5, v6);
}

uint64_t sub_1006C2C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B8E80(a1, v4, v5, v6);
}

uint64_t sub_1006C2CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B8B38(a1, v4, v5, v6);
}

uint64_t sub_1006C2DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1006B8984(a1, v4, v5, v6);
}

void sub_1006C2E54(void (*a1)(char *, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, _OWORD *a4)
{
  v76 = a4;
  v77 = a1;
  v78 = a2;
  v6 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v6 - 8);
  v75 = &v69 - v7;
  v8 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v8 - 8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v69 - v11;
  __chkstk_darwin(v12);
  v73 = &v69 - v13;
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = sub_1007969B4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v69 - v28;
  __chkstk_darwin(v30);
  v80 = &v69 - v31;
  v32 = sub_10079F7E4();
  v81 = *(v32 - 8);
  v82 = v32;
  __chkstk_darwin(v32);
  v71 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v79 = &v69 - v35;
  v74 = v4;
  sub_1006B6B38(&v69 - v35);
  sub_1000077D8(a3, v16, &unk_100AD5AC0, &unk_100811090);
  v36 = *(v24 + 48);
  if (v36(v16, 1, v23) == 1)
  {
    sub_100007840(v16, &unk_100AD5AC0, &unk_100811090);
    v37 = 1;
  }

  else
  {
    sub_1007968E4();
    (*(v24 + 8))(v16, v23);
    v37 = 0;
  }

  v38 = *(v24 + 56);
  v38(v19, v37, 1, v23);
  sub_100796994();
  sub_100007840(v19, &unk_100AD5AC0, &unk_100811090);
  if (v36(v22, 1, v23) == 1)
  {
    (*(v81 + 8))(v79, v82);
    sub_100007840(v22, &unk_100AD5AC0, &unk_100811090);
  }

  else
  {
    v78 = v36;
    (*(v24 + 32))(v80, v22, v23);
    sub_1007968E4();
    sub_100796904();
    v39 = *(v24 + 8);
    v39(v29, v23);
    sub_100796944(v40);
    v42 = v41;
    v39(v26, v23);
    v43 = BEURLHandlerAssetInfoPathForBookURL();

    if (v43)
    {
      v44 = v70;
      sub_100796974();

      v45 = 0;
      v46 = v72;
    }

    else
    {
      v45 = 1;
      v46 = v72;
      v44 = v70;
    }

    v38(v44, v45, 1, v23);
    v47 = v73;
    sub_10020B3C8(v44, v73, &unk_100AD5AC0, &unk_100811090);
    v48 = [objc_allocWithZone(BKARQuicklookViewController) init];
    sub_1000077D8(v47, v46, &unk_100AD5AC0, &unk_100811090);
    v49 = v78(v46, 1, v23);
    v77 = v39;
    if (v49 == 1)
    {
      v51 = 0;
    }

    else
    {
      sub_100796944(v50);
      v51 = v52;
      v39(v46, v23);
    }

    [v48 setARModelDataURL:v51];

    [v48 setDataSource:v48];
    v54 = v81;
    v53 = v82;
    v55 = v71;
    (*(v81 + 104))(v71, enum case for BookContentUserInterfaceStyle.dark(_:), v82);
    v56 = v48;
    v57 = v79;
    v58 = sub_10079F7D4();
    v59 = *(v54 + 8);
    v59(v55, v53);
    if (v58)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    [v56 setOverrideUserInterfaceStyle:v60];

    sub_100007840(v47, &unk_100AD5AC0, &unk_100811090);
    v77(v80, v23);
    v59(v57, v53);
    v61 = sub_1007A2744();
    v62 = v75;
    (*(*(v61 - 8) + 56))(v75, 1, 1, v61);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();
    v64 = v56;

    v65 = sub_1007A26E4();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = &protocol witness table for MainActor;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    v67 = v76;
    v68 = v76[1];
    *(v66 + 48) = *v76;
    *(v66 + 64) = v68;
    *(v66 + 80) = *(v67 + 32);

    sub_1003457A0(0, 0, v62, &unk_10083DED0, v66);
  }
}

id sub_1006C35F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v61 = a6;
  v59 = a5;
  v63 = a4;
  v9 = sub_10079F7E4();
  v62 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_1007969B4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1006C10D4(&qword_100AF2680, type metadata accessor for BookReaderPresenter, &unk_10083D958);
  sub_1007969A4();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v58 = a1;
    (*(v16 + 32))(v18, v14, v15);
    sub_100796944(v19);
    v21 = v20;
    sub_10000E3E8(a7, a7[3]);
    v22 = sub_10079EC14();
    v23 = BEURLHandlerImageDataForiBooksURLUsingCacheItem();

    if (v23)
    {
      v24 = sub_1007969D4();
      v26 = v25;

      v27 = objc_allocWithZone(UIImage);
      sub_1003B1DE4(v24, v26);
      isa = sub_1007969C4().super.isa;
      v29 = [v27 initWithData:isa];

      sub_10000ADCC(v24, v26);
      if (!v29)
      {
        (*(v16 + 8))(v18, v15);
        sub_10000ADCC(v24, v26);
        return 0;
      }

      v57 = [objc_allocWithZone(BKExpandedContentResource) init];
      v54 = v29;
      [v57 setResource:v29];
      v55 = v24;
      v56 = v26;
      if (v61)
      {
        v30 = sub_1007A2214();
      }

      else
      {
        v30 = 0;
      }

      v31 = v57;
      [v57 setTitle:v30];

      v32 = v62;
      (*(v62 + 104))(v11, enum case for BookContentUserInterfaceStyle.dark(_:), v9);
      LODWORD(v63) = sub_10079F7D4();
      (*(v32 + 8))(v11, v9);
      v33 = sub_1007A0CA4();
      v34 = objc_allocWithZone(v33);
      v35 = v58;
      v36 = sub_1007A0C94();
      sub_100009864(a7, v67);
      v65 = v33;
      v66 = &protocol witness table for ExpandedContentRouter;
      v64 = v36;
      v37 = objc_allocWithZone(sub_1007A1334());
      v38 = v36;
      v39 = sub_1007A1324();
      v40 = [objc_allocWithZone(BKExpandedImageContentViewController) initWithResource:v31];
      if (v40)
      {
        if (v63)
        {
          v41 = 5;
        }

        else
        {
          v41 = 2;
        }

        v42 = objc_opt_self();
        v43 = v40;
        v44 = [v42 themeForEPUBTheme:v41];
        [v43 setTheme:v44];

        [v43 setPresenter:v39];
        v45 = v43;
        v46 = v39;
        [v45 setDelegate:v46];
      }

      sub_100796944(v47);
      v49 = v48;
      v50 = BEShouldInvertImageURL();

      if (!v50)
      {
        (*(v16 + 8))(v18, v15);
        sub_10000ADCC(v55, v56);

        return v40;
      }

      v51 = v55;
      if (v40)
      {
        [v40 showInvertedImage];

        sub_10000ADCC(v51, v56);
        (*(v16 + 8))(v18, v15);
        return v40;
      }

      sub_10000ADCC(v55, v56);
    }

    (*(v16 + 8))(v18, v15);
    return 0;
  }

  sub_100007840(v14, &unk_100AD5AC0, &unk_100811090);
  return 0;
}

void sub_1006C3C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9)
{
  v61 = a5;
  v62 = a4;
  v57[0] = a3;
  v60 = a2;
  v59 = a1;
  v14 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v14 - 8);
  v58 = v57 - v15;
  v16 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v16 - 8);
  v18 = v57 - v17;
  v65 = sub_10079F7E4();
  v19 = *(v65 - 8);
  __chkstk_darwin(v65);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v57 - v23;
  sub_1006B6B38(v57 - v23);
  v70 = 1;
  sub_1006C10D4(&qword_100AF2680, type metadata accessor for BookReaderPresenter, &unk_10083D958);
  v25 = sub_1007A0CA4();
  v26 = objc_allocWithZone(v25);
  v57[1] = v9;
  v27 = sub_1007A0C94();
  sub_100009864(a6, v69);
  v67 = v25;
  v68 = &protocol witness table for ExpandedContentRouter;
  v66 = v27;
  v28 = objc_allocWithZone(sub_1007A1334());
  v64 = v27;
  v63 = sub_1007A1324();
  v29 = objc_allocWithZone(BKExpandedContentResource);
  v30 = [v29 init];
  sub_10000E3E8(a6, a6[3]);
  v31 = sub_10079EC14();
  [v30 setCacheItem:v31];

  v32 = sub_1007A2214();
  [v30 setResource:v32];

  sub_1000077D8(v61, v18, &unk_100AD5AC0, &unk_100811090);
  v33 = sub_1007969B4();
  v34 = *(v33 - 8);
  v36 = 0;
  if ((*(v34 + 48))(v18, 1, v33) != 1)
  {
    sub_100796944(v35);
    v36 = v37;
    (*(v34 + 8))(v18, v33);
  }

  [v30 setSourceURL:v36];

  [v30 setContentSize:{a7, a8}];
  [v30 setZoomScale:a9];
  if (v62)
  {
    v38 = sub_1007A2214();
  }

  else
  {
    v38 = 0;
  }

  v39 = v65;
  [v30 setTitle:v38];

  (*(v19 + 104))(v21, enum case for BookContentUserInterfaceStyle.dark(_:), v39);
  v40 = sub_10079F7D4();
  v41 = *(v19 + 8);
  v41(v21, v39);
  v42 = [objc_allocWithZone(BKExpandedWebContentViewController2) initWithResource:v30];
  if (v42)
  {
    if (v40)
    {
      v43 = 5;
    }

    else
    {
      v43 = 2;
    }

    v44 = v42;
    v65 = v24;
    v45 = v63;
    [v42 setPresenter:v63];
    [v44 setDelegate:v45];
    sub_10000E3E8(a6, a6[3]);
    v46 = v39;
    v47 = v44;
    [v47 setAllowsRemoteInspection:sub_10079EC54() & 1];

    v48 = objc_opt_self();
    v49 = v47;
    v50 = [v48 themeForEPUBTheme:v43];
    [v49 setTheme:v50];

    v41(v65, v46);
    v51 = sub_1007A2744();
    v52 = v58;
    (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007A26F4();
    v54 = v49;

    v55 = sub_1007A26E4();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = &protocol witness table for MainActor;
    *(v56 + 32) = v53;
    *(v56 + 40) = v54;
    *(v56 + 48) = 0u;
    *(v56 + 64) = 0u;
    *(v56 + 80) = v70;

    sub_1003457A0(0, 0, v52, &unk_10083DE40, v56);
  }

  else
  {

    v41(v24, v39);
  }
}

void sub_1006C42B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v44 = sub_1007A1D04();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001F1160(&unk_100ADB4D0, &qword_1008188B0);
  v9 = *(v8 - 8);
  v47 = *(v9 + 64);
  __chkstk_darwin(v8);
  v48 = &v41 - v10;
  v11 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v11 - 8);
  v46 = &v41 - v12;
  v13 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v41 - v20);
  if (a2 != 3)
  {
    goto LABEL_8;
  }

  v43 = v15;
  if (!swift_weakLoadStrong())
  {
    v26 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v3;
  sub_10079B9A4(v21);

  v3 = v42;

  v22 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
LABEL_6:
    sub_100007840(v21, &qword_100ADB1C0, &qword_10082A4E0);
    v27 = sub_10079FFA4();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v28 = OBJC_IVAR____TtC5Books19BookReaderPresenter_searchHighlightID;
    swift_beginAccess();
    v29 = v43;
    sub_1000077D8(v3 + v28, v43, &qword_100AF2650, &qword_10083DDF0);
    swift_beginAccess();
    sub_1006C4A34(v18, v3 + v28);
    swift_endAccess();
    sub_1006A27B4(v29);
    sub_100007840(v29, &qword_100AF2650, &qword_10083DDF0);
    v25 = v18;
    v23 = &qword_100AF2650;
    v24 = &qword_10083DDF0;
    goto LABEL_7;
  }

  v23 = &qword_100ADB1C0;
  v24 = &qword_10082A4E0;
  v25 = v21;
LABEL_7:
  sub_100007840(v25, v23, v24);
LABEL_8:
  swift_getObjectType();
  if (sub_1007A1364())
  {
    v30 = sub_1007A2744();
    v31 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    v32 = v48;
    (*(v9 + 16))(v48, v45, v8);
    sub_1007A26F4();
    v33 = v3;
    v34 = sub_1007A26E4();
    v35 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = v34;
    *(v36 + 3) = &protocol witness table for MainActor;
    *(v36 + 4) = v33;
    (*(v9 + 32))(&v36[v35], v32, v8);
    sub_100345AA0(0, 0, v31, &unk_10083DE00, v36);
  }

  else
  {
    v37 = swift_allocObject();
    *(v37 + 16) = v3;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v38 = v3;
    *v7 = sub_1007A2D74();
    v39 = v44;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v44);
    v40 = sub_1007A1D34();
    (*(v5 + 8))(v7, v39);
    if (v40)
    {

      sub_1006B9A58(*(v37 + 16));
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1006C4930(uint64_t a1)
{
  v4 = *(sub_1001F1160(&unk_100ADB4D0, &qword_1008188B0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1006B91DC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006C4A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C4AA4()
{
  v1 = *(sub_1001F1160(&qword_100AF2650, &qword_10083DDF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006A29EC(v0 + v2, v3);
}

uint64_t sub_1006C4BB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1006B5A1C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1006C4C80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1006C4CC8(uint64_t a1)
{
  v4 = *(sub_1001F1160(&unk_100AD6170, &qword_10083DEE0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_1006B6078(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1006C4DD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009A34;

  return sub_1006AF13C();
}

uint64_t sub_1006C4E8C()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1006C4F54(BOOL *a1@<X8>)
{
  v3 = *(sub_1007969B4() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 64));
  v5 = *(v1 + 16);

  sub_1006B7A9C(v5, v4, a1);
}

uint64_t sub_1006C4FE8(uint64_t a1)
{
  v4 = *(sub_1007A0424() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_1006BD908(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1006C5144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1006C51AC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame + 32))
  {
    return 0;
  }

  v3 = v1;
  v4 = sub_1006A96E0();
  sub_1007A1094();

  v5 = OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator;
  v6 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator);
  sub_1007A10A4();

  v2 = *(v3 + v5);
  v7 = v2;
  return v2;
}

uint64_t sub_1006C5298()
{

  return swift_deallocObject();
}

uint64_t sub_1006C53CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1002AE86C(a1, v4, v5, v6);
}

uint64_t sub_1006C5480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1002AE6E8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1006C5540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1002AE6E8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1006C5628(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_100471118(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  if (*(v1 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1006C56B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006C571C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006C57AC(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001F1160(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1006C5948(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1006C5A14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

double Separator.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079C414();
  *&v9[55] = v13;
  *&v9[71] = v14;
  *&v9[87] = v15;
  *&v9[103] = v16;
  *&v9[7] = v10;
  *&v9[23] = v11;
  *&v9[39] = v12;
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_10079D294();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 73) = *&v9[64];
  *(a2 + 89) = *&v9[80];
  *(a2 + 105) = *&v9[96];
  *(a2 + 120) = *(&v16 + 1);
  *(a2 + 9) = *v9;
  *(a2 + 25) = *&v9[16];
  *(a2 + 41) = *&v9[32];
  *(a2 + 57) = *&v9[48];
  *(a2 + 128) = v6;
  *(a2 + 144) = v7;
  *(a2 + 160) = v8;
  *(a2 + 176) = a1;
  *(a2 + 184) = v4;

  return result;
}

unint64_t sub_1006C5C60()
{
  result = qword_100AF2988;
  if (!qword_100AF2988)
  {
    sub_1001F1234(&qword_100AF2990, &qword_10083E4F0);
    sub_1006C5CEC();
    sub_1006C5DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2988);
  }

  return result;
}

unint64_t sub_1006C5CEC()
{
  result = qword_100AF2998;
  if (!qword_100AF2998)
  {
    sub_1001F1234(&qword_100AF29A0, &qword_10083E4F8);
    sub_1006C5D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2998);
  }

  return result;
}

unint64_t sub_1006C5D78()
{
  result = qword_100AF29A8;
  if (!qword_100AF29A8)
  {
    sub_1001F1234(&qword_100AF29B0, &unk_10083E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF29A8);
  }

  return result;
}

unint64_t sub_1006C5DFC()
{
  result = qword_100AF64C0;
  if (!qword_100AF64C0)
  {
    sub_1001F1234(&unk_100AE40B0, &qword_100831A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF64C0);
  }

  return result;
}

uint64_t sub_1006C5E60()
{
  sub_10038DF2C();

  return sub_10079C834();
}

void sub_1006C5F00(uint64_t a1)
{
  sub_1006C6108(319);
  if (v1 <= 0x3F)
  {
    sub_100325258(319, &qword_100AF2A30, &qword_100AF2A38, &unk_10083E540, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1006C61BC(319, &qword_100AF2A40, type metadata accessor for BuyButtonView.Style, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1006C61BC(319, &unk_100AF2A48, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1006C61BC(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100325258(319, &qword_100AD6F10, &unk_100ADB6B0, qword_100816980, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_1006C633C(319, &qword_100AD8BE0, &type metadata for Bool, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1006C6108(uint64_t a1)
{
  if (!qword_100AF2A28)
  {
    type metadata accessor for BuyButtonViewModel(255);
    sub_1006CA91C(&qword_100AD5D78, type metadata accessor for BuyButtonViewModel, &unk_100838748);
    v1 = sub_10079C054();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF2A28);
    }
  }
}

void sub_1006C61BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1006C6248(uint64_t a1)
{
  sub_1006C633C(319, &qword_100AF2B00, &type metadata for BuyButtonView.Style.Button, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1006C61BC(319, &unk_100AF2B08, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006C633C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1006C63C8@<D0>(uint64_t a1@<X8>)
{
  v42 = sub_10079ED74();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v39 = (&v36 - v5);
  v6 = sub_10079EDE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = (&v36 - v11);
  __chkstk_darwin(v13);
  v15 = (&v36 - v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v15);

  v43 = sub_10079EDD4();
  v16 = *(v7 + 8);
  v16(v15, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v12);

  sub_10079EDC4();
  v18 = v17;
  v16(v12, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v9);

  sub_10079EDB4();
  v20 = v19;
  v16(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v15);

  v38 = sub_10079EDD4();
  v16(v15, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v12);

  sub_10079EDC4();
  v22 = v21;
  v16(v12, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v9);

  sub_10079EDB4();
  v24 = v23;
  v16(v9, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v39;
  sub_10079B9A4(v39);

  v37 = sub_10079ED64();
  v26 = *(v40 + 8);
  v27 = v42;
  v26(v25, v42);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v41;
  sub_10079B9A4(v41);

  v40 = sub_10079ED54();
  v26(v28, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v25);

  v29 = sub_10079ED64();
  v26(v25, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v28);

  v30 = sub_10079ED54();
  v26(v28, v27);
  v31 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
  v32 = sub_10079E534();
  (*(*(v32 - 8) + 56))(a1 + v31, 1, 1, v32);
  *a1 = v43;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20;
  v33 = v37;
  *(a1 + 24) = v38;
  *(a1 + 32) = v22;
  *(a1 + 40) = v24;
  v34 = v40;
  *(a1 + 48) = v33;
  *(a1 + 56) = v34;
  *(a1 + 64) = v29;
  *(a1 + 72) = v30;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

double sub_1006C6A24()
{
  v0 = type metadata accessor for BuyButtonView.Style(0);
  sub_100009A38(v0, qword_100B23960);
  v1 = sub_100008B98(v0, qword_100B23960);
  v2 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v3 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v4 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v5 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v6 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v7 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v8 = *(v0 + 44);
  v9 = sub_10079E534();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *v1 = v2;
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 8) = _Q0;
  *(v1 + 24) = v3;
  *(v1 + 32) = xmmword_100815050;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  return result;
}

uint64_t sub_1006C6B28@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BuyButtonView.Style(0);
  v3 = sub_100008B98(v2, qword_100B23960);
  return sub_1006CA0F8(v3, a1, type metadata accessor for BuyButtonView.Style);
}

uint64_t sub_1006C6BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD5D70, &qword_10083E860);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BuyButtonView(0);
  sub_1000077D8(v1 + *(v10 + 24), v9, &qword_100AD5D70, &qword_10083E860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1006CA9A4(v9, a1, type metadata accessor for BuyButtonView.Style);
  }

  v12 = sub_1007A29C4();
  v13 = sub_10079D244();
  sub_10079AB44(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006C6D98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BuyButtonView(0);
  sub_1000077D8(v1 + *(v10 + 36), v9, &unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0, qword_100816980);
  }

  v12 = sub_1007A29C4();
  v13 = sub_10079D244();
  sub_10079AB44(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006C6F80()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for BuyButtonView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1007A29C4();
    v8 = sub_10079D244();
    sub_10079AB44(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_10020B534(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1006C70D8()
{
  v0 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v18[-v4];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  if (sub_1006C6F80())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v19);

    v12 = v19;
  }

  else
  {
    v12 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4((&v19 + 1));

  if (BYTE1(v19))
  {
    if (BYTE1(v19) == 1)
    {
      if (v12)
      {
        sub_1006C6BAC(v8);
        v13 = *(v8 + 10);
        sub_1006CA964(v13, *(v8 + 11));
        sub_10038DF80(v8);
        if (!v13)
        {
          v13 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
          v14 = [objc_opt_self() bc_booksOrange];
LABEL_13:
          v15 = v14;
          sub_10079DD24();
        }
      }

      else
      {
        sub_1006C6BAC(v5);
        v13 = *(v5 + 12);
        sub_1006CA964(v13, *(v5 + 13));
        sub_10038DF80(v5);
        if (!v13)
        {
          _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
          v13 = sub_10079DE24();

          v16 = [objc_opt_self() bc_booksOrange];
          sub_10079DD24();
          sub_10079DE24();
        }
      }
    }

    else
    {
      sub_1006C6BAC(v2);
      v13 = *(v2 + 14);
      sub_1006CA964(v13, *(v2 + 15));
      sub_10038DF80(v2);
      if (!v13)
      {
        _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        v13 = sub_10079DE24();

        v14 = [objc_opt_self() bc_booksOrange];
        goto LABEL_13;
      }
    }
  }

  else
  {
    sub_1006C6BAC(v11);
    if (v12)
    {
      v13 = *(v11 + 6);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    sub_10038DF80(v11);
  }

  return v13;
}

void sub_1006C73EC()
{
  if (sub_1006C74C4())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v0);

    if (!v0[1])
    {
      __break(1u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v0);
  }
}

uint64_t sub_1006C74C4()
{
  v1 = sub_10079CEE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100ADBB30, &qword_100813E90);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v26 = v0;
  sub_1006C6D98(&v24 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1000077D8(v15, v7, &unk_100ADB6B0, qword_100816980);
  sub_1000077D8(v12, &v7[v16], &unk_100ADB6B0, qword_100816980);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_100007840(v12, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v15, &unk_100ADB6B0, qword_100816980);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_100007840(v7, &unk_100ADB6B0, qword_100816980);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1000077D8(v7, v27, &unk_100ADB6B0, qword_100816980);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_100007840(v12, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v15, &unk_100ADB6B0, qword_100816980);
    (*(v2 + 8))(v27, v1);
LABEL_6:
    sub_100007840(v7, &unk_100ADBB30, &qword_100813E90);
    return 0;
  }

  v19 = &v7[v16];
  v20 = v25;
  (*(v2 + 32))(v25, v19, v1);
  sub_1006CA91C(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v21 = v27;
  v22 = sub_1007A2124();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_100007840(v12, &unk_100ADB6B0, qword_100816980);
  sub_100007840(v15, &unk_100ADB6B0, qword_100816980);
  v23(v21, v1);
  sub_100007840(v7, &unk_100ADB6B0, qword_100816980);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v28);

  result = v29;
  if (v29)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1006C7970@<X0>(char *a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AF2A90, &qword_10083E550);
  __chkstk_darwin(v3 - 8);
  v5 = &v24[-v4];
  v6 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10079E534();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v26 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1006C6F80())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v27);

    v12 = v27 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v25 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4((&v27 + 2));

  if (BYTE2(v27) == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4((&v27 + 1)), , , BYTE1(v27) == 2))
  {
    v13 = v26;
    (*(v10 + 104))(v26, enum case for BlendMode.normal(_:), v9);
  }

  else
  {
    sub_1006C6BAC(v8);
    sub_1000077D8(&v8[*(v6 + 44)], v5, &qword_100AF2A90, &qword_10083E550);
    sub_10038DF80(v8);
    v23 = *(v10 + 48);
    if (v23(v5, 1, v9) == 1)
    {
      v13 = v26;
      (*(v10 + 104))(v26, enum case for BlendMode.normal(_:), v9);
      if (v23(v5, 1, v9) != 1)
      {
        sub_100007840(v5, &qword_100AF2A90, &qword_10083E550);
      }
    }

    else
    {
      v13 = v26;
      (*(v10 + 32))(v26, v5, v9);
    }
  }

  v14 = sub_10079E474();
  v16 = v15;
  v17 = sub_1001F1160(&qword_100AF2B50, &qword_10083E690);
  v18 = &a1[*(v17 + 36)];
  *v18 = v14;
  *(v18 + 1) = v16;
  v19 = sub_1001F1160(&qword_100AF2B58, &qword_10083E698);
  sub_1006C7E30(v1, v25 & 1, &v18[*(v19 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1);

  v20 = sub_10079CAE4();
  (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  *&a1[*(v17 + 40)] = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  swift_storeEnumTagMultiPayload();
  v21 = sub_1001F1160(&qword_100AF2B60, &qword_10083E720);
  return (*(v10 + 32))(&a1[*(v21 + 36)], v13, v9);
}

uint64_t sub_1006C7E30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v175 = a2;
  v180 = a3;
  v162 = sub_1001F1160(&qword_100AF2B68, &qword_10083E770);
  __chkstk_darwin(v162);
  v161 = &v140 - v4;
  v166 = sub_1001F1160(&qword_100AF2B70, &qword_10083E778);
  v167 = *(v166 - 8);
  __chkstk_darwin(v166);
  v163 = &v140 - v5;
  v169 = sub_1001F1160(&qword_100AF2B78, &qword_10083E780);
  __chkstk_darwin(v169);
  v164 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = &v140 - v8;
  __chkstk_darwin(v9);
  v160 = &v140 - v10;
  v170 = sub_1001F1160(&qword_100AF2B80, &qword_10083E788);
  __chkstk_darwin(v170);
  v176 = &v140 - v11;
  v174 = sub_1001F1160(&qword_100AF2B88, &qword_10083E790);
  __chkstk_darwin(v174);
  v173 = &v140 - v12;
  v172 = sub_1001F1160(&qword_100AF2B90, &qword_10083E798);
  __chkstk_darwin(v172);
  v179 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v171 = &v140 - v15;
  __chkstk_darwin(v16);
  v178 = &v140 - v17;
  v157 = sub_1001F1160(&qword_100AF2B98, &qword_10083E7A0);
  v158 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v140 - v18;
  v159 = sub_1001F1160(&qword_100AF2BA0, &qword_10083E7A8);
  __chkstk_darwin(v159);
  v177 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v156 = &v140 - v21;
  __chkstk_darwin(v22);
  v186 = &v140 - v23;
  v24 = type metadata accessor for BuyButtonView(0);
  v25 = *(v24 - 8);
  v154 = v24 - 8;
  v152 = v25;
  v184 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v182 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10079D074();
  v187 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BuyButtonView.Style(0);
  __chkstk_darwin(v28 - 8);
  v153 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v140 - v31;
  __chkstk_darwin(v33);
  v35 = &v140 - v34;
  v36 = sub_1001F1160(&qword_100AF2BA8, &qword_10083E7B0);
  v37 = v36 - 8;
  __chkstk_darwin(v36);
  v39 = &v140 - v38;
  v40 = sub_1001F1160(&qword_100AF2BB0, &qword_10083E7B8);
  __chkstk_darwin(v40);
  v42 = &v140 - v41;
  v143 = sub_1001F1160(&qword_100AF2BB8, &qword_10083E7C0);
  v149 = *(v143 - 8);
  __chkstk_darwin(v143);
  v44 = &v140 - v43;
  v151 = sub_1001F1160(&qword_100AF2BC0, &qword_10083E7C8);
  __chkstk_darwin(v151);
  v141 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v142 = &v140 - v47;
  v145 = sub_1001F1160(&qword_100AF2BC8, &qword_10083E7D0) - 8;
  __chkstk_darwin(v145);
  v165 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v144 = &v140 - v50;
  __chkstk_darwin(v51);
  v185 = &v140 - v52;
  sub_10079BDC4();
  v147 = v35;
  sub_1006C6BAC(v35);

  sub_10038DF80(v35);
  v140 = a1;
  sub_1006C6BAC(v32);
  v148 = v32;
  sub_10038DF80(v32);
  v53 = sub_10079DE24();

  KeyPath = swift_getKeyPath();
  *&v196 = v53;
  v55 = sub_10079BE64();
  v56 = &v39[*(v37 + 44)];
  *v56 = KeyPath;
  v56[1] = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v196);

  v57 = 0.0;
  if (v196 == 1)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.0;
  }

  sub_10020B3C8(v39, v42, &qword_100AF2BA8, &qword_10083E7B0);
  *&v42[*(v40 + 36)] = v58;
  v59 = v181;
  sub_10079D044();
  v60 = sub_1006C9F88();
  sub_10079D9A4();
  v61 = *(v187 + 8);
  v187 += 8;
  v150 = v61;
  v61(v59, v183);
  sub_100007840(v42, &qword_100AF2BB0, &qword_10083E7B8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v196);

  *&v196 = v40;
  *(&v196 + 1) = v60;
  v146 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeConformance2();
  v62 = v141;
  v63 = v143;
  sub_10079D944();
  (*(v149 + 8))(v44, v63);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v196);

  v64 = v142;
  sub_10079C184();
  sub_100007840(v62, &qword_100AF2BC0, &qword_10083E7C8);
  v151 = type metadata accessor for BuyButtonView;
  v65 = v140;
  v66 = v182;
  sub_1006CA0F8(v140, v182, type metadata accessor for BuyButtonView);
  v67 = *(v152 + 80);
  v149 = (v67 + 16) & ~v67;
  v68 = swift_allocObject();
  v152 = type metadata accessor for BuyButtonView;
  sub_1006CA9A4(v66, v68 + ((v67 + 16) & ~v67), type metadata accessor for BuyButtonView);
  v69 = sub_10079E474();
  v71 = v70;
  v72 = v64;
  v73 = v144;
  sub_10020B3C8(v72, v144, &qword_100AF2BC0, &qword_10083E7C8);
  v74 = (v73 + *(sub_1001F1160(&qword_100AF2BE0, &qword_10083E868) + 36));
  *v74 = sub_100364208;
  v74[1] = 0;
  v74[2] = v69;
  v74[3] = v71;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1006CA160;
  *(v75 + 24) = v68;
  v76 = (v73 + *(v145 + 44));
  *v76 = sub_1006CA1D8;
  v76[1] = v75;
  sub_10020B3C8(v73, v185, &qword_100AF2BC8, &qword_10083E7D0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v196);

  v77 = v196;
  v78 = v147;
  sub_1006C6BAC(v147);
  v79 = *(v78 + 24);

  sub_10038DF80(v78);
  v80 = v148;
  sub_1006C6BAC(v148);
  v81 = *(v80 + 32);
  sub_10038DF80(v80);
  v82 = v153;
  sub_1006C6BAC(v153);
  v83 = *(v82 + 40);
  sub_10038DF80(v82);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v196);

  if (v196 == 2)
  {
    v84 = 1.0;
  }

  else
  {
    v84 = 0.0;
  }

  v85 = (v65 + *(v154 + 36));
  v87 = v85[1];
  v88 = v85[2];
  *&v196 = *v85;
  v86 = v196;
  *(&v196 + 1) = v87;
  *&v197 = v88;
  sub_1001F1160(&qword_100AD5410, &qword_1008101B0);
  sub_10079DFF4();
  *&v196 = v86;
  *(&v196 + 1) = v87;
  *&v197 = v88;
  sub_10079DFF4();
  sub_10079E474();
  sub_10079BE54();
  *&v190 = v77;
  *(&v190 + 1) = v79;
  *&v191 = v81;
  *(&v191 + 1) = v83;
  *&v192 = v84;
  v89 = v181;
  sub_10079D044();
  v90 = sub_1001F1160(&qword_100AF2BE8, &qword_10083E8C0);
  v91 = sub_1006CA204();
  v92 = v155;
  sub_10079D9A4();
  v150(v89, v183);
  v198 = v192;
  v199 = v193;
  v200 = v194;
  v201 = v195;
  v196 = v190;
  v197 = v191;
  sub_100007840(&v196, &qword_100AF2BE8, &qword_10083E8C0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  *&v190 = v90;
  *(&v190 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v93 = v156;
  v94 = v157;
  sub_10079D944();
  (*(v158 + 8))(v92, v94);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  sub_10079C184();
  sub_100007840(v93, &qword_100AF2BA0, &qword_10083E7A8);
  v95 = v65;
  v96 = sub_1006C70D8();
  v98 = v97;
  v99 = v182;
  sub_1006CA0F8(v65, v182, v151);
  v100 = v149;
  v101 = swift_allocObject();
  sub_1006CA9A4(v99, v101 + v100, v152);
  v188 = v95;
  sub_1001F1160(&qword_100AF2C10, &unk_10083E8D0);
  sub_1006CA72C();
  v102 = v161;
  sub_10079E054();
  v103 = swift_getKeyPath();
  v104 = v162;
  v105 = v102 + *(v162 + 36);
  *v105 = v103;
  *(v105 + 8) = 1;
  *(v105 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  v106 = v190;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  v107 = v190;
  v187 = v96;
  *&v190 = v96;
  v184 = v98;
  *(&v190 + 1) = v98;
  *&v191 = v106;
  *(&v191 + 1) = v107;
  v108 = sub_1006CA7E4();
  v109 = sub_1006CA8C8();
  v110 = v163;
  sub_10079D6B4();

  sub_100007840(v102, &qword_100AF2B68, &qword_10083E770);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  v189 = v190;
  *&v190 = v104;
  *(&v190 + 1) = &type metadata for SampleHeaderButtonStyle;
  *&v191 = v108;
  *(&v191 + 1) = v109;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v111 = v164;
  v112 = v166;
  sub_10079D8E4();

  (*(v167 + 8))(v110, v112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  v113 = sub_10079D5D4();
  v115 = v114;
  LOBYTE(v106) = v116;
  v117 = v168;
  sub_10079C1D4();
  sub_10020B430(v113, v115, v106 & 1);

  sub_100007840(v111, &qword_100AF2B78, &qword_10083E780);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  v118 = v160;
  sub_10079C184();
  v119 = 1;
  sub_100007840(v117, &qword_100AF2B78, &qword_10083E780);
  if ((v175 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v190);

    v119 = v190 != 0;
  }

  v120 = swift_getKeyPath();
  v121 = swift_allocObject();
  *(v121 + 16) = v119;
  v122 = v118;
  v123 = v176;
  sub_10020B3C8(v122, v176, &qword_100AF2B78, &qword_10083E780);
  v124 = (v123 + *(v170 + 36));
  *v124 = v120;
  v124[1] = sub_100258B0C;
  v124[2] = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v190);

  if (!v190)
  {
    v57 = 1.0;
  }

  v125 = v123;
  v126 = v173;
  sub_10020B3C8(v125, v173, &qword_100AF2B80, &qword_10083E788);
  *(v126 + *(v174 + 36)) = v57;
  v127 = swift_getKeyPath();
  v128 = v126;
  v129 = v171;
  sub_10020B3C8(v128, v171, &qword_100AF2B88, &qword_10083E790);
  v130 = v129 + *(v172 + 36);
  *v130 = v127;
  *(v130 + 8) = 0;
  v131 = v178;
  sub_10020B3C8(v129, v178, &qword_100AF2B90, &qword_10083E798);
  v132 = v185;
  v133 = v165;
  sub_1000077D8(v185, v165, &qword_100AF2BC8, &qword_10083E7D0);
  v134 = v186;
  v135 = v177;
  sub_1000077D8(v186, v177, &qword_100AF2BA0, &qword_10083E7A8);
  v136 = v179;
  sub_1000077D8(v131, v179, &qword_100AF2B90, &qword_10083E798);
  v137 = v180;
  sub_1000077D8(v133, v180, &qword_100AF2BC8, &qword_10083E7D0);
  v138 = sub_1001F1160(&qword_100AF2C40, &qword_10083EAA0);
  sub_1000077D8(v135, v137 + *(v138 + 48), &qword_100AF2BA0, &qword_10083E7A8);
  sub_1000077D8(v136, v137 + *(v138 + 64), &qword_100AF2B90, &qword_10083E798);

  sub_100007840(v131, &qword_100AF2B90, &qword_10083E798);
  sub_100007840(v134, &qword_100AF2BA0, &qword_10083E7A8);
  sub_100007840(v132, &qword_100AF2BC8, &qword_10083E7D0);
  sub_100007840(v136, &qword_100AF2B90, &qword_10083E798);
  sub_100007840(v135, &qword_100AF2BA0, &qword_10083E7A8);
  return sub_100007840(v133, &qword_100AF2BC8, &qword_10083E7D0);
}

void sub_1006C9728(uint64_t a1, double a2, double a3)
{
  type metadata accessor for BuyButtonView(0);
  sub_1001F1160(&qword_100AD5410, &qword_1008101B0);
  sub_10079E004();
}

uint64_t sub_1006C97A8(uint64_t a1)
{
  sub_1000077D8(a1 + 16, v2, &qword_100AE5DB8, &qword_100829188);
  if (!v3)
  {
    return sub_100007840(v2, &qword_100AE5DB8, &qword_100829188);
  }

  sub_10000E3E8(v2, v3);
  swift_unknownObjectRetain();
  sub_1005354F4();
  swift_unknownObjectRelease();
  return sub_1000074E0(v2);
}

uint64_t sub_1006C9840@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v40);

  if (v41)
  {

    sub_10079DF24();
    v3 = sub_10079D5E4();
    v5 = v4;
    v7 = v6;
    v8 = sub_10079D584();
    v39 = a2;
    v10 = v9;
    v38 = v11;
    sub_10020B430(v3, v5, v7 & 1);

    sub_1006C73EC();
    v40 = v12;
    v41 = v13;
    sub_100206ECC();
    v14 = sub_10079D5D4();
    v16 = v15;
    LOBYTE(v3) = v17;
    v18 = v8;
    v19 = sub_10079D584();
    v21 = v20;
    v23 = v22;
    v24 = v14;
    v26 = v25;
    sub_10020B430(v24, v16, v3 & 1);

    v27 = v10;
    a2 = v39;
    sub_10020B430(v18, v27, v38 & 1);
  }

  else
  {
    sub_1006C73EC();
    v40 = v28;
    v41 = v29;
    sub_100206ECC();
    v19 = sub_10079D5D4();
    v21 = v30;
    v23 = v31;
    v26 = v32;
  }

  v33 = (a2 + *(sub_1001F1160(&qword_100AF2C10, &unk_10083E8D0) + 36));
  v34 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v35 = enum case for Image.Scale.medium(_:);
  v36 = sub_10079DF84();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  result = swift_getKeyPath();
  *v33 = result;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v26;
  return result;
}

uint64_t sub_1006C9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, double a4@<D1>, double a5@<D2>)
{
  v7 = a3.n128_u64[0];
  sub_10079BCF4();
  v33 = v51;
  v9 = v52;
  v10 = v53;
  KeyPath = swift_getKeyPath();
  v35[0] = v7;
  sub_1006CAAF0();

  sub_1007A20C4();
  v12 = *&v57[0];
  sub_10079BCF4();
  v13 = swift_getKeyPath();

  sub_10079E634();
  v15 = v14;
  v17 = v16;
  v18 = sub_10079E4F4();
  v54[0] = v51;
  v19 = *(&v51 + 1);
  v54[1] = v52;
  v20 = *(&v52 + 1);
  *&v55 = v53;
  *(&v55 + 1) = a5;
  *&v56 = KeyPath;
  *(&v56 + 1) = a1;
  v36 = v51;
  v37 = v52;
  v38 = v55;
  *&v57[0] = 0;
  *(&v57[0] + 1) = v12;
  v21 = v50;
  *&v58 = v50;
  v22 = v48;
  v23 = v49;
  v57[2] = v49;
  v57[1] = v48;
  *(&v58 + 1) = a4;
  *&v59 = v13;
  *(&v59 + 1) = a1;
  *&v60 = 0x4012D97C7F3321D2;
  *(&v60 + 1) = v15;
  *&v61 = v17;
  *(&v61 + 1) = v18;
  v41 = v48;
  v42 = v49;
  v39 = v56;
  v40 = v57[0];
  v45 = v60;
  v46 = v61;
  v43 = v58;
  v44 = v59;
  v24 = v51;
  v25 = v52;
  v26 = v56;
  v27 = v57[0];
  *(a2 + 32) = v55;
  *(a2 + 48) = v26;
  *a2 = v24;
  *(a2 + 16) = v25;
  v28 = v41;
  v29 = v43;
  v30 = v44;
  *(a2 + 96) = v42;
  *(a2 + 112) = v29;
  *(a2 + 64) = v27;
  *(a2 + 80) = v28;
  v31 = v46;
  *(a2 + 144) = v45;
  *(a2 + 160) = v31;
  v62 = v7;
  v47 = v7;
  *(a2 + 176) = v7;
  *(a2 + 128) = v30;
  v63[0] = 0;
  v63[1] = v12;
  v64 = v22;
  v65 = v23;
  v66 = v21;
  v67 = a4;
  v68 = v13;
  v69 = a1;
  v70 = 0x4012D97C7F3321D2;
  v71 = v15;
  v72 = v17;
  v73 = v18;
  v74 = v7;
  sub_1000077D8(v54, v35, &qword_100AF2C68, &qword_10083ED88);
  sub_1000077D8(v57, v35, &qword_100AF2C70, &qword_10083ED90);
  sub_100007840(v63, &qword_100AF2C70, &qword_10083ED90);
  v35[0] = v33;
  v35[1] = v19;
  v35[2] = v9;
  v35[3] = v20;
  v35[4] = v10;
  *&v35[5] = a5;
  v35[6] = KeyPath;
  v35[7] = a1;
  return sub_100007840(v35, &qword_100AF2C68, &qword_10083ED88);
}

double sub_1006C9E2C@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = sub_10079E474();
  v10 = v9;
  v11.n128_u64[0] = v4;
  sub_1006C9AD0(v5, &v19, v11, v6, v7);
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v43[8] = v27;
  v43[9] = v28;
  v43[10] = v29;
  v43[4] = v23;
  v43[5] = v24;
  v43[6] = v25;
  v43[7] = v26;
  v43[0] = v19;
  v43[1] = v20;
  v42 = v30;
  v44 = v30;
  v43[2] = v21;
  v43[3] = v22;
  sub_1000077D8(&v31, &v18, &qword_100AF2C58, &qword_10083ED50);
  sub_100007840(v43, &qword_100AF2C58, &qword_10083ED50);
  *a2 = v8;
  *(a2 + 8) = v10;
  v12 = v40;
  *(a2 + 144) = v39;
  *(a2 + 160) = v12;
  *(a2 + 176) = v41;
  *(a2 + 192) = v42;
  v13 = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = v13;
  v14 = v38;
  *(a2 + 112) = v37;
  *(a2 + 128) = v14;
  v15 = v32;
  *(a2 + 16) = v31;
  *(a2 + 32) = v15;
  result = *&v33;
  v17 = v34;
  *(a2 + 48) = v33;
  *(a2 + 64) = v17;
  return result;
}

unint64_t sub_1006C9F88()
{
  result = qword_100AF2BD0;
  if (!qword_100AF2BD0)
  {
    sub_1001F1234(&qword_100AF2BB0, &qword_10083E7B8);
    sub_1006CA014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BD0);
  }

  return result;
}

unint64_t sub_1006CA014()
{
  result = qword_100AF2BD8;
  if (!qword_100AF2BD8)
  {
    sub_1001F1234(&qword_100AF2BA8, &qword_10083E7B0);
    sub_100005920(&qword_100ADC4E8, &qword_100AEE330, &unk_10083E850, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100005920(&qword_100AEA398, &qword_100AEA3A0, &qword_100831A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BD8);
  }

  return result;
}

uint64_t sub_1006CA0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1006CA160(double a1, double a2)
{
  v5 = *(type metadata accessor for BuyButtonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1006C9728(v6, a1, a2);
}

unint64_t sub_1006CA204()
{
  result = qword_100AF2BF0;
  if (!qword_100AF2BF0)
  {
    sub_1001F1234(&qword_100AF2BE8, &qword_10083E8C0);
    sub_1006CA290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BF0);
  }

  return result;
}

unint64_t sub_1006CA290()
{
  result = qword_100AF2BF8;
  if (!qword_100AF2BF8)
  {
    sub_1001F1234(&qword_100AF2C00, &qword_10083E8C8);
    sub_1006CA31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2BF8);
  }

  return result;
}

unint64_t sub_1006CA31C()
{
  result = qword_100AF2C08;
  if (!qword_100AF2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C08);
  }

  return result;
}

uint64_t sub_1006CA370()
{
  v1 = type metadata accessor for BuyButtonView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 40))
  {
    sub_1000074E0((v2 + 16));
  }

  v3 = (v2 + v1[6]);
  sub_1001F1160(&qword_100AD5D70, &qword_10083E860);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    if (*(v3 + 10))
    {
    }

    if (*(v3 + 12))
    {
    }

    if (*(v3 + 14))
    {
    }

    v5 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
    v6 = sub_10079E534();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  v8 = v1[8];
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079BC44();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CEE4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_10020B534(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_10020B534(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_1006CA6C4()
{
  v1 = *(type metadata accessor for BuyButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006C97A8(v2);
}

unint64_t sub_1006CA72C()
{
  result = qword_100AF2C18;
  if (!qword_100AF2C18)
  {
    sub_1001F1234(&qword_100AF2C10, &unk_10083E8D0);
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0, &qword_1008173A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C18);
  }

  return result;
}

unint64_t sub_1006CA7E4()
{
  result = qword_100AF2C20;
  if (!qword_100AF2C20)
  {
    sub_1001F1234(&qword_100AF2B68, &qword_10083E770);
    sub_100005920(&qword_100AF2C28, &qword_100AF2C30, &unk_10083E9A0, &protocol conformance descriptor for Button<A>);
    sub_100005920(&qword_100ADC1A8, &qword_100ADC1B0, &qword_10081BAB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C20);
  }

  return result;
}

unint64_t sub_1006CA8C8()
{
  result = qword_100AF2C38;
  if (!qword_100AF2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C38);
  }

  return result;
}

uint64_t sub_1006CA91C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006CA964(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1006CA9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006CAA1C()
{
  result = qword_100AF2C48;
  if (!qword_100AF2C48)
  {
    sub_1001F1234(&qword_100AF2B60, &qword_10083E720);
    sub_100005920(&qword_100AF2C50, &qword_100AF2B50, &qword_10083E690, &unk_10081D0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C48);
  }

  return result;
}

unint64_t sub_1006CAAF0()
{
  result = qword_100AF2C60;
  if (!qword_100AF2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2C60);
  }

  return result;
}

__n128 sub_1006CAB44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1006CAB60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006CABA8(uint64_t result, int a2, int a3)
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
      *(result + 58) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006CAC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!*(a2 + 48))
  {
    sub_1007A07F4();
    goto LABEL_9;
  }

  v6 = sub_1007A07F4();
  v8 = v7;
  v9 = sub_1007A07F4();
  if (!v8)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_11;
  }

  if (v6 == v9 && v8 == v10)
  {

    v12 = 1;
  }

  else
  {
    v12 = sub_1007A3AB4();
  }

LABEL_11:

  sub_1006CB018(a2, v22);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  v14 = v22[1];
  *(v13 + 24) = v22[0];
  *(v13 + 40) = v14;
  *(v13 + 56) = v23[0];
  *(v13 + 66) = *(v23 + 10);
  sub_1006CB018(a2, v20);
  v15 = swift_allocObject();
  v16 = v20[1];
  *(v15 + 16) = v20[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v21[0];
  *(v15 + 58) = *(v21 + 10);
  *(v15 + 80) = v5;
  v17 = *(a2 + 56);
  v18 = *(a2 + 57);
  sub_100009864(a2, a3 + 56);
  *a3 = v12 & 1;
  *(a3 + 8) = sub_1006CB0A4;
  *(a3 + 16) = v13;
  *(a3 + 24) = sub_1006CB0B0;
  *(a3 + 32) = v15;
  *(a3 + 40) = v5;
  *(a3 + 48) = v17;
  *(a3 + 49) = v18;
  type metadata accessor for ThemeFontRow(0);
  sub_1002582C8();
  swift_retain_n();
  return sub_10079BDE4();
}

uint64_t sub_1006CAE00(uint64_t a1, void *a2)
{
  v3 = sub_1007A0834();
  v5 = v4;
  sub_10000E3E8(a2, a2[3]);
  if ((v5 & 1) != 0 && v3 > 1)
  {
    return sub_1007A1644();
  }

  else
  {
    return sub_1007A1694();
  }
}

uint64_t sub_1006CAE8C(__n128 a1)
{
  v7 = *(v1 + 40);
  sub_1006CB018(v1, v5);
  v2 = swift_allocObject();
  v3 = v5[1];
  v2[1] = v5[0];
  v2[2] = v3;
  v2[3] = v6[0];
  *(v2 + 58) = *(v6 + 10);

  sub_1001F1160(&qword_100AF2C88, &qword_10083EE48);
  type metadata accessor for ThemeFontRow(0);
  sub_100005920(&qword_100AF2C90, &qword_100AF2C88, &qword_10083EE48, &protocol conformance descriptor for [A]);
  sub_1006CD53C(&qword_100AF2C98, type metadata accessor for ThemeFontRow, &unk_10083EE68);
  sub_1006CD53C(&qword_100AF2CA0, &type metadata accessor for ThemeFontViewModel, &protocol conformance descriptor for ThemeFontViewModel);
  return sub_10079E274();
}

uint64_t type metadata accessor for ThemeFontRow(uint64_t a1)
{
  result = qword_100AF2D00;
  if (!qword_100AF2D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006CB124(uint64_t a1)
{
  sub_100247D20();
  if (v1 <= 0x3F)
  {
    sub_1007A0844();
    if (v2 <= 0x3F)
    {
      sub_100308CB0();
      if (v3 <= 0x3F)
      {
        sub_100324D54(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1006CB1F0()
{
  result = qword_100AF2D50;
  if (!qword_100AF2D50)
  {
    sub_1001F1234(&qword_100AF2D58, &qword_10083EE60);
    sub_1006CD53C(&qword_100AF2C98, type metadata accessor for ThemeFontRow, &unk_10083EE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2D50);
  }

  return result;
}

uint64_t sub_1006CB2C0@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = sub_10079D074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v81 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1001F1160(&qword_100AF2D60, &qword_10083EEB8);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v68 - v5;
  v6 = sub_1001F1160(&qword_100AF2D68, &qword_10083EEC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v68 - v8;
  v83 = sub_1001F1160(&qword_100AF2D70, &qword_10083EEC8);
  __chkstk_darwin(v83);
  v10 = &v68 - v9;
  v75 = sub_100796CF4();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v68 - v13;
  v76 = sub_1007A21D4();
  v72 = *(v76 - 8);
  __chkstk_darwin(v76);
  v69 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = &v68 - v16;
  v17 = sub_10079D4D4();
  v68 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v20 - 8);
  v22 = &v68 - v21;
  v90 = v1;
  v23 = *(v1 + 40);
  v24 = sub_1007A0834();
  v87 = v10;
  v88 = v2;
  v85 = v3;
  v86 = v6;
  v84 = v7;
  if ((v25 & 1) != 0 && v24 && (v24 == 1 || (v90[48] & 1) == 0 && v90[49] != 1))
  {
    v26 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  }

  else
  {
    v26 = sub_10079DE34();
  }

  v27 = v26;
  v28 = sub_10079D3A4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(v22, 1, 1, v28);

  v91 = sub_10079D424();
  sub_100007840(v22, &unk_100AD1FC0, &unk_10080B850);
  v31 = v23;

  v32 = sub_1007A0824();
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      (*(v29 + 104))(v22, enum case for Font.Design.serif (_:), v28);
      v30(v22, 0, 1, v28);
      v34 = sub_10079D424();

      sub_100007840(v22, &unk_100AD1FC0, &unk_10080B850);
      goto LABEL_14;
    }

LABEL_12:

    goto LABEL_15;
  }

  if (!v32)
  {
    goto LABEL_12;
  }

  sub_1007A07F4();
  v33 = v68;
  (*(v68 + 104))(v19, enum case for Font.TextStyle.body(_:), v17);
  v34 = sub_10079D404();

  (*(v33 + 8))(v19, v17);
LABEL_14:
  v91 = v34;
LABEL_15:
  v35 = sub_1007A07F4();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v77 = v31;
  v39 = v27;
  if (v38)
  {
    v40 = sub_1007A0804();
    v42 = v41;
  }

  else
  {
    v43 = v70;
    sub_1007A2154();
    v44 = v73;
    sub_100796C94();
    v45 = v72;
    v46 = v69;
    (*(v72 + 16))(v69, v43, v76);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v49 = v74;
    v50 = v71;
    v51 = v75;
    (*(v74 + 16))(v71, v44, v75);
    v52 = sub_1007A22D4(v46, 0, 0, v48, v50, "Theme Options default font name", 31, 2);
    v42 = v53;
    (*(v49 + 8))(v44, v51);
    (*(v45 + 8))(v43, v76);
    v40 = v52;
  }

  v76 = v40;
  v54 = v90;
  __chkstk_darwin(v40);
  *(&v68 - 6) = v55;
  *(&v68 - 5) = v42;
  *(&v68 - 4) = v91;
  *(&v68 - 3) = v39;
  *(&v68 - 2) = v54;
  *(&v68 - 1) = 0x4039000000000000;

  sub_1001F1160(&qword_100AF2D78, &qword_10083EED0);
  sub_100005920(&qword_100AF2D80, &qword_100AF2D78, &qword_10083EED0, &protocol conformance descriptor for HStack<A>);
  v56 = v78;
  sub_10079E054();

  sub_10079DD94();

  v57 = v81;
  sub_10079D054();
  v58 = sub_100005920(&qword_100AF2D88, &qword_100AF2D60, &qword_10083EEB8, &protocol conformance descriptor for Button<A>);
  v59 = v80;
  v60 = v82;
  sub_10079D9A4();
  (*(v85 + 8))(v57, v88);
  (*(v79 + 8))(v56, v60);
  v94 = v76;
  v95 = v42;
  v92 = v60;
  v93 = v58;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v62 = v86;
  v61 = v87;
  sub_10079D8E4();
  (*(v84 + 8))(v59, v62);

  v94 = sub_1007A0814();
  v95 = v63;
  v64 = v89;
  sub_10079C1E4();

  sub_100048E2C(v61);
  LOBYTE(v61) = *v54;
  *(v64 + *(sub_1001F1160(&qword_100AF2D90, &qword_10083EED8) + 36)) = v61;
  KeyPath = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AF2D98, &qword_10083EF10);
  v67 = v64 + *(result + 36);
  *v67 = KeyPath;
  *(v67 + 8) = 0;
  return result;
}

uint64_t sub_1006CBD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v64 = a4;
  v60 = sub_1001F1160(&qword_100AF2DA0, &qword_10083EF18) - 8;
  __chkstk_darwin(v60);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v52 - v12;
  *a6 = sub_10079C8F4();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v71 = a1;
  v72 = a2;
  sub_100206ECC();

  v13 = sub_10079D5D4();
  v15 = v14;
  v17 = v16;
  v18 = sub_10079D5A4();
  v20 = v19;
  v22 = v21;
  sub_10020B430(v13, v15, v17 & 1);

  v63 = sub_10079D564();
  v64 = v23;
  v58 = v24;
  v26 = v25;
  sub_10020B430(v18, v20, v22 & 1);

  v27 = sub_10079D2C4();
  LOBYTE(v13) = v27;
  v28 = v26 & 1;
  v91 = v26 & 1;
  v56 = v26 & 1;
  v57 = v27;
  v88 = 1;
  sub_10079E484();
  v29 = a6 + *(sub_1001F1160(&qword_100AF2DA8, &qword_10083EF20) + 44);
  sub_10079C414();
  *(&v92[6] + 7) = *&v92[21];
  *(&v92[8] + 7) = *&v92[23];
  *(&v92[10] + 7) = *&v92[25];
  *(&v92[12] + 7) = *&v92[27];
  *(v92 + 7) = *&v92[15];
  *(&v92[2] + 7) = *&v92[17];
  *(&v92[4] + 7) = *&v92[19];
  sub_10079E474();
  sub_10079BE54();
  v54 = v94;
  v55 = v92[29];
  v52 = v97;
  v53 = v96;
  v67 = 1;
  v66 = v93;
  v65 = v95;
  v30 = v62;
  sub_1006CC2EC(v62);
  sub_10079E474();
  sub_10079BE54();
  v31 = (v30 + *(sub_1001F1160(&qword_100AF2DB0, &qword_10083EF28) + 36));
  v32 = v98[1];
  *v31 = v98[0];
  v31[1] = v32;
  v31[2] = v98[2];
  v33 = sub_10079D2E4();
  v34 = v61;
  v35 = v30 + *(v60 + 44);
  *v35 = v33;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  *(v35 + 40) = 1;
  v36 = v67;
  LOBYTE(v15) = v66;
  v37 = v65;
  sub_1000077D8(v30, v34, &qword_100AF2DA0, &qword_10083EF18);
  v38 = v58;
  *&v68 = v63;
  *(&v68 + 1) = v58;
  LOBYTE(v69) = v28;
  *(&v69 + 1) = *v90;
  DWORD1(v69) = *&v90[3];
  *(&v69 + 1) = v64;
  LOBYTE(v70[0]) = v13;
  *(v70 + 1) = *v89;
  DWORD1(v70[0]) = *&v89[3];
  *(v70 + 8) = 0u;
  *(&v70[1] + 8) = 0u;
  BYTE8(v70[2]) = 1;
  *(&v70[2] + 9) = *v92;
  *(&v70[5] + 9) = *&v92[6];
  *(&v70[4] + 9) = *&v92[4];
  *(&v70[3] + 9) = *&v92[2];
  *(&v70[9] + 1) = *(&v92[13] + 7);
  *(&v70[8] + 9) = *&v92[12];
  *(&v70[7] + 9) = *&v92[10];
  *(&v70[6] + 9) = *&v92[8];
  v39 = v68;
  v40 = v69;
  v41 = v70[1];
  *(v29 + 32) = v70[0];
  *(v29 + 48) = v41;
  *v29 = v39;
  *(v29 + 16) = v40;
  v42 = v70[2];
  v43 = v70[3];
  v44 = v70[5];
  v45 = v70[6];
  *(v29 + 96) = v70[4];
  *(v29 + 112) = v44;
  *(v29 + 64) = v42;
  *(v29 + 80) = v43;
  v46 = v70[7];
  v47 = v70[9];
  *(v29 + 160) = v70[8];
  *(v29 + 176) = v47;
  *(v29 + 128) = v45;
  *(v29 + 144) = v46;
  *(v29 + 192) = 0;
  *(v29 + 200) = v36;
  v48 = v54;
  *(v29 + 208) = v55;
  *(v29 + 216) = v15;
  *(v29 + 224) = v48;
  *(v29 + 232) = v37;
  v49 = v52;
  *(v29 + 240) = v53;
  *(v29 + 248) = v49;
  v50 = sub_1001F1160(&qword_100AF2DB8, &qword_10083EF30);
  sub_1000077D8(v34, v29 + *(v50 + 64), &qword_100AF2DA0, &qword_10083EF18);
  sub_1000077D8(&v68, &v71, &qword_100AF2DC0, &qword_10083EF38);
  sub_100007840(v62, &qword_100AF2DA0, &qword_10083EF18);
  sub_100007840(v34, &qword_100AF2DA0, &qword_10083EF18);
  v78 = 0u;
  v79 = 0u;
  v85 = *&v92[8];
  v86 = *&v92[10];
  v87[0] = *&v92[12];
  v81 = *v92;
  v82 = *&v92[2];
  v83 = *&v92[4];
  v71 = v63;
  v72 = v38;
  v73 = v56;
  *v74 = *v90;
  *&v74[3] = *&v90[3];
  v75 = v64;
  v76 = v57;
  *v77 = *v89;
  *&v77[3] = *&v89[3];
  v80 = 1;
  *(v87 + 15) = *(&v92[13] + 7);
  v84 = *&v92[6];
  return sub_100007840(&v71, &qword_100AF2DC0, &qword_10083EF38);
}

uint64_t sub_1006CC2EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1001F1160(&qword_100AE74A0, &unk_10082BA88);
  __chkstk_darwin(v3);
  v5 = (v33 - v4);
  v35 = sub_1001F1160(&qword_100AF2DC8, &qword_10083EF40);
  __chkstk_darwin(v35);
  v36 = v33 - v6;
  v37 = sub_1001F1160(&qword_100AF2DD0, &qword_10083EF48);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v33 - v7;
  v9 = sub_1001F1160(&qword_100AF2DD8, &qword_10083EF50);
  __chkstk_darwin(v9);
  v11 = v33 - v10;
  v12 = sub_1001F1160(&qword_100AF2DE0, &qword_10083EF58);
  __chkstk_darwin(v12);
  v14 = v33 - v13;
  v15 = sub_1001F1160(&qword_100ADBD80, &qword_10081A680);
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  if (*v2 == 1)
  {
    sub_1006CC910(v17);
    v18 = &qword_100ADBD80;
    v19 = &qword_10081A680;
    sub_1000077D8(v17, v14, &qword_100ADBD80, &qword_10081A680);
    swift_storeEnumTagMultiPayload();
    sub_10031A818();
    sub_1006CD0D0();
    sub_10079CCA4();
    v20 = v17;
  }

  else
  {
    v33[3] = v3;
    v33[4] = v12;
    v21 = sub_1007A0834();
    if (v22)
    {
      v23 = sub_1007A0834();
      v24 = 1;
      if ((v25 & 1) != 0 && v23 >= 2)
      {
        v39 = sub_1007A07F4();
        v40 = v26;
        sub_1002060B4();
        v27 = sub_1007A28A4();

        if (v27)
        {
          sub_1006CCC00(v5);
          sub_1000077D8(v5, v36, &qword_100AE74A0, &unk_10082BA88);
          swift_storeEnumTagMultiPayload();
          sub_100005920(&qword_100AF2E00, &qword_100AF2DD0, &qword_10083EF48, &protocol conformance descriptor for Button<A>);
          sub_1006CD20C();
          sub_10079CCA4();
          sub_100007840(v5, &qword_100AE74A0, &unk_10082BA88);
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }
      }
    }

    else
    {
      v33[2] = v33;
      v33[1] = *(v2 + 24);
      __chkstk_darwin(v21);
      v33[-2] = v28;

      sub_1001F1160(&qword_100AF2E10, &qword_10083EF68);
      sub_100005920(&qword_100AF2E18, &qword_100AF2E10, &qword_10083EF68, &protocol conformance descriptor for ZStack<A>);
      sub_10079E054();
      v29 = v34;
      v30 = v37;
      (*(v34 + 16))(v36, v8, v37);
      swift_storeEnumTagMultiPayload();
      sub_100005920(&qword_100AF2E00, &qword_100AF2DD0, &qword_10083EF48, &protocol conformance descriptor for Button<A>);
      sub_1006CD20C();
      sub_10079CCA4();
      (*(v29 + 8))(v8, v30);
      v24 = 0;
    }

    v31 = sub_1001F1160(&qword_100AF2DE8, &qword_10083EF60);
    (*(*(v31 - 8) + 56))(v11, v24, 1, v31);
    v18 = &qword_100AF2DD8;
    v19 = &qword_10083EF50;
    sub_1000077D8(v11, v14, &qword_100AF2DD8, &qword_10083EF50);
    swift_storeEnumTagMultiPayload();
    sub_10031A818();
    sub_1006CD0D0();
    sub_10079CCA4();
    v20 = v11;
  }

  return sub_100007840(v20, v18, v19);
}

uint64_t sub_1006CC910@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10079DF84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADBD70, &qword_10081A670);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v27 - v7);
  v9 = sub_1001F1160(&qword_100ADBD78, &qword_10081A678);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_10079DF24();
  type metadata accessor for ThemeFontRow(0);
  sub_1001F1160(qword_100ADC258, &unk_10081B510);
  sub_10079BDF4();
  v14.n128_f64[0] = v28;
  v15 = &enum case for Image.Scale.small(_:);
  if (v28 <= 2.0)
  {
    v15 = &enum case for Image.Scale.large(_:);
  }

  (*(v2 + 104))(v4, *v15, v1, v14);
  KeyPath = swift_getKeyPath();
  v17 = (v8 + *(v6 + 44));
  v18 = sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0);
  (*(v2 + 32))(v17 + *(v18 + 28), v4, v1);
  *v17 = KeyPath;
  *v8 = v13;
  v19 = sub_10079DE34();
  v20 = swift_getKeyPath();
  sub_10020B3C8(v8, v12, &qword_100ADBD70, &qword_10081A670);
  v21 = &v12[*(v10 + 44)];
  *v21 = v20;
  v21[1] = v19;
  sub_10079D374();
  sub_10079D3F4();
  v22 = sub_10079D464();

  v23 = swift_getKeyPath();
  v24 = v27;
  sub_10020B3C8(v12, v27, &qword_100ADBD78, &qword_10081A678);
  result = sub_1001F1160(&qword_100ADBD80, &qword_10081A680);
  v26 = (v24 + *(result + 36));
  *v26 = v23;
  v26[1] = v22;
  return result;
}

uint64_t sub_1006CCC00@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10079DF84();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  if ((*(v1 + 48) & 1) != 0 || *(v1 + 49) == 1)
  {
    v10 = sub_10079DF24();
    v11 = sub_10079DE34();
    KeyPath = swift_getKeyPath();
    type metadata accessor for ThemeFontRow(0);
    sub_1001F1160(qword_100ADC258, &unk_10081B510);
    sub_10079BDF4();
    v13 = v20;
  }

  else
  {
    v10 = sub_10079DF24();
    v11 = _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    KeyPath = swift_getKeyPath();
    type metadata accessor for ThemeFontRow(0);
    sub_1001F1160(qword_100ADC258, &unk_10081B510);
    sub_10079BDF4();
    v13 = v20;
    v9 = v6;
  }

  v14 = &enum case for Image.Scale.small(_:);
  if (v13 <= 2.0)
  {
    v14 = &enum case for Image.Scale.large(_:);
  }

  (*(v4 + 104))(v9, *v14, v3);
  v15 = swift_getKeyPath();
  v16 = (a1 + *(sub_1001F1160(&qword_100AE74A0, &unk_10082BA88) + 36));
  v17 = sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0);
  result = (*(v4 + 32))(v16 + *(v17 + 28), v9, v3);
  *v16 = v15;
  *a1 = v10;
  a1[1] = KeyPath;
  a1[2] = v11;
  return result;
}

void sub_1006CCE6C(uint64_t *a2@<X8>, double a3@<D0>)
{
  *a2 = sub_10079E474();
  a2[1] = v5;
  v6 = sub_1001F1160(&qword_100AF2E20, &qword_10083F000);
  sub_1006CCEC4(a2 + *(v6 + 44), a3);
}

void sub_1006CCEC4(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1001F1160(&qword_100ADBD70, &qword_10081A670);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v18 - v9);
  v11 = sub_10079DE34();
  v12 = sub_10079DF24();
  v13 = (v10 + *(v5 + 44));
  v14 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v15 = enum case for Image.Scale.small(_:);
  v16 = sub_10079DF84();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v10 = v12;
  sub_1000077D8(v10, v7, &qword_100ADBD70, &qword_10081A670);
  *a1 = a2;
  *(a1 + 8) = v11;
  *(a1 + 16) = xmmword_10083EDA0;
  v17 = sub_1001F1160(&qword_100AF2E28, &qword_10083F008);
  sub_1000077D8(v7, a1 + *(v17 + 48), &qword_100ADBD70, &qword_10081A670);

  sub_100007840(v10, &qword_100ADBD70, &qword_10081A670);
  sub_100007840(v7, &qword_100ADBD70, &qword_10081A670);
}

unint64_t sub_1006CD0D0()
{
  result = qword_100AF2DF0;
  if (!qword_100AF2DF0)
  {
    sub_1001F1234(&qword_100AF2DD8, &qword_10083EF50);
    sub_1006CD154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2DF0);
  }

  return result;
}

unint64_t sub_1006CD154()
{
  result = qword_100AF2DF8;
  if (!qword_100AF2DF8)
  {
    sub_1001F1234(&qword_100AF2DE8, &qword_10083EF60);
    sub_100005920(&qword_100AF2E00, &qword_100AF2DD0, &qword_10083EF48, &protocol conformance descriptor for Button<A>);
    sub_1006CD20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2DF8);
  }

  return result;
}

unint64_t sub_1006CD20C()
{
  result = qword_100AF2E08;
  if (!qword_100AF2E08)
  {
    sub_1001F1234(&qword_100AE74A0, &unk_10082BA88);
    sub_10024AB60();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0, &qword_1008173A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E08);
  }

  return result;
}

unint64_t sub_1006CD2CC()
{
  result = qword_100AF2E30;
  if (!qword_100AF2E30)
  {
    sub_1001F1234(&qword_100AF2D98, &qword_10083EF10);
    sub_1006CD384();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E30);
  }

  return result;
}

unint64_t sub_1006CD384()
{
  result = qword_100AF2E38;
  if (!qword_100AF2E38)
  {
    sub_1001F1234(&qword_100AF2D90, &qword_10083EED8);
    sub_1006CD410();
    sub_100460338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E38);
  }

  return result;
}

unint64_t sub_1006CD410()
{
  result = qword_100AF2E40;
  if (!qword_100AF2E40)
  {
    sub_1001F1234(&qword_100AF2D70, &qword_10083EEC8);
    sub_1001F1234(&qword_100AF2D60, &qword_10083EEB8);
    sub_100005920(&qword_100AF2D88, &qword_100AF2D60, &qword_10083EEB8, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_1006CD53C(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2E40);
  }

  return result;
}

uint64_t sub_1006CD53C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006CD584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController) isLowLight];
    sub_10079B8F4();
  }
}

uint64_t sub_1006CD608(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    v8[3] = swift_getObjectType();
    v8[0] = a3;
    sub_1000076D4(v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v9);

  return sub_1000230BC(v9);
}

id sub_1006CD6B0()
{
  [*&v0[OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LightLevelControllerWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006CD81C()
{
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  sub_100437DF0();
  return sub_10079BA14();
}

uint64_t sub_1006CD88C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, static Logger.finishedStateManager);
  sub_100008B98(v0, static Logger.finishedStateManager);
  return sub_10079ACD4();
}

uint64_t Logger.finishedStateManager.unsafeMutableAddressor()
{
  if (qword_100AD1AF0 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();

  return sub_100008B98(v0, static Logger.finishedStateManager);
}

uint64_t static Logger.finishedStateManager.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  v3 = sub_100008B98(v2, static Logger.finishedStateManager);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id DownloadPurchaseMonitor.init()()
{
  v12 = sub_1007A2D64();
  v0 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A2CF4();
  __chkstk_darwin(v3);
  v4 = sub_1007A1CA4();
  __chkstk_darwin(v4 - 8);
  v11 = OBJC_IVAR___BKDownloadPurchaseMonitor_queue;
  v10[1] = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  sub_1007A1C74();
  v15 = _swiftEmptyArrayStorage;
  sub_1006D008C(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20, &qword_100824350);
  sub_100609AA4(&qword_100AE8230, &unk_100AD1E20, &qword_100824350);
  sub_1007A3594();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v5 = sub_1007A2DA4();
  v6 = v13;
  *&v13[v11] = v5;
  *&v6[OBJC_IVAR___BKDownloadPurchaseMonitor_purchaseAttempts] = _swiftEmptyDictionarySingleton;
  v7 = v6;
  v8 = type metadata accessor for DownloadPurchaseMonitor();
  v14.receiver = v7;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_1006CDD28(SEL *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    [v3 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006CDDA8(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v8 = a1;
  v6 = [v5 sharedInstance];
  if (v6)
  {
    v7 = v6;
    [v6 *a3];
  }

  else
  {
    __break(1u);
  }
}

double sub_1006CDE44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = OBJC_IVAR___BKDownloadPurchaseMonitor_purchaseAttempts;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_10000E53C(a2, a3);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v17 = [a5 isAudiobook];
    v18 = a4;

    v15 = a3;
    v16 = a2;
    goto LABEL_6;
  }

  v14 = *(v11 + 56) + 32 * v12;
  v16 = *v14;
  v15 = *(v14 + 8);
  a4 = *(v14 + 16);
  v17 = *(v14 + 24);
  v18 = a4;

LABEL_6:
  swift_beginAccess();

  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1002F73DC(v16, v15, a4, v17, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v10) = v22;
  swift_endAccess();

  return result;
}

uint64_t sub_1006CE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_100798034();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v8[16] = *(v10 + 64);
  v8[17] = swift_task_alloc();
  sub_1007A26F4();
  v8[18] = sub_1007A26E4();
  v12 = sub_1007A2694();

  return _swift_task_switch(sub_1006CE24C, v12, v11);
}

void sub_1006CE24C()
{

  v1 = [objc_opt_self() delegate];
  v2 = [v1 serviceCenter];

  v0[8] = type metadata accessor for ReadingActivityService();
  sub_1001F1160(&qword_100AF2EC0, &qword_1008323E0);
  v3 = sub_1007A22E4();
  v5 = sub_10057FAF8(v3, v4);

  if (v5)
  {
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v21 = v0[12];
    v10 = v0[11];
    v20 = v0[10];
    v11 = v0[9];

    v22 = [objc_opt_self() defaultManager];
    (*(v7 + 16))(v6, v9, v8);
    v12 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v13 = swift_allocObject();
    v14 = v11;
    *(v13 + 2) = v11;
    *(v13 + 3) = v20;
    *(v13 + 4) = v10;
    *(v13 + 5) = v5;
    *(v13 + 6) = v21;
    (*(v7 + 32))(&v13[v12], v6, v8);
    v0[6] = sub_1006D0000;
    v0[7] = v13;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100201C54;
    v0[5] = &unk_100A2D118;
    v15 = _Block_copy(v0 + 2);
    v16 = v21;
    v17 = v14;

    v18 = v5;

    [v22 performBlockOnWorkerQueue:v15];
    _Block_release(v15);

    v19 = v0[1];

    v19();
  }

  else
  {
    __break(1u);
  }
}

void sub_1006CE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a6;
  v45 = a5;
  v10 = sub_1001F1160(&qword_100AE2578, &unk_100824360);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - v11;
  v13 = sub_100797D94();
  v42 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100798234();
  v15 = *(v46 - 8);
  __chkstk_darwin(v46);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v18 - 8);
  v20 = v40 - v19;
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_1007A2214();
  v47 = [v21 libraryMutableAssetWithPermanentOrTemporaryAssetID:v22 inManagedObjectContext:a1];

  if (v47)
  {
    if (([v47 isFinished]& 1) != 0)
    {
      [v47 setFinishedStateUserSetsUnfinished];
      v23 = [v47 permanentOrTemporaryAssetID];
      sub_1007A2254();

      v24 = [v47 dateFinished];
      if (v24)
      {
        v25 = v24;
        sub_100796B64();

        v26 = sub_100796BB4();
        (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
      }

      else
      {
        v31 = sub_100796BB4();
        (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
      }

      v40[2] = a3;
      v40[3] = a4;
      if (*(v45 + OBJC_IVAR___BKReadingActivityService_achievementsController))
      {

        sub_10079EAD4();

        sub_100007840(v20, &unk_100ADB5C0, &unk_100816880);
        sub_100798004();
        v32 = sub_100797FF4();
        v40[1] = sub_1007A2254();
        v33 = v17;
        (*(v15 + 104))(v17, enum case for ContentAcquisitionType.storeBought(_:), v46);
        v35 = v41;
        v34 = v42;
        (*(v42 + 104))(v41, enum case for ContentType.unknown(_:), v13);
        v36 = enum case for SeriesType.unknown(_:);
        v37 = sub_100797D14();
        v38 = *(v37 - 8);
        v45 = v13;
        v39 = v38;
        (*(v38 + 104))(v12, v36, v37);
        (*(v39 + 56))(v12, 0, 1, v37);
        v48 = 1;
        sub_100797EE4();

        sub_100007840(v12, &qword_100AE2578, &unk_100824360);
        (*(v34 + 8))(v35, v45);
        (*(v15 + 8))(v33, v46);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  else
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v27 = sub_10079ACE4();
    sub_100008B98(v27, static Logger.finishedStateManager);
    v47 = sub_10079ACC4();
    v28 = sub_1007A29B4();
    if (os_log_type_enabled(v47, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v47, v28, "asset lookup failed", v29, 2u);
    }
  }

  v30 = v47;
}

void sub_1006CEAF0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v5 = sub_10079ACE4();
    sub_100008B98(v5, static Logger.finishedStateManager);
    swift_errorRetain();
    oslog = sub_10079ACC4();
    v6 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v6, "purchasing book: unable to determine isTrackedAsRecent %@", v7, 0xCu);
      sub_100007840(v8, &unk_100AD9480, &qword_1008113B0);
    }
  }

  else if (a1)
  {
    v10 = [objc_opt_self() defaultManager];
    v11 = [v10 collectionController];

    v12 = sub_1007A2214();
    v13 = kBKCollectionDefaultIDWantToRead;
    aBlock[4] = sub_1006CED6C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D63C0;
    aBlock[3] = &unk_100A2D0C8;
    v14 = _Block_copy(aBlock);
    v15 = v13;
    [v11 removeAssetID:v12 fromCollectionID:v15 completion:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }
}

void sub_1006CED6C(char a1, uint64_t a2)
{
  if (a2 || (a1 & 1) == 0)
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, static Logger.finishedStateManager);
    swift_errorRetain();
    oslog = sub_10079ACC4();
    v7 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v8 + 4) = v10;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "purchasing book: isTrackedAsRecent, unable to remove from WTR %@", v8, 0xCu);
      sub_100007840(v9, &unk_100AD9480, &qword_1008113B0);

      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, static Logger.finishedStateManager);
    oslog = sub_10079ACC4();
    v4 = sub_1007A29D4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "purchasing book: isTrackedAsRecent, removed from WTR", v5, 2u);
LABEL_14:
    }
  }
}

id DownloadPurchaseMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadPurchaseMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1006CF000(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  result = __chkstk_darwin(v8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v10;
    v40 = v9;
    v41 = v5;
    v14 = a1;
    v15 = [v14 storeIdentifier];
    v16 = [v15 stringValue];

    v17 = sub_1007A2254();
    v37 = v18;
    v38 = v17;

    v19 = [v14 analyticsInfo];
    v20 = sub_1007A2044();

    sub_100798454();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = NSStringFromClass(ObjCClassFromMetadata);
    v23 = sub_1007A2254();
    v25 = v24;

    v44[0] = v23;
    v44[1] = v25;
    sub_1007A36B4();
    if (*(v20 + 16) && (v26 = sub_10000E2A4(aBlock), (v27 & 1) != 0))
    {
      sub_100007484(*(v20 + 56) + 32 * v26, v44);
      sub_10002899C(aBlock);

      if (swift_dynamicCast())
      {
        v28 = v42;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {

      sub_10002899C(aBlock);
      v28 = 0;
    }

    v36[1] = *&v2[OBJC_IVAR___BKDownloadPurchaseMonitor_queue];
    v29 = swift_allocObject();
    v30 = v37;
    v31 = v38;
    v29[2] = v2;
    v29[3] = v31;
    v29[4] = v30;
    v29[5] = v28;
    v29[6] = v14;
    aBlock[4] = sub_1006D007C;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A2D168;
    v32 = _Block_copy(aBlock);
    v33 = v28;
    v34 = v14;
    v35 = v2;
    sub_1007A1C74();
    v44[0] = _swiftEmptyArrayStorage;
    sub_1006D008C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100609AA4(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v32);

    (*(v41 + 8))(v7, v4);
    (*(v39 + 8))(v13, v40);
  }

  return result;
}

void sub_1006CF44C(void *a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v6 = &v76[-v5];
  v7 = sub_100798034();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  __chkstk_darwin(v7);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v76[-v13];
  if (!a1)
  {
    goto LABEL_22;
  }

  v85 = v12;
  v15 = a1;
  v16 = [v15 storeID];
  if (!v16)
  {

LABEL_22:
    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v54 = sub_10079ACE4();
    sub_100008B98(v54, static Logger.finishedStateManager);
    v87 = sub_10079ACC4();
    v55 = sub_1007A29B4();
    if (os_log_type_enabled(v87, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v87, v55, "purchase completed with no purchase response", v56, 2u);
    }

    v57 = v87;

    return;
  }

  v84 = v14;
  v87 = v15;
  v17 = v16;
  v18 = [v16 stringValue];

  v19 = v18;
  if (!v18)
  {
    sub_1007A2254();
    v19 = sub_1007A2214();
  }

  v86 = v19;
  v20 = sub_1007A2254();
  v22 = v21;
  v23 = OBJC_IVAR___BKDownloadPurchaseMonitor_purchaseAttempts;
  swift_beginAccess();
  v24 = *&v2[v23];
  v25 = *(v24 + 16);

  if (v25 && (v26 = v2, v27 = sub_10000E53C(v20, v22), (v28 & 1) != 0))
  {
    v81 = v8;
    v29 = *(v24 + 56) + 32 * v27;
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
    v77 = *(v29 + 24);
    v78 = v30;
    v82 = v30;
    v83 = v31;

    swift_beginAccess();
    v79 = v20;
    v32 = sub_1002EF674(v20, v22);
    v34 = v33;
    v36 = v35;
    swift_endAccess();
    sub_1006CFE8C(v32, v34, v36);
    v37 = v87;
    v38 = [v87 purchaseResponseItems];
    if (!v38)
    {

      return;
    }

    v39 = v38;
    v40 = v82;
    v80 = v22;
    sub_10000A7C4(0, &qword_100ADD580, BLPurchaseResponseItem_ptr);
    v41 = sub_1007A25E4();

    v42 = v86;
    if (v41 >> 62)
    {
      v43 = sub_1007A38D4();
    }

    else
    {
      v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v26;
    v45 = v81;
    if (!v43)
    {

      return;
    }

    if ((v41 & 0xC000000000000001) != 0)
    {
      v46 = sub_1007A3784();
    }

    else
    {
      if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v46 = *(v41 + 32);
    }

    v47 = v46;

    if ([v47 isPurchaseRedownload])
    {
    }

    else
    {
      v81 = v47;
      if (v77)
      {
        v58 = [v87 hasRacGUID];
        v59 = v80;
        v60 = v84;
        if (v58)
        {
          v61 = &enum case for ProductionType.sgProduction(_:);
        }

        else
        {
          v61 = &enum case for ProductionType.nonSGProduction(_:);
        }

        (*(v45 + 13))(v84, *v61, v85);
      }

      else
      {
        v60 = v84;
        (*(v45 + 13))(v84, enum case for ProductionType.unknown(_:), v85);
        v59 = v80;
      }

      v62 = sub_1007A2744();
      (*(*(v62 - 8) + 56))(v6, 1, 1, v62);
      v63 = v85;
      (*(v45 + 2))(v10, v60, v85);
      sub_1007A26F4();
      v82 = v40;
      v64 = v44;

      v65 = sub_1007A26E4();
      v66 = v45;
      v67 = (v45[80] + 64) & ~v45[80];
      v68 = swift_allocObject();
      *(v68 + 2) = v65;
      *(v68 + 3) = &protocol witness table for MainActor;
      v69 = v78;
      v70 = v79;
      *(v68 + 4) = v64;
      *(v68 + 5) = v70;
      *(v68 + 6) = v59;
      *(v68 + 7) = v69;
      (*(v66 + 4))(&v68[v67], v10, v63);
      sub_1003457A0(0, 0, v6, &unk_10083F0C0, v68);

      v71 = [objc_opt_self() defaultManager];
      v72 = swift_allocObject();
      v72[2] = v64;
      v72[3] = v70;
      v72[4] = v59;
      aBlock[4] = sub_1006CFFEC;
      aBlock[5] = v72;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002D63C0;
      aBlock[3] = &unk_100A2D0A0;
      v73 = _Block_copy(aBlock);
      v74 = v64;

      v75 = v86;
      [v71 isTrackedAsRecent:v86 completion:v73];

      _Block_release(v73);

      (*(v66 + 1))(v84, v63);
    }
  }

  else
  {

    if (qword_100AD1AF0 != -1)
    {
      swift_once();
    }

    v48 = sub_10079ACE4();
    sub_100008B98(v48, static Logger.finishedStateManager);
    v49 = sub_10079ACC4();
    v50 = sub_1007A29B4();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v87;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "could not find purchase attempt", v53, 2u);
    }
  }
}

void sub_1006CFCA8(void *a1)
{
  if (a1)
  {
    v12 = a1;
    v1 = [v12 storeID];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 stringValue];

      v4 = sub_1007A2254();
      v6 = v5;

      swift_beginAccess();
      v7 = sub_1002EF674(v4, v6);
      v9 = v8;
      v11 = v10;
      swift_endAccess();
      sub_1006CFE8C(v7, v9, v11);
    }

    else
    {
    }
  }
}

uint64_t sub_1006CFDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1006CFE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1006CFE8C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1006CFED4(uint64_t a1)
{
  v4 = *(sub_100798034() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002812C;

  return sub_1006CE148(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

void sub_1006D0000(uint64_t a1)
{
  v3 = *(sub_100798034() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_1006CE4D8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1006D008C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006D00EC()
{
  sub_10002B130(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1006D0148(uint64_t a1, uint64_t a2)
{
  v3 = sub_100796594();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_100796564();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006D023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_1007A1D04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100796594();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a3;
  (*(v10 + 32))(v14 + v13, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_100017E74();

  *v8 = sub_1007A2D74();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  LOBYTE(a3) = sub_1007A1D34();
  result = (*(v6 + 8))(v8, v5);
  if (a3)
  {

    (*(v14 + 16))(v14 + v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t PresentationDonationItem.Intent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1006D04AC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1006D0664(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1006D06C4()
{
  result = qword_100AF2F88;
  if (!qword_100AF2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2F88);
  }

  return result;
}

uint64_t sub_1006D07CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_1006D0890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_1006D0954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t ReportIssueViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__disableSendButton;
  v2 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__items;
  v4 = sub_1001F1160(&qword_100AF3050, &unk_10083F218);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__selectedItemID;
  v6 = sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ReportIssueViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__disableSendButton;
  v2 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__items;
  v4 = sub_1001F1160(&qword_100AF3050, &unk_10083F218);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__selectedItemID;
  v6 = sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1006D0C34()
{
  v18 = sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v17 - v2;
  v4 = sub_1001F1160(&qword_100AF3050, &unk_10083F218);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__disableSendButton;
  LOBYTE(v19) = 1;
  sub_10079B964();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__items;
  v19 = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AF6600, &qword_10083F210);
  sub_10079B964();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC5Books20ReportIssueViewModel__selectedItemID;
  v19 = 0;
  v20 = 0;
  sub_1001F1160(&qword_100AD4F30, &unk_100816940);
  sub_10079B964();
  (*(v1 + 32))(v0 + v14, v3, v18);
  v15 = (v0 + OBJC_IVAR____TtC5Books20ReportIssueViewModel_textEntered);
  *v15 = 0;
  v15[1] = 0;
  return v0;
}

uint64_t type metadata accessor for ReportIssueViewModel(uint64_t a1)
{
  result = qword_100AF3088;
  if (!qword_100AF3088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006D0F40(uint64_t a1)
{
  sub_1004B6D70();
  if (v1 <= 0x3F)
  {
    sub_100205CB8(319, &unk_100AF3098, &qword_100AF6600, &qword_10083F210);
    if (v2 <= 0x3F)
    {
      sub_100205CB8(319, &qword_100AD4F28, &qword_100AD4F30, &unk_100816940);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

Swift::Int sub_1006D108C()
{
  v1 = *(v0 + 64);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

uint64_t sub_1006D1158(uint64_t a1)
{
  v2 = *(v1 + 64);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v2);

  return _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1006D1218(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C24(v2);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

uint64_t sub_1006D12E0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4();
  }
}

unint64_t sub_1006D1314()
{
  result = qword_100AF3130;
  if (!qword_100AF3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3130);
  }

  return result;
}

void sub_1006D1368(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1003BD200(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v13 = v9;
      a1(&v13);
      if (v3)
      {
        break;
      }

      v14 = v7;
      v11 = v7[2];
      v10 = v7[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_1003BD200((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      v7[2] = v12;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_1006D1460(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    v10 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v10;
    }

    v26 = _swiftEmptyArrayStorage;
    result = sub_1003BD9BC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v10 = v26;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = sub_1007A3784();
      }

      else
      {
        if (v12 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a3 + 8 * v12 + 32);
      }

      v15 = v14;
      v25 = v14;
      v22(&v25, &v24);
      if (v4)
      {

        return v10;
      }

      v4 = 0;

      v26 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003BD9BC((v16 > 1), v17 + 1, 1);
        v10 = v26;
      }

      v10[2] = v17 + 1;
      sub_1005F5308(v8, v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17);
      ++v12;
      if (v13 == v19)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void sub_1006D1688(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      a1(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_1006D1720(void (*a1)(char *), double a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v20 = sub_10079A984();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4 + 56;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 56);
  v13 = (v10 + 63) >> 6;
  v17 = v6 + 16;
  v19 = (v6 + 8);
  v21 = a4;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
      v16 = v20;
LABEL_9:
      (*(v6 + 16))(v8, *(v21 + 48) + *(v6 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
      v18(v8);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      (*v19)(v8, v16);
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v19)(v8, v16);
LABEL_13:
  }

  else
  {
LABEL_5:
    v16 = v20;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        goto LABEL_13;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006D191C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_10079A084();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_100796C04();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_10079A7A4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_100799B14();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v9 = sub_10079A984();
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();
  v10 = sub_10079A4B4();
  v3[26] = v10;
  v3[27] = *(v10 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1006D1C2C, 0, 0);
}

uint64_t sub_1006D1C2C()
{
  v0[2] = _swiftEmptyDictionarySingleton;
  v1 = _swiftEmptyArrayStorage;
  v0[3] = _swiftEmptyArrayStorage;
  v2 = v0[4];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[27];
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v16 = v6;
    v17 = (v0 + 3);
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v15 = *(v5 + 56);
    do
    {
      v8 = v0[30];
      v9 = v0[26];
      v16(v8, v7, v9);
      v10 = sub_10079A474();
      v11 = swift_task_alloc();
      v11[2] = v0 + 2;
      v11[3] = v8;
      v11[4] = v17;
      sub_1006D1720(sub_1006D3774, v12, v11, v10);

      (*(v5 - 8))(v8, v9);
      v7 += v15;
      --v3;
    }

    while (v3);
    sub_10079A484();
    v1 = *v17;
  }

  v0[31] = v1;
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_1006D1DF0;

  return sub_1006D6014(v1);
}

uint64_t sub_1006D1DF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_1006D2634;
  }

  else
  {
    v4 = sub_1006D1F04;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1006D1F04()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[33];
    v5 = v0[24];
    v81 = v0[20];
    v66 = v0[19];
    v85 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v73 = (v0[14] + 8);
    v74 = (v0[17] + 8);
    v75 = v0[27];
    v69 = (v75 + 8);
    v6 = (v5 + 8);
    v67 = v0[8];
    v65 = v0[11];
    v7 = _swiftEmptyDictionarySingleton;
    v71 = *(v1 + 16);
    v72 = v0[31];
    v70 = v4;
    v80 = v5;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      (*(v5 + 16))(v0[25], v85 + *(v5 + 72) * v3, v0[23]);
      v8 = sub_10079A964();
      if (*(v4 + 16))
      {
        v9 = v8;
        v10 = sub_1002F9CDC(v8);
        if (v11)
        {
          break;
        }
      }

      (*v6)(v0[25], v0[23]);
LABEL_4:
      if (++v3 == v2)
      {

        v84 = v7;
        goto LABEL_39;
      }
    }

    v12 = v0[21];
    v13 = v0[22];
    sub_1006D7714(*(v4 + 56) + *(v81 + 72) * v10, v12);
    sub_1005F5308(v12, v13);
    v14 = v0[2];
    if (!*(v14 + 16) || (v15 = sub_1002F9CDC(v9), (v16 & 1) == 0))
    {
      v44 = v0[25];
      v45 = v0[23];
      sub_1006D7778(v0[22]);
      (*v6)(v44, v45);
LABEL_34:
      v5 = v80;
      goto LABEL_4;
    }

    v82 = v7;
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[26];
    v20 = v0[18];
    v21 = v0[15];
    v76 = v0[16];
    v78 = v0[13];
    (*(v75 + 16))(v18, *(v14 + 56) + *(v75 + 72) * v15, v19);
    (*(v75 + 32))(v17, v18, v19);
    v22 = sub_10079A494();
    sub_10079A064();
    sub_100799AE4();
    (*v74)(v20, v76);
    v23 = sub_10079A5F4();
    (*v73)(v21, v78);
    if (*(v22 + 16))
    {
      v24 = sub_1007A3BF4();
      v25 = -1 << *(v22 + 32);
      v26 = v24 & ~v25;
      if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (*(*(v22 + 48) + 8 * v26) != v23)
        {
          v26 = (v26 + 1) & v27;
          if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v29 = v0[22];
        goto LABEL_33;
      }
    }

LABEL_15:

    v28 = sub_10079A484();
    v29 = v0[22];
    if (v28 & 1) == 0 && (*(v29 + *(v66 + 20)))
    {
LABEL_33:
      v7 = v82;
      v4 = v70;
      v2 = v71;
      v62 = v0[25];
      v63 = v0[23];
      (*v69)(v0[29], v0[26]);
      sub_1006D7778(v29);
      (*v6)(v62, v63);
      v1 = v72;
      goto LABEL_34;
    }

    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[7];
    sub_10079A4A4();
    (*(v67 + 16))(v31, v29, v32);
    v33 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = sub_1002EC564(v30);
    v37 = v82[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_46;
    }

    v40 = v35;
    if (v82[3] < v39)
    {
      v41 = v0[12];
      sub_1003D9108(v39, isUniquelyReferenced_nonNull_native);
      v33 = v82;
      v42 = sub_1002EC564(v41);
      if ((v40 & 1) != (v43 & 1))
      {

        sub_1007A3B24();
        return;
      }

      v36 = v42;
      if (v40)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v35 & 1) == 0)
      {
LABEL_25:
        v46 = v0[12];
        v47 = v0[10];
        v33[(v36 >> 6) + 8] |= 1 << v36;
        (*(v65 + 16))(v33[6] + *(v65 + 72) * v36, v46, v47);
        *(v33[7] + 8 * v36) = _swiftEmptyArrayStorage;
        v48 = v33[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_47;
        }

        v33[2] = v50;
      }
    }

    else
    {
      sub_1002F3C08();
      v33 = v82;
      if ((v40 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    v51 = v33[7];
    v52 = *(v51 + 8 * v36);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + 8 * v36) = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_10066C9C4(0, v52[2] + 1, 1, v52);
      *(v51 + 8 * v36) = v52;
    }

    v83 = v33;
    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      *(v51 + 8 * v36) = sub_10066C9C4((v54 > 1), v55 + 1, 1, v52);
    }

    v68 = v51;
    v56 = v0[29];
    v58 = v0[25];
    v57 = v0[26];
    v60 = v0[22];
    v59 = v0[23];
    v79 = v0[9];
    v77 = v0[7];
    (*(v65 + 8))(v0[12], v0[10]);
    (*v69)(v56, v57);
    sub_1006D7778(v60);
    (*v6)(v58, v59);
    v61 = *(v68 + 8 * v36);
    *(v61 + 16) = v55 + 1;
    (*(v67 + 32))(v61 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v55, v79, v77);
    v7 = v83;
    v2 = v71;
    v1 = v72;
    v4 = v70;
    goto LABEL_34;
  }

  v84 = _swiftEmptyDictionarySingleton;
LABEL_39:

  v64 = v0[1];

  v64(v84);
}

uint64_t sub_1006D2634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D2730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v45 = a4;
  v41 = a3;
  v42 = a2;
  v46 = sub_10079A984();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AED498, &qword_1008352B8);
  __chkstk_darwin(v7 - 8);
  v40 = &v40 - v8;
  v9 = sub_10079A6D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_10079A8B4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v43 = a1;
  sub_10079A974();
  sub_10079A684();
  (*(v10 + 8))(v12, v9);
  v23 = sub_10079A674();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    return sub_100007840(v15, &qword_100AEE558, &qword_10083F4D0);
  }

  sub_10079A634();
  (*(v24 + 8))(v15, v23);
  (*(v17 + 32))(v22, v19, v16);
  if ((sub_10079A8A4() & 1) == 0)
  {
    return (*(v17 + 8))(v22, v16);
  }

  v26 = v43;
  v27 = sub_10079A964();
  v28 = sub_10079A4B4();
  v29 = *(v28 - 8);
  v30 = v40;
  (*(v29 + 16))(v40, v41, v28);
  (*(v29 + 56))(v30, 0, 1, v28);
  sub_1005EA998(v30, v27);
  v31 = v44;
  v32 = v26;
  v33 = v46;
  (*(v44 + 16))(v47, v32, v46);
  v34 = v45;
  v35 = *v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v34 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_10066C9EC(0, v35[2] + 1, 1, v35);
    *v34 = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    *v34 = sub_10066C9EC((v37 > 1), v38 + 1, 1, v35);
  }

  (*(v17 + 8))(v22, v16);
  v39 = *v34;
  *(v39 + 16) = v38 + 1;
  return (*(v31 + 32))(v39 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v38, v47, v33);
}

uint64_t sub_1006D2C50()
{
  v0 = sub_10079A6D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079A974();
  sub_10079A6C4();
  return (*(v1 + 8))(v3, v0);
}

void sub_1006D2D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v5 = sub_1001F1160(&qword_100AED490, &qword_1008352B0);
  __chkstk_darwin(v5 - 8);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v63 - v8;
  v70 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v79 = *(v70 - 8);
  __chkstk_darwin(v70);
  v78 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v63 - v11;
  __chkstk_darwin(v12);
  v66 = &v63 - v13;
  v14 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v14 - 8);
  v77 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  v19 = sub_10079A6D4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10079A674();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  sub_10079A974();
  sub_10079A684();
  v27 = v22;
  v28 = v24;
  (*(v20 + 8))(v27, v19);
  v76 = *(v24 + 48);
  if (v76(v18, 1, v23) == 1)
  {
    sub_100007840(v18, &qword_100AEE558, &qword_10083F4D0);
    return;
  }

  (*(v24 + 32))(v26, v18, v23);
  v65 = v26;
  v81 = sub_10079A664();
  v29 = sub_1007A3A74();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v64 = v24;
  v31 = sub_10000E53C(v29, v30);
  v33 = v32;
  v28 = v64;

  v34 = v80;
  if ((v33 & 1) == 0)
  {
LABEL_11:
    (*(v28 + 8))(v65, v23);
    return;
  }

  v35 = *(*(a3 + 56) + 8 * v31);
  v36 = sub_1007994B4();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v36);
  *(&v63 - 2) = v71;
  v38 = sub_1006D1460(sub_1006D781C, (&v63 - 4), v37);
  v80 = v34;
  if (v34)
  {

    (*(v28 + 8))(v65, v23);
    return;
  }

  v74 = v23;
  v39 = v38;

  v40 = v39;
  v73 = v39[2];
  if (v73)
  {
    v41 = 0;
    v42 = _swiftEmptyArrayStorage;
    v43 = v75;
    v72 = v35;
    while (v41 < v40[2])
    {
      v44 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v45 = *(v79 + 72);
      v46 = v40;
      sub_1006D7714(v40 + v44 + v45 * v41, v43);
      v47 = v77;
      sub_10079A074();
      v48 = v76(v47, 1, v74);
      sub_100007840(v47, &qword_100AEE558, &qword_10083F4D0);
      if (v48 == 1)
      {
        sub_1006D7778(v43);
      }

      else
      {
        sub_1005F5308(v43, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD9BC(0, v42[2] + 1, 1);
          v43 = v75;
          v42 = v81;
        }

        v51 = v42[2];
        v50 = v42[3];
        if (v51 >= v50 >> 1)
        {
          sub_1003BD9BC((v50 > 1), v51 + 1, 1);
          v43 = v75;
          v42 = v81;
        }

        v42[2] = v51 + 1;
        sub_1005F5308(v78, v42 + v44 + v51 * v45);
      }

      ++v41;
      v35 = v72;
      v40 = v46;
      if (v73 == v41)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:

    __break(1u);
    return;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_24:

  v81 = v42;

  v52 = v80;
  sub_1006D43E8(&v81);
  if (v52)
  {
    goto LABEL_30;
  }

  v54 = v81;
  __chkstk_darwin(v53);
  v55 = v65;
  *(&v63 - 2) = v65;
  v56 = v69;
  sub_1006A1008(sub_1006D783C, v54, v69);

  v57 = v79;
  v58 = v70;
  if ((*(v79 + 48))(v56, 1, v70) == 1)
  {

    sub_100007840(v56, &qword_100AED490, &qword_1008352B0);
  }

  else
  {
    v59 = v56;
    v60 = v66;
    sub_1005F5308(v59, v66);
    v61 = sub_10079A964();
    v62 = v67;
    sub_1006D7714(v60, v67);
    (*(v57 + 56))(v62, 0, 1, v58);
    sub_1005EABE8(v62, v61);

    sub_1006D7778(v60);
  }

  (*(v64 + 8))(v55, v74);
}

uint64_t sub_1006D34D8()
{
  v0 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_10079A074();
  v3 = sub_10079A674();
  v4 = *(v3 - 8);
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_10079A644();
    (*(v4 + 8))(v2, v3);
    return sub_10079A644() < v6;
  }

  return result;
}

uint64_t sub_1006D3608()
{
  v1 = OBJC_IVAR____TtC5Books57MediaAPINextInOrderedSeriesSeedBasedRecommendationService_catalogService;
  v2 = sub_100798FE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1006D36AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002104D8;

  return sub_1006D191C(a1, a2);
}

void sub_1006D3794(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v22 = a4;
  v8 = sub_10079A984();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10079A084();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  (*(v9 + 16))(v11, a2, v8, v14);
  v18 = v17;
  sub_1006D3974(v18, v11, v16);
  if (v5)
  {
    *v23 = v5;
  }

  else
  {
    v19 = [v18 isExplicit];
    v20 = v22;
    (*(v13 + 32))(v22, v16, v12);
    *(v20 + *(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) + 20)) = v19;
  }
}

void sub_1006D3974(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = sub_1001F1160(&qword_100AD6730, &qword_100812D88);
  __chkstk_darwin(v8 - 8);
  v95 = &v77 - v9;
  v10 = sub_1001F1160(&qword_100AD6738, &qword_100812D90);
  __chkstk_darwin(v10 - 8);
  v93 = &v77 - v11;
  v12 = sub_10079A734();
  __chkstk_darwin(v12 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10079A7A4();
  __chkstk_darwin(v15 - 8);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100799B14();
  __chkstk_darwin(v17 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10079A6D4();
  v92 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = sub_100799574();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  v28 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v29 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_66;
  }

  v90 = v19;
  if ((v26 & 0x1000000000000000) != 0)
  {
    v98 = 0;
    sub_10063E4AC(v24, v26, 10);
    v50 = v76;
    goto LABEL_65;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v97[0] = v24;
    v97[1] = v26 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (v27)
      {
        if (--v27)
        {
          v42 = 0;
          v43 = v97 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            if (!is_mul_ok(v42, 0xAuLL))
            {
              break;
            }

            v35 = __CFADD__(10 * v42, v44);
            v42 = 10 * v42 + v44;
            if (v35)
            {
              break;
            }

            ++v43;
            if (!--v27)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_76:
      __break(1u);
      return;
    }

    if (v24 != 45)
    {
      if (v27)
      {
        v47 = 0;
        v48 = v97;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          if (!is_mul_ok(v47, 0xAuLL))
          {
            break;
          }

          v35 = __CFADD__(10 * v47, v49);
          v47 = 10 * v47 + v49;
          if (v35)
          {
            break;
          }

          ++v48;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v27)
    {
      if (--v27)
      {
        v36 = 0;
        v37 = v97 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v36, 0xAuLL))
          {
            break;
          }

          v35 = 10 * v36 >= v38;
          v36 = 10 * v36 - v38;
          if (!v35)
          {
            break;
          }

          ++v37;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v30 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v30 = sub_1007A37B4();
  }

  v31 = *v30;
  if (v31 == 43)
  {
    if (v28 < 1)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v27 = v28 - 1;
    if (v28 != 1)
    {
      v39 = 0;
      if (v30)
      {
        v40 = v30 + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_63;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            goto LABEL_63;
          }

          v35 = __CFADD__(10 * v39, v41);
          v39 = 10 * v39 + v41;
          if (v35)
          {
            goto LABEL_63;
          }

          ++v40;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    LOBYTE(v27) = 1;
    goto LABEL_64;
  }

  if (v31 != 45)
  {
    if (v28)
    {
      v45 = 0;
      if (v30)
      {
        while (1)
        {
          v46 = *v30 - 48;
          if (v46 > 9)
          {
            goto LABEL_63;
          }

          if (!is_mul_ok(v45, 0xAuLL))
          {
            goto LABEL_63;
          }

          v35 = __CFADD__(10 * v45, v46);
          v45 = 10 * v45 + v46;
          if (v35)
          {
            goto LABEL_63;
          }

          ++v30;
          if (!--v28)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v28 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v27 = v28 - 1;
  if (v28 == 1)
  {
    goto LABEL_63;
  }

  v32 = 0;
  if (v30)
  {
    v33 = v30 + 1;
    while (1)
    {
      v34 = *v33 - 48;
      if (v34 > 9)
      {
        goto LABEL_63;
      }

      if (!is_mul_ok(v32, 0xAuLL))
      {
        goto LABEL_63;
      }

      v35 = 10 * v32 >= v34;
      v32 = 10 * v32 - v34;
      if (!v35)
      {
        goto LABEL_63;
      }

      ++v33;
      if (!--v27)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v27) = 0;
LABEL_64:
  v98 = v27;
  v50 = v27;
LABEL_65:

  if (v50)
  {
LABEL_66:
    sub_1006D785C();
    swift_allocError();
    swift_willThrow();

    v51 = sub_10079A984();
    (*(*(v51 - 8) + 8))(a2, v51);
    return;
  }

  v52 = v23;
  v53 = v96;
  sub_100622E9C(v52, v22);
  if (v53)
  {
    v54 = sub_10079A984();
    (*(*(v54 - 8) + 8))(a2, v54);
  }

  else
  {
    v84 = v14;
    v85 = v22;
    v88 = v52;
    sub_10079A6C4();
    sub_1001F1160(&qword_100AF3228, &qword_10083F4F8);
    v55 = sub_1001F1160(&qword_100AD3620, &unk_10083F500);
    v96 = a2;
    v56 = v55 - 8;
    v57 = (*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80);
    v58 = swift_allocObject();
    v89 = xmmword_10080B690;
    *(v58 + 16) = xmmword_10080B690;
    v59 = v58 + v57;
    v77 = *(v56 + 56);
    v60 = enum case for Methodology.copurchase(_:);
    v99 = enum case for Methodology.copurchase(_:);
    v80 = sub_100799B44();
    v78 = *(v80 - 8);
    v79 = v80 - 8;
    v86 = v7;
    v61 = v78;
    v62 = *(v78 + 104);
    v81 = v78 + 104;
    v82 = v62;
    v62(v58 + v57, v60, v80);
    sub_1001F1160(&qword_100AE0A70, &qword_100821390);
    v63 = sub_10079A984();
    v83 = v63;
    v64 = *(v63 - 8);
    v87 = v20;
    v65 = v64;
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v89;
    (*(v65 + 16))(v67 + v66, v96, v63);
    *(v59 + v77) = v67;
    sub_1001F04E0(v58);
    swift_setDeallocating();
    sub_100007840(v59, &qword_100AD3620, &unk_10083F500);
    swift_deallocClassInstance();
    v68 = v93;
    sub_10079A754();
    v69 = sub_10079A774();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = sub_10079A5B4();
    (*(*(v70 - 8) + 56))(v95, 1, 1, v70);
    sub_10079A5E4();
    sub_100799AD4();
    v71 = v85;
    v95 = sub_10079A6B4();
    v72 = v71;
    v93 = sub_10079A694();
    sub_1001F1160(&qword_100AF3230, &unk_10083F510);
    v73 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v89;
    v75 = v80;
    v82(v74 + v73, v99, v80);
    sub_1001F3390(v74);
    swift_setDeallocating();
    (*(v61 + 8))(v74 + v73, v75);
    swift_deallocClassInstance();
    sub_10079A684();
    sub_10079A054();

    (*(v65 + 8))(v96, v83);
    (*(v92 + 8))(v72, v87);
  }
}

void sub_1006D43E8(uint64_t *a1)
{
  v2 = *(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1007859DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1006D4490(v5);
  *a1 = v3;
}

void sub_1006D4490(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
        v6 = sub_1007A2634();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1006D4934(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1006D45BC(0, v2, 1, a1);
  }
}

void sub_1006D45BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v50 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  __chkstk_darwin(v50);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v42 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v47 = -v23;
    v48 = v22;
    v25 = a1 - a3;
    v41 = v23;
    v26 = v22 + v23 * a3;
    v51 = &v40 - v20;
LABEL_5:
    v45 = v24;
    v46 = a3;
    v43 = v26;
    v44 = v25;
    v27 = v25;
    while (1)
    {
      v55 = v27;
      v28 = v10;
      sub_1006D7714(v26, v21);
      v54 = v24;
      sub_1006D7714(v24, v17);
      sub_10079A074();
      v29 = sub_10079A674();
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);
      if (v31(v13, 1, v29) == 1)
      {
        break;
      }

      v53 = v26;
      v52 = sub_10079A644();
      v32 = *(v30 + 8);
      v32(v13, v29);
      sub_10079A074();
      if (v31(v28, 1, v29) == 1)
      {
        goto LABEL_15;
      }

      v33 = sub_10079A644();
      v32(v28, v29);
      sub_1006D7778(v17);
      v21 = v51;
      sub_1006D7778(v51);
      v34 = v53;
      v35 = v52 < v33;
      v10 = v28;
      v36 = v55;
      v37 = v54;
      if (v35)
      {
        if (!v48)
        {
          goto LABEL_16;
        }

        v38 = v49;
        sub_1005F5308(v53, v49);
        swift_arrayInitWithTakeFrontToBack();
        sub_1005F5308(v38, v37);
        v24 = v37 + v47;
        v26 = v34 + v47;
        v39 = __CFADD__(v36, 1);
        v27 = v36 + 1;
        if (!v39)
        {
          continue;
        }
      }

      a3 = v46 + 1;
      v24 = v45 + v41;
      v25 = v44 - 1;
      v26 = v43 + v41;
      if (v46 + 1 == v42)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_1006D4934(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v153 = a1;
  v6 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v6 - 8);
  v172 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v145 - v9;
  __chkstk_darwin(v11);
  v159 = &v145 - v12;
  __chkstk_darwin(v13);
  v163 = &v145 - v14;
  __chkstk_darwin(v15);
  v149 = &v145 - v16;
  __chkstk_darwin(v17);
  v150 = &v145 - v18;
  v171 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v19 = *(v171 - 8);
  __chkstk_darwin(v171);
  v157 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v170 = &v145 - v22;
  __chkstk_darwin(v23);
  v145 = &v145 - v24;
  __chkstk_darwin(v25);
  v177 = &v145 - v26;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v165 = &v145 - v29;
  __chkstk_darwin(v30);
  v155 = &v145 - v31;
  __chkstk_darwin(v32);
  v151 = &v145 - v34;
  v35 = a3[1];
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = _swiftEmptyArrayStorage;
    v148 = a3;
    v147 = v19;
    v173 = v10;
    v146 = v33;
    v152 = a4;
    while (1)
    {
      v38 = v36;
      v158 = v37;
      if (v36 + 1 >= v35)
      {
        v58 = v36 + 1;
      }

      else
      {
        v166 = v35;
        v39 = *a3;
        v40 = *(v19 + 72);
        v41 = *a3 + v40 * (v36 + 1);
        sub_1006D7714(v41, v151);
        v154 = v36;
        v169 = v40;
        v176 = v39;
        sub_1006D7714(v39 + v40 * v36, v155);
        v42 = v150;
        sub_10079A074();
        v43 = sub_10079A674();
        v44 = *(v43 - 8);
        v46 = v44 + 48;
        v45 = *(v44 + 48);
        if (v45(v42, 1, v43) == 1)
        {
          goto LABEL_146;
        }

        v168 = sub_10079A644();
        v48 = *(v44 + 8);
        v47 = v44 + 8;
        v49 = v48;
        v48(v42, v43);
        v50 = v149;
        sub_10079A074();
        v161 = v46;
        v175 = v45;
        v51 = v45(v50, 1, v43);
        v52 = v163;
        if (v51 == 1)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v164 = sub_10079A644();
        v162 = v43;
        v160 = v47;
        v53 = v49;
        v49(v50, v43);
        sub_1006D7778(v155);
        sub_1006D7778(v151);
        v54 = (v154 + 2);
        v55 = v175;
        v56 = v176 + v169 * (v154 + 2);
        v57 = v146;
        while (1)
        {
          v58 = v166;
          if (v166 == v54)
          {
            break;
          }

          v174 = v56;
          v175 = v54;
          sub_1006D7714(v56, v165);
          v176 = v41;
          sub_1006D7714(v41, v57);
          sub_10079A074();
          v59 = v162;
          v60 = v55(v52, 1, v162);
          v61 = v159;
          if (v60 == 1)
          {
            goto LABEL_141;
          }

          v62 = v52;
          v63 = sub_10079A644();
          v53(v62, v59);
          sub_10079A074();
          if (v55(v61, 1, v59) == 1)
          {
            goto LABEL_140;
          }

          v64 = v61;
          v65 = v168 < v164;
          v66 = sub_10079A644();
          v53(v64, v59);
          sub_1006D7778(v57);
          sub_1006D7778(v165);
          v67 = v63 >= v66;
          v54 = v175 + 1;
          v56 = v174 + v169;
          v41 = v176 + v169;
          v52 = v163;
          if (((v65 ^ v67) & 1) == 0)
          {
            v58 = v175;
            break;
          }
        }

        a3 = v148;
        v19 = v147;
        a4 = v152;
        v10 = v173;
        v38 = v154;
        if (v168 < v164)
        {
          if (v58 < v154)
          {
            goto LABEL_133;
          }

          if (v154 < v58)
          {
            v68 = v58;
            v69 = v169 * (v58 - 1);
            v70 = v58 * v169;
            v166 = v58;
            v71 = v154;
            v72 = v154 * v169;
            do
            {
              if (v71 != --v68)
              {
                v73 = *a3;
                if (!*a3)
                {
                  goto LABEL_143;
                }

                sub_1005F5308(v73 + v72, v157);
                if (v72 < v69 || v73 + v72 >= (v73 + v70))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v72 != v69)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1005F5308(v157, v73 + v69);
                v10 = v173;
              }

              ++v71;
              v69 -= v169;
              v70 -= v169;
              v72 += v169;
            }

            while (v71 < v68);
            a4 = v152;
            v38 = v154;
            v58 = v166;
          }
        }
      }

      v74 = a3[1];
      if (v58 >= v74)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v58, v38))
      {
        goto LABEL_132;
      }

      if (v58 - v38 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v38, a4))
      {
        goto LABEL_134;
      }

      if (v38 + a4 >= v74)
      {
        v75 = a3[1];
      }

      else
      {
        v75 = v38 + a4;
      }

      if (v75 < v38)
      {
LABEL_135:
        __break(1u);
LABEL_136:
        v139 = sub_100784A7C(a4);
        goto LABEL_106;
      }

      if (v58 == v75)
      {
LABEL_36:
        v36 = v58;
        if (v58 < v38)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v122 = *a3;
        v123 = *(v19 + 72);
        v124 = *a3 + v123 * (v58 - 1);
        v168 = -v123;
        v154 = v38;
        v125 = v38 - v58;
        v169 = v122;
        v156 = v123;
        v126 = v122 + v58 * v123;
        v127 = v145;
        v160 = v75;
        do
        {
          v166 = v58;
          v161 = v126;
          v162 = v125;
          v128 = v125;
          v164 = v124;
          while (1)
          {
            sub_1006D7714(v126, v177);
            v175 = v124;
            sub_1006D7714(v124, v127);
            sub_10079A074();
            v129 = sub_10079A674();
            v130 = *(v129 - 8);
            v131 = *(v130 + 48);
            if (v131(v10, 1, v129) == 1)
            {
              goto LABEL_138;
            }

            v176 = v128;
            v174 = v126;
            v132 = sub_10079A644();
            v133 = *(v130 + 8);
            v133(v10, v129);
            v134 = v172;
            sub_10079A074();
            if (v131(v134, 1, v129) == 1)
            {
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }

            a4 = sub_10079A644();
            v133(v134, v129);
            sub_1006D7778(v127);
            sub_1006D7778(v177);
            if (v132 >= a4)
            {
              break;
            }

            v10 = v173;
            v135 = v176;
            if (!v169)
            {
              goto LABEL_139;
            }

            v136 = v174;
            a4 = v170;
            sub_1005F5308(v174, v170);
            v137 = v175;
            swift_arrayInitWithTakeFrontToBack();
            sub_1005F5308(a4, v137);
            v124 = v137 + v168;
            v126 = v136 + v168;
            v138 = __CFADD__(v135, 1);
            v128 = v135 + 1;
            if (v138)
            {
              goto LABEL_90;
            }
          }

          v10 = v173;
LABEL_90:
          v58 = v166 + 1;
          v124 = v164 + v156;
          v125 = v162 - 1;
          v126 = v161 + v156;
          v36 = v160;
        }

        while (v166 + 1 != v160);
        a3 = v148;
        v19 = v147;
        v38 = v154;
        if (v160 < v154)
        {
          goto LABEL_131;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v37 = v158;
      }

      else
      {
        v37 = sub_10066B274(0, *(v158 + 2) + 1, 1, v158);
      }

      v77 = *(v37 + 2);
      v76 = *(v37 + 3);
      a4 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v37 = sub_10066B274((v76 > 1), v77 + 1, 1, v37);
      }

      *(v37 + 2) = a4;
      v78 = &v37[16 * v77];
      *(v78 + 4) = v38;
      *(v78 + 5) = v36;
      if (!*v153)
      {
        goto LABEL_145;
      }

      if (v77)
      {
        v79 = *v153;
        while (1)
        {
          v10 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v80 = *(v37 + 4);
            v81 = *(v37 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_57:
            if (v83)
            {
              goto LABEL_120;
            }

            v96 = &v37[16 * a4];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_123;
            }

            v102 = &v37[16 * v10 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_127;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v10 = a4 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v106 = &v37[16 * a4];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_71:
          if (v101)
          {
            goto LABEL_122;
          }

          v109 = &v37[16 * v10];
          v111 = *(v109 + 4);
          v110 = *(v109 + 5);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_125;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_78:
          v117 = v10 - 1;
          if (v10 - 1 >= a4)
          {
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
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
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_142;
          }

          v118 = v37;
          a4 = *&v37[16 * v117 + 32];
          v119 = *&v37[16 * v10 + 40];
          v120 = v167;
          sub_1006D565C((*a3 + *(v19 + 72) * a4), (*a3 + *(v19 + 72) * *&v37[16 * v10 + 32]), (*a3 + *(v19 + 72) * v119), v79);
          v167 = v120;
          if (v120)
          {
            goto LABEL_114;
          }

          if (v119 < a4)
          {
            goto LABEL_116;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_100784A7C(v118);
          }

          if (v117 >= *(v118 + 2))
          {
            goto LABEL_117;
          }

          v121 = &v118[16 * v117];
          *(v121 + 4) = a4;
          *(v121 + 5) = v119;
          v178 = v118;
          sub_1007849F0(v10);
          v37 = v178;
          a4 = *(v178 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v84 = &v37[16 * a4 + 32];
        v85 = *(v84 - 64);
        v86 = *(v84 - 56);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_118;
        }

        v89 = *(v84 - 48);
        v88 = *(v84 - 40);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_119;
        }

        v91 = &v37[16 * a4];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_121;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v95 >= v87)
        {
          v113 = &v37[16 * v10 + 32];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_128;
          }

          if (v82 < v116)
          {
            v10 = a4 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v35 = a3[1];
      v10 = v173;
      a4 = v152;
      if (v36 >= v35)
      {
        goto LABEL_103;
      }
    }
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_103:
  v10 = *v153;
  if (*v153)
  {
    a4 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_136;
    }

    v139 = a4;
LABEL_106:
    v178 = v139;
    a4 = *(v139 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v140 = *&v139[16 * a4];
        v141 = v139;
        v142 = *&v139[16 * a4 + 24];
        v143 = v167;
        sub_1006D565C((*a3 + *(v19 + 72) * v140), (*a3 + *(v19 + 72) * *&v139[16 * a4 + 16]), (*a3 + *(v19 + 72) * v142), v10);
        v167 = v143;
        if (v143)
        {
          goto LABEL_114;
        }

        if (v142 < v140)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_100784A7C(v141);
        }

        if ((a4 - 2) >= *(v141 + 2))
        {
          goto LABEL_130;
        }

        v144 = &v141[16 * a4];
        *v144 = v140;
        *(v144 + 1) = v142;
        v178 = v141;
        sub_1007849F0(a4 - 1);
        v139 = v178;
        a4 = *(v178 + 2);
        if (a4 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_144;
    }

LABEL_114:
  }

  else
  {
LABEL_148:
    __break(1u);
  }
}

void sub_1006D565C(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  __chkstk_darwin(v17);
  v75 = &v67 - v18;
  v77 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  __chkstk_darwin(v77);
  v81 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = &v67 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v78 = &v67 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_65;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v29 = (a2 - a1) / v27;
    v84 = a1;
    v83 = a4;
    if (v29 >= v28 / v27)
    {
      v71 = v10;
      v32 = v28 / v27 * v27;
      if (a4 < a2 || &a2[v32] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v45 = &a4[v32];
      if (v32 >= 1)
      {
        v46 = -v27;
        v47 = &a4[v32];
        v48 = v81;
        v79 = a1;
        v80 = a4;
        v69 = v13;
        v78 = -v27;
        do
        {
          v67 = v45;
          v49 = a2;
          a2 += v46;
          v81 = a2;
          v70 = v49;
          while (1)
          {
            if (v49 <= a1)
            {
              v84 = v49;
              v82 = v67;
              goto LABEL_63;
            }

            v74 = a3;
            v75 = v47;
            v68 = v45;
            v72 = &v47[v46];
            sub_1006D7714(&v47[v46], v76);
            sub_1006D7714(a2, v48);
            sub_10079A074();
            v51 = sub_10079A674();
            v52 = v48;
            v53 = *(v51 - 8);
            v54 = *(v53 + 48);
            if (v54(v13, 1, v51) == 1)
            {
              goto LABEL_69;
            }

            v73 = sub_10079A644();
            v55 = *(v53 + 8);
            v55(v13, v51);
            v56 = v71;
            sub_10079A074();
            if (v54(v56, 1, v51) == 1)
            {
              goto LABEL_70;
            }

            v57 = v74;
            v58 = &v74[v78];
            v59 = sub_10079A644();
            v55(v56, v51);
            sub_1006D7778(v52);
            sub_1006D7778(v76);
            a1 = v79;
            a2 = v81;
            v48 = v52;
            if (v73 < v59)
            {
              break;
            }

            v60 = v72;
            v45 = v72;
            v61 = v80;
            v62 = v69;
            if (v57 < v75 || v58 >= v75)
            {
              a3 = v58;
              v50 = v72;
              swift_arrayInitWithTakeFrontToBack();
              v45 = v50;
              v46 = v78;
            }

            else
            {
              a3 = v58;
              v46 = v78;
              if (v57 != v75)
              {
                v63 = v72;
                swift_arrayInitWithTakeBackToFront();
                v45 = v63;
              }
            }

            v47 = v45;
            v49 = v70;
            v13 = v62;
            if (v60 <= v61)
            {
              a2 = v70;
              goto LABEL_62;
            }
          }

          v64 = v69;
          v65 = v80;
          a3 = v58;
          if (v57 < v70 || v58 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v68;
            v46 = v78;
          }

          else
          {
            v45 = v68;
            v46 = v78;
            if (v57 != v70)
            {
              v66 = v68;
              swift_arrayInitWithTakeBackToFront();
              v45 = v66;
            }
          }

          v47 = v75;
          v13 = v64;
        }

        while (v75 > v65);
      }

LABEL_62:
      v84 = a2;
      v82 = v45;
    }

    else
    {
      v30 = v29 * v27;
      if (a4 < a1 || &a1[v30] <= a4)
      {
        v31 = v24;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v31 = v24;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = &a4[v30];
      v82 = &a4[v30];
      if (v30 >= 1 && a2 < a3)
      {
        v73 = v27;
        v74 = a3;
        do
        {
          v79 = a1;
          v81 = a2;
          sub_1006D7714(a2, v78);
          v80 = a4;
          sub_1006D7714(a4, v31);
          v34 = v75;
          sub_10079A074();
          v35 = sub_10079A674();
          v36 = *(v35 - 8);
          v37 = *(v36 + 48);
          if (v37(v34, 1, v35) == 1)
          {
            goto LABEL_67;
          }

          v38 = sub_10079A644();
          v39 = v34;
          v40 = *(v36 + 8);
          v40(v39, v35);
          sub_10079A074();
          if (v37(v16, 1, v35) == 1)
          {
            goto LABEL_68;
          }

          v41 = sub_10079A644();
          v40(v16, v35);
          sub_1006D7778(v31);
          sub_1006D7778(v78);
          a2 = v81;
          if (v38 >= v41)
          {
            v44 = v79;
            v42 = v73;
            v43 = v74;
            a4 = &v80[v73];
            if (v79 < v80 || v79 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v80)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v83 = a4;
          }

          else
          {
            v42 = v73;
            v43 = v74;
            v44 = v79;
            a4 = v80;
            if (v79 < v81 || v79 >= &v81[v73])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v81)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v42;
          }

          a1 = &v44[v42];
          v84 = a1;
        }

        while (a4 < v76 && a2 < v43);
      }
    }

LABEL_63:
    sub_1006D5F14(&v84, &v83, &v82, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
    return;
  }

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
}

uint64_t sub_1006D5E0C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
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

uint64_t sub_1006D5F14(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t sub_1006D6014(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_1007990E4();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_10079A6D4();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  sub_1001F1160(&qword_100AEE558, &qword_10083F4D0);
  v2[43] = swift_task_alloc();
  v5 = sub_10079A674();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v6 = sub_10079A984();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  sub_1001F1160(&qword_100AF31F0, &qword_10083F4D8);
  v2[51] = swift_task_alloc();
  v7 = sub_1001F1160(&qword_100AF31F8, &unk_10083F4E0);
  v2[52] = v7;
  v2[53] = *(v7 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v8 = sub_10079A734();
  v2[56] = v8;
  v2[57] = *(v8 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v9 = sub_100798FE4();
  v2[62] = v9;
  v2[63] = *(v9 - 8);
  v2[64] = swift_task_alloc();

  return _swift_task_switch(sub_1006D63B4, 0, 0);
}

uint64_t sub_1006D63B4()
{
  v0[31] = v0[35];
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[49];
  v4 = v0[45];
  v139 = v0[41];
  sub_1001F1160(&qword_100AEEBE8, &qword_1008373B8);
  sub_100005920(&qword_100AF3200, &qword_100AEEBE8, &qword_1008373B8, &protocol conformance descriptor for [A]);
  sub_1006D77D4(&qword_100ADADA0, &type metadata accessor for Book.MediaType, &protocol conformance descriptor for Book.MediaType);
  sub_1006D77D4(&qword_100AF3208, &type metadata accessor for SeedBook, &protocol conformance descriptor for SeedBook);
  v5 = sub_1007A24F4();
  sub_1001F1160(&qword_100AF3210, &qword_10083F4F0);
  v6 = sub_1007A3904();
  v13 = v6;
  v14 = 0;
  v119 = v5 + 64;
  v125 = v5;
  v15 = 1 << *(v5 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v5 + 64);
  v118 = (v15 + 63) >> 6;
  v124 = v1;
  v136 = v3;
  v142 = (v3 + 48);
  v144 = (v3 + 56);
  v140 = (v139 + 8);
  v141 = (v3 + 32);
  v138 = (v3 + 8);
  v137 = (v4 + 48);
  v132 = (v4 + 32);
  v126 = v4;
  v134 = (v4 + 8);
  v123 = v2;
  v120 = (v2 + 8);
  v121 = v6 + 64;
  v122 = v6;
  if (v17)
  {
    while (2)
    {
      v127 = (v17 - 1) & v17;
      v128 = v14;
      v18 = __clz(__rbit64(v17)) | (v14 << 6);
LABEL_10:
      v22 = v0[59];
      v23 = v0[60];
      v25 = v0[55];
      v24 = v0[56];
      v26 = v0[54];
      v27 = v0[52];
      v130 = *(v124 + 72) * v18;
      (*(v124 + 16))(v23, *(v125 + 48) + v130, v24);
      v131 = v18;
      v28 = *(v123 + 16);
      v28(v25, *(v125 + 56) + *(v123 + 72) * v18, v27);
      v129 = *(v124 + 32);
      v129(v22, v23, v24);
      v28(v26, v25, v27);
      sub_100005920(&qword_100AF3218, &qword_100AF31F8, &unk_10083F4E0, &protocol conformance descriptor for NonEmpty<A>);
      v6 = sub_1007A24C4();
      v133 = _swiftEmptyArrayStorage;
      while (1)
      {
        v29 = v0[26];
        v30 = v0[27];
        v31 = v0[28];
        v32 = v0[29];
        v33 = v0[30];
        v34 = v32;
        if (!v33)
        {
          v35 = (v31 + 64) >> 6;
          if (v35 <= v32 + 1)
          {
            v36 = v32 + 1;
          }

          else
          {
            v36 = (v31 + 64) >> 6;
          }

          v37 = v36 - 1;
          v38 = v0[29];
          while (1)
          {
            v34 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v34 >= v35)
            {
              v39 = 0;
              v40 = 1;
              goto LABEL_20;
            }

            v33 = *(v30 + 8 * v34);
            ++v38;
            if (v33)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_51;
        }

LABEL_19:
        v39 = (v33 - 1) & v33;
        (*(v136 + 16))(v0[51], *(v29 + 48) + *(v136 + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), v0[48]);
        v40 = 0;
        v37 = v34;
LABEL_20:
        v41 = v0[51];
        v42 = v0[48];
        (*v144)(v41, v40, 1, v42);
        v0[26] = v29;
        v0[27] = v30;
        v0[28] = v31;
        v0[29] = v37;
        v0[30] = v39;
        if ((*v142)(v41, 1, v42) == 1)
        {
          break;
        }

        v43 = v0[50];
        v44 = v0[48];
        v46 = v0[43];
        v45 = v0[44];
        v47 = v0[42];
        v48 = v0[40];
        (*v141)(v43, v0[51], v44);
        sub_10079A974();
        sub_10079A684();
        (*v140)(v47, v48);
        (*v138)(v43, v44);
        if ((*v137)(v46, 1, v45) == 1)
        {
          v6 = sub_100007840(v0[43], &qword_100AEE558, &qword_10083F4D0);
        }

        else
        {
          v49 = *v132;
          (*v132)(v0[47], v0[43], v0[44]);
          v50 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_10066C99C(0, v133[2] + 1, 1, v133);
          }

          v52 = v50[2];
          v51 = v50[3];
          if (v52 >= v51 >> 1)
          {
            v50 = sub_10066C99C((v51 > 1), v52 + 1, 1, v50);
          }

          v53 = v0[47];
          v54 = v0[44];
          v50[2] = v52 + 1;
          v133 = v50;
          v6 = v49(v50 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v52, v53, v54);
        }
      }

      sub_10004DC54(v29);
      v55 = v133[2];
      if (v55)
      {
        sub_1003BD0CC(0, v55, 0);
        v56 = v133 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
        v135 = *(v126 + 72);
        v57 = *(v126 + 16);
        do
        {
          v58 = v0[46];
          v59 = v0[44];
          v57(v58, v56, v59);
          v0[32] = sub_10079A664();
          v60 = sub_1007A3A74();
          v62 = v61;
          (*v134)(v58, v59);
          v64 = _swiftEmptyArrayStorage[2];
          v63 = _swiftEmptyArrayStorage[3];
          if (v64 >= v63 >> 1)
          {
            sub_1003BD0CC((v63 > 1), v64 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v64 + 1;
          v65 = &_swiftEmptyArrayStorage[2 * v64];
          v65[4] = v60;
          v65[5] = v62;
          v56 += v135;
          --v55;
        }

        while (v55);
        (*v120)(v0[55], v0[52]);
      }

      else
      {
        v66 = v0[55];
        v67 = v0[52];

        (*v120)(v66, v67);
      }

      v68 = v0[59];
      v69 = v0[56];
      v13 = v122;
      *(v121 + ((v131 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v131;
      v6 = (v129)(v122[6] + v130, v68, v69);
      *(v122[7] + 8 * v131) = _swiftEmptyArrayStorage;
      v70 = v122[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_52;
      }

      v122[2] = v72;
      v17 = v127;
      v14 = v128;
      if (v127)
      {
        continue;
      }

      break;
    }
  }

  v19 = v14;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v118)
    {
      v74 = v0[63];
      v73 = v0[64];
      v76 = v0[61];
      v75 = v0[62];
      v77 = v0[56];
      v78 = v0[57];
      v79 = v0[36];

      (*(v74 + 16))(v73, v79 + OBJC_IVAR____TtC5Books57MediaAPINextInOrderedSeriesSeedBasedRecommendationService_catalogService, v75);
      v80 = *(v78 + 104);
      v80(v76, enum case for Book.MediaType.ebook(_:), v77);
      if (v13[2] && (v81 = sub_1002ECF04(v0[61]), (v82 & 1) != 0))
      {
        v83 = v0[61];
        v84 = v0[56];
        v85 = *(v13[7] + 8 * v81);
        v86 = *(v0[57] + 8);

        v86(v83, v84);
      }

      else
      {
        v86 = *(v0[57] + 8);
        v86(v0[61], v0[56]);
        v85 = _swiftEmptyArrayStorage;
      }

      v0[65] = v85;
      v80(v0[58], enum case for Book.MediaType.audiobook(_:), v0[56]);
      v145 = v85;
      if (v13[2] && (v87 = sub_1002ECF04(v0[58]), (v88 & 1) != 0))
      {
        v89 = v0[58];
        v90 = v0[56];
        v91 = *(v13[7] + 8 * v87);

        v86(v89, v90);
      }

      else
      {
        v92 = v0[58];
        v93 = v0[56];

        v86(v92, v93);
        v91 = _swiftEmptyArrayStorage;
      }

      v0[66] = v91;
      sub_1001F1160(&qword_100AE0A28, &qword_100821348);
      v143 = swift_allocObject();
      v0[67] = v143;
      *(v143 + 16) = xmmword_10080EFF0;
      v94 = BFMCatalogRequestRelationshipBooks;
      v95 = BFMCatalogRequestRelationshipAudiobooks;
      *(v143 + 32) = BFMCatalogRequestRelationshipBooks;
      *(v143 + 40) = v95;
      sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10081E180;
      *(inited + 32) = 0xD000000000000014;
      *(inited + 40) = 0x80000001008E6F90;
      sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_100812CF0;
      *(v97 + 32) = sub_1007A2254();
      *(v97 + 40) = v98;
      *(v97 + 48) = sub_1007A2254();
      *(v97 + 56) = v99;
      *(v97 + 64) = sub_1007A2254();
      *(v97 + 72) = v100;
      v0[33] = v97;
      v101 = v94;
      v102 = v95;
      sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
      sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
      v103 = sub_1007A20B4();
      v105 = v104;

      *(inited + 48) = v103;
      *(inited + 56) = v105;
      strcpy((inited + 64), "include[books]");
      *(inited + 79) = -18;
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_100812CF0;
      *(v106 + 32) = sub_1007A2254();
      *(v106 + 40) = v107;
      *(v106 + 48) = sub_1007A2254();
      *(v106 + 56) = v108;
      *(v106 + 64) = sub_1007A2254();
      *(v106 + 72) = v109;
      v0[34] = v106;
      v110 = sub_1007A20B4();
      v112 = v111;

      *(inited + 80) = v110;
      *(inited + 88) = v112;
      *(inited + 96) = 0xD000000000000026;
      *(inited + 104) = 0x80000001008E1FB0;
      *(inited + 112) = sub_1007A2254();
      *(inited + 120) = v113;
      *(inited + 128) = 0xD00000000000001ALL;
      *(inited + 136) = 0x80000001008E1FE0;
      *(inited + 144) = sub_1007A2254();
      *(inited + 152) = v114;
      *(inited + 160) = 0xD000000000000023;
      *(inited + 168) = 0x80000001008E6FB0;
      *(inited + 176) = 0x6E49736569726573;
      *(inited + 184) = 0xEA00000000006F66;
      v115 = sub_1001ED994(inited);
      v0[68] = v115;
      swift_setDeallocating();
      sub_1001F1160(&unk_100AE0920, &unk_100817F60);
      swift_arrayDestroy();
      sub_1007990F4();
      v116 = swift_task_alloc();
      v0[69] = v116;
      *v116 = v0;
      v116[1] = sub_1006D7110;
      v12 = v0[39];
      v8 = v143;
      v6 = v145;
      v7 = v91;
      v9 = 0;
      v10 = v115;
      v11 = 150;

      return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v6, v7, v8, v9, v10, v11, v12);
    }

    v21 = *(v119 + 8 * v20);
    ++v19;
    if (v21)
    {
      v127 = (v21 - 1) & v21;
      v128 = v20;
      v18 = __clz(__rbit64(v21)) | (v20 << 6);
      goto LABEL_10;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1006D7110(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v5 = v3[64];
  v6 = v3[63];
  v7 = v3[62];
  v8 = v3[39];
  v9 = v3[38];
  v10 = v3[37];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v13)
  {
    v11 = sub_1006D75FC;
  }

  else
  {
    v11 = sub_1006D736C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1006D736C()
{
  v13 = v0;
  v1 = v0[49];
  v2 = v0[35];
  v3 = _swiftEmptyDictionarySingleton;
  v12[0] = _swiftEmptyDictionarySingleton;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_10:

    v11 = v0[1];

    return v11(v3);
  }

  v5 = v0[71];
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_1006D2D2C(v12, v2 + v6, v0[70]);
  if (!v5)
  {
    for (i = 1; v4 != i; i = v8)
    {
      v8 = i + 1;
      sub_1006D2D2C(v12, v0[35] + v6 + *(v0[49] + 72) * i, v0[70]);
    }

    v3 = v12[0];
    goto LABEL_10;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006D75FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D7714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D7778(uint64_t a1)
{
  v2 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D77D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006D785C()
{
  result = qword_100AF3220;
  if (!qword_100AF3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3220);
  }

  return result;
}

uint64_t sub_1006D78E8(uint64_t a1)
{
  result = sub_10079A084();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006D7960()
{
  result = qword_100AF32C8;
  if (!qword_100AF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32C8);
  }

  return result;
}

uint64_t sub_1006D79E0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_10079C824();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1001F1160(&qword_100AF32D0, &qword_10083F6D8);
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v34 - v5;
  v7 = sub_1001F1160(&qword_100AF32D8, &qword_10083F6E0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v39 = sub_1001F1160(&qword_100AF32E0, &qword_10083F6E8);
  __chkstk_darwin(v39);
  v11 = &v34 - v10;
  v40 = sub_1001F1160(&qword_100AF32E8, &qword_10083F6F0);
  __chkstk_darwin(v40);
  v13 = &v34 - v12;
  v42 = v1;

  sub_1001F1160(&qword_100AF32F0, &qword_10083F6F8);
  sub_1006D8254();
  sub_10079E054();
  v14 = *(v1 + 32);
  if (v14 == 1)
  {
    v15 = [objc_opt_self() systemGray3Color];
    v16 = sub_10079DEA4();
  }

  else
  {
    v16 = sub_10079DE34();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v4 + 32))(v9, v6, v38);
  v19 = &v9[*(v7 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v45 = *(v1 + 8);
  v20 = *v1;
  v44 = *v1;
  v21 = v45;

  if ((v21 & 1) == 0)
  {
    v22 = sub_1007A29C4();
    v23 = sub_10079D244();
    sub_10079AB44(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v24 = v35;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_1006D830C(&v44);
    (*(v36 + 8))(v24, v37);
    v20 = v43;
  }

  v25 = sub_10079D294();
  sub_10020B3C8(v9, v11, &qword_100AF32D8, &qword_10083F6E0);
  v26 = &v11[*(v39 + 36)];
  *v26 = v20;
  v26[8] = v25;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v14;
  sub_10020B3C8(v11, v13, &qword_100AF32E0, &qword_10083F6E8);
  v29 = &v13[*(v40 + 36)];
  *v29 = v27;
  v29[1] = sub_100258B0C;
  v29[2] = v28;
  v30 = swift_getKeyPath();
  v31 = v41;
  sub_10020B3C8(v13, v41, &qword_100AF32E8, &qword_10083F6F0);
  result = sub_1001F1160(&qword_100AF3310, &qword_10083F798);
  v33 = v31 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = 0;
  return result;
}

__n128 sub_1006D7E84@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1001F1160(&qword_100AF3308, &qword_10083F700);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_10079C8F4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_1001F1160(&qword_100AF3318, &qword_10083F7A0);
  sub_1006D7FE0(&v5[*(v6 + 44)]);
  sub_10079E474();
  sub_10079C414();
  sub_10020B3C8(v5, a2, &qword_100AF3308, &qword_10083F700);
  v7 = a2 + *(sub_1001F1160(&qword_100AF32F0, &qword_10083F6F8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

__n128 sub_1006D7FE0@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1001F1160(&qword_100AF6730, &qword_10083F7A8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (v19 - v5);

  v7 = sub_10079DF24();
  v8 = (v6 + *(sub_1001F1160(&qword_100ADBD70, &qword_10081A670) + 36));
  v9 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v10 = enum case for Image.Scale.large(_:);
  v11 = sub_10079DF84();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  sub_10079D374();
  sub_10079D3F4();
  v12 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v14 = (v6 + *(v4 + 44));
  *v14 = KeyPath;
  v14[1] = v12;
  sub_10079E474();
  sub_10079C414();
  sub_10020B3C8(v6, a2, &qword_100AF6730, &qword_10083F7A8);
  v15 = a2 + *(sub_1001F1160(&qword_100AF3320, &unk_10083F810) + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

unint64_t sub_1006D8254()
{
  result = qword_100AF32F8;
  if (!qword_100AF32F8)
  {
    sub_1001F1234(&qword_100AF32F0, &qword_10083F6F8);
    sub_100005920(&qword_100AF3300, &qword_100AF3308, &qword_10083F700, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32F8);
  }

  return result;
}

uint64_t sub_1006D830C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEA388, &qword_100831BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006D8374()
{
  result = qword_100AF3328;
  if (!qword_100AF3328)
  {
    sub_1001F1234(&qword_100AF3310, &qword_10083F798);
    sub_1006D842C();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3328);
  }

  return result;
}

unint64_t sub_1006D842C()
{
  result = qword_100AF3330;
  if (!qword_100AF3330)
  {
    sub_1001F1234(&qword_100AF32E8, &qword_10083F6F0);
    sub_1006D84E4();
    sub_100005920(&unk_100AF6560, &qword_100ADB8B0, &qword_10081A0D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3330);
  }

  return result;
}

unint64_t sub_1006D84E4()
{
  result = qword_100AF3338;
  if (!qword_100AF3338)
  {
    sub_1001F1234(&qword_100AF32E0, &qword_10083F6E8);
    sub_1006D859C();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3338);
  }

  return result;
}

unint64_t sub_1006D859C()
{
  result = qword_100AF3340;
  if (!qword_100AF3340)
  {
    sub_1001F1234(&qword_100AF32D8, &qword_10083F6E0);
    sub_100005920(&qword_100AF3348, &qword_100AF32D0, &qword_10083F6D8, &protocol conformance descriptor for Button<A>);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3340);
  }

  return result;
}

uint64_t type metadata accessor for MarkAsStillReadingActionItem(uint64_t a1)
{
  result = qword_100AF33A8;
  if (!qword_100AF33A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1006D86F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for MarkAsStillReadingActionItem(0) + 36);
    v21 = enum case for ContextActionType.markAsStillReading(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5 + 40);
    sub_1000077C0(v27, a5);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006D8930()
{
  sub_10000E3E8((v0 + 40), *(v0 + 64));
  if (sub_1007976D4())
  {
    v1 = 0;
  }

  else
  {
    sub_1001FEC24(&v4);
    if (v5)
    {
      sub_1001FF7C8(&v4, &v6);
      sub_10000E3E8(&v6, v7);
      v2 = sub_1007975D4();
      if (v2 == 2)
      {
        sub_1000074E0(&v6);
        v1 = 0;
      }

      else
      {
        v1 = v2;
        sub_10000E3E8(&v6, v7);
        sub_1007976B4();
        if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v6, v7), sub_1007976B4(), (sub_1007972D4()))
        {
          v1 = 0;
        }

        sub_1000074E0(&v6);
      }
    }

    else
    {
      sub_1001FF760(&v4);
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1006D8A64()
{
  v1[19] = v0;
  v2 = sub_10079ACE4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = sub_1007A26F4();
  v1[24] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_1006D8B5C, v4, v3);
}

uint64_t sub_1006D8B5C()
{
  sub_1001FEC24((v0 + 64));
  if (*(v0 + 88))
  {
    v1 = *(v0 + 152);
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    v2 = sub_10000E3E8(v1 + 16, v1[19]);
    *(v0 + 216) = v1[10];
    v4 = *v2;
    v3 = *(v2 + 1);
    *(v0 + 144) = v2[4];
    *(v0 + 112) = v4;
    *(v0 + 128) = v3;
    *(v0 + 224) = sub_1007A26E4();
    *(v0 + 232) = sub_1007A26E4();
    v6 = sub_1007A2694();
    *(v0 + 240) = v6;
    *(v0 + 248) = v5;

    return _swift_task_switch(sub_1006D8D30, v6, v5);
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Action doesn't have sufficient information to handle action.", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1006D8D30()
{
  v1 = v0[27];
  v2 = v0[19];
  sub_10000E3E8(v0 + 2, v0[5]);
  v3 = sub_100797674();
  v5 = v4;
  v0[32] = v4;
  v6 = sub_1007A26E4();
  v0[33] = v6;
  v7 = swift_task_alloc();
  v0[34] = v7;
  *(v7 + 16) = v0 + 14;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  *(v7 + 40) = 512;
  *(v7 + 48) = v0 + 2;
  *(v7 + 56) = v1;
  *(v7 + 64) = 1;
  *(v7 + 72) = v2;
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_10055D8E8;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v6, &protocol witness table for MainActor, 0xD000000000000050, 0x80000001008DCA30, sub_10055DC58, v7, &type metadata for () + 8);
}

uint64_t sub_1006D8EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1006D8A64();
}

id sub_1006D904C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1006D90A4()
{
  result = qword_100AF3418;
  if (!qword_100AF3418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF3418);
  }

  return result;
}

uint64_t sub_1006D90F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_10079CCC4();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079CDF4();
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  __chkstk_darwin(v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AF3420, &qword_10083FB18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = sub_1001F1160(&qword_100AF3428, &qword_10083FB20);
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_1001F1160(&qword_100AF3430, &qword_10083FB28);
  v17 = *(v16 - 8);
  v35 = v16;
  v36 = v17;
  __chkstk_darwin(v16);
  v32 = &v31 - v18;
  v43 = v2;

  sub_1001F1160(&qword_100AF3438, &qword_10083FB30);
  sub_1006DA620();
  sub_10079E054();
  sub_10079E414();
  v19 = sub_1001F1160(&qword_100AF34C8, &unk_10083FB88);
  v20 = sub_100005920(&qword_100AF34D0, &qword_100AF3420, &qword_10083FB18, &protocol conformance descriptor for Button<A>);
  v30 = sub_1006DABE8();
  sub_10079DC54();
  (*(v10 + 8))(v12, v9);
  v21 = v33;
  sub_10079CDE4();
  v44 = v9;
  v45 = &type metadata for Solarium;
  v46 = v19;
  v47 = v19;
  v48 = v20;
  v49 = &protocol witness table for Solarium;
  v50 = v30;
  v51 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_1006DACCC(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v24 = v32;
  v25 = v37;
  sub_10079D6A4();
  (*(v38 + 8))(v21, v25);
  (*(v34 + 8))(v15, v13);
  v26 = v39;
  sub_10079C454();
  v44 = v13;
  v45 = v25;
  v46 = OpaqueTypeConformance2;
  v47 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1006DACCC(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v27 = v35;
  v28 = v40;
  sub_10079D6F4();
  (*(v41 + 8))(v26, v28);
  return (*(v36 + 8))(v24, v27);
}

uint64_t sub_1006D9698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = sub_10079C824();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1001F1160(&qword_100AF3468, &qword_10083FB48);
  __chkstk_darwin(v50);
  v5 = &v47 - v4;
  v48 = sub_10079C8F4();
  v6 = sub_10079DF24();
  v49 = a1;
  v7 = a1[7];
  *&v68[0] = a1[6];
  *(&v68[0] + 1) = v7;
  sub_100206ECC();

  v8 = sub_10079D5D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v12 &= 1u;
  sub_1001F1894(v8, v10, v12);
  sub_10020B430(v8, v10, v12);

  v67 = 1;
  v66 = v12;
  v15 = sub_10079D294();
  sub_10079BBA4();
  v63 = 0;
  v57 = v48;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = v6;
  *&v59 = v8;
  *(&v59 + 1) = v10;
  LOBYTE(v60) = v12;
  *(&v60 + 1) = v14;
  LOBYTE(v61) = v15;
  *(&v61 + 1) = v16;
  *&v62[0] = v17;
  *(&v62[0] + 1) = v18;
  *&v62[1] = v19;
  BYTE8(v62[1]) = 0;
  sub_10079D3F4();
  sub_1001F1160(&qword_100AF3488, &qword_10083FB60);
  sub_1006DAA0C();
  sub_10079D664();
  v68[4] = v61;
  v69[0] = v62[0];
  *(v69 + 9) = *(v62 + 9);
  v68[0] = v57;
  v68[1] = v58;
  v68[2] = v59;
  v68[3] = v60;
  sub_100007840(v68, &qword_100AF3488, &qword_10083FB60);
  v20 = sub_10079DE34();
  KeyPath = swift_getKeyPath();
  v22 = &v5[*(v50 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_10079E414();
  v23 = v49;
  v55 = v49;
  sub_1001F1160(&qword_100AF3470, &qword_10083FB50);
  sub_1001F1160(&qword_100AF3478, &qword_10083FB58);
  sub_1006DA918();
  sub_1006DAAC4();
  sub_1006DAB70(&qword_100AF34C0, &qword_100AF3478, &qword_10083FB58);
  v24 = v51;
  v25 = v52;
  sub_10079DC54();
  v26 = v5;
  v27 = v53;
  sub_100049594(v26);
  BYTE8(v57) = *(v23 + 24);
  v28 = v23[2];
  *&v57 = v28;
  v29 = BYTE8(v57);

  if ((v29 & 1) == 0)
  {
    v30 = sub_1007A29C4();
    v31 = sub_10079D244();
    sub_10079AB44(v30, &_mh_execute_header, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v32 = v54;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v57, &qword_100AEA388, &qword_100831BD0);
    (*(v24 + 8))(v32, v27);
    v28 = v64;
  }

  v33 = sub_10079D294();
  v34 = v25 + *(sub_1001F1160(&qword_100AF3460, &qword_10083FB40) + 36);
  *v34 = v28;
  *(v34 + 8) = v33;
  v65 = *(v23 + 8);
  v64 = *v23;
  v35 = v64;
  v36 = v65;

  v37 = v35;
  if ((v36 & 1) == 0)
  {
    v38 = sub_1007A29C4();
    v39 = sub_10079D244();
    sub_10079AB44(v38, &_mh_execute_header, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v40 = v54;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v64, &qword_100AD8538, &qword_10083FC00);
    (*(v24 + 8))(v40, v27);
    v37 = v56;
  }

  v41 = v25 + *(sub_1001F1160(&qword_100AF3450, &qword_10083FB38) + 36);
  *v41 = v37;
  *(v41 + 8) = 256;

  if ((v36 & 1) == 0)
  {
    v42 = sub_1007A29C4();
    v43 = sub_10079D244();
    sub_10079AB44(v42, &_mh_execute_header, v43, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v44 = v54;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v64, &qword_100AD8538, &qword_10083FC00);
    (*(v24 + 8))(v44, v27);
    v35 = v56;
  }

  result = sub_1001F1160(&qword_100AF3438, &qword_10083FB30);
  v46 = v25 + *(result + 36);
  *v46 = v35;
  *(v46 + 8) = 0;
  return result;
}

__n128 sub_1006D9CC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10079C824();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AF34B8, &qword_10083FB78);
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  sub_1000495FC(a1, v12);
  v13 = &v12[*(v10 + 36)];
  v14 = v25[1];
  *v13 = v25[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v25[2];
  v15 = *(a2 + 32);
  v33 = v15;
  v34 = *(a2 + 40);
  if (v34 != 1)
  {

    v16 = sub_1007A29C4();
    v17 = sub_10079D244();
    sub_10079AB44(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v33, &qword_100AD55B8, &qword_100810328);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v15) = v26;
  }

  if (v15)
  {
    v18 = INFINITY;
  }

  else
  {
    v18 = 420.0;
  }

  sub_10079E474();
  if (v18 < 168.0)
  {
    v19 = sub_1007A29C4();
    v20 = sub_10079D244();
    sub_10079AB44(v19, &_mh_execute_header, v20, "Contradictory frame constraints specified.", 42, 2, _swiftEmptyArrayStorage);
  }

  sub_10079C414();
  sub_10004966C(v12, a3);
  v21 = a3 + *(sub_1001F1160(&qword_100AF3470, &qword_10083FB50) + 36);
  v22 = v31;
  *(v21 + 64) = v30;
  *(v21 + 80) = v22;
  *(v21 + 96) = v32;
  v23 = v27;
  *v21 = v26;
  *(v21 + 16) = v23;
  result = v29;
  *(v21 + 32) = v28;
  *(v21 + 48) = result;
  return result;
}

__n128 sub_1006DA014@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079C414();
  sub_1000495FC(a1, a2);
  v4 = (a2 + *(sub_1001F1160(&qword_100AF3478, &qword_10083FB58) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

uint64_t sub_1006DA0E4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a3 + *(sub_1001F1160(&qword_100AF34C8, &unk_10083FB88) + 36));
  v7 = *(sub_1001F1160(&unk_100ADB9A0, &qword_100825AC0) + 28);
  v8 = *a2;
  v9 = sub_10079BC54();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  v10 = sub_1001F1160(&qword_100AF3420, &qword_10083FB18);
  v11 = *(*(v10 - 8) + 16);

  return v11(a3, a1, v10);
}

uint64_t sub_1006DA238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  v20 = sub_1007A22D4(v14, 0, 0, v19, v7, "Customize Theme Button Title", 28, 2);
  v22 = v21;
  (*(v5 + 8))(v10, v4);
  result = (*(v12 + 8))(v17, v11);
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 9) = *v34;
  *(a3 + 12) = *&v34[3];
  *(a3 + 16) = v28;
  *(a3 + 24) = 0;
  *(a3 + 25) = *v33;
  *(a3 + 28) = *&v33[3];
  *(a3 + 32) = v27;
  *(a3 + 40) = 0;
  v24 = *v32;
  *(a3 + 44) = *&v32[3];
  *(a3 + 41) = v24;
  *(a3 + 48) = v20;
  *(a3 + 56) = v22;
  v25 = v31;
  *(a3 + 64) = v30;
  *(a3 + 72) = v25;
  return result;
}

uint64_t sub_1006DA550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006DA598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006DA620()
{
  result = qword_100AF3440;
  if (!qword_100AF3440)
  {
    sub_1001F1234(&qword_100AF3438, &qword_10083FB30);
    sub_1006DA6D8();
    sub_100005920(&qword_100AE2D10, &qword_100AE2D18, &qword_10083FB80, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3440);
  }

  return result;
}

unint64_t sub_1006DA6D8()
{
  result = qword_100AF3448;
  if (!qword_100AF3448)
  {
    sub_1001F1234(&qword_100AF3450, &qword_10083FB38);
    sub_1006DA790();
    sub_100005920(&qword_100ADC320, &qword_100ADC300, &unk_100831A50, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3448);
  }

  return result;
}

unint64_t sub_1006DA790()
{
  result = qword_100AF3458;
  if (!qword_100AF3458)
  {
    sub_1001F1234(&qword_100AF3460, &qword_10083FB40);
    sub_1001F1234(&qword_100AF3468, &qword_10083FB48);
    sub_1001F1234(&qword_100AF3470, &qword_10083FB50);
    sub_1001F1234(&qword_100AF3478, &qword_10083FB58);
    sub_1006DA918();
    sub_1006DAAC4();
    sub_1006DAB70(&qword_100AF34C0, &qword_100AF3478, &qword_10083FB58);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3458);
  }

  return result;
}

unint64_t sub_1006DA918()
{
  result = qword_100AF3480;
  if (!qword_100AF3480)
  {
    sub_1001F1234(&qword_100AF3468, &qword_10083FB48);
    sub_1001F1234(&qword_100AF3488, &qword_10083FB60);
    sub_1006DAA0C();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3480);
  }

  return result;
}

unint64_t sub_1006DAA0C()
{
  result = qword_100AF3490;
  if (!qword_100AF3490)
  {
    sub_1001F1234(&qword_100AF3488, &qword_10083FB60);
    sub_100005920(&qword_100AF3498, &qword_100AF34A0, &unk_10083FB68, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3490);
  }

  return result;
}

unint64_t sub_1006DAAC4()
{
  result = qword_100AF34A8;
  if (!qword_100AF34A8)
  {
    sub_1001F1234(&qword_100AF3470, &qword_10083FB50);
    sub_1006DAB70(&qword_100AF34B0, &qword_100AF34B8, &qword_10083FB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34A8);
  }

  return result;
}

uint64_t sub_1006DAB70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    sub_1006DA918();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006DABE8()
{
  result = qword_100AF34D8;
  if (!qword_100AF34D8)
  {
    sub_1001F1234(&qword_100AF34C8, &unk_10083FB88);
    sub_100005920(&qword_100AF34D0, &qword_100AF3420, &qword_10083FB18, &protocol conformance descriptor for Button<A>);
    sub_100005920(&qword_100ADB998, &unk_100ADB9A0, &qword_100825AC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34D8);
  }

  return result;
}

uint64_t sub_1006DACCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1006DAD1C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006DAD40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1006DAD88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1006DAE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);

    v9 = v3;
    v10 = ChromeStyle.orientationLockHintForegroundColor(locked:)(v8);

    KeyPath = swift_getKeyPath();
    sub_10079E474();
    result = sub_10079BE54();
    *a2 = v7;
    *(a2 + 8) = v2;
    *(a2 + 16) = v6;
    *(a2 + 24) = v5;
    *(a2 + 32) = v8;
    *(a2 + 40) = KeyPath;
    *(a2 + 48) = v10;
    *(a2 + 56) = v13;
    *(a2 + 72) = v14;
    *(a2 + 88) = v15;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002B3600();

    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

void *sub_1006DAF20@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v13[3] = v4;
  v14 = *(v2 + 64);
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v6 = v5;
  v7 = sub_10079CFE4();
  v8 = v14;
  *a2 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1001F1160(&qword_100AF34E0, &qword_10083FCB0);
  v10 = (a2 + v9[9]);
  type metadata accessor for ChromeStyle(0);
  sub_1002B3600();
  *v10 = sub_10079C484();
  v10[1] = v11;
  result = sub_1006DAE08(v13, a2 + v9[10]);
  *(a2 + v9[11]) = v6;
  *(a2 + v9[12]) = *(&v6 + 1);
  *(a2 + v9[13]) = v7 & 1;
  *(a2 + v9[14]) = v8;
  *(a2 + v9[15]) = 0;
  return result;
}

unint64_t sub_1006DB03C()
{
  result = qword_100AF34E8;
  if (!qword_100AF34E8)
  {
    sub_1001F1234(&qword_100AF34E0, &qword_10083FCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34E8);
  }

  return result;
}

uint64_t sub_1006DB0A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10079C2A4();
  sub_1006DCCFC();
  swift_getWitnessTable();
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

double View.onAlertPresentationChanged(isPresented:chromeStyle:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a2;
  v5 = a2;
  sub_10079DC34();

  return result;
}

double sub_1006DB270@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AF3708, &qword_100840158);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = *v2;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1001F1160(&qword_100AF3710, &qword_100840160);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 44)];
  *v12 = sub_10047DA08;
  *(v12 + 1) = v10;
  sub_10020B3C8(v8, a2, &qword_100AF3708, &qword_100840158);

  return result;
}

double sub_1006DB3B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_1001F1160(&qword_100AF3530, &qword_10083FE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_1001F1160(&unk_100AF3538, &unk_10083FE80) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1006DB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  if (*(v2 + 16))
  {
    v5 = 0.0;
  }

  if (*(v2 + 32))
  {
    v6 = 0.0;
  }

  if (*v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (*v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = sub_1001F1160(&qword_100AF3520, &qword_10083FE68);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = sub_1001F1160(&qword_100AF3528, &qword_10083FE70);
  v11 = (a2 + *(result + 36));
  *v11 = v8;
  v11[1] = v7;
  return result;
}

uint64_t sub_1006DB580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AF36D0, &qword_100840138);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1001F1160(&qword_100AEFE48, &unk_100840140);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_1007A2214();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    sub_1006578E0(a2, v9);
    sub_1000077D8(v9, v6, &qword_100AEFE48, &unk_100840140);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AF36E0, &unk_100839450);
    sub_1006DD240();
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0, &unk_100839450, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10079CCA4();
    return sub_100007840(v9, &qword_100AEFE48, &unk_100840140);
  }

  else
  {
    v14 = sub_1001F1160(&qword_100AF36E0, &unk_100839450);
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_1006DD240();
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0, &unk_100839450, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_10079CCA4();
  }
}

uint64_t sub_1006DB858(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1001F1160(&qword_100AF3668, &qword_10083FFF0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_1001F1160(&qword_100AF3670, &qword_10083FFF8);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  sub_10079BEB4();
  sub_10079E474();
  sub_10079BE54();
  v12 = sub_1001F1160(&qword_100AF3650, &qword_10083FFD8);
  (*(*(v12 - 8) + 16))(v8, a2, v12);
  v13 = &v8[*(sub_1001F1160(&qword_100AF3678, &qword_100840000) + 36)];
  v14 = v17[1];
  *v13 = v17[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v17[2];
  *&v8[*(v6 + 44)] = 257;
  if (a3)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_10020B3C8(v8, v11, &qword_100AF3668, &qword_10083FFF0);
  *&v11[*(v9 + 36)] = v15;
  sub_1006DCDFC();
  sub_10079D944();
  return sub_100007840(v11, &qword_100AF3670, &qword_10083FFF8);
}

uint64_t sub_1006DBA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB740, &qword_100819F00);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000077D8(v2, &v15 - v9, &unk_100ADB740, &qword_100819F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079C104();
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

uint64_t sub_1006DBC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1001F1160(&qword_100AF3650, &qword_10083FFD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_1001F1160(&qword_100AF3658, &qword_10083FFE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *v2;
  if (*v2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = *(v5 + 16);
  v15(&v23 - v11, a1, v4);
  *&v12[*(v10 + 44)] = v14;
  v23 = sub_10079E474();
  v17 = v16;
  v15(v8, a1, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v18, v8, v4);
  *(v19 + v18 + v6) = v13;
  v20 = v24;
  sub_10020B3C8(v12, v24, &qword_100AF3658, &qword_10083FFE0);
  result = sub_1001F1160(&qword_100AF3660, &qword_10083FFE8);
  v22 = (v20 + *(result + 36));
  *v22 = sub_1006DCD50;
  v22[1] = v19;
  v22[2] = v23;
  v22[3] = v17;
  return result;
}

uint64_t sub_1006DBE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v41 = a3;
  v4 = sub_1001F1160(&qword_100AF3608, &qword_10083FF98);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1001F1160(&qword_100AF3610, &qword_10083FFA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1001F1160(&qword_100AF3618, &qword_10083FFA8);
  v17 = *(*(v16 - 8) + 16);
  v17(v15, a1, v16);
  *&v15[*(v11 + 44)] = 257;
  v17(v9, a1, v16);
  v9[*(sub_1001F1160(&unk_100AF3620, &unk_10083FFB0) + 36)] = 1;
  v18 = sub_10079E484();
  v20 = v19;
  v21 = sub_10079C8F4();
  v42[0] = 0;
  sub_1006DC2C0(&v55);
  v46 = *v57;
  v47 = *&v57[16];
  v48 = *&v57[32];
  v49 = *&v57[48];
  v44 = v55;
  v45 = v56;
  v51 = *&v57[48];
  v50[2] = *v57;
  v50[3] = *&v57[16];
  v50[4] = *&v57[32];
  v50[0] = v55;
  v50[1] = v56;
  sub_1000077D8(&v44, &v52, &qword_100AE7A10, &qword_10082C5C8);
  sub_100007840(v50, &qword_100AE7A10, &qword_10082C5C8);
  *(&v43[2] + 7) = v46;
  *(&v43[3] + 7) = v47;
  *(&v43[4] + 7) = v48;
  *(&v43[5] + 7) = v49;
  *(v43 + 7) = v44;
  *(&v43[1] + 7) = v45;
  v22 = v42[0];
  *&v52 = v18;
  *(&v52 + 1) = v20;
  v53 = v21;
  LOBYTE(v54[0]) = v42[0];
  *(&v54[1] + 1) = v43[1];
  v24 = v43[0];
  v23 = v43[1];
  *(v54 + 1) = v43[0];
  v54[5] = *(&v43[4] + 15);
  *(&v54[4] + 1) = v43[4];
  v26 = v43[3];
  v25 = v43[4];
  *(&v54[3] + 1) = v43[3];
  v27 = v43[2];
  *(&v54[2] + 1) = v43[2];
  v28 = &v9[*(v5 + 44)];
  v29 = v54[3];
  *(v28 + 4) = v54[2];
  *(v28 + 5) = v29;
  v30 = v54[5];
  *(v28 + 6) = v54[4];
  *(v28 + 7) = v30;
  v31 = v53;
  *v28 = v52;
  *(v28 + 1) = v31;
  v32 = v54[1];
  *(v28 + 2) = v54[0];
  *(v28 + 3) = v32;
  *&v57[17] = v23;
  *&v55 = v18;
  *(&v55 + 1) = v20;
  v56 = v21;
  v57[0] = v22;
  *&v57[1] = v24;
  *&v58[15] = *(&v43[4] + 15);
  *v58 = v25;
  *&v57[49] = v26;
  *&v57[33] = v27;
  sub_1000077D8(&v52, v42, &qword_100AF3630, &qword_10083FFC0);
  sub_100007840(&v55, &qword_100AF3630, &qword_10083FFC0);
  v33 = v39;
  sub_1000077D8(v15, v39, &qword_100AF3610, &qword_10083FFA0);
  v34 = v40;
  sub_1000077D8(v9, v40, &qword_100AF3608, &qword_10083FF98);
  v35 = v41;
  sub_1000077D8(v33, v41, &qword_100AF3610, &qword_10083FFA0);
  v36 = sub_1001F1160(&unk_100AF3638, &unk_10083FFC8);
  sub_1000077D8(v34, v35 + *(v36 + 48), &qword_100AF3608, &qword_10083FF98);
  sub_100007840(v9, &qword_100AF3608, &qword_10083FF98);
  sub_100007840(v15, &qword_100AF3610, &qword_10083FFA0);
  sub_100007840(v34, &qword_100AF3608, &qword_10083FF98);
  return sub_100007840(v33, &qword_100AF3610, &qword_10083FFA0);
}