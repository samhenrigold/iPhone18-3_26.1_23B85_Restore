void sub_1EE208(char a1, char a2)
{
  v3 = v2;
  if ([v3 isEditing] != (a1 & 1))
  {
    if (a1)
    {
      v6 = *&v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController];
      RequestResponse.Controller.isPaused.setter(1);
      swift_beginAccess();
      v7 = v6[2];
      v8 = v6[3];
      v9 = v6[5];
      v42[3] = v6[4];
      v42[4] = v9;
      v42[1] = v7;
      v42[2] = v8;
      v10 = v6[1];
      v41 = v9;
      v42[0] = v10;
      v11 = v6[4];
      v39 = v6[3];
      v40 = v11;
      v12 = v6[2];
      v37 = v6[1];
      v38 = v12;
      sub_1F32FC(v42, &v45);
      sub_1C060(&v45, 12);
      v43[2] = v39;
      v43[3] = v40;
      v43[4] = v41;
      v43[0] = v37;
      v43[1] = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v31 = v37;
      v32 = v38;
      v13 = swift_allocObject();
      *(v13 + 16) = v3;
      *(v13 + 24) = a2 & 1;
      *(v13 + 25) = 1;
      sub_1F32FC(v43, &v45);
      v14 = sub_1F3428();
      v15 = v3;
      Request.performThenCompleteOnMain(_:_:)(0, sub_1F3418, v13, &type metadata for Library.Menu.Request, v14);
      sub_12E1C(v36, &unk_DF7968, &qword_B03810);
      v44[2] = v33;
      v44[3] = v34;
      v44[4] = v35;
      v44[0] = v31;
      v44[1] = v32;
      sub_1F347C(v44);
      v47 = v39;
      v48 = v40;
      v49 = v41;
      v45 = v37;
      v46 = v38;
      sub_1F347C(&v45);
    }

    else
    {
      v16 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
      swift_beginAccess();
      v17 = *v16;
      if (*v16)
      {
        v19 = *(v16 + 4);
        v18 = *(v16 + 5);
        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        v22 = *(v16 + 1);
        *&v45 = v17;
        *(&v45 + 1) = v22;
        *&v46 = v21;
        *(&v46 + 1) = v20;
        *&v47 = v19;
        *(&v47 + 1) = v18;

        v23 = v22;

        Library.Menu.persist()();
      }

      RequestResponse.Controller.isPaused.setter(0);
      v24 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
      swift_beginAccess();
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      *v24 = 0u;
      *(v24 + 1) = 0u;
      *(v24 + 2) = 0u;
      sub_1F3364(v25, v26, v27, v28, v29, v30);
      v50.receiver = v3;
      v50.super_class = type metadata accessor for LibraryMenuViewController();
      objc_msgSendSuper2(&v50, "setEditing:animated:", 0, a2 & 1);
      RequestResponse.Controller.setNeedsReload(_:)(0, 0);
    }
  }
}

void sub_1EE504(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, int a5, int a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = v55 - v10;
  v12 = sub_AB3820();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF7950, &unk_B03800);
  __chkstk_darwin();
  v19 = v55 - v18;
  if (a1[6])
  {
    RequestResponse.Controller.isPaused.setter(0);
    v20 = type metadata accessor for LibraryMenuViewController();
    v73.receiver = a4;
    v73.super_class = v20;
    objc_msgSendSuper2(&v73, "setEditing:animated:", 0, a5 & 1);
    return;
  }

  v56 = v17;
  v57 = v16;
  v58 = v13;
  v59 = a6;
  v60 = a5;
  v66 = v15;
  v21 = a1[4];
  v22 = a1[5];
  v23 = a1[2];
  v24 = a1[3];
  v25 = a4;
  v64 = a4;
  v26 = *a1;
  v27 = a1[1];
  v28 = &v25[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
  swift_beginAccess();
  v29 = *v28;
  v68 = v28[1];
  v69 = v29;
  v30 = v28[3];
  v67 = v28[2];
  v31 = v28[5];
  v62 = v28[4];
  v63 = v30;
  v61 = v31;
  *v28 = v26;
  v28[1] = v27;
  v28[2] = v23;
  v28[3] = v24;
  v28[4] = v21;
  v28[5] = v22;

  v55[0] = v27;

  v65 = v26;
  v55[4] = v23;
  v55[3] = v24;
  v55[2] = v21;
  v55[1] = v22;
  sub_1F34D0(v26, v27, v23, v24, v21, v22, 0);
  sub_1F3364(v69, v68, v67, v63, v62, v61);
  v67 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource;
  v32 = v64;
  v33 = *&v64[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
  if (!v33)
  {
    goto LABEL_20;
  }

  sub_1F3218();
  v34 = v33;
  sub_AB5110();
  v35._rawValue = &off_CF0BA8;
  v36 = v57;
  sub_AB50D0(v35);
  v71 = 0;
  v72 = 0;
  sub_AB5090();
  v37 = v60;
  sub_AB51C0();
  (*(v56 + 8))(v19, v36);

  v38 = type metadata accessor for LibraryMenuViewController();
  v70.receiver = v32;
  v70.super_class = v38;
  objc_msgSendSuper2(&v70, "setEditing:animated:", v59 & 1, v37 & 1);
  v39 = 0;
  v40 = (v58 + 48);
  v68 = (v58 + 8);
  v69 = (v58 + 32);
  v42 = v66;
  v41 = v67;
  while (1)
  {
    v43 = *&v32[v41];
    if (!v43)
    {
      break;
    }

    LOBYTE(v71) = *(&off_CF0BD8 + v39 + 32);
    v44 = v43;
    sub_AB51D0();

    if ((*v40)(v11, 1, v12) == 1)
    {
      sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
    }

    else
    {
      (*v69)(v42, v11, v12);
      v45 = [v32 tableView];
      if (v45)
      {
        v46 = v45;
        v47 = v12;
        v48 = v32;
        isa = sub_AB3770().super.isa;
        v50 = v42;
        v51 = [v46 cellForRowAtIndexPath:isa];

        if (!v51)
        {
          (*v68)(v50, v47);
          v42 = v50;
LABEL_16:
          v32 = v48;
          v12 = v47;
          v41 = v67;
          goto LABEL_6;
        }

        type metadata accessor for LibraryMenuViewController.Cell();
        v52 = swift_dynamicCastClass();
        if (!v52)
        {

          v42 = v66;
          (*v68)(v66, v47);
          goto LABEL_16;
        }

        v53 = v66;
        v54 = v48;
        sub_1F0304(v52, v66);
        v12 = v47;
        (*v68)(v53, v47);

        v42 = v53;
        v32 = v54;
        v41 = v67;
      }

      else
      {
        (*v68)(v42, v12);
      }
    }

LABEL_6:
    if (++v39 == 2)
    {
      sub_1EF7F8();

      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_1EEC18()
{
  v1 = [objc_opt_self() sharedManager];
  [v1 unregisterObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LibraryMenuViewController.DownloadManagerObserver();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1EEDC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a7, v9);

  return result;
}

uint64_t sub_1EEE64(uint64_t result, void *a2)
{
  v2 = result + *a2;
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);

    v3(v5);

    return sub_17654(v3, v4);
  }

  return result;
}

void sub_1EEF68(uint64_t a1)
{
  v32.receiver = v1;
  v32.super_class = type metadata accessor for LibraryMenuViewController();
  objc_msgSendSuper2(&v32, "traitCollectionDidChange:", a1);
  sub_1F004C();
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController];
  v4 = [v1 traitCollection];
  swift_beginAccess();
  v5 = *(v3 + 48);
  v34 = *(v3 + 32);
  v35 = v5;
  v6 = *(v3 + 64);
  v7 = *(v3 + 80);
  v33 = *(v3 + 16);
  v36 = v6;
  v37 = v7;
  v8 = *(&v34 + 1);
  v9 = v33;
  v10 = BYTE8(v33);
  v11 = *(v3 + 25);
  *(v40 + 3) = *(v3 + 28);
  v40[0] = v11;
  v12 = *(v3 + 57);
  v13 = *(v3 + 73);
  *&v39[15] = *(v3 + 88);
  v38 = v12;
  *v39 = v13;
  sub_1F32FC(&v33, &v22);
  UITraitCollection.mediaLibrary.getter();
  Library.Menu.Request.MediaLibrarySource.init(_:)();
  v15 = v14;
  v17 = v16;
  sub_1F3358(v9, v10);
  v31 = v17 & 1;
  rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v19 = UITraitCollection.mediaPickerConfiguration.getter();

  v20 = UITraitCollection.mediaPickerConfiguration.getter();
  LOBYTE(v8) = v20 == 0;

  v21 = sub_1F26FC();

  v29 = v38;
  v22 = v15;
  v23 = v31;
  *v24 = v40[0];
  *&v24[3] = *(v40 + 3);
  v25 = rawValue;
  v26 = v19;
  v27 = v21;
  v28 = v8;
  *v30 = *v39;
  *&v30[15] = *&v39[15];
  RequestResponse.Controller.request.setter(&v22);
}

uint64_t sub_1EF278@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  if ([v3 isEditing] && (v6 = &v3[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu], swift_beginAccess(), *v6) && *(*(v6 + 5) + 16) <= 1uLL)
  {
    v10 = sub_AB3820();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v7 = sub_AB3820();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a2, a1, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

void sub_1EF5A4(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a5(v12);

  (*(v10 + 8))(v12, v9);
}

void sub_1EF7F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v73 = &v65 - v2;
  v75 = sub_AB3820();
  v3 = *(v75 - 8);
  __chkstk_darwin();
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v65 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v65 - v10;
  __chkstk_darwin();
  v13 = &v65 - v12;
  __chkstk_darwin();
  v15 = &v65 - v14;
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v65 - v17;
  if (![v0 isEditing])
  {
    v42 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier;
    v43 = v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier];
    if (v43 == 13)
    {
      return;
    }

    v72 = v7;
    v74 = v0;
    v44 = *&v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (!v44)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    LOBYTE(v77) = v43;
    v45 = v44;
    sub_AB51D0();

    v46 = v75;
    v71 = *(v3 + 48);
    if (v71(v15, 1, v75) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
      return;
    }

    v67 = *(v3 + 32);
    v68 = v3 + 32;
    v67(v72, v15, v46);
    v47 = [v74 tableView];
    if (!v47)
    {
      goto LABEL_41;
    }

    v48 = v47;
    v69 = v42;
    v49 = [v47 indexPathForSelectedRow];
    v66 = v5;
    if (v49)
    {
      v50 = v49;
      sub_AB3790();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v53 = *(v3 + 56);
    v54 = v75;
    v53(v13, v51, 1, v75);

    v70 = v3;
    (*(v3 + 16))(v11, v72, v54);
    v53(v11, 0, 1, v54);
    v55 = *(v1 + 48);
    v56 = v73;
    sub_15F84(v13, v73, &unk_DE8E20, &qword_AF7990);
    sub_15F84(v11, v56 + v55, &unk_DE8E20, &qword_AF7990);
    v57 = v71;
    if (v71(v56, 1, v54) == 1)
    {
      sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      if (v57(v56 + v55, 1, v54) == 1)
      {
        sub_12E1C(v56, &unk_DE8E20, &qword_AF7990);
        (*(v70 + 8))(v72, v54);
LABEL_35:
        v74[v69] = 13;
        return;
      }
    }

    else
    {
      sub_15F84(v56, v9, &unk_DE8E20, &qword_AF7990);
      if (v57(v56 + v55, 1, v54) != 1)
      {
        v62 = v66;
        v67(v66, (v56 + v55), v54);
        sub_1F31C0();
        v63 = sub_AB91C0();
        v64 = *(v70 + 8);
        v64(v62, v54);
        sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
        sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
        v64(v9, v54);
        sub_12E1C(v56, &unk_DE8E20, &qword_AF7990);
        if (v63)
        {
          v64(v72, v54);
          goto LABEL_35;
        }

LABEL_31:
        v58 = [v74 tableView];
        if (!v58)
        {
LABEL_42:
          __break(1u);
          return;
        }

        v59 = v58;
        v60 = v72;
        isa = sub_AB3770().super.isa;
        [v59 selectRowAtIndexPath:isa animated:0 scrollPosition:0];
        (*(v70 + 8))(v60, v54);

        goto LABEL_35;
      }

      sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      (*(v70 + 8))(v9, v54);
    }

    sub_12E1C(v56, &unk_DF7930, &unk_B03B30);
    goto LABEL_31;
  }

  v19 = v0;
  v20 = &v0[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu];
  swift_beginAccess();
  v21 = *v20;
  if (*v20)
  {
    v74 = v19;
    v22 = *(v20 + 4);
    v23 = *(v20 + 5);
    v24 = *(v20 + 2);
    v25 = *(v20 + 3);
    v26 = *(v20 + 1);
    v77 = v21;
    v78 = v26;
    v79 = v24;
    v80 = v25;
    v81 = v22;
    v82 = v23;
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = v25;
      v29 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource;
      v73 = v22;
      v30 = (v3 + 48);
      v31 = (v3 + 8);

      v72 = v26;
      v32 = v26;
      v71 = v24;

      v70 = v28;

      v69 = v23;

      v33 = 0;
      while (v33 < *(v21 + 16))
      {
        v35 = *(v21 + v33 + 32);
        if (!Library.Menu.selectionState(for:)(v35))
        {
          v36 = v74;
          v37 = [v74 tableView];
          if (!v37)
          {
            goto LABEL_38;
          }

          v38 = *&v36[v29];
          if (!v38)
          {
            goto LABEL_39;
          }

          v39 = v37;
          v76 = v35;
          v40 = v38;
          sub_AB51D0();

          v41 = v75;
          if ((*v30)(v18, 1, v75) == 1)
          {
            v34.super.isa = 0;
          }

          else
          {
            v34.super.isa = sub_AB3770().super.isa;
            (*v31)(v18, v41);
          }

          [v39 selectRowAtIndexPath:v34.super.isa animated:0 scrollPosition:0];
        }

        if (v27 == ++v33)
        {

          v26 = v72;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v52 = v26;

LABEL_23:
  }
}

void sub_1F004C()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = [v0 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  if ((rawValue & 2) != 0)
  {

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v4 = sub_AB9260();
    [v1 setPlayActivityFeatureName:v4];
  }

  v5 = sub_AB9260();

  [v1 setTitle:v5];

  v6 = [v1 navigationItem];
  v7 = [v1 traitCollection];
  v8 = sub_2B51D8(v7);
  v10 = v9;

  sub_387430(v8, v10);
  v11 = [v1 navigationItem];
  v12 = sub_AB9260();

  [v11 setTitle:v12];
}

void sub_1F0304(uint64_t a1, uint64_t a2)
{
  if ([v2 isEditing])
  {
    goto LABEL_2;
  }

  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  sub_AB51B0();

  if (v19 != 13)
  {
    if (v19 == 12)
    {
      v14 = [objc_opt_self() sharedManager];
      v15 = [v14 activeDownloadsCount];

      v16 = a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
      v5 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle);
      v17 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8);
      v18 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9);
      *v16 = v15 & ~(v15 >> 63);
      *(v16 + 8) = 0;
      *(v16 + 9) = v15 < 1;
      v9 = v17 | (v18 << 8);
      goto LABEL_4;
    }

    if (v19 == 11)
    {
      v12 = [objc_opt_self() sharedManager];
      v13 = [v12 hasActiveDownloads];

      v4 = a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
      v5 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle);
      v6 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8);
      v7 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9);
      *v4 = 0;
      *(v4 + 8) = v13;
      v8 = v13 ^ 1;
      goto LABEL_3;
    }

LABEL_2:
    v4 = a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
    v5 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle);
    v6 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8);
    v7 = *(a1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9);
    *v4 = 0;
    *(v4 + 8) = 0;
    v8 = 1;
LABEL_3:
    *(v4 + 9) = v8;
    v9 = v6 | (v7 << 8);
LABEL_4:
    sub_1F0D90(v5, v9);
  }
}

BOOL sub_1F05CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

char *sub_1F0608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol] = 0;
  v7 = &v3[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle];
  *v7 = 0;
  *(v7 + 4) = 256;
  v8 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView;
  v9 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = UIView.forAutolayout.getter();

  *&v4[v8] = v10;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView] = 0;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel] = 0;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint] = 0;
  if (a3)
  {
    v11 = sub_AB9260();
  }

  else
  {
    v11 = 0;
  }

  v20.receiver = v4;
  v20.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  v12 = objc_msgSendSuper2(&v20, "initWithStyle:reuseIdentifier:", a1, v11);

  v13 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView;
  v14 = *&v12[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView];
  v15 = v12;
  [v14 setContentMode:4];
  v16 = [v15 contentView];
  [v16 addSubview:*&v12[v13]];

  v17 = [v15 contentView];
  v18 = sub_1F13DC();
  [v17 addSubview:v18];

  sub_1F1568();
  sub_AB9FD0();

  return v15;
}

uint64_t sub_1F07F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300, &qword_AFEFF0);
  __chkstk_darwin();
  v4 = &v19[-1] - v3;
  v5 = sub_AB4F50();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v19[-1] - v9;
  sub_AB4ED0();
  v11 = sub_AB4E30();
  v19[3] = v11;
  v19[4] = &protocol witness table for UICellConfigurationState;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_AB4F40();
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (sub_AB4E10())
  {
    v13 = sub_AB4EE0();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 colorWithAlphaComponent:0.8];
    }

    sub_AB4EF0();
  }

  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_AB9FC0();
  v16 = *(v6 + 8);
  v16(v8, v5);
  return (v16)(v10, v5);
}

void sub_1F0C44()
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  v2 = objc_opt_self();
  v3 = [v2 configurationWithFont:v1 scale:2];

  v4 = v3;
  v5 = [v2 configurationPreferringMonochrome];
  v9 = [v4 configurationByApplyingConfiguration:v5];

  v6 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView);
  v7 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol);
  if (v7)
  {
    v8 = [v7 imageWithSymbolConfiguration:v9];
  }

  else
  {
    v8 = 0;
  }

  [v6 setImage:v8];
}

id sub_1F0D90(id result, __int16 a2)
{
  v3 = v2;
  if ((a2 & 0x100) != 0)
  {
    if (v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9])
    {
      return result;
    }

    if ((v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_12:
    v5 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    if (v5)
    {
      [v5 setHidden:1];
    }

    v6 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView;
    v7 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView];
    }

    else
    {
      v8 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
      v9 = [v3 contentView];
      [v9 addSubview:v8];

      v7 = 0;
    }

    v10 = v7;
    [v8 startAnimating];
    v11 = *&v3[v6];
    *&v3[v6] = v8;

    goto LABEL_23;
  }

  if (v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9])
  {
    [*&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView] stopAnimating];
    v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    if (v4)
    {
      [v4 setHidden:1];
    }

LABEL_23:
    sub_1F1BA4();
    return [v3 setNeedsLayout];
  }

  if ((a2 & 1) == 0)
  {
    if ((v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8] & 1) == 0)
    {
      if (*&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle] == result)
      {
        return result;
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if ((v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8] & 1) == 0)
  {
LABEL_19:
    [*&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView] stopAnimating];
    v12 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel;
    v13 = *&v2[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
    }

    else
    {
      v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v16 = objc_opt_self();
      v14 = v15;
      v17 = [v16 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      [v14 setFont:v17];

      v18 = [v3 contentView];
      [v18 addSubview:v14];

      v13 = 0;
    }

    sub_31848();
    v19 = v13;
    sub_ABAB40();
    v20 = sub_AB9260();

    [v14 setText:v20];

    [v14 setHidden:0];
    v21 = *&v3[v12];
    *&v3[v12] = v14;

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1F109C(uint64_t a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  [v1 separatorInset];
  v11 = v4;
  v12 = v3;
  v10 = v5;
  v6 = sub_1F13DC();
  [v6 frame];

  [v2 effectiveUserInterfaceLayoutDirection];
  v7 = [v2 contentView];
  [v7 bounds];

  sub_ABA490();
  MinX = CGRectGetMinX(v14);
  type metadata accessor for UIEdgeInsets(0);
  [v2 separatorInset];
  result = sub_AB38D0();
  if (result)
  {
    return [v2 setSeparatorInset:{v12, MinX, v11, v10}];
  }

  return result;
}

id sub_1F12E8(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for LibraryMenuViewController.Cell();
  objc_msgSendSuper2(&v18, "layoutMarginsDidChange");
  [v1 layoutMargins];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = [v1 music_inheritedLayoutInsets];
  if (v3 != v14 || v5 != v11 || v7 != v12 || v9 != v13)
  {
    [v1 music_inheritedLayoutInsets];
    return [v1 setLayoutMargins:?];
  }

  return result;
}

id sub_1F13DC()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = UIView.forAutolayout.getter();

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1F1464()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint];
  }

  else
  {
    v4 = sub_1F13DC();
    v5 = [v4 trailingAnchor];

    v6 = [v0 contentView];
    v7 = [v6 layoutMarginsGuide];

    v8 = [v7 trailingAnchor];
    v9 = [v5 constraintLessThanOrEqualToAnchor:v8];

    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1F1568()
{
  v1 = sub_1F13DC();
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v1 setFont:v2];

  v3 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel;
  [*(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel) setAdjustsFontForContentSizeCategory:1];
  [*(v0 + v3) setNumberOfLines:0];
  v4 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView);
  [v4 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [v4 setTintColor:0];
  v5 = *(v0 + v3);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setTextColor:v8];

  v9 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel);
  if (v9)
  {
    v10 = v9;
    v11 = [v6 secondaryLabelColor];
    [v10 setTextColor:v11];
  }

  v12 = *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView);
  if (v12)
  {
    v13 = v12;
    v14 = [v6 secondaryLabelColor];
    [v13 setColor:v14];
  }

  sub_1F1748();
}

void sub_1F1748()
{
  v37 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B036F0;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 layoutMarginsGuide];

  v6 = [v5 leadingAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];

  *(v1 + 32) = v7;
  v8 = [v2 widthAnchor];
  v9 = objc_opt_self();
  v10 = [v9 defaultMetrics];
  [v10 scaledValueForValue:35.0];
  v12 = v11;

  v13 = [v8 constraintGreaterThanOrEqualToConstant:v12];
  *(v1 + 40) = v13;
  v14 = sub_1F13DC();
  v15 = [v14 firstBaselineAnchor];

  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v9 defaultMetrics];
  [v18 scaledValueForValue:32.0];
  v20 = v19;

  v21 = [v15 constraintEqualToAnchor:v17 constant:v20];
  *(v1 + 48) = v21;
  v22 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel;
  v23 = [*&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel] firstBaselineAnchor];
  v24 = [v2 firstBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v1 + 56) = v25;
  v26 = [*&v0[v22] leadingAnchor];
  v27 = [v2 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];

  *(v1 + 64) = v28;
  v29 = [v0 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [*&v0[v22] lastBaselineAnchor];
  v32 = [v9 defaultMetrics];
  [v32 scaledValueForValue:16.0];
  v34 = v33;

  v35 = [v30 constraintEqualToAnchor:v31 constant:v34];
  *(v1 + 72) = v35;
  sub_13C80(0, &qword_DF7920, NSLayoutConstraint_ptr);
  isa = sub_AB9740().super.isa;

  [v37 activateConstraints:isa];

  sub_1F1BA4();
}

void sub_1F1BA4()
{
  if (v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 9])
  {
    v3 = sub_1F1464();
    [v3 setActive:1];
  }

  else
  {
    if (v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle + 8])
    {
      v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView];
      if (!v1)
      {
        return;
      }
    }

    else
    {
      v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel];
      if (!v1)
      {
        return;
      }
    }

    v2 = v1;
    v3 = UIView.forAutolayout.getter();

    sub_1F1C78(v3, v0);
  }
}

void sub_1F1C78(void *a1, void *a2)
{
  v4 = sub_1F1464();
  [v4 setActive:0];

  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF82E0;
  v6 = [a1 centerYAnchor];
  v7 = [a2 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 centerYAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];

  *(v5 + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [a2 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  *(v5 + 40) = v15;
  v16 = [a1 leadingAnchor];
  v17 = sub_1F13DC();
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18 constant:10.0];
  *(v5 + 48) = v19;
  sub_13C80(0, &qword_DF7920, NSLayoutConstraint_ptr);
  isa = sub_AB9740().super.isa;

  [v20 activateConstraints:isa];
}

uint64_t type metadata accessor for LibraryMenuViewController.DataSource(uint64_t a1)
{
  result = qword_DF78C8;
  if (!qword_DF78C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F2070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v5 + 8))(v7, v4);
  return 1;
}

BOOL sub_1F213C()
{
  v1 = *(v0 + qword_DF78B0);
  v2 = *(v0 + qword_DF78B0 + 8);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1F3698;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_307CC(v1, v2);
  sub_17654(v4, v3);
  return v1 != 0;
}

BOOL sub_1F21DC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v10 = *(v7 + 8);
  v11 = a4;
  v12 = a1;
  v10(v9, v6);
  v13 = *&v12[qword_DF78B0];
  v14 = *&v12[qword_DF78B0 + 8];
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = sub_1F26D0;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  sub_307CC(v13, v14);
  sub_17654(v16, v15);

  return v13 != 0;
}

void sub_1F2344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_DF78B0);
  if (v4)
  {
    v7 = *(v3 + qword_DF78B0 + 8);

    v4(v3, a2, a3);

    sub_17654(v4, v7);
  }
}

void sub_1F23DC(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v24 - v12;
  sub_AB3790();
  sub_AB3790();
  v14 = *&a1[qword_DF78B0];
  if (v14)
  {
    v15 = *&a1[qword_DF78B0 + 8];
    v16 = a4;
    v17 = a5;
    v18 = a1;
    sub_307CC(v14, v15);
    v14(v18, v13, v11);
    v19 = *(v9 + 8);
    v19(v11, v8);
    v19(v13, v8);
    sub_17654(v14, v15);
  }

  else
  {
    v20 = *(v9 + 8);
    v21 = a4;
    v22 = a5;
    v23 = a1;
    v20(v11, v8);
    v20(v13, v8);
  }
}

id sub_1F25D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1F261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(type metadata accessor for LibraryMenuViewController.DataSource(0)) + qword_DF78B0;
  *v3 = 0;
  v3[1] = 0;
  return sub_AB51A0();
}

uint64_t sub_1F2698()
{

  return swift_deallocObject();
}

void *sub_1F26FC()
{
  v7 = &_swiftEmptySetSingleton;
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  sub_1C060(&v6, 0);
  if ((rawValue & 2) != 0)
  {
    v1 = &v4;
    v2 = 11;
  }

  else
  {
    v1 = &v5;
    v2 = 12;
  }

  sub_1C060(v1, v2);
  return v7;
}

void sub_1F276C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_editingMenu);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v0 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier) = 13;
  v3 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_downloadManagerObserver;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for LibraryMenuViewController.DownloadManagerObserver()) init];
  v4 = (v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_requestResponseController;
  Library.Menu.Request.init()(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7990, &unk_B03830);
  swift_allocObject();
  *(v1 + v5) = RequestResponse.Controller.init(request:)(v9, v6, v7, v8);
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_hasLoadedSuccessfulResponse) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_1F28AC(uint64_t a1)
{
  if (([v1 isEditing] & 1) == 0)
  {
    v2 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (v2)
    {
      v3 = v2;
      sub_AB51B0();

      if (v8 != 13)
      {
        v4 = [v1 traitCollection];
        v5 = sub_4F16E8(v4, v8);

        v6 = &v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController];
        v7 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController + 8];
        *v6 = v8;
        *(v6 + 1) = v5;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1F2974(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v36 - v6;
  type metadata accessor for MetricsEvent.Click(0);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController + 8];
  v12 = &selRef__authenticateReturningError_;
  if (!v11)
  {
    goto LABEL_8;
  }

  v13 = Library.Menu.Identifier.rawValue.getter(v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController]);
  v15 = v14;
  if (v13 == Library.Menu.Identifier.rawValue.getter(v3) && v15 == v16)
  {
    v22 = v11;
  }

  else
  {
    v18 = sub_ABB3C0();
    v19 = v11;

    if ((v18 & 1) == 0)
    {

      v12 = &selRef__authenticateReturningError_;
LABEL_8:
      v20 = [v2 v12[334]];
      isa = sub_4F16E8(v20, v3);

      v37 = 0;
      goto LABEL_11;
    }
  }

  isa = v11;
  v37 = isa;
  v12 = &selRef__authenticateReturningError_;
LABEL_11:
  v23 = [v2 v12[334]];
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {
    if (Library.Menu.Identifier.rawValue.getter(v3) == 0xD000000000000026 && 0x8000000000B493F0 == v24)
    {
    }

    else
    {
      v25 = sub_ABB3C0();

      if ((v25 & 1) == 0)
      {
        v26.super.isa = 0;
        goto LABEL_17;
      }
    }
  }

  sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
  v26.super.isa = UITraitCollection.init(legacyLibraryFilter:)(2).super.isa;
LABEL_17:

  if (Library.Menu.Identifier.rawValue.getter(v3) == 0xD000000000000026 && 0x8000000000B49510 == v27)
  {
  }

  else
  {
    v28 = sub_ABB3C0();

    if ((v28 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v29 = sub_AB31C0();
  v30 = *(*(v29 - 8) + 56);
  v30(v7, 1, 1, v29);
  v30(v5, 1, 1, v29);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 15, 28, v7, 0, 0, 12, v10, 0, 0, 65280, 0, 0, 0, 0, v5, 0, 1, 2, 0, 0, 0);
  v31 = MetricsReportingController.shared.unsafeMutableAddressor();
  v32 = *&stru_B8.sectname[swift_isaMask & **v31];
  v33 = *v31;
  v32(v10, 0, 0, 0, 0, 0);
  sub_1F32A0(v10);

LABEL_22:
  v34 = [v2 navigationController];
  if (v34)
  {
    v35 = v34;
    [(objc_class *)v34 pushViewController:isa overrideTraitCollection:v26.super.isa animated:1];

    isa = v26.super.isa;
    v26.super.isa = v35;
  }
}

void sub_1F2DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
  if (v3)
  {
    v4 = v3;
    sub_AB51B0();

    v5 = v18[0];
    if (v18[0] != 13)
    {
      if ([v1 isEditing])
      {
        v6 = sub_1EE1A8(v18);
        if (*v7)
        {
          Library.Menu.setSelectionState(_:for:)(0, v5);
        }

        (v6)(v18, 0);
        goto LABEL_16;
      }

      sub_1F2974(v18[0]);
      v8 = OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier;
      v9 = v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier];
      if (v9 != 13)
      {
        v10 = Library.Menu.Identifier.rawValue.getter(v9);
        v12 = v11;
        if (v10 == Library.Menu.Identifier.rawValue.getter(v18[0]) && v12 == v13)
        {
        }

        else
        {
          v15 = sub_ABB3C0();

          if ((v15 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v2[v8] = 13;
      }
    }

LABEL_16:
    v16 = &v2[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController];
    v17 = *&v2[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_prewarmedIdentifierViewController + 8];
    *v16 = 0;
    *(v16 + 1) = 0;

    return;
  }

  __break(1u);
}

void sub_1F2F58(uint64_t a1)
{
  if ([v1 isEditing])
  {
    v2 = *&v1[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_dataSource];
    if (v2)
    {
      v3 = v2;
      sub_AB51B0();

      v4 = v7[0];
      if (v7[0] != 13)
      {
        v5 = sub_1EE1A8(v7);
        if (*v6)
        {
          Library.Menu.setSelectionState(_:for:)(1, v4);
        }

        (v5)(v7, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1F301C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol) = 0;
  v2 = v0 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadIndicatorStyle;
  *v2 = 0;
  *(v2 + 8) = 256;
  v3 = OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbolView;
  v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v3) = v5;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activityIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_activeDownloadsCountLabel) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell____lazy_storage___defaultTitleLabelTrailingConstraint) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_1F311C()
{

  return swift_deallocObject();
}

unint64_t sub_1F31C0()
{
  result = qword_DF7940;
  if (!qword_DF7940)
  {
    sub_AB3820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF7940);
  }

  return result;
}

unint64_t sub_1F3218()
{
  result = qword_DF7958;
  if (!qword_DF7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF7958);
  }

  return result;
}

void sub_1F326C()
{
  v1 = *(v0 + 16);
  sub_1EF7F8();
  *(v1 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier) = 13;
}

uint64_t sub_1F32A0(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1F3358(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_1F3364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1F33E0()
{

  return swift_deallocObject();
}

unint64_t sub_1F3428()
{
  result = qword_DF7960;
  if (!qword_DF7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF7960);
  }

  return result;
}

double sub_1F34D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    swift_errorRetain();
  }

  else
  {

    v10 = a2;
  }

  return result;
}

uint64_t sub_1F3558()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1F35DC()
{

  return swift_deallocObject();
}

uint64_t sub_1F363C()
{

  return swift_deallocObject();
}

void sub_1F369C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a2[qword_DFE2F0];
  if (v9)
  {
    v67 = v9;
    if (![v67 isEmpty])
    {
      v10 = *&a2[qword_DF79B8];
      if (v10)
      {
        v58 = v4;
        v59 = v6;
        v60 = v8;
        v11 = swift_allocObject();
        *(v11 + 16) = _swiftEmptyArrayStorage;
        v12 = (v11 + 16);
        v13 = v10;
        v14 = [v67 results];
        if (!v14)
        {
          __break(1u);
          goto LABEL_34;
        }

        v15 = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = a1;
        *(v16 + 24) = v12;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_1FBE10;
        *(v17 + 24) = v16;
        v72 = sub_581C8;
        v73 = v17;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v71 = sub_48D644;
        *(&v71 + 1) = &block_descriptor_223;
        v18 = _Block_copy(&aBlock);

        [v15 enumerateItemIdentifiersUsingBlock:v18];
        _Block_release(v18);
        LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

        if (v18)
        {
LABEL_31:
          __break(1u);
        }

        else
        {
          v19 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
          [v19 setInGroupSession:0];
          v17 = *v12;
          v20 = *v12 >> 62;
          v63 = v13;
          v64 = v11;
          v62 = v16;
          v65 = v19;
          v61 = v11 + 16;
          v11 = v17 & 0xFFFFFFFFFFFFFF8;
          if (!v20)
          {
            v21 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
LABEL_8:

            v22 = 0;
            v66 = _swiftEmptyArrayStorage;
            while (v21 != v22)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                v23 = sub_360310(v22, v17);
              }

              else
              {
                if (v22 >= *(v11 + 16))
                {
                  goto LABEL_30;
                }

                v23 = *(v17 + 8 * v22 + 32);
              }

              v24 = v23;
              v25 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v26 = MPIdentifierSet.bestStoreIdentifier.getter();
              v28 = v27;

              ++v22;
              if (v28)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = sub_6B0F0(0, *(v66 + 2) + 1, 1, v66);
                }

                v30 = *(v66 + 2);
                v29 = *(v66 + 3);
                if (v30 >= v29 >> 1)
                {
                  v66 = sub_6B0F0((v29 > 1), v30 + 1, 1, v66);
                }

                v31 = v66;
                *(v66 + 2) = v30 + 1;
                v32 = &v31[16 * v30];
                *(v32 + 4) = v26;
                *(v32 + 5) = v28;
                v22 = v25;
              }
            }

            isa = sub_AB9740().super.isa;
            v35 = v65;
            [v65 setStoreIDs:isa];

            v36 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
            [v36 setRequest:v35];
            v37 = [objc_allocWithZone(MPCPlaybackIntent) init];
            [v37 setTracklistToken:v36];
            [v37 setTracklistSource:3];
            v38 = [objc_allocWithZone(MPModelLibraryRequest) init];
            v39 = [v67 request];
            if (v39)
            {
              v40 = v39;
              v41 = [v39 label];
              [v38 setLabel:v41];

              v42 = [objc_opt_self() kindWithVariants:3];
              [v38 setItemKind:v42];

              v43 = [a2 traitCollection];
              v44 = UITraitCollection.mediaLibrary.getter();

              [v38 setMediaLibrary:v44];
              sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);

              v45 = sub_AB9740().super.isa;

              [v38 setAllowedItemIdentifiers:v45];

              v46 = [v38 playbackIntentWithStartItemIdentifiers:0];
              if (v46)
              {
                v47 = v46;
                v48 = swift_allocObject();
                v49 = v66;
                v48[2] = v64;
                v48[3] = v49;
                v48[4] = v47;
                v48[5] = v37;
                v48[6] = a2;
                v48[7] = sub_1F83E4;
                v48[8] = 0;
                v72 = sub_1FBED8;
                v73 = v48;
                *&aBlock = _NSConcreteStackBlock;
                *(&aBlock + 1) = 1107296256;
                *&v71 = sub_151E0;
                *(&v71 + 1) = &block_descriptor_229;
                v50 = _Block_copy(&aBlock);

                v51 = v47;
                v52 = v37;
                v53 = a2;

                [v38 performWithResponseHandler:v50];
                _Block_release(v50);
              }

              else
              {

                v54 = v59;
                *v59 = v37;
                swift_storeEnumTagMultiPayload();
                v72 = 0;
                aBlock = 0u;
                v71 = 0u;
                v69 = 0;
                memset(v68, 0, sizeof(v68));
                v55 = v37;
                v56 = a2;
                v57 = v60;
                PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v54, &aBlock, 3, 0, 0, 1, 0, 1, v60, a2, v68);
                sub_37D3DC(0);

                sub_1FBE18(v57, type metadata accessor for PlaybackIntentDescriptor);
              }

              return;
            }

LABEL_34:
            __break(1u);
            return;
          }
        }

        v21 = sub_ABB060();
        goto LABEL_8;
      }
    }

    v33 = v67;
  }
}

uint64_t sub_1F3EE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_AB37F0();
  if (result == a4)
  {
    v9 = a2;
    sub_AB9730();
    if (*(&dword_10 + (*a5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a5 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    return sub_AB97F0();
  }

  return result;
}

void sub_1F3F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v28 = a8;
  v29 = sub_AB7C10();
  v33 = *(v29 - 8);
  __chkstk_darwin();
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB7C50();
  v31 = *(v17 - 8);
  v32 = v17;
  __chkstk_darwin();
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v30 = sub_ABA150();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a7;
  v20[8] = v28;
  v20[9] = a9;
  aBlock[4] = sub_1FBF74;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_235;
  v28 = _Block_copy(aBlock);
  v21 = a1;
  v22 = a5;
  v23 = a6;
  v24 = a7;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1FBF88(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  v25 = v29;
  sub_ABABB0();
  v26 = v28;
  v27 = v30;
  sub_ABA160();
  (*(v33 + 8))(v16, v25);
  (*(v31 + 8))(v19, v32);
  _Block_release(v26);
}

uint64_t sub_1F42C0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v31 = a5;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(a1 + 16);
  if (v19 >> 62)
  {
    v20 = sub_ABB060();
  }

  else
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  }

  if (v20 == *(a2 + 16))
  {
    if (a3)
    {
      v21 = a3;
      v22 = [v21 results];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 numberOfItemsInSection:0];
        v30 = a8;
        v25 = a7;
        v26 = v24;

        v27 = v26 == v20;
        a7 = v25;
        if (v27)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    a4 = v31;
  }

LABEL_11:
  *v16 = a4;
  swift_storeEnumTagMultiPayload();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v28 = a6;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v16, v34, 3, 0, 0, 1, 0, 1, v18, a6, v32);
  a7(v18);
  return sub_1FBE18(v18, type metadata accessor for PlaybackIntentDescriptor);
}

void sub_1F44FC(char a1)
{
  if (v1[qword_E711D0] == (a1 & 1))
  {
    return;
  }

  v2 = qword_DF79C8;
  v3 = *&v1[qword_DF79C8];
  if (!v1[qword_E711D0])
  {
    goto LABEL_6;
  }

  *&v1[qword_DF79C8] = v3 | 1;
  if (v3 == (v3 | 1))
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v4 = *&v1[qword_DFE2F8];
  if (!v4)
  {
    __break(1u);
LABEL_6:
    *&v1[v2] = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (v3 == (v3 & 0xFFFFFFFFFFFFFFFELL))
    {
      return;
    }

    [v1 loadViewIfNeeded];
    v4 = *&v1[qword_DFE2F8];
    if (!v4)
    {
      __break(1u);
      return;
    }
  }

  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];
}

void sub_1F45EC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v4 = &v21 - v3;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_E711D8];
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

LABEL_6:
    [v1 loadViewIfNeeded];
    v12 = qword_DFE2F8;
    v13 = *&v1[qword_DFE2F8];
    if (v13)
    {
      v14 = [v13 collectionViewLayout];
      [v14 invalidateLayout];

      v15 = qword_E719B8;
      swift_beginAccess();
      sub_15F84(&v1[v15], v4, &unk_DE8E20, &qword_AF7990);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
        return;
      }

      (*(v6 + 32))(v9, v4, v5);
      [v1 loadViewIfNeeded];
      v16 = *&v1[v12];
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
        v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_AF4EC0;
        (*(v6 + 16))(v18 + v17, v9, v5);
        v19 = v16;
        isa = sub_AB9740().super.isa;

        [v19 reloadItemsAtIndexPaths:isa];
        (*(v6 + 8))(v9, v5);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_12C8D8(a1, v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1F48E8(void *a1)
{
  v2 = qword_DF79A0;
  v3 = *(v1 + qword_DF79A0);
  if (a1)
  {
    if (v3 != a1)
    {
      if (*(v1 + qword_DFE2F0) != a1)
      {
        *(v1 + qword_DF79A0) = a1;
        v5 = a1;

        v6 = [v5 results];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 firstSection];

          if (v8)
          {
            objc_opt_self();
            v9 = swift_dynamicCastObjCClass();
            if (!v9)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v9 = 0;
          }

          swift_unknownObjectWeakInit();
          v11 = v5;
          v12 = [v11 results];
          if (v12)
          {
            v13 = v12;
            sub_1FB580(v12, v9);
            v15 = v14;

            if (!v15)
            {
              v20 = 0;
              goto LABEL_23;
            }

            v16 = type metadata accessor for ClassicalAlbumModelResponse();
            v17 = objc_allocWithZone(v16);
            *&v17[OBJC_IVAR____TtC16MusicApplication27ClassicalAlbumModelResponse_initialModelResponse] = v11;
            v18 = v11;
            v19 = [v18 request];
            v22.receiver = v17;
            v22.super_class = v16;
            v20 = objc_msgSendSuper2(&v22, "initWithRequest:", v19);

            if (v20)
            {

              [v20 setResults:v15];
LABEL_23:
              v21 = v11;
              sub_1F4B8C(a1, v20, v23, v9);

              swift_unknownObjectWeakDestroy();
              return;
            }

LABEL_27:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_27;
      }

      goto LABEL_14;
    }
  }

  else if (v3)
  {
    if (*(v1 + qword_DFE2F0))
    {
      *(v1 + qword_DF79A0) = 0;

      swift_unknownObjectWeakInit();
      sub_1F4B8C(0, 0, v23, 0);
      swift_unknownObjectWeakDestroy();
      return;
    }

LABEL_14:

    sub_3B4724(a1);
    return;
  }

  sub_3B4724(a1);
  v10 = *(v1 + v2);
  *(v1 + v2) = 0;
}

void sub_1F4B8C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = qword_DF79A0;
    v10 = *(Strong + qword_DF79A0);
    if (a1)
    {
      if (v10)
      {
        v11 = v10 == a1;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    else if (v10)
    {
LABEL_12:

      return;
    }

    v12 = *(Strong + qword_DF79B8);
    *(Strong + qword_DF79B8) = a4;
    v13 = a4;
    sub_1F9894(v12);

    v8[qword_DF79A8] = a2 != 0;
    if (a2)
    {
      v14 = *&v8[v9];
      *&v8[v9] = a2;
      v15 = a2;
    }

    v16 = *&v8[v9];
    v17 = v16;
    sub_1F48E8(v16);
    goto LABEL_12;
  }
}

void (*sub_1F4C74(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + qword_DFE2F0);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1F4CC8;
}

void sub_1F4CC8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1F48E8(v2);
  }

  else
  {
    sub_1F48E8(*a1);
  }
}

void sub_1F4D30()
{
  v1 = v0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v3 = &v61 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v61 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v61 - v11;
  *&v12 = __chkstk_darwin().n128_u64[0];
  v84 = &v61 - v13;
  if ([v1 isViewLoaded])
  {
    [v1 loadViewIfNeeded];
    v14 = *&v1[qword_DFE2F8];
    if (v14)
    {
      v72 = v14;
      v15 = [v72 indexPathsForVisibleItems];
      v66 = sub_AB9760();

      v16 = v1;
      v17 = *&v1[qword_DF79B8];
      if (v17)
      {
        v65 = [v17 hasLoadedValueForKey:MPModelPropertyAlbumSongPopularity];
      }

      else
      {
        v65 = 0;
      }

      v18 = *(v66 + 16);
      if (v18)
      {
        v64 = v17;
        v71 = v5;
        v62 = qword_DF79B0;
        v19 = v66 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v70 = qword_DFE2F0;
        v77 = qword_E719B8;
        swift_beginAccess();
        v21 = *(v9 + 16);
        v20 = v9 + 16;
        v82 = v21;
        v75 = (v20 + 32);
        v76 = (v20 + 40);
        v67 = (v20 + 16);
        v74 = *(v20 + 56);
        v80 = (v20 - 8);
        v69 = (v20 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v73 = v20;
        v79 = v16;
        while (1)
        {
          v83 = v18;
          v22 = v84;
          v23 = v82;
          v82(v84, v19, v8);
          v23(v7, v22, v8);
          (*v76)(v7, 0, 1, v8);
          v24 = *(v78 + 48);
          sub_15F84(v7, v3, &unk_DE8E20, &qword_AF7990);
          sub_15F84(&v16[v77], &v3[v24], &unk_DE8E20, &qword_AF7990);
          v25 = *v75;
          if ((*v75)(v3, 1, v8) == 1)
          {
            break;
          }

          v26 = v71;
          sub_15F84(v3, v71, &unk_DE8E20, &qword_AF7990);
          if (v25(&v3[v24], 1, v8) == 1)
          {
            sub_12E1C(v7, &unk_DE8E20, &qword_AF7990);
            (*v80)(v26, v8);
LABEL_13:
            sub_12E1C(v3, &unk_DF7930, &unk_B03B30);
            goto LABEL_14;
          }

          v47 = &v3[v24];
          v48 = v3;
          v49 = v68;
          (*v67)(v68, v47, v8);
          sub_1FBF88(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v50 = sub_AB91C0();
          v51 = *v80;
          v52 = v49;
          v3 = v48;
          (*v80)(v52, v8);
          sub_12E1C(v7, &unk_DE8E20, &qword_AF7990);
          v51(v26, v8);
          sub_12E1C(v48, &unk_DE8E20, &qword_AF7990);
          if (v50)
          {
            v51(v84, v8);
            goto LABEL_29;
          }

LABEL_14:
          v82(v81, v84, v8);
          isa = sub_AB3770().super.isa;
          v28 = [v72 cellForItemAtIndexPath:isa];

          if (!v28)
          {
            v53 = *v80;
            (*v80)(v81, v8);
            v53(v84, v8);
            goto LABEL_29;
          }

          v16 = v79;
          v29 = *&v79[v70];
          if (!v29)
          {
            goto LABEL_35;
          }

          v30 = v29;
          v31 = [v30 results];
          if (v31)
          {
            v32 = v31;

            v33 = sub_AB3770().super.isa;
            v34 = [v32 itemAtIndexPath:v33];

            if (v34)
            {
              objc_opt_self();
              v35 = swift_dynamicCastObjCClass();
              v16 = v79;
              if (v35)
              {
                v36 = v35;
                type metadata accessor for SongCell(0);
                v37 = swift_dynamicCastClass();
                if (v37)
                {
                  if (v65)
                  {
                    v63 = v37;
                    v38 = [v36 identifiers];
                    if (v64)
                    {
                      v61 = v36;
                      v39 = v38;
                      v40 = [v64 songPopularityForIdentifiers:v38];
                      if (v40)
                      {
                        v41 = v40;
                        v42 = [v39 universalStore];
                        if (v42)
                        {
                          v43 = [v42 adamID];
                          swift_unknownObjectRelease();
                          v85 = v43;
                          sub_ABAD10();
                          v44 = v41;
                          v45 = sub_1F9828();
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v85 = v45;
                          sub_924C8(v44, v86, isUniquelyReferenced_nonNull_native);
                          sub_8085C(v86);

                          *&v79[v62] = v85;
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }

                      v36 = v61;
                    }

                    else
                    {
                    }

                    v37 = v63;
                  }

                  v58 = v37;
                  v59 = v81;
                  sub_1F8410(v37, v36, v81);
                  sub_1FAA94(v58, v59);
                  swift_unknownObjectRelease();
                  v60 = *v80;
                  (*v80)(v59, v8);
                  v60(v84, v8);
                  v16 = v79;

                  v57 = v83;
                  goto LABEL_38;
                }

                swift_unknownObjectRelease();
LABEL_35:
              }

              else
              {

                swift_unknownObjectRelease();
              }

              v56 = *v80;
              (*v80)(v81, v8);
              v56(v84, v8);
              goto LABEL_37;
            }

            v55 = *v80;
            (*v80)(v81, v8);
            v55(v84, v8);
          }

          else
          {

            v54 = *v80;
            (*v80)(v81, v8);
            v54(v84, v8);
          }

          v16 = v79;
LABEL_37:
          v57 = v83;
LABEL_38:
          v19 += v74;
          v18 = v57 - 1;
          if (!v18)
          {

            goto LABEL_47;
          }
        }

        sub_12E1C(v7, &unk_DE8E20, &qword_AF7990);
        if (v25(&v3[v24], 1, v8) == 1)
        {
          sub_12E1C(v3, &unk_DE8E20, &qword_AF7990);
          (*v80)(v84, v8);
LABEL_29:
          v16 = v79;
          goto LABEL_37;
        }

        goto LABEL_13;
      }

LABEL_47:
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1F5728()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_AB3820();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(v0 + qword_E08848);
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (!v6)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v8 = *(v0 + qword_DFE2F0);
  if (!v8)
  {
    v14 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = v6;
  v20 = v9;
  v11 = [v9 results];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  v6 = swift_allocObject();
  v6[2] = v10;
  v6[3] = v4;
  v13 = swift_allocObject();
  v14 = sub_1FBC3C;
  *(v13 + 16) = sub_1FBC3C;
  *(v13 + 24) = v6;
  aBlock[4] = sub_57B9C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D644;
  aBlock[3] = &block_descriptor_197;
  v15 = _Block_copy(aBlock);
  v16 = v10;

  [v12 enumerateItemIdentifiersUsingBlock:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_12;
  }

  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
LABEL_8:
  sub_15F84(v4, v2, &unk_DE8E20, &qword_AF7990);
  v18 = qword_E71990;
  swift_beginAccess();
  sub_1FBB9C(v2, v0 + v18, &unk_DE8E20, &qword_AF7990);
  swift_endAccess();
  if (*(p_cache[94] + v0))
  {
    sub_1F4D30();
    sub_46C570();
  }

  sub_12E1C(v2, &unk_DE8E20, &qword_AF7990);
  sub_12E1C(v4, &unk_DE8E20, &qword_AF7990);
  sub_17654(v14, v6);
}

uint64_t sub_1F5A6C(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5)
{
  result = sub_468CF8(a4);
  if (result)
  {
    sub_12E1C(a5, &unk_DE8E20, &qword_AF7990);
    v9 = sub_AB3820();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a5, a1, v9);
    result = (*(v10 + 56))(a5, 0, 1, v9);
    *a3 = 1;
  }

  return result;
}

void *sub_1F5B48()
{
  v1 = *(v0 + qword_DF79B8);
  v2 = v1;
  return v1;
}

void sub_1F5B78(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v6 = *(v3 + qword_DFE2F0);
    if (!v6)
    {
LABEL_7:
      v8 = type metadata accessor for PlaybackIntentDescriptor(0);
      v9 = *(*(v8 - 8) + 56);

      v9(a3, 1, 1, v8);
      return;
    }

    v10 = v6;
    a1 = 0;
  }

  v7 = a1;
  if ([v10 isEmpty])
  {

    goto LABEL_7;
  }

  sub_46A200(0, a2, a3);
}

id sub_1F5C7C(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E09210, &unk_B107A0);
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  __chkstk_darwin();
  v12 = &v58 - v11;
  v13 = sub_AB2DC0();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin();
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  __chkstk_darwin();
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v58 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v58 - v20;
  v21 = a2;
  v22 = v4;
  sub_468E80(a1, v21, a3, a4 & 1);

  sub_AB108(v23);
  v24 = qword_DF79B8;
  v25 = *(v4 + qword_DF79B8);
  if (v25)
  {
    v26 = v25;
    v27 = [v26 copyrightText];
    if (v27)
    {
      v28 = v27;
      v29 = sub_AB92A0();
      v58 = v19;
      v30 = v22;
      v31 = v29;
      v32 = v16;
      v34 = v33;

      v35 = v34;
      v16 = v32;
      v36 = v31;
      v22 = v30;
      v19 = v58;
      goto LABEL_6;
    }
  }

  v36 = 0;
  v35 = 0xE000000000000000;
LABEL_6:
  sub_AB92C(v36, v35);
  v37 = *(v22 + v24);
  v38 = v65;
  if (v37)
  {
    v39 = v37;
    v40 = [v39 releaseDateComponents];
    if (v40)
    {
      v41 = v40;
      sub_AB2D70();

      v42 = v61;
      v43 = *(v61 + 56);
      v44 = v16;
      v45 = 0;
    }

    else
    {
      v42 = v61;
      v43 = *(v61 + 56);
      v44 = v16;
      v45 = 1;
    }

    v46 = v62;
    v43(v44, v45, 1, v62);
    v47 = v60;
    sub_D321C(v16, v60);
    if (!(*(v42 + 48))(v47, 1, v46))
    {
      v49 = v59;
      (*(v42 + 16))(v59, v47, v46);
      sub_12E1C(v47, &qword_DF43E0, &unk_B03B20);

      sub_AB2D90();
      (*(v42 + 8))(v49, v46);
      goto LABEL_14;
    }

    sub_12E1C(v47, &qword_DF43E0, &unk_B03B20);
  }

  v48 = sub_AB3430();
  (*(*(v48 - 8) + 56))(v38, 1, 1, v48);
LABEL_14:
  v50 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  swift_beginAccess();
  sub_15F84(&a1[v50], v19, &unk_E01230, "|,\r");
  swift_beginAccess();
  sub_1FBB9C(v38, &a1[v50], &unk_E01230, "|,\r");
  swift_endAccess();
  sub_AB33C(v19);
  sub_12E1C(v19, &unk_E01230, "|,\r");
  sub_12E1C(v38, &unk_E01230, "|,\r");

  sub_ABB9C(v51);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = &a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
  v54 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler];
  v55 = *&a1[OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler + 8];
  *v53 = sub_1FBB94;
  *(v53 + 1) = v52;
  swift_retain_n();
  sub_17654(v54, v55);
  __chkstk_darwin();
  *(&v58 - 2) = a1;
  type metadata accessor for DetailCellTextStack(0);
  sub_1FBF88(&unk_DF8680, type metadata accessor for DetailCellTextStack, &unk_AFAE58);
  sub_AB6780();
  sub_AB6AA0();
  v56 = v63;
  v66[3] = v63;
  v66[4] = sub_36A00(&unk_E09220, &unk_E09210, &unk_B107A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  __swift_allocate_boxed_opaque_existential_0(v66);
  sub_AB6770();
  (*(v64 + 8))(v12, v56);
  sub_ABA2B0();

  [a1 music_layoutInsets];
  [a1 music_setLayoutInsets:12.0];
  [a1 music_layoutInsets];
  return [a1 music_setLayoutInsets:?];
}

void sub_1F635C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + qword_E08808;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(v4, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

double sub_1F640C(void *a1)
{
  sub_3B316C(a1);
  v1 = type metadata accessor for DetailCell(0);
  v2 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v1, v2, v3);

  v4 = type metadata accessor for ContainerDetailHeaderReusableView();
  v5 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v6 = *v5;
  v7 = v5[1];

  v8 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v4, v6, v7, v8, v9);

  v10 = sub_13C80(0, &qword_DEF620, UICollectionReusableView_ptr);
  v11 = sub_AB92A0();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v10, v11, v12, 0xD00000000000001ELL, 0x8000000000B575C0);

  v13 = type metadata accessor for FooterButtonReusableView();
  v14 = sub_AB92A0();
  v16 = v15;
  v17 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v13, v14, v16, v17, v18);

  return result;
}

void sub_1F65A0()
{
  sub_1F5728();
  sub_46C570();
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 results];
    if (!v3)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v3 numberOfSections];

    if (v5 >= 1)
    {
      aBlock[6] = &OBJC_PROTOCOL___MPModelResponseDetailedKeepLocalStatusRequesting;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v2;
        aBlock[4] = sub_1FBB44;
        aBlock[5] = v9;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_151E0;
        aBlock[3] = &block_descriptor_184;
        v10 = _Block_copy(aBlock);
        v11 = v2;

        v12 = [v7 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:0 responseHandler:v10];
        _Block_release(v10);
        v13 = [v11 request];
        if (v13)
        {
          v14 = v13;
          ObjCClassFromObject = swift_getObjCClassFromObject();

          v16 = [ObjCClassFromObject preferredQueue];
          [v16 addOperation:v12];

          return;
        }

        goto LABEL_11;
      }
    }
  }

  sub_46ACA0(0);
}

double sub_1F67A4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  v9 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_57884, v7);

  return result;
}

char *sub_1F685C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (sub_AB92A0() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_ABB3C0();

    if ((v12 & 1) == 0)
    {
      if (sub_AB92A0() == a2 && v13 == a3)
      {
      }

      else
      {
        v15 = sub_ABB3C0();

        if ((v15 & 1) == 0)
        {

          return sub_469DDC(a1, a2, a3, a4, v16);
        }
      }

      v35 = sub_13C80(0, &qword_DEF620, UICollectionReusableView_ptr);
      return UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v35, a2, a3, a4, 0xD00000000000001ELL, 0x8000000000B575C0, v35);
    }
  }

  v18 = type metadata accessor for FooterButtonReusableView();
  v19 = static UICollectionReusableView.reuseIdentifier.getter();
  v21 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v18, a2, a3, a4, v19, v20, v18);

  v22 = *(v5 + qword_DF79C8);
  if (v22)
  {
    sub_AB91E0();
    sub_AB3550();
    v30 = sub_AB9320();
    sub_2FE0C(v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = &v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
    v33 = *&v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
    v34 = *&v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler + 8];
    *v32 = sub_1FBAFC;
    v32[1] = v31;

    sub_17654(v33, v34);
  }

  else if ((v22 & 2) != 0)
  {
    v23 = *(v5 + qword_DF79B8);
    if (v23)
    {
      v24 = v23;
      sub_AB91E0();
      sub_AB3550();
      v25 = sub_AB9320();
      sub_2FE0C(v25);
      v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_buttonAlignment] = 1;
      [v21 setNeedsLayout];
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      v27 = &v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
      v29 = *&v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
      v28 = *&v21[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler + 8];
      *v27 = sub_1FBABC;
      v27[1] = v26;
      sub_17654(v29, v28);
    }
  }

  return v21;
}

void sub_1F6C48(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = *(Strong + qword_DFE2F0);
  if (!v3 || (type metadata accessor for JSContainerDetailModelResponse(), swift_dynamicCastClass()) || (v4 = *&v2[qword_DF79B8]) == 0)
  {

    return;
  }

  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v5 = v4;
  v6 = v3;
  v7 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v5);
  if (!v7)
  {

    return;
  }

  v8 = v7;
  type metadata accessor for JSContainerDetailComponentController(0);
  v9 = v8;
  v10 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v9, 0, 1, UIScreen.Dimensions.size.getter, 0);
  v43 = v6;
  v42 = v9;
  if (!v10)
  {
    v11 = v5;
    v10 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v11, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (!v10)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
        v39 = MPModelPropertyPlaylistType;
        v40 = v11;
        if ([v38 hasLoadedValueForKey:v39] && objc_msgSend(v38, "type") == &dword_8 + 1)
        {
          v12 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v41);
          v13 = *&v12[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_11;
        }
      }

      sub_ABAFD0();
      __break(1u);
      return;
    }
  }

  v12 = v10;
  v13 = *(v10 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_11:
  v14 = v12;
  v15 = type metadata accessor for JSContainerDetailModelRequest();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v17 = 0;
  v17[1] = 0;
  v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v16[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v16[v18] = v13;
  v50.receiver = v16;
  v50.super_class = v15;
  v19 = v13;
  v20 = objc_msgSendSuper2(&v50, "init");
  if ((v19[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v21 = v20;
    v22 = static MPModelAlbum.defaultMusicKind.getter();
    [v21 setSectionKind:v22];

    v23 = [objc_opt_self() kindWithVariants:3];
    v24 = v23;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v23 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v25 = objc_opt_self();
    v24 = v20;
    v26 = [v25 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v23 options:0];
    [v24 setSectionKind:v26];

    v21 = v23;
  }

  [v20 setItemKind:v23];

  v27 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
  swift_beginAccess();
  v28 = *&v19[v27];
  v29 = v28;

  v30 = JSViewModel.playActivityRecommendationData.getter();
  v32 = v31;
  sub_466A4(0, 0xF000000000000000);
  v52[0] = v20;
  v52[1] = v13;
  v52[2] = v4;
  v52[3] = 0;
  v52[4] = v12;
  v52[5] = 0;
  v52[6] = v28;
  v53 = 1;
  *v54 = *v51;
  *&v54[3] = *&v51[3];
  v55 = v30;
  v56 = v32;
  v45[0] = v20;
  v45[1] = v13;
  v45[2] = v4;
  v45[3] = 0;
  v45[4] = v12;
  v45[5] = 0;
  v45[6] = v28;
  v46 = 1;
  *&v47[3] = *&v51[3];
  *v47 = *v51;
  v48 = v30;
  v49 = v32;
  sub_70EB0(v52, v44);
  sub_70F0C(v45);
  v33 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
  sub_70EB0(v52, v44);
  v34 = sub_2D72DC(v52);
  v35 = [v2 navigationController];
  if (v35)
  {
    v36 = v35;
    [v35 pushViewController:v34 overrideTraitCollection:0 animated:1];

    sub_70F0C(v52);
  }

  else
  {

    sub_70F0C(v52);
  }
}

void sub_1F720C(void *a1)
{
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v32 - v5;
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 identifiers];
    LSApplicationWorkspace.openiTunesStore(with:)(v11, v8);
  }

  else
  {
    v12 = sub_AB31C0();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  v32 = v6;
  sub_15F84(v8, v6, &unk_DF2AE0, &qword_AFC930);
  v13 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v14 = MPModelObject.bestIdentifier(for:)(*v13, 1u);
  v16 = v15;
  v17 = sub_AB31C0();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x614E206D75626C41;
  *(inited + 40) = 0xEA0000000000656DLL;
  v19 = [a1 title];
  v20 = 0xE000000000000000;
  if (v19)
  {
    v21 = v19;
    v22 = sub_AB92A0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  *(inited + 48) = v22;
  *(inited + 56) = v24;
  if (v16)
  {
    v20 = v16;
    v25 = v14;
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_96B2C(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DEE730, &qword_AFCCA0);
  v31 = v4;
  v27 = v33;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x7574496E4F797542, 0xEB0000000073656ELL, 5, 28, v32, 0, 0, 12, v33, 0, 0, 65280, v25, v20, 0x6D75626C41, 0xE500000000000000, v31, v26, 1, 2, 0, 0, 0);
  v28 = MetricsReportingController.shared.unsafeMutableAddressor();
  v29 = *&stru_B8.sectname[swift_isaMask & **v28];
  v30 = *v28;
  v29(v27, 0, 0, 0, 0, 0);
  sub_1FBE18(v27, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v8, &unk_DF2AE0, &qword_AFC930);
}

char *sub_1F7620(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_1F685C(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

void sub_1F7780(void *a1)
{
  v25 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v1 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = UIEdgeInsetsInsetRect_1(v6, v8, v10, v12, v16, v18, v20, v22);
  sub_14CD64(v25, 0x2000u, v23);
  [a1 setRowHeight:v24];
}

void sub_1F78C8(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v8 = &v39 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v40 = v3;
    v15 = v10;
    v16 = v9;
    v17 = v12;
    v18 = a2;
    v19 = [v14 tableViewCell];
    if (!v19)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v20 = v19;
    [v19 _setDrawsSeparatorAtTopOfSection:0];

    v21 = [v14 tableViewCell];
    if (!v21)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = v21;
    [v21 _setDrawsSeparatorAtBottomOfSection:0];

    v12 = v17;
    v9 = v16;
    v10 = v15;
    v3 = v40;
  }

  sub_469178(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  type metadata accessor for SongCell(0);
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    (*(v10 + 8))(v12, v9);
    return;
  }

  v24 = v23;
  v25 = *(v3 + qword_DF79A8);
  v26 = a2;
  v27 = v26;
  if (v25 == 1)
  {
    v28 = v26;
    v29 = [v24 tableViewCell];
    if (!v29)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v30 = v29;
    [v29 _setDrawsSeparatorAtTopOfSection:0];

    v31 = [v24 tableViewCell];
    if (!v31)
    {
LABEL_27:
      __break(1u);
      return;
    }

    [v31 _setDrawsSeparatorAtBottomOfSection:1];
  }

  v32 = *(v3 + qword_DFE2F0);
  if (v32)
  {
    v33 = [v32 results];
    if (!v33)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v34 = v33;
    v35 = [v33 numberOfItemsInSection:sub_AB37F0()];
  }

  else
  {
    v35 = 0;
  }

  v36 = sub_AB37B0();
  if (__OFSUB__(v35, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36 != (v35 - 1);
  v38 = v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v24[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = v37;
  if (v37 != v38)
  {
    [v24 setNeedsLayout];
  }

  (*(v10 + 8))(v12, v9);
}

void sub_1F7CA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_1F78C8(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

double sub_1F7DCC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1FBFD0(v8, a5);
  v12 = v11;

  return v12;
}

double sub_1F7E44(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1FC494(v8, a5);
  v12 = v11;

  return v12;
}

double sub_1F7EBC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1FC82C(v6);
  v10 = v9;

  return v10;
}

uint64_t sub_1F7F24(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[qword_DF4020];
  a1[qword_DF4020] = 0;
  if (v10 == 1)
  {
    [*&a1[qword_DF4068] setHidden:{0, v9}];
  }

  v11 = &a1[qword_DF4038];
  v12 = *&a1[qword_DF4038];
  v13 = a1[qword_DF4038 + 8];
  *v11 = 0;
  v11[8] = 0;
  if ((v13 & 1) != 0 || (v50 = 0, v49 = v12, sub_7FD28(), (sub_AB38E0() & 1) == 0))
  {
    [a1 setNeedsLayout];
  }

  v14 = *&a1[qword_DF4010];
  type metadata accessor for ClassicalWorkSection();
  swift_unknownObjectRetain();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    goto LABEL_11;
  }

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = (v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title);
    v46 = a3;
    *v19 = v17;
    v19[1] = v16;

    v47 = a2;
    v20 = v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents;
    v21 = *(v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents);
    swift_beginAccess();
    v45 = v6;
    *(v21 + 112) = v17;
    *(v21 + 120) = v16;

    sub_2EB704();

    v22 = sub_1F9E4C();
    v24 = v23;
    v25 = (v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle);
    *v25 = v22;
    v25[1] = v23;

    v26 = *(v20 + 8);
    swift_beginAccess();
    *(v26 + 112) = v22;
    *(v26 + 120) = v24;

    sub_2EB704();

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v48;
    v29 = v45;
    (*(v7 + 16))(v48, v46, v45);
    v30 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    (*(v7 + 32))(v31 + v30, v28, v29);
    v32 = &a1[qword_DF4018];
    v33 = *&a1[qword_DF4018];
    v34 = *&a1[qword_DF4018 + 8];
    *v32 = sub_1FBD64;
    v32[1] = v31;
    sub_17654(v33, v34);
    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_11:
    swift_unknownObjectRelease();
    v36 = (v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_title);
    *v36 = 0;
    v36[1] = 0xE000000000000000;

    v37 = v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents;
    v38 = *(v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textComponents);
    swift_beginAccess();
    *(v38 + 112) = 0;
    *(v38 + 120) = 0xE000000000000000;

    sub_2EB704();

    v39 = (v14 + OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_subtitle);
    *v39 = 0;
    v39[1] = 0xE000000000000000;

    v40 = *(v37 + 8);
    swift_beginAccess();
    *(v40 + 112) = 0;
    *(v40 + 120) = 0xE000000000000000;

    sub_2EB704();

    v41 = &a1[qword_DF4018];
    v42 = *&a1[qword_DF4018];
    v43 = *&a1[qword_DF4018 + 8];
    *v41 = 0;
    v41[1] = 0;
    return sub_17654(v42, v43);
  }
}

void sub_1F8384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = IndexPath.safeSection.getter();
    sub_1F369C(v4, v3);
  }
}

void sub_1F8410(char *a1, void (**a2)(char *, char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v183 = a3;
  v173 = sub_AB4E30();
  v172 = *(v173 - 8);
  __chkstk_darwin();
  v171 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v179 = &v169 - v8;
  v180 = sub_AB3820();
  v178 = *(v180 - 8);
  __chkstk_darwin();
  v170 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB2E20();
  __chkstk_darwin();
  v174 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D10, &qword_B0F380);
  __chkstk_darwin();
  v181 = &v169 - v12;
  v13 = sub_AB2F20();
  v182 = *(v13 - 8);
  __chkstk_darwin();
  v175 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v190 = _swiftEmptyArrayStorage;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_6D530(0, _swiftEmptyArrayStorage[2] + 1, 1);
    v15 = v190;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    sub_6D530((v17 > 1), v18 + 1, 1);
    v15 = v190;
  }

  v15[2] = v18 + 1;
  *(v15 + v18 + 32) = 0;
  if (*(v4 + qword_E08868) == 1)
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *&v190 = v15;
    if ((v19 & 1) == 0)
    {
      sub_6D530(0, v15[2] + 1, 1);
      v15 = v190;
    }

    v21 = v15[2];
    v20 = v15[3];
    if (v21 >= v20 >> 1)
    {
      sub_6D530((v20 > 1), v21 + 1, 1);
      v15 = v190;
    }

    v15[2] = v21 + 1;
    *(v15 + v21 + 32) = 1;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v190 = v15;
  if ((v22 & 1) == 0)
  {
    sub_6D530(0, v15[2] + 1, 1);
    v15 = v190;
  }

  v24 = v15[2];
  v23 = v15[3];
  if (v24 >= v23 >> 1)
  {
    sub_6D530((v23 > 1), v24 + 1, 1);
    v15 = v190;
  }

  v15[2] = v24 + 1;
  v185 = v15;
  *(v15 + v24 + 32) = 2;
  *(&v191 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  *&v192 = &off_D179F8;
  *&v190 = a2;
  sub_15F84(&v190, v187, &unk_DE9C60, &unk_AF8940);
  v25 = v188;
  v176 = v10;
  if (v188)
  {
    v26 = v189;
    __swift_project_boxed_opaque_existential_1(v187, v188);
    v27 = a2;
    v28 = sub_4CAA30(v185, v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v187);
  }

  else
  {
    v29 = a2;
    sub_12E1C(v187, &unk_DE9C60, &unk_AF8940);
    v28 = _swiftEmptyArrayStorage;
  }

  sub_178218(v28);

  sub_12E1C(&v190, &unk_DE9C60, &unk_AF8940);
  v30 = [a2 duration];
  sub_142E58(v30, v31);
  v32 = [a2 trackNumber];
  v33 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  v34 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber];
  v35 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8];
  *v33 = v32;
  v33[8] = 0;
  sub_143794(v34, v35);
  v184 = qword_DF79B8;
  v36 = *(v4 + qword_DF79B8);
  if (v36 && (v37 = MPModelPropertyAlbumMaximumItemTrackNumber, v38 = v36, [v38 hasLoadedValueForKey:v37]))
  {
    v39 = [v38 maximumItemTrackNumber];
  }

  else
  {
    v40 = *(v4 + qword_DFE2F0);
    if (v40)
    {
      v41 = [v40 results];
      if (!v41)
      {
LABEL_136:
        __break(1u);
        return;
      }

      v42 = v41;
      v39 = [v41 totalItemCount];
    }

    else
    {
      v39 = 0;
    }

    v38 = v36;
  }

  v43 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_maximumTrackNumberForSizing];
  *v43 = v39;
  v43[8] = 0;
  v44 = [a2 isFavorite];
  v45 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v46 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v44;
  if (v44 != v46)
  {
    sub_201644();
    v47 = sub_200954();
    [v47 setHidden:(a1[v45] & 1) == 0];

    v44 = a1[v45];
  }

  if (v46 != v44)
  {
    sub_14B200();
  }

  v48 = *(v4 + qword_DFE2F0);
  if (!v48)
  {
    goto LABEL_35;
  }

  v49 = [v48 results];
  if (!v49)
  {
    __break(1u);
    goto LABEL_136;
  }

  v50 = v49;
  v51 = [v49 sectionAtIndex:sub_AB37F0()];

  if (!v51)
  {
LABEL_35:
    v52 = 0;
    goto LABEL_36;
  }

  type metadata accessor for ClassicalWorkSection();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
  }

LABEL_36:

  v53 = sub_3904BC();
  v186 = v4;
  if (!v52 || (v54 = v53, , (v54 & 1) == 0))
  {
    v60 = [a2 title];
    if (!v60)
    {
LABEL_55:
      v57 = 0;
      v59 = 0xE000000000000000;
      goto LABEL_56;
    }

LABEL_41:
    v61 = v60;
    v57 = sub_AB92A0();
    v59 = v62;

    goto LABEL_56;
  }

  v55 = [a2 classicalMovement];
  if (v55)
  {
    v56 = v55;
    v57 = sub_AB92A0();
    v59 = v58;
  }

  else
  {
    v63 = sub_390B20();
    if (!v64)
    {
      goto LABEL_50;
    }

    v57 = v63;
    v59 = v64;
  }

  v65 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v65 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {

LABEL_50:
    sub_390A08();
    if (v68)
    {
    }

    else if ([a2 shouldShowComposer])
    {
      v57 = v52[2];
      v59 = v52[3];

      goto LABEL_56;
    }

    v60 = [a2 title];
    if (!v60)
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  v66 = sub_390640();
  if (v67)
  {
    *&v190 = v66;
    *(&v190 + 1) = v67;

    v193._countAndFlagsBits = 8238;
    v193._object = 0xE200000000000000;
    sub_AB94A0(v193);

    v194._countAndFlagsBits = v57;
    v194._object = v59;
    sub_AB94A0(v194);

    v59 = *(&v190 + 1);
    v57 = v190;
  }

LABEL_56:
  v69 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v70 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v71 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v69 = v57;
  *(v69 + 1) = v59;
  sub_142858(v70, v71);

  if (v52)
  {
    v72 = _swiftEmptyArrayStorage;
  }

  else
  {
    v72 = sub_6AE38(0, 1, 1, _swiftEmptyArrayStorage);
    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_6AE38((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v72[v74 + 32] = 0;
  }

  v75 = [a2 artist];
  if (!v75)
  {
    goto LABEL_83;
  }

  v76 = v75;
  v77 = v52;
  v78 = [v75 name];
  if (v78)
  {
    v79 = v78;
    v169 = sub_AB92A0();
    v81 = v80;

    v82 = *(v186 + v184);
    if (v82)
    {
      v83 = v82;
      v84 = [v83 artist];

      if (v84)
      {
        v85 = [v84 name];
        if (v85)
        {
          v86 = v85;
          v87 = sub_AB92A0();
          v89 = v88;

          if (v87 == v169 && v89 == v81)
          {

LABEL_72:

            goto LABEL_82;
          }

          v90 = sub_ABB3C0();

          if (v90)
          {
            goto LABEL_72;
          }
        }

        else
        {
        }
      }
    }

    v91 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v91 = v169 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      v52 = v77;
      if (!v77 || !v77[7])
      {
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v13;
        v94 = v182;
        if (v92)
        {
          goto LABEL_79;
        }

        goto LABEL_134;
      }

      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_82:
  v52 = v77;
LABEL_83:
  v93 = v13;
  v94 = v182;
  v95 = v181;
  while (1)
  {
    v98 = MPModelSong.preferredBylineAttribution(with:from:)(v72, 0, v95);
    if ((v94[6])(v95, 1, v93, v98) == 1)
    {
      sub_12E1C(v95, &unk_DE9D10, &qword_B0F380);
      v99 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v100 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v101 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v99 = 0;
      *(v99 + 1) = 0xE000000000000000;
      sub_142A70(v100, v101);

      v102 = [a2 hasVideo] | 0x2000;
      v103 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = v102;
      sub_143510(v103);
    }

    else
    {
      v104 = v175;
      v94[4](v175, v95, v93);
      sub_AB2E10();
      sub_1FBF88(&unk_DF86A0, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
      v105 = sub_AB9570();
      v106 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v107 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v108 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v106 = v105;
      *(v106 + 1) = v109;
      sub_142A70(v107, v108);

      v110 = [a2 hasVideo] | 0x6000;
      v111 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = v110;
      sub_143510(v111);
      v112 = v94[1];
      ++v94;
      (v112)(v104, v93);
    }

    v113 = *(v186 + v184);
    v177 = v52;
    if (!v113)
    {
      goto LABEL_92;
    }

    v114 = MPModelPropertyAlbumSongPopularity;
    v115 = v113;
    if (([v115 hasLoadedValueForKey:v114] & 1) == 0)
    {

LABEL_92:

      goto LABEL_103;
    }

    v94 = [a2 identifiers];
    v116 = [v115 songPopularityForIdentifiers:v94];
    if (v116)
    {
      goto LABEL_90;
    }

    v119 = [v94 universalStore];
    if (v119)
    {
      v120 = [v119 adamID];
      swift_unknownObjectRelease();
      v187[0] = v120;
      sub_ABAD10();
      v121 = sub_1F9828();
      if (*(v121 + 16))
      {
        v122 = sub_2EC004(&v190);
        if (v123)
        {
          v124 = *(*(v121 + 56) + 8 * v122);
          sub_8085C(&v190);

          v116 = v124;
LABEL_90:
          isa = v116;
          v118 = isa;
          goto LABEL_99;
        }
      }

      sub_8085C(&v190);
    }

    sub_13C80(0, &qword_DF1300, NSNumber_ptr);
    isa = sub_ABA770(0).super.super.isa;
    v118 = 0;
LABEL_99:

    sub_AB3A20();
    v126 = v125;

    v127 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity];
    v128 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity];
    v129 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_popularity + 8];
    *v127 = v126;
    v127[8] = 0;
    if ((v129 & 1) != 0 || v128 != v126)
    {
      sub_14B200();
    }

LABEL_103:
    v130 = v186;
    v131 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v132 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v133 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
    v134 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
    v135 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
    *v131 = 0u;
    *(v131 + 1) = 0u;
    *(v131 + 2) = 0u;
    sub_2F1C8(v132, v133, v134, v135);
    v136 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v137 = *(v136 + 168);
    v190 = *(v136 + 152);
    v191 = v137;
    v192 = *(v136 + 184);
    *(v136 + 152) = 0u;
    *(v136 + 168) = 0u;
    *(v136 + 184) = 0u;
    sub_75948(&v190);
    sub_12E1C(&v190, &unk_DF8690, &unk_AF9900);
    v138 = sub_4A3F1C();
    sub_10AC20(a2);
    v140 = v139;

    v141 = [a2 shouldVisuallyDisableFor:v140];
    a2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = v141;
    if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
    {
      goto LABEL_122;
    }

    v142 = v141;
    v52 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v143 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    *(v52 + v143) = v142;
    v184 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    if (v142 == *(v52 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
    {
      goto LABEL_122;
    }

    *(v52 + v184) = v142;
    v144 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v145 = *(v52 + v144);
    if (v145 >> 62)
    {
      v146 = sub_ABB060();
      if (!v146)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v146 = *(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8));
      if (!v146)
      {
        goto LABEL_122;
      }
    }

    v181 = a1;
    v182 = a2;
    v93 = v146 - 1;
    if (v146 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_134:
    v72 = sub_6AE38(0, *(v72 + 2) + 1, 1, v72);
LABEL_79:
    v95 = v181;
    v97 = *(v72 + 2);
    v96 = *(v72 + 3);
    if (v97 >= v96 >> 1)
    {
      v72 = sub_6AE38((v96 > 1), v97 + 1, 1, v72);
    }

    *(v72 + 2) = v97 + 1;
    v72[v97 + 32] = 1;
  }

  v176 = v52;

  v148 = 0;
  if ((v145 & 0xC000000000000001) == 0)
  {
    goto LABEL_117;
  }

LABEL_109:
  v149 = *(sub_36003C(v148, v145, v147) + 256);
  if (v149)
  {
LABEL_110:
    v150 = v149;
    if (([v150 isHidden] & 1) == 0)
    {
      v151 = *(v52 + v184);
      v152 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v153 = v150[v152];
      v150[v152] = v151;
      if (v151 != v153)
      {
        v154 = 1.0;
        if (v151)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v150 setAlpha:v154];
      }
    }

    if (v93 != v148)
    {
      goto LABEL_119;
    }
  }

  else
  {
    while (1)
    {

      if (v93 == v148)
      {
        break;
      }

LABEL_119:
      ++v148;
      if ((v145 & 0xC000000000000001) != 0)
      {
        goto LABEL_109;
      }

LABEL_117:
      v155 = *(v145 + 8 * v148 + 32);

      v149 = *(v155 + 256);
      if (v149)
      {
        goto LABEL_110;
      }
    }
  }

  v130 = v186;
  a2 = v182;
  a1 = v181;
LABEL_122:
  if (*(a2 + a1))
  {
    v156 = 0;
  }

  else
  {
    v156 = 3;
  }

  sub_143E08([a1 setSelectionStyle:v156]);
  v157 = qword_E71990;
  swift_beginAccess();
  v158 = v130 + v157;
  v159 = v179;
  sub_15F84(v158, v179, &unk_DE8E20, &qword_AF7990);
  v160 = v178;
  v161 = v180;
  if ((*(v178 + 48))(v159, 1, v180) == 1)
  {
    sub_12E1C(v159, &unk_DE8E20, &qword_AF7990);
    v162 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
    a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = 0;
    if ((v162 & 1) == 0)
    {
      goto LABEL_127;
    }

LABEL_129:
    v166 = [a1 _bridgedConfigurationState];
    v167 = v171;
    sub_AB4E00();
    v168 = sub_AB4DF0().super.super.isa;
    (*(v172 + 8))(v167, v173);

    [a1 _bridgedUpdateConfigurationUsingState:v168];
  }

  else
  {
    v163 = v170;
    (*(v160 + 32))(v170, v159, v161);
    v164 = sub_AB3780();
    (*(v160 + 8))(v163, v161);
    v165 = a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem];
    a1[OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem] = v164 & 1;
    if ((v164 & 1) != v165)
    {
      goto LABEL_129;
    }

LABEL_127:
  }
}

unint64_t sub_1F9828()
{
  v1 = qword_DF79B0;
  if (*(v0 + qword_DF79B0))
  {
    v2 = *(v0 + qword_DF79B0);
  }

  else
  {
    v2 = sub_96C68(_swiftEmptyArrayStorage);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1F9894(void *a1)
{
  v2 = *(v1 + qword_DF79B8);
  if (!v2)
  {
    return;
  }

  v4 = v1;
  if (a1)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v17 = v2;
    v5 = a1;
    v6 = sub_ABA790();

    if (v6)
    {

      return;
    }
  }

  else
  {
    v7 = v2;
  }

  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_10AC20(v2);
  v9 = v8;
  sub_10CB1C(v2, 0, v8);
  v11 = v10;
  static ApplicationCapabilities.shared.getter(v18);
  v12 = v19;
  if (sub_472A84(5, v19))
  {
    v13 = sub_472A84(0, v12);
    sub_70C54(v18);
    v14 = 7;
    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = 7;
    }

    if ((v11 & 1) == 0)
    {
      v14 = v15;
    }

    if (v9 == 7)
    {
      v9 = v14;
    }
  }

  else
  {
    sub_70C54(v18);
  }

  v16 = *(v4 + qword_DF79C0);
  *(v4 + qword_DF79C0) = v9;
  sub_1F9A24(v16);
}

void sub_1F9A24(uint64_t a1)
{
  v2 = *&v1[qword_DF79C0];
  if (v2 == a1)
  {
    return;
  }

  v3 = qword_DF79C8;
  v4 = *&v1[qword_DF79C8];
  if (v2 != 1)
  {
    goto LABEL_7;
  }

  *&v1[qword_DF79C8] = v4 | 2;
  if (v4 == (v4 | 2))
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v3 = qword_DFE2F8;
  v5 = *&v1[qword_DFE2F8];
  if (!v5)
  {
    __break(1u);
LABEL_7:
    *&v1[v3] = v4 & 0xFFFFFFFFFFFFFFFDLL;
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFFDLL))
    {
      return;
    }

    [v1 loadViewIfNeeded];
    v5 = *&v1[qword_DFE2F8];
    if (!v5)
    {
      __break(1u);
      return;
    }
  }

  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];
}

id sub_1F9B14()
{
  v0[qword_E711D0] = 1;
  *&v0[qword_E711D8] = 0;
  *&v0[qword_DF79A0] = 0;
  v0[qword_DF79A8] = 0;
  *&v0[qword_DF79B0] = 0;
  *&v0[qword_DF79B8] = 0;
  *&v0[qword_DF79C0] = 0;
  *&v0[qword_DF79C8] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlbumDetailSongsViewController(0);
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1F9BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_1FCC74(v3);

  return v4;
}

void sub_1F9C0C()
{

  v1 = *(v0 + qword_DF79B8);
}

void sub_1F9C88(uint64_t a1)
{

  v2 = *(a1 + qword_DF79B8);
}

uint64_t type metadata accessor for AlbumDetailSongsViewController(uint64_t a1)
{
  result = qword_DF79F8;
  if (!qword_DF79F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F9E4C()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  sub_AB9220();
  v8._countAndFlagsBits = 2128194;
  v8._object = 0xE300000000000000;
  sub_AB9210(v8);
  v1 = v0[4];
  if (v0[5])
  {
    v2 = v0[5];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v1 = sub_AB9320();
    v2 = v3;
  }

  v9._countAndFlagsBits = v1;
  v9._object = v2;
  sub_AB9200(v9);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_AB9210(v10);
  sub_AB9240();
  sub_AB3550();
  result = sub_AB9320();
  v7 = result;
  v5 = v0[7];
  if (v5)
  {
    v6 = v0[6];

    v11._countAndFlagsBits = v6;
    v11._object = v5;
    sub_AB94A0(v11);
    v12._countAndFlagsBits = 0x209380E220;
    v12._object = 0xA500000000000000;
    sub_AB94A0(v12);

    return v7;
  }

  return result;
}

uint64_t sub_1FA090()
{

  return swift_deallocClassInstance();
}

double sub_1FA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 classicalWork];
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB92A0();
    v16 = v15;

    v17 = *a4;
    if (!*a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = sub_390A08();
    if (v19)
    {
      v14 = v18;
      v16 = v19;
      v17 = *a4;
      if (!*a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
      v17 = *a4;
      if (!*a4)
      {
        goto LABEL_15;
      }
    }
  }

  v20 = *(v17 + 16) == v14 && *(v17 + 24) == v16;
  if (v20 || (sub_ABB3C0() & 1) != 0)
  {

    goto LABEL_16;
  }

LABEL_15:
  type metadata accessor for ClassicalWorkSection();
  v21 = swift_allocObject();
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  [a5 appendSection:v21];
  *a4 = v21;

LABEL_16:
  [a5 appendItem:a1];
  v22 = *a4;
  if (!*a4)
  {
LABEL_26:

    swift_unknownObjectRelease();
    return result;
  }

  v23 = *(v22 + 40);

  if (!v23)
  {
    v38 = [v11 composer];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 name];
      if (v40)
      {
        v41 = v40;
        v42 = sub_AB92A0();
        v44 = v43;

        goto LABEL_39;
      }
    }

    v42 = 0;
    v44 = 0;
LABEL_39:
    *(v22 + 32) = v42;
    *(v22 + 40) = v44;

    if (a6)
    {
      goto LABEL_19;
    }

LABEL_40:
    swift_unknownObjectRelease();

    return result;
  }

  if (!a6)
  {
    goto LABEL_40;
  }

LABEL_19:
  v52 = a6;
  v24 = [v11 artist];
  if (v24)
  {
    v51 = v24;
    v25 = [v24 name];
    if (v25)
    {
      v26 = v25;
      v27 = sub_AB92A0();
      v29 = v28;

      v30 = [v52 artist];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 name];
        if (v32)
        {
          v33 = v32;
          v34 = sub_AB92A0();
          v36 = v35;

          if (v27 == v34 && v29 == v36)
          {
            goto LABEL_25;
          }

          v50 = sub_ABB3C0();

          if (v50)
          {
LABEL_55:
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
            return result;
          }

LABEL_45:
          v46 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v46 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (!v46)
          {
            goto LABEL_55;
          }

          v48 = *(v22 + 48);
          v47 = *(v22 + 56);
          if (v47)
          {

            if (v48 == v27 && v47 == v29)
            {
              goto LABEL_25;
            }

            v49 = sub_ABB3C0();

            if ((v49 & 1) == 0)
            {
              *(v22 + 64) = 1;
              *(v22 + 48) = 0;
              *(v22 + 56) = 0;
LABEL_25:
              swift_unknownObjectRelease();

LABEL_59:

              return result;
            }
          }

          else
          {

            if ((*(v22 + 64) & 1) == 0)
            {
              *(v22 + 48) = v27;
              *(v22 + 56) = v29;
            }
          }

          swift_unknownObjectRelease();

          goto LABEL_59;
        }
      }

      goto LABEL_45;
    }

    swift_unknownObjectRelease();

    v45 = v51;
  }

  else
  {
    swift_unknownObjectRelease();

    v45 = v52;
  }

  return result;
}

id sub_1FA60C(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication27ClassicalAlbumModelResponse_initialModelResponse);
  v23 = &OBJC_PROTOCOL___MPModelResponseDetailedKeepLocalStatusRequesting;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    v9 = v8;
    v21 = a2;
    v22 = a3;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_151E0;
    v20 = &block_descriptor_168;
    v10 = _Block_copy(&aBlock);
    v11 = v7;

    v12 = [v9 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a1 responseHandler:v10];
    _Block_release(v10);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v21 = sub_B598C;
    v22 = v13;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1B5EB4;
    v20 = &block_descriptor_67;
    v14 = _Block_copy(&aBlock);
    v15 = objc_opt_self();

    v12 = [v15 blockOperationWithBlock:v14];
    _Block_release(v14);
  }

  return v12;
}

id sub_1FA8B8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1FA938()
{
  result = qword_DF85D8;
  if (!qword_DF85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85D8);
  }

  return result;
}

unint64_t sub_1FA990()
{
  result = qword_DF85E0;
  if (!qword_DF85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85E0);
  }

  return result;
}

unint64_t sub_1FA9E8()
{
  result = qword_DF85E8;
  if (!qword_DF85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85E8);
  }

  return result;
}

unint64_t sub_1FAA40()
{
  result = qword_DF85F0;
  if (!qword_DF85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF85F0);
  }

  return result;
}

void sub_1FAA94(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_E71990;
  swift_beginAccess();
  sub_15F84(v2 + v10, v5, &unk_DE8E20, &qword_AF7990);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
LABEL_3:
    v11 = 1;
    goto LABEL_7;
  }

  (*(v7 + 32))(v9, v5, v6);
  if (sub_AB3780())
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = sub_AB37F0();
    if (v14 != sub_AB37F0())
    {
      (*(v7 + 8))(v9, v6);
      goto LABEL_3;
    }

    v15 = sub_AB37E0();
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v17 = sub_AB37E0();
    (*(v7 + 8))(v9, v6);
    if (v16 != v17)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_7:
  v12 = [a1 tableViewCell];
  if (v12)
  {
    v13 = v12;
    [v12 setSeparatorStyle:v11];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1FAD28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B03840;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_AB92A0();
  *(v0 + 232) = v13;
  *(v0 + 240) = sub_AB92A0();
  *(v0 + 248) = v14;
  *(v0 + 256) = sub_AB92A0();
  *(v0 + 264) = v15;
  *(v0 + 272) = sub_AB92A0();
  *(v0 + 280) = v16;
  *(v0 + 288) = sub_AB92A0();
  *(v0 + 296) = v17;
  *(v0 + 304) = sub_AB92A0();
  *(v0 + 312) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF4EC0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  isa = sub_AB9740().super.isa;
  v24 = objc_opt_self();
  v25 = [v24 propertySetWithProperties:isa];

  *(inited + 48) = v25;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_AF4EC0;
  *(v27 + 32) = sub_AB92A0();
  *(v27 + 40) = v28;
  v29 = sub_AB9740().super.isa;
  v30 = [v24 propertySetWithProperties:v29];

  *(inited + 72) = v30;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MPPropertySet);
  v32 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v33 = sub_AB8FD0().super.isa;

  v34 = [v31 initWithProperties:v32 relationships:v33];

  v35 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v36 = sub_2BAFF8(v35);
  v37 = [v34 propertySetByCombiningWithPropertySet:v36];

  return v37;
}

id sub_1FB168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8800;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_AB92A0();
  *(v0 + 232) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  isa = sub_AB9740().super.isa;
  v19 = objc_opt_self();
  v20 = [v19 propertySetWithProperties:isa];

  *(inited + 48) = v20;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF4EC0;
  *(v22 + 32) = sub_AB92A0();
  *(v22 + 40) = v23;
  v24 = sub_AB9740().super.isa;
  v25 = [v19 propertySetWithProperties:v24];

  *(inited + 72) = v25;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v28 = sub_AB8FD0().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  v30 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v31 = sub_2BAFF8(v30);
  v32 = [v29 propertySetByCombiningWithPropertySet:v31];

  v33 = sub_10F414(v30);
  v34 = [v32 propertySetByCombiningWithPropertySet:v33];

  return v34;
}

void sub_1FB580(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v17 = 0;
  v5 = swift_allocObject();
  v5[2] = &v17;
  v5[3] = v4;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1FBC94;
  *(v6 + 24) = v5;
  aBlock[4] = sub_5794C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_206;
  v7 = _Block_copy(aBlock);
  v8 = a2;
  v9 = v4;

  [a1 enumerateItemsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    v10 = v9;
    if ([v10 firstSection])
    {
      type metadata accessor for ClassicalWorkSection();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v11 + 16);
        v13 = *(v11 + 24);
        swift_unknownObjectRelease();
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v15 = [v10 numberOfSections];

    if (v15 >= 2)
    {
LABEL_11:

      return;
    }

LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
}

id sub_1FB7B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF8820;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_AB92A0();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_AB92A0();
  *(v6 + 72) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v11;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v12 = objc_allocWithZone(MPPropertySet);
  v13 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v14 = sub_AB8FD0().super.isa;

  v15 = [v12 initWithProperties:v13 relationships:v14];

  return v15;
}

uint64_t sub_1FB9FC()
{

  return swift_deallocObject();
}

double block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1FBA4C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1FBA84()
{

  return swift_deallocObject();
}

uint64_t sub_1FBAC4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1FBB04()
{

  return swift_deallocObject();
}

uint64_t sub_1FBB4C()
{

  return swift_deallocObject();
}

uint64_t sub_1FBB9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1FBC04()
{

  return swift_deallocObject();
}

uint64_t sub_1FBC54()
{

  return swift_deallocObject();
}

uint64_t sub_1FBCA0()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1FBD64(uint64_t a1)
{
  sub_AB3820();
  v3 = *(v1 + 16);

  sub_1F8384(a1, v3);
}

uint64_t sub_1FBDD8()
{

  return swift_deallocObject();
}

uint64_t sub_1FBE18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1FBE78()
{

  return swift_deallocObject();
}

uint64_t sub_1FBF0C()
{

  return swift_deallocObject();
}

uint64_t sub_1FBF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1FBFD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v42 - v9;
  sub_AB3810();
  sub_469178(v8, v10);
  v11 = *(v6 + 8);
  v11(v8, v5);
  if ((*(v6 + 48))(v10, 1, v5) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
    return;
  }

  v12 = IndexPath.safeSection.getter();
  v11(v10, v5);
  v13 = qword_DFE2F0;
  v14 = *&v3[qword_DFE2F0];
  if (v14)
  {
    v15 = [v14 results];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 sectionAtIndex:v12];

      if (!v17)
      {
        return;
      }

      v18 = type metadata accessor for ClassicalWorkSection();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_29:
        swift_unknownObjectRelease();
        return;
      }

      v20 = v19;
      v43 = v12;
      [a1 bounds];
      v21 = [v3 view];
      if (!v21)
      {
        goto LABEL_34;
      }

      v22 = v21;
      [v21 music_inheritedLayoutInsets];

      v23 = [v3 traitCollection];
      v24 = sub_126814();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF7C50;
      *(inited + 32) = v24;
      *(inited + 40) = v26;

      sub_2F48A4(inited, v23, 0, 0);
      swift_setDeallocating();
      swift_arrayDestroy();

      v28 = v20[3];
      v29 = v20[2] & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v28) & 0xF;
      }

      if (v29)
      {
        swift_unknownObjectRelease();

        return;
      }

      v30 = *&v3[v13];
      if (!v30)
      {
        goto LABEL_28;
      }

      swift_unknownObjectRetain();
      v31 = [v30 results];
      if (!v31)
      {
        goto LABEL_35;
      }

      v32 = v31;
      v33 = [v31 firstSection];

      swift_unknownObjectRelease();
      if (v33)
      {
        swift_unknownObjectRelease();
        if (v20 == v33)
        {
          goto LABEL_28;
        }
      }

      v34 = *&v3[v13];
      if (!v34)
      {
        goto LABEL_28;
      }

      v35 = [v34 results];
      if (!v35)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v36 = v43;
      if (!__OFSUB__(v43, 1))
      {
        v37 = v35;
        v38 = [v35 sectionAtIndex:v43 - 1];

        if (v38)
        {
          v39 = swift_dynamicCastClass();
          if (!v39)
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          v40 = *(v39 + 24);
          v41 = *(v39 + 16) & 0xFFFFFFFFFFFFLL;
          if ((v40 & 0x2000000000000000) != 0)
          {
            v41 = HIBYTE(v40) & 0xF;
          }

          if (v41 && v36)
          {
            [v23 displayScale];
            sub_AB3A00();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
          goto LABEL_29;
        }

LABEL_28:

        goto LABEL_29;
      }

      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }
}

void sub_1FC494(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v27[-v9];
  if (v2[qword_DF79A8] == 1)
  {
    sub_AB3810();
    sub_469178(v8, v10);
    v11 = *(v6 + 8);
    v11(v8, v5);
    if ((*(v6 + 48))(v10, 1, v5) == 1)
    {
      sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
      return;
    }

    v12 = IndexPath.safeSection.getter();
    v11(v10, v5);
    v13 = *&v3[qword_DFE2F0];
    if (v13)
    {
      v14 = [v13 results];
      if (!v14)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v15 = v14;
      v16 = [v14 sectionAtIndex:v12];

      if (v16)
      {
        type metadata accessor for ClassicalWorkSection();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v18 = *(v17 + 24);
          v19 = *(v17 + 16) & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v18) & 0xF;
          }

          if (v19)
          {
            [a1 bounds];
            v20 = [v3 view];
            if (v20)
            {
              v21 = v20;
              [v20 music_inheritedLayoutInsets];

              v22 = [v3 traitCollection];
              v23 = sub_126814();
              v25 = v24;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_AF7C50;
              *(inited + 32) = v23;
              *(inited + 40) = v25;

              sub_2F48A4(inited, v22, 0, 0);
              swift_setDeallocating();
              swift_arrayDestroy();

              [v22 displayScale];
              sub_AB3A00();
              swift_unknownObjectRelease();

              return;
            }

            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1FC82C(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [objc_opt_self() sharedMonitor];
  v6 = [v5 isRemoteServerLikelyReachable];

  if (!v6 || UITraitCollection.isMediaPicker.getter(v7))
  {
    goto LABEL_19;
  }

  v8 = UITraitCollection.mediaLibrary.getter();
  v9 = [objc_opt_self() deviceMediaLibrary];
  if (!v9)
  {

    return;
  }

  v10 = v9;
  sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
  v11 = sub_ABA790();

  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) != 0)
  {
    goto LABEL_19;
  }

  v12 = *&v2[qword_DFE2F0];
  if (!v12)
  {
    goto LABEL_19;
  }

  type metadata accessor for ClassicalAlbumModelResponse();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v12 = *(v13 + OBJC_IVAR____TtC16MusicApplication27ClassicalAlbumModelResponse_initialModelResponse);
  }

  v14 = *&v2[qword_DF79B8];
  if (!v14)
  {
LABEL_19:

    return;
  }

  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v15 = v14;
  v16 = v12;
  v17 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v15);
  if (!v17)
  {

    return;
  }

  v18 = *&v2[qword_DF79C8];
  if (v18)
  {
    type metadata accessor for JSContainerDetailModelResponse();
    if (!swift_dynamicCastClass())
    {
      [a1 bounds];
      v23 = v28;
      v25 = v29;
      v26 = type metadata accessor for CollectionAccessoryView();
      v27 = swift_conformsToProtocol2();
      if (v27 && v26)
      {
        goto LABEL_18;
      }

LABEL_26:
      v30 = [objc_opt_self() defaultMetrics];
      sub_AB9EF0();

      return;
    }
  }

  if ((v18 & 2) == 0)
  {
LABEL_22:

    return;
  }

  v19 = [v16 results];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 totalItemCount];

    if (v21 >= 1)
    {
      [a1 bounds];
      v23 = v22;
      v25 = v24;
      v26 = type metadata accessor for CollectionAccessoryView();
      v27 = swift_conformsToProtocol2();
      if (v27 && v26)
      {
LABEL_18:
        (*(v27 + 8))(v4, v26, v27, v23, v25);

        return;
      }

      goto LABEL_26;
    }

    goto LABEL_22;
  }

  __break(1u);
}

id sub_1FCC74(uint64_t a1)
{
  v1[qword_E711D0] = 1;
  *&v1[qword_E711D8] = 0;
  *&v1[qword_DF79A0] = 0;
  v1[qword_DF79A8] = 0;
  *&v1[qword_DF79B0] = 0;
  *&v1[qword_DF79B8] = 0;
  *&v1[qword_DF79C0] = 0;
  *&v1[qword_DF79C8] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AlbumDetailSongsViewController(0);
  return objc_msgSendSuper2(&v4, "initWithCoder:", a1);
}

char *sub_1FCD68(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_badgeView] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v31[2] = xmmword_DF86D8;
  v31[3] = xmmword_DF86E8;
  v31[4] = xmmword_DF86F8;
  v31[0] = xmmword_DF86B8;
  v31[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v15 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v31);
  sub_2F118(v31, v30);
  v16 = qword_DE69B8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = &v5[v14];
  v30[2] = xmmword_DF8728;
  v30[3] = unk_DF8738;
  v30[4] = xmmword_DF8748;
  v30[0] = xmmword_DF8708;
  v30[1] = unk_DF8718;
  swift_allocObject();
  v18 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF82B0;
  *(v19 + 32) = v15;
  *v17 = v15;
  v17[1] = v18;
  v17[2] = v19;
  sub_2F118(v30, &v29);
  v20 = type metadata accessor for PersonVerticalCell(0);
  v28.receiver = v5;
  v28.super_class = v20;
  v21 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v22 = v21[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle];
  v23 = v21;
  v24 = [v23 traitCollection];
  swift_beginAccess();
  sub_1FD0CC(v22, v24);
  swift_endAccess();

  sub_ABA670();
  v25 = sub_ABA680();
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v11);

  sub_1FE28C();
  sub_1FDEC4(v26);

  return v23;
}

void sub_1FD0CC(char a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    if (qword_DE69B0 != -1)
    {
      swift_once();
    }

    v53 = xmmword_DF86E8;
    v54 = xmmword_DF86F8;
    v51 = xmmword_DF86C8;
    v52 = xmmword_DF86D8;
    v50 = xmmword_DF86B8;
    v46 = xmmword_DF86B8;
    v47 = xmmword_DF86C8;
    v48 = xmmword_DF86D8;
    v49 = xmmword_DF86E8;
    v5 = xmmword_DF86F8;
    sub_2F118(&v50, &v41);
    v6 = [a2 preferredContentSizeCategory];
    v7 = sub_ABA320();

    v8 = (v7 & 1) == 0;
    v9 = *v3;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v29 = v46;
    v30 = v47;
    v31 = v48;
    *&v32 = v49;
    *(&v32 + 1) = v10;
    v33 = v5;
    swift_beginAccess();
    v12 = v9[3];
    v11 = v9[4];
    v13 = v9[6];
    v34[3] = v9[5];
    v34[4] = v13;
    v34[1] = v12;
    v34[2] = v11;
    v34[0] = v9[2];
    v9[5] = v32;
    v9[6] = v5;
    v14 = v30;
    v9[2] = v29;
    v9[3] = v14;
    v9[4] = v31;
    sub_2F118(&v29, &v41);
    sub_2F174(v34);
    sub_2EB2A8();
    v15 = v3[1];
    if (qword_DE69B8 != -1)
    {
      swift_once();
    }

    v37 = xmmword_DF8728;
    v38 = unk_DF8738;
    v39 = xmmword_DF8748;
    v35 = xmmword_DF8708;
    v36 = unk_DF8718;
    swift_beginAccess();
    v17 = v15[3];
    v16 = v15[4];
    v18 = v15[6];
    v40[3] = v15[5];
    v40[4] = v18;
    v40[1] = v17;
    v40[2] = v16;
    v40[0] = v15[2];
    v19 = v39;
    v15[5] = v38;
    v15[6] = v19;
    v20 = v36;
    v15[2] = v35;
    v15[3] = v20;
    v15[4] = v37;
    sub_2F118(&v35, &v41);
    sub_2F174(v40);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_AF7C50;
    *(v21 + 32) = v9;
    *(v21 + 40) = v15;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    *&v44 = v49;
    *(&v44 + 1) = v10;
    v45 = v5;

    sub_2F174(&v41);

    v3[2] = v21;
  }

  else
  {
    v22 = *v2;
    if (qword_DE69B0 != -1)
    {
      swift_once();
    }

    v43 = xmmword_DF86D8;
    v44 = xmmword_DF86E8;
    v45 = xmmword_DF86F8;
    v41 = xmmword_DF86B8;
    v42 = xmmword_DF86C8;
    swift_beginAccess();
    v24 = v22[3];
    v23 = v22[4];
    v25 = v22[6];
    v53 = v22[5];
    v54 = v25;
    v51 = v24;
    v52 = v23;
    v50 = v22[2];
    v26 = v45;
    v22[5] = v44;
    v22[6] = v26;
    v27 = v42;
    v22[2] = v41;
    v22[3] = v27;
    v22[4] = v43;
    sub_2F118(&v41, v40);
    sub_2F174(&v50);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF82B0;
    *(v28 + 32) = v22;

    v3[2] = v28;
  }
}

void sub_1FD4B0()
{
  if (v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] != 1)
  {
    v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
    swift_beginAccess();
    if (!*&v0[v1])
    {
      sub_81464();
      v2 = *&v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];

      v4 = v0;
      v5 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v2, v3, [v0 effectiveUserInterfaceLayoutDirection], 0);

      if (v5)
      {
        v6 = *&v0[v1];
        *&v4[v1] = v5;
        v7 = v5;

        sub_74EA4(v5);
        sub_1FD4B0();
      }
    }
  }
}

void *sub_1FD5C4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1FD614(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  sub_74EA4(a1);
  sub_1FD4B0();
}

uint64_t (*sub_1FD6AC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.lockupImageArtworkCatalog.modify(v3);
  return sub_1FD720;
}

void sub_1FD720(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1FD4B0();
  }

  free(v3);
}

double sub_1FD7A8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];
  *v4 = a1;
  v4[1] = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    if (v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] != 1)
    {
      sub_1FDEC4(v12);
    }

    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1FD8FC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];
  if (v5 != result || v4 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v7 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
      swift_beginAccess();
      v8 = *&v3[v7];

      v9 = String.trim()();

      swift_beginAccess();
      v8[7] = v9;

      sub_2EB704();

      if (v3[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] != 1)
      {
        sub_1FDEC4(v10);
      }

      return [v3 setNeedsLayout];
    }
  }

  return result;
}

double sub_1FDA38(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_1FDACC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1FDC08(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_1FDD00(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType);
  *(v1 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType) = result;
  if (v2 != result)
  {
    return sub_1FDEC4(result);
  }

  return result;
}

double sub_1FDD20(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for PersonVerticalCell(0);
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {

    return result;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1FE28C();
  }

  return result;
}

id sub_1FDEC4(uint64_t a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType] == 1)
  {
    v3 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[4];
    v9 = v3[5];
    v71 = v9;
    v73 = v8;
    v10 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
    swift_beginAccess();
    v67 = *(v10 + 1);
    v69 = *v10;
    v63 = *(v10 + 3);
    v65 = *(v10 + 2);
    *v10 = v4;
    *(v10 + 1) = v5;
    *(v10 + 2) = v6;
    *(v10 + 3) = v7;
    *(v10 + 4) = v8;
    *(v10 + 5) = v9;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    sub_2F1C8(v69, v67, v65, v63);
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v20 = *(v19 + 168);
    v75 = *(v19 + 152);
    v76 = v20;
    v77 = *(v19 + 184);
    *(v19 + 152) = v4;
    *(v19 + 160) = v5;
    *(v19 + 168) = v6;
    *(v19 + 176) = v7;
    *(v19 + 184) = v73;
    *(v19 + 192) = v71;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_75948(&v75);
    sub_B2A40(&v75);
  }

  else
  {
    v29 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v30 = *v29;
    v31 = v29[1];
    v33 = v29[2];
    v32 = v29[3];
    v34 = v29[4];
    v35 = v29[5];
    v72 = v35;
    v74 = v34;
    v36 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
    swift_beginAccess();
    v68 = *(v36 + 1);
    v70 = *v36;
    v64 = *(v36 + 3);
    v66 = *(v36 + 2);
    *v36 = v30;
    *(v36 + 1) = v31;
    *(v36 + 2) = v33;
    *(v36 + 3) = v32;
    *(v36 + 4) = v34;
    *(v36 + 5) = v35;
    v37 = v32;
    v38 = v30;
    v39 = v31;
    v40 = v33;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = v40;
    sub_2F1C8(v70, v68, v66, v64);
    v45 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
    v46 = *(v45 + 168);
    v75 = *(v45 + 152);
    v76 = v46;
    v77 = *(v45 + 184);
    *(v45 + 152) = v30;
    *(v45 + 160) = v31;
    *(v45 + 168) = v33;
    *(v45 + 176) = v32;
    *(v45 + 184) = v74;
    *(v45 + 192) = v72;
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v50 = v44;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    sub_75948(&v75);
    sub_B2A40(&v75);

    v55 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
    swift_beginAccess();
    v56 = *&v2[v55];
    v57 = v56;
    v58 = v56;
    if (!v56)
    {
      sub_81464();
      v59 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title];
      v60 = *&v2[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title + 8];

      v58 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v59, v60, [v2 effectiveUserInterfaceLayoutDirection], 0);

      v57 = *&v2[v55];
    }

    *&v2[v55] = v58;
    v25 = v58;
    v61 = v56;

    sub_74EA4(v58);
    sub_1FD4B0();
  }

  return [v2 setNeedsLayout];
}

void sub_1FE28C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle];
  v3 = [v1 traitCollection];
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents];
  swift_beginAccess();
  sub_1FD0CC(v2, v3);
  swift_endAccess();

  v5 = *(v4 + 2);
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (!(v5 >> 62))
  {
    v8 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    [v1 setNeedsLayout];
    return;
  }

  v8 = sub_ABB060();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_36003C(i, v5, v7);
      }

      else
      {
        v10 = *(v5 + 8 * i + 32);
      }

      TextStackView.add(_:)(v10);
    }

    goto LABEL_10;
  }

  __break(1u);
}

double sub_1FE3FC()
{
  sub_1FE440(&v1);
  xmmword_DF86D8 = v3;
  xmmword_DF86E8 = v4;
  xmmword_DF86F8 = v5;
  result = *&v2;
  xmmword_DF86B8 = v1;
  xmmword_DF86C8 = v2;
  return result;
}

double sub_1FE440@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C40;
  return result;
}

double sub_1FE524()
{
  sub_1FE568(&v1);
  xmmword_DF8728 = v3;
  unk_DF8738 = v4;
  xmmword_DF8748 = v5;
  result = *&v2;
  xmmword_DF8708 = v1;
  unk_DF8718 = v2;
  return result;
}

double sub_1FE568@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF82D0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  result = 18.0;
  *(a1 + 64) = xmmword_B03470;
  return result;
}

double sub_1FE64C()
{

  return result;
}

id sub_1FE6D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonVerticalCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonVerticalCell(uint64_t a1)
{
  result = qword_DF8788;
  if (!qword_DF8788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1FE88C()
{
  result = qword_DF8798;
  if (!qword_DF8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8798);
  }

  return result;
}

unint64_t sub_1FE8E4()
{
  result = qword_DF87A0;
  if (!qword_DF87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF87A0);
  }

  return result;
}

double sub_1FE938()
{
  swift_beginAccess();

  return result;
}

void *sub_1FE980()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

double sub_1FE9B0(void *a1, char a2, double a3)
{
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v19[2] = xmmword_DF86D8;
  v19[3] = xmmword_DF86E8;
  v19[4] = xmmword_DF86F8;
  v19[0] = xmmword_DF86B8;
  v19[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v19);
  sub_2F118(v19, v18);
  v7 = qword_DE69B8;

  if (v7 != -1)
  {
    swift_once();
  }

  v18[2] = xmmword_DF8728;
  v18[3] = unk_DF8738;
  v18[4] = xmmword_DF8748;
  v18[0] = xmmword_DF8708;
  v18[1] = unk_DF8718;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF82B0;
  *(v9 + 32) = v6;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  sub_2F118(v18, v14);
  sub_1FD0CC(a2 & 1, a1);
  v10 = sub_2F48A4(v17, a1, 0, 0);
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  v11 = *&xmmword_E71560;
  v12 = *&qword_E71570;

  return v10 + a3 + v11 + v12;
}

void sub_1FEC00()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_personType) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_badgeView) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication18PersonVerticalCell_textComponents;
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_DF86D8;
  v11[3] = xmmword_DF86E8;
  v11[4] = xmmword_DF86F8;
  v11[0] = xmmword_DF86B8;
  v11[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v11);
  sub_2F118(v11, v10);
  v6 = qword_DE69B8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = (v1 + v4);
  v10[2] = xmmword_DF8728;
  v10[3] = unk_DF8738;
  v10[4] = xmmword_DF8748;
  v10[0] = xmmword_DF8708;
  v10[1] = unk_DF8718;
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF82B0;
  *(v9 + 32) = v5;
  *v7 = v5;
  v7[1] = v8;
  v7[2] = v9;
  sub_ABAFD0();
  __break(1u);
}

void sub_1FF124(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for JSSearchLandingModelRequest();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel];
    *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

double sub_1FF264(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_200330, v12);

  return result;
}

double sub_1FF334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_1FF610(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication31JSSearchLandingRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelSearchLandingItemBuilder());
      v11 = sub_21C954(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v35 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v34 = v14;
    [v14 appendSection:v15];

    v16 = JSSearchLandingViewModel.items.getter();
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v32 = v1;
      v33 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v23 = sub_3612B8(v1, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v23 = *(v17 + 8 * v1 + 32);
        }

        v24 = v23;
        v25 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v26 = [a1 userIdentity];
          if (!v26)
          {
            __break(1u);
LABEL_21:

            v1 = v32;
            v3 = v33;
            goto LABEL_26;
          }

          v19 = v26;
          sub_21BE38(v24, v26);
          v21 = v20;

          [v34 appendItem:v24];
          v22 = v21;
          [v35 appendItem:v22];
        }

        ++v1;
        if (v25 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v27 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v35];
    [v27 setRepresentedObjects:v34];
    v28 = swift_allocObject();
    *(v28 + 16) = v1;
    *(v28 + 24) = a1;
    aBlock[4] = sub_200244;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_30_1;
    v29 = _Block_copy(aBlock);
    v30 = v1;
    v31 = a1;

    [v27 performWithResponseHandler:v29];
    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1FFA24(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSSearchLandingModelResponse());
    v9 = a1;
    v13 = sub_1FFC80(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSSearchLandingRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication31JSSearchLandingRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_1FFC80(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSSearchLandingModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSSearchLandingModelRequest_sectionViewModel];
    v12 = v11;
    v13 = *JSSearchLandingViewModel.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2000AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_200174()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2001C4()
{

  return swift_deallocObject();
}

uint64_t sub_200204()
{

  return swift_deallocObject();
}

uint64_t sub_20024C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_200284()
{

  return swift_deallocObject();
}

uint64_t sub_2002D8()
{

  return swift_deallocObject();
}

uint64_t sub_200340()
{

  return swift_deallocObject();
}

uint64_t sub_200394(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(a1, v1 + v7);
  swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent);
  sub_15F84(v1 + v7, v6, &unk_DFFBC0, &unk_AF85C0);
  v9 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v8 + v9, v4, &unk_DFFBC0, &unk_AF85C0);
  swift_beginAccess();
  sub_8A01C(v6, v8 + v9);
  swift_endAccess();
  sub_75AE8(v4);
  sub_12E1C(a1, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v4, &unk_DFFBC0, &unk_AF85C0);
  return sub_12E1C(v6, &unk_DFFBC0, &unk_AF85C0);
}

void sub_200534(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = a1;
  v4 = a1;

  sub_74EA4(a1);
}

void sub_200598(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = a1;
  if (v3 != (a1 & 1))
  {
    sub_201644();
    v4 = sub_200954();
    [v4 setHidden:(*(v1 + v2) & 1) == 0];
  }
}

char *sub_200620(char a1, double a2)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = a1;
  if (v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v4 = a1 & 1;
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v5[v6] = v4;
    v23 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v24 = v5;
    if (v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != v4)
    {
      v5[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v4;
      v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v8 = *&v5[v7];
      if (v8 >> 62)
      {
        result = sub_ABB060();
        if (!result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (!result)
        {
          goto LABEL_20;
        }
      }

      v22 = v3;
      v10 = result - 1;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v21 = v5;

      v12 = 0;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      v13 = *(sub_36003C(v12, v8, v11) + 256);
      if (v13)
      {
LABEL_8:
        v14 = v13;
        if (([v14 isHidden] & 1) == 0)
        {
          v15 = v24[v23];
          v16 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v17 = v14[v16];
          v14[v16] = v15;
          if (v15 != v17)
          {
            v18 = 1.0;
            if (v15)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v14 setAlpha:v18];
          }
        }

        if (v10 != v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        while (1)
        {

          if (v10 == v12)
          {
            break;
          }

LABEL_17:
          ++v12;
          if ((v8 & 0xC000000000000001) != 0)
          {
            goto LABEL_7;
          }

LABEL_15:
          v19 = *(v8 + 8 * v12 + 32);

          v13 = *(v19 + 256);
          if (v13)
          {
            goto LABEL_8;
          }
        }
      }

      v3 = v22;
    }
  }

LABEL_20:
  if (v2[v3])
  {
    v20 = 0;
  }

  else
  {
    v20 = 3;
  }

  return [v2 setSelectionStyle:v20];
}

id sub_2008A4(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu];
  v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu] = result;
  if (v3 != (result & 1))
  {
    v4 = sub_200934();
    [v4 setHidden:(v1[v2] & 1) == 0];

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_200974(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_2009DC(void *a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
    if (v6)
    {
      v7 = a1;
      v8 = v6;
    }

    else
    {
      type metadata accessor for LibraryAddKeepLocalStatusObserver();
      swift_allocObject();
      v12 = a1;
      v8 = sub_259C34();
      *(v3 + v5) = v8;
      swift_retain_n();
    }

    v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType);
    swift_retain_n();
    sub_259B30(v13);
    *(v8 + 4) = UIScreen.Dimensions.size.getter;
    *(v8 + 5) = 0;

    v14 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity);
    v15 = v8[48];
    v8[48] = v14;
    if (v14 != v15)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_206F5C, v8);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    v17 = *(v3 + v5);
    if (v17 && (v18 = *(v17 + 72)) != 0)
    {
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v19 = a1;
      v20 = v18;
      v21 = sub_ABA790();

      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = a1;
    }

    *(v16 + 16) = 0;
    v19 = *(v8 + 9);
    *(v8 + 9) = a1;
    v23 = a1;
    sub_25A2AC(v19);

LABEL_15:
    v24 = *(v8 + 104);
    if ([objc_opt_self() areAnimationsEnabled])
    {
      v25 = *(v16 + 16);
    }

    else
    {
      v25 = 0;
    }

    sub_2019A4(v28, v25);

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v16;
    *(v8 + 4) = sub_206F74;
    *(v8 + 5) = v27;

    return;
  }

  v10 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver;
  v11 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
  if (v11)
  {
    *(v11 + 32) = UIScreen.Dimensions.size.getter;
    *(v11 + 40) = 0;
  }

  *(v3 + v10) = 0;

  memset(v28, 0, 32);
  v28[2] = xmmword_B03DA0;
  sub_2019A4(v28, a2 & 1);
}

double sub_200D20()
{
  swift_beginAccess();

  return result;
}

double sub_200D68(uint64_t a1)
{
  sub_2069BC(a1);

  return result;
}

uint64_t (*sub_200DA0(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_200E28;
}

void sub_200E28(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *&v5[v7];
    *&v5[v7] = v6;
    swift_retain_n();
    v9 = v5;
    sub_2E6210(v8);
  }

  free(v3);
}

void sub_200EEC(uint64_t a1, char a2, CGRect *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  [v10 effectiveUserInterfaceLayoutDirection];
  v15 = *(a1 + 16);
  if (v15)
  {
    v80 = a6;
    v16 = 0;
    v17 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
    v81 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v82 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
    v18 = (a1 + 32);
    v19 = 0.0;
    while (1)
    {
      v37 = *v18++;
      v36 = v37;
      if (v37)
      {
        if (v36 == &dword_0 + 1)
        {
          if ((*(v10 + v17) & 1) == 0)
          {
            goto LABEL_8;
          }

          v41 = *(v10 + v81);
          if (!v41)
          {
            goto LABEL_8;
          }

          v88 = v19;
          if ((v16 & 1) == 0)
          {
            a3->size.width = a3->size.width - a5;
          }

          v42 = v41;
          [v42 sizeThatFits:{a9, a10}];
          v94.size.width = v43;
          v45 = v44;
          v94.origin.x = 0.0;
          v94.origin.y = 0.0;
          v94.size.height = v45;
          Width = CGRectGetWidth(v94);
          if (Width > 0.0)
          {
            v47 = Width;
          }

          else
          {
            v47 = 0.0;
          }
        }

        else
        {
          if (v36 != &dword_0 + 2)
          {
            v63 = v36;
            v64 = v63;
            if (a2 & 1) == 0 && ([v63 isHidden])
            {
              sub_7FCC4(v36);
              goto LABEL_8;
            }

            if ((v16 & 1) == 0)
            {
              a3->size.width = a3->size.width - a5;
            }

            v20 = v64;
            [v20 sizeThatFits:{a9, a10}];
            v89.size.width = v21;
            v23 = v22;
            v89.origin.x = 0.0;
            v89.origin.y = 0.0;
            v89.size.height = v23;
            v24 = CGRectGetWidth(v89);
            if (v24 > 0.0)
            {
              v25 = v24;
            }

            else
            {
              v25 = 0.0;
            }

            v90 = *a3;
            v84 = v90.size.width;
            CGRectGetMaxX(*a3);
            v91.origin.x = 0.0;
            v91.origin.y = 0.0;
            v91.size.width = v25;
            v91.size.height = v23;
            CGRectGetWidth(v91);
            v26 = [v10 traitCollection];
            [v26 displayScale];

            v77 = v23;
            sub_ABA470();
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;
            sub_ABA490();
            [v20 setFrame:*&v77];
            v92.origin.x = v28;
            v92.origin.y = v30;
            v92.size.width = v32;
            v92.size.height = v34;
            v19 = v19 + CGRectGetWidth(v92) + a4;
            v93.origin.x = v28;
            v93.origin.y = v30;
            v93.size.width = v32;
            v93.size.height = v34;
            v35 = CGRectGetWidth(v93);
            sub_7FCC4(v36);
            sub_7FCC4(v36);
            goto LABEL_7;
          }

          v38 = *(v10 + v82);
          if (!v38)
          {
            goto LABEL_8;
          }

          v39 = v38;
          v40 = v39;
          if (a2 & 1) == 0 && ([v39 isHidden])
          {

            goto LABEL_8;
          }

          v88 = v19;
          if ((v16 & 1) == 0)
          {
            a3->size.width = a3->size.width - a5;
          }

          v42 = v40;
          [v42 sizeThatFits:{a9, a10}];
          v100.size.width = v65;
          v45 = v66;
          v100.origin.x = 0.0;
          v100.origin.y = 0.0;
          v100.size.height = v45;
          v67 = CGRectGetWidth(v100);
          if (v67 > 0.0)
          {
            v47 = v67;
          }

          else
          {
            v47 = 0.0;
          }
        }

        v101 = *a3;
        v84 = v101.size.width;
        CGRectGetMaxX(*a3);
        v102.origin.x = 0.0;
        v102.origin.y = 0.0;
        v102.size.width = v47;
        v102.size.height = v45;
        CGRectGetWidth(v102);
        v68 = [v10 traitCollection];
        [v68 displayScale];

        v79 = v45;
        sub_ABA470();
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v76 = v75;
        sub_ABA490();
        [v42 setFrame:*&v79];
        v103.origin.x = v70;
        v103.origin.y = v72;
        v103.size.width = v74;
        v103.size.height = v76;
        v19 = v88 + CGRectGetWidth(v103) + a4;
        v104.origin.x = v70;
        v104.origin.y = v72;
        v104.size.width = v74;
        v104.size.height = v76;
        v35 = CGRectGetWidth(v104);
      }

      else
      {
        if (((*(&stru_2E8.reloff + (swift_isaMask & *v10)))() & 1) == 0)
        {
          goto LABEL_8;
        }

        v48 = sub_200934();
        if ((v16 & 1) == 0)
        {
          a3->size.width = a3->size.width - a5;
        }

        v42 = v48;
        [v42 sizeThatFits:{a9, a10}];
        v95.size.width = v49;
        v51 = v50;
        v95.origin.x = 0.0;
        v95.origin.y = 0.0;
        v95.size.height = v51;
        v52 = CGRectGetWidth(v95);
        if (v52 > 0.0)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v96 = *a3;
        v84 = v96.size.width;
        CGRectGetMaxX(*a3);
        v97.origin.x = 0.0;
        v97.origin.y = 0.0;
        v97.size.width = v53;
        v97.size.height = v51;
        CGRectGetWidth(v97);
        v54 = [v10 traitCollection];
        [v54 displayScale];

        v78 = v51;
        sub_ABA470();
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = v61;
        sub_ABA490();
        [v42 setFrame:*&v78];
        v98.origin.x = v56;
        v98.origin.y = v58;
        v98.size.width = v60;
        v98.size.height = v62;
        v19 = v19 + CGRectGetWidth(v98) + a4;
        v99.origin.x = v56;
        v99.origin.y = v58;
        v99.size.width = v60;
        v99.size.height = v62;
        v35 = CGRectGetWidth(v99);
      }

LABEL_7:
      a3->size.width = v84 - v35;
      v16 = 1;
LABEL_8:
      if (!--v15)
      {
        if (v19 > 0.0)
        {
          a3->size.width = a3->size.width - v80;
        }

        return;
      }
    }
  }
}

void sub_201644()
{
  if ((*&stru_248.sectname[swift_isaMask & *v0])())
  {
    v1 = sub_200954();
    v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
    [v2 scaledValueForValue:8.0];
    v4 = v3;

    v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
    [v1 setPreferredSymbolConfiguration:v5];

    v6 = [v0 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v0 music_inheritedLayoutInsets];
    v17 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v15, v16);
    v19 = v18;
    v20 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator;
    [*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator) sizeThatFits:{0.0, 0.0}];
    v22 = v21;
    v24 = v23;
    v25 = [v0 traitCollection];
    v26 = [v25 preferredContentSizeCategory];

    sub_ABA320();
    v30.origin.x = v17;
    v30.origin.y = v19;
    v30.size.width = v22;
    v30.size.height = v24;
    CGRectGetWidth(v30);
    [*(*(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent) + 112) frame];
    v27 = [v0 traitCollection];
    [v27 displayScale];

    sub_ABA470();
    v28 = *(v0 + v20);
    [v0 effectiveUserInterfaceLayoutDirection];
    sub_ABA490();
    [v28 setFrame:?];
  }
}

void sub_2019A4(double *a1, int a2)
{
  v3 = v2;
  v76 = a2;
  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v12 = &v72 - v11;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  __chkstk_darwin();
  v17 = &v72 - v16;
  v18 = (v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  v19 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32);
  if ((v19 & 0xFE) == 0xF8)
  {
    if ((v9 & 0xFE) == 0xF8)
    {
      return;
    }

    LOBYTE(v20) = v9;
    goto LABEL_18;
  }

  v21 = v18[3];
  v22 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32);
  if ((v9 & 0xFE) == 0xF8)
  {
    v8 = 0.0;
    v20 = 122;
    goto LABEL_17;
  }

  v20 = v9;
  if (*v18 == v6)
  {
    v23 = *(v18 + 1);
    v24 = v9 & 0xFFFFFFFE;
    if ((v19 & 0xFE) == 0x7A)
    {
      if (v24 != 122)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v24 == 122)
      {
        goto LABEL_17;
      }

      v69 = v22 >> 1;
      if (v22 >> 1 <= 0x7C)
      {
        if (v69 == 62)
        {
          if (v24 != 124)
          {
            goto LABEL_17;
          }

          goto LABEL_9;
        }

        if (v69 == 63)
        {
          if (v24 != 126)
          {
            goto LABEL_17;
          }

          goto LABEL_9;
        }
      }

      else
      {
        switch(v69)
        {
          case '}':
            if (v24 != -6)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          case '~':
            if (v24 != -4)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          case '\x7F':
            if (v9 < 0xFFFFFFFE)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
        }
      }

      v71 = v9 >> 1;
      if ((v71 - 125) < 3 || (v71 - 62) < 2)
      {
        goto LABEL_17;
      }

      if ((v19 & 0x80) != 0)
      {
        if ((v9 & 0x80000000) == 0 || *&v21 != *&v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v9 < 0)
        {
          goto LABEL_17;
        }

        if (v19)
        {
          if ((v9 & (v23 == v5)) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_10;
        }

        if ((v9 & 1) != 0 || v21 != v8)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_9:
    if (v23 != v5)
    {
      goto LABEL_17;
    }

LABEL_10:
    if (vabdd_f64(v18[2], v7) <= 0.00000011920929 && *(v18 + 5) == v10)
    {
      return;
    }
  }

LABEL_17:
  if ((v19 & 0xFE) == 0x7A)
  {
LABEL_18:
    if ((v20 & 0xFE) == 0x7A)
    {
      return;
    }

    goto LABEL_21;
  }

  v26 = v20 & 0xFFFFFFFE;
  if ((v20 & 0xFFFFFFFE) == 0x7A)
  {
    goto LABEL_21;
  }

  v45 = v22 >> 1;
  if (v22 >> 1 <= 0x7C)
  {
    if (v45 == 62)
    {
      if (v26 != 124)
      {
        goto LABEL_21;
      }

      return;
    }

    if (v45 == 63)
    {
      if (v26 != 126)
      {
        goto LABEL_21;
      }

      return;
    }
  }

  else
  {
    switch(v45)
    {
      case '}':
        if (v26 != -6)
        {
          goto LABEL_21;
        }

        return;
      case '~':
        if (v26 != -4)
        {
          goto LABEL_21;
        }

        return;
      case '\x7F':
        if (v20 > 0xFFFFFFFD)
        {
          return;
        }

LABEL_21:
        v27 = *(a1 + 1);
        *v18 = *a1;
        *(v18 + 1) = v27;
        *(v18 + 2) = *(a1 + 2);
        v28 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
        if (!v28)
        {
          return;
        }

        v74 = v15;
        if ((v9 & 0xFE) == 0xF8)
        {
          v29 = 122;
        }

        else
        {
          v29 = v9;
        }

        v75 = v29;
        v30 = *(&stru_3D8.size + (swift_isaMask & *v3));
        v31 = v13;
        v32 = v14;

        v30(v33);
        v34 = (*(v32 + 56))(v12, 0, 1, v31);
        v35 = v28;
        v36 = v17;
        v37 = (*&stru_3D8.segname[(swift_isaMask & *v3) + 16])(v34);
        sub_25A964(v12, v37 & 1, v36);
        sub_12E1C(v12, &unk_DFAAB0, qword_B05AE0);
        v38 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
        v39 = *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl);
        if (v39)
        {
          v74 = v28;
          v40 = v37;
          v41 = v39;
          if (v76)
          {
            v42 = SymbolButton.Animation.eased.unsafeMutableAddressor();
            v43 = v42[1];
            v73 = *v42;
            v44 = v42[2];
          }

          else
          {
            v73 = 0;
            v43 = 0;
            v44 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8A60, &unk_B04070);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_AF4EC0;
          v56 = swift_allocObject();
          *(v56 + 16) = v3;
          *(v55 + 32) = sub_206F10;
          *(v55 + 40) = v56;
          *(v55 + 48) = xmmword_B03DB0;
          *(v55 + 64) = 0;
          *(v55 + 72) = 0;
          v57 = *&stru_1F8.segname[(swift_isaMask & *v41) + 8];
          v58 = v3;
          v57(v36, v73, v43, v44, (v76 & 1) == 0, v55);

          v37 = v40;
        }

        else
        {
          v46 = v74;
          sub_BD494(v36, v74);
          v47 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
          v49 = SymbolButton.init(configuration:handler:)(v46, sub_206EC4, v47);
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = swift_allocObject();
          *(v51 + 16) = v50;
          *(v51 + 24) = v35;

          v52 = SymbolButton.withProvider(_:)(sub_206ED0, v51);

          v53 = *(v3 + v38);
          *(v3 + v38) = v52;
          v54 = v52;
          sub_203880(v53);
        }

        v59 = v75 & 0xFFFFFFFE;
        if (v37)
        {
          if (v59 != 122 && (v60 = v75 >> 1, (v60 - 62) >= 2) && (v60 - 126) >= 2 && (v60 == 125 || v75 < 0))
          {
            v61 = 1;
            v62 = *(v3 + v38);
            if (!v62)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v61 = 0;
            v62 = *(v3 + v38);
            if (!v62)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v61 = v59 != 122;
          v62 = *(v3 + v38);
          if (!v62)
          {
LABEL_49:
            sub_20221C();

            sub_BD4F8(v36);
            return;
          }
        }

        v63 = *(&stru_158.offset + (swift_isaMask & *v62));
        v64 = v62;
        v63(v61);

        v65 = *(v3 + v38);
        if (v65)
        {
          v66 = *&stru_158.sectname[swift_isaMask & *v65];
          v67 = v65;
          v66(v61);

          v68 = *(v3 + v38);
          if (v68)
          {
            [v68 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
          }
        }

        goto LABEL_49;
    }
  }

  v70 = v20 >> 1;
  if ((v70 - 125) < 3 || (v70 - 62) < 2)
  {
    goto LABEL_21;
  }

  if ((v19 & 0x80) != 0)
  {
    if ((v20 & 0x80000000) == 0 || *&v21 != *&v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v19)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v20 & 1) != 0 || v21 != v8)
    {
      goto LABEL_21;
    }
  }
}

id sub_20221C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32];
  if ((v2 & 0xFE) == 0xF8)
  {
    LOBYTE(v2) = 122;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v5 = *&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
  if (v5)
  {
    v6 = [v5 isHidden];
  }

  else
  {
    v6 = 2;
  }

  v7 = (*&stru_3D8.segname[(swift_isaMask & *v0) + 16])();
  v8 = v3 & 0xFFFFFFFE;
  if ((v7 & 1) == 0)
  {
    if (v8 != 122)
    {
      v10 = [v0 isEditing];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v8 == 122)
  {
LABEL_19:
    v11 = 0;
    v10 = &dword_0 + 1;
    goto LABEL_20;
  }

  v9 = v3 >> 1;
  v10 = &dword_0 + 1;
  if ((v9 - 126) >= 2 && v9 != 63)
  {
    v10 = [v1 isEditing];
  }

  v11 = 0;
  if ((v9 - 62) < 2 || (v9 - 126) < 2)
  {
LABEL_20:
    v12 = *&v1[v4];
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v9 != 125 && (v3 & 0x80000000) == 0)
  {
    v11 = 0;
    v12 = *&v1[v4];
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = [v1 isEditing] ^ 1;
  v12 = *&v1[v4];
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_23:
  [v12 setHidden:v10];
  v13 = *&v1[v4];
  if (v13)
  {
    v14 = *(&stru_1F8.flags + (swift_isaMask & *v13));
    v15 = v13;
    v14(v11, 0);

    v16 = *&v1[v4];
    if (v16)
    {
      result = [v16 isHidden];
      if (v6 == 2)
      {
        goto LABEL_30;
      }

LABEL_26:
      if (result != 2 && ((v6 ^ result) & 1) == 0)
      {
        return result;
      }

      goto LABEL_31;
    }
  }

LABEL_29:
  result = &dword_0 + 2;
  if (v6 != 2)
  {
    goto LABEL_26;
  }

LABEL_30:
  if (result == 2)
  {
    return result;
  }

LABEL_31:

  return [v1 setNeedsLayout];
}

void sub_20247C(void *a1)
{
  [v1 frame];
  v4 = v3;
  [a1 bounds];
  if (v4 < CGRectGetWidth(v32))
  {
    v5 = sub_200934();
    [a1 contentOffset];
    v7 = v6;
    v9 = v8;
    [a1 frame];
    v11 = v10;
    v13 = v12;
    v14 = v5;
    [v14 frame];
    [v1 convertRect:a1 toCoordinateSpace:?];
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    v34 = CGRectIntersection(v33, v37);
    v19 = v34.origin.x;
    v20 = v34.origin.y;
    v21 = v34.size.width;
    v22 = v34.size.height;
    if ([v1 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      MaxX = CGRectGetMaxX(v35);
      v36.origin.x = v19;
      v36.origin.y = v20;
      v36.size.width = v21;
      v36.size.height = v22;
      v24 = MaxX - CGRectGetMaxX(v36);
    }

    else
    {
      v24 = v19 - x;
    }

    [v14 frame];
    v26 = v25;

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v26 * 0.05 < v24;
    *(v28 + 24) = v14;
    v31[4] = sub_206E88;
    v31[5] = v28;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 1107296256;
    v31[2] = sub_1B5EB4;
    v31[3] = &block_descriptor_69;
    v29 = _Block_copy(v31);
    v30 = v14;

    [v27 animateWithDuration:0 delay:v29 options:0 animations:0.333 completion:0.0];

    _Block_release(v29);
  }
}

char *sub_2026F0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v54 - v12;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  *v14 = xmmword_AFB140;
  v14[1] = xmmword_B03DC0;
  *&v4[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = vdupq_n_s64(0x4044000000000000uLL);
  v15 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  v16 = UIView.Corner.small.unsafeMutableAddressor();
  v17 = sub_ABA680();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v5[v15], v16, v17);
  (*(v18 + 56))(&v5[v15], 0, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkExplicitBackgroundColor] = 0;
  v20 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle];
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = 0;
  v20[24] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] = 1;
  sub_AB4ED0();
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 0;
  v21 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  *v21 = 0;
  v21[8] = 2;
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  *v22 = 0;
  v22[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] = 0;
  v23 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset];
  v24 = *&UIEdgeInsetsZero.bottom;
  *v23 = *&UIEdgeInsetsZero.top;
  v23[1] = v24;
  v25 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus];
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = xmmword_B03DA0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = 0;
  v26 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v28 = sub_80104(v27);

  *&v5[v26] = v28;
  v29 = &v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition] = 1;
  *&v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType] = 1;
  v5[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity] = 0;
  v31 = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  v55.receiver = v5;
  v55.super_class = v31;
  v32 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  v33 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v34 = v32;

  v35 = UIView.Border.artwork.unsafeMutableAddressor();
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = v35[2];
  v39 = v38;
  sub_75E64(v36, v37, v38);

  v40 = *&v32[v33];
  v41 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_15F84(&v34[v41], v13, &unk_DFFBC0, &unk_AF85C0);
  v42 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v40 + v42, v11, &unk_DFFBC0, &unk_AF85C0);
  swift_beginAccess();

  sub_8A01C(v13, v40 + v42);
  swift_endAccess();
  sub_75AE8(v11);
  sub_12E1C(v11, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v13, &unk_DFFBC0, &unk_AF85C0);

  v43 = *&v32[v33];
  *(v43 + 24) = 0x70756B636F6CLL;
  *(v43 + 32) = 0xE600000000000000;

  v44 = *&v32[v33];
  v45 = *(v44 + 80);
  v46 = *(v44 + 88);
  *(v44 + 80) = *&v34[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];

  sub_75614(v45, v46);

  v47 = *&v32[v33];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = (v47 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v50 = *(v47 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v51 = *(v47 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v49 = sub_206E48;
  v49[1] = v48;

  sub_17654(v50, v51);

  v52 = [v34 contentView];

  [v52 addSubview:*(*&v32[v33] + 112)];
  [v52 addSubview:*&v34[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView]];

  return v34;
}

void sub_202D60(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
    v3 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
    if (v3)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler + 8];

      v3(v2);
      sub_17654(v3, v4);
    }
  }
}

void sub_202E20(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300, &qword_AFEFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = sub_AB4F50();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v39 - v10;
  __chkstk_darwin();
  v12 = &v39 - v11;
  __chkstk_darwin();
  v14 = &v39 - v13;
  isa = sub_AB4DF0().super.super.isa;
  v16 = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  v46.receiver = v2;
  v46.super_class = v16;
  objc_msgSendSuper2(&v46, "_bridgedUpdateConfigurationUsingState:", isa);

  v17 = [v2 tableViewCell];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v40 = v9;
  v42 = v5;
  [v17 setBackgroundColor:0];

  v19 = [v2 tableViewCell];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 setSelectedBackgroundView:0];

  v21 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
  swift_beginAccess();
  v22 = *(v7 + 16);
  v22(v12, &v2[v21], v6);
  v23 = sub_AB4E30();
  v45[3] = v23;
  v45[4] = &protocol witness table for UICellConfigurationState;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, a1, v23);
  sub_AB4F40();
  v41 = v7;
  v25 = v12;
  v26 = v14;
  v43 = *(v7 + 8);
  v43(v25, v6);
  __swift_destroy_boxed_opaque_existential_0(v45);
  v22(v44, v14, v6);
  v27 = [objc_opt_self() clearColor];
  sub_AB4EF0();
  if (sub_AB4E10())
  {
    v28 = v40;
    v22(v40, &v2[v21], v6);
    v29 = sub_AB4EE0();
    v43(v28, v6);
    if (v29)
    {
      v30 = [v29 colorWithAlphaComponent:0.8];
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    sub_AB4EF0();
    sub_AB4EF0();
  }

  v32 = v42;
  v22(v42, v26, v6);
  v33 = *(v41 + 56);
  v33(v32, 0, 1, v6);
  sub_ABA2D0();
  v34 = [v2 tableViewCell];
  if (v34)
  {
    v35 = v34;
    v36 = v44;
    v22(v32, v44, v6);
    v33(v32, 0, 1, v6);
    sub_AB9FC0();
    v37 = v36;
    v38 = v43;
    v43(v37, v6);
    v38(v26, v6);

    return;
  }

LABEL_12:
  __break(1u);
}

void *sub_203534(void *a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0) - 8;
  __chkstk_darwin();
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = SymbolButton.Configuration.contextualAction.unsafeMutableAddressor();
  sub_BD494(v5, v4);
  v6 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v7 = SymbolButton.init(configuration:handler:)(v4, 0, 0);
  v8 = SymbolButton.withProvider(_:)(sub_2037B8, 0);

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 labelColor];
  v12 = *(&stru_1A8.reserved2 + (swift_isaMask & *v10));
  v13 = v12(v25);
  v14 = *(v2 + 80);
  v16 = *(v15 + v14);
  *(v15 + v14) = v11;

  v13(v25, 0);
  v17 = UIContentSizeCategoryExtraExtraExtraLarge;
  v18 = v12(v25);
  v20 = v19 + *(v2 + 72);
  v21 = *(v20 + 16);
  *(v20 + 16) = UIContentSizeCategoryExtraExtraExtraLarge;

  v22 = v18(v25, 0);
  [v10 setHidden:((*(&stru_2E8.reloff + (swift_isaMask & *a1)))(v22) & 1) == 0];
  v23 = [a1 contentView];
  [v23 addSubview:v10];

  return v10;
}

double sub_2037B8(uint64_t a1, uint64_t a2)
{
  sub_3F9D0(*(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224));
  result = 0.0;
  *(a2 + 200) = xmmword_AF82C0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  return result;
}

void sub_203880(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v7 = a1;
    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton(0);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

LABEL_7:
    v9 = [v7 superview];
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  v10 = [v2 contentView];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      sub_13C80(0, &qword_DF12A0, UIView_ptr);
      v12 = sub_ABA790();

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v13 = *&v2[v4];
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_20:
    v14 = v13;
    v15 = [v14 superview];
    v16 = [v2 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_13C80(0, &qword_DF12A0, UIView_ptr);
        v18 = sub_ABA790();

        if (v18)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_31;
    }

LABEL_30:
    v19 = [v2 contentView];
    [v19 addSubview:v14];

    v14 = v19;
LABEL_31:

    goto LABEL_32;
  }

  if (v10)
  {

    v13 = *&v2[v4];
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (a1)
  {
    [a1 removeFromSuperview];
  }

LABEL_19:
  v13 = *&v2[v4];
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_32:

  [v2 setNeedsLayout];
}

id sub_203ACC(void *a1)
{
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIImageView) initWithImage:qword_E71438];
  [v2 setHidden:1];
  v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v3 scaledValueForValue:8.0];
  v5 = v4;

  v6 = [objc_opt_self() configurationWithPointSize:7 weight:v5];
  [v2 setPreferredSymbolConfiguration:v6];

  v7 = AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  sub_13C80(0, &qword_DF0C80, UIImageView_ptr);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v8, v9, v12, v10, v11);
  v13 = [a1 contentView];
  [v13 addSubview:v2];

  v14 = [a1 superview];
  if (v14)
  {

    [a1 setNeedsLayout];
  }

  return v2;
}

void sub_203CFC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v10 = *a2;
  v11 = a2[1];
  v5 = *(a2 + 32);
  v6 = *(a2 + 5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([objc_opt_self() areAnimationsEnabled])
    {
      swift_beginAccess();
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = 0;
    }

    v12[0] = v10;
    v12[1] = v11;
    v13 = v5;
    v14 = v6;
    sub_2019A4(v12, v9);
  }
}

void sub_203DB8(char a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] != (a1 & 1))
  {
    v2 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton];
    if (v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton])
    {
      if (v3)
      {
        v4 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton];
      }

      else
      {
        v4 = _s11MusicCoreUI12SymbolButtonC0A11ApplicationE014mediaPickerAddE0ACvgZ_0();
        v3 = 0;
      }

      v5 = v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected];
      v6 = v3;
      [v4 setSelected:v5];
      v7 = v4;
      [v7 setHidden:0];
      [v7 setUserInteractionEnabled:0];

      v8 = [v1 contentView];
      v9 = [v7 isDescendantOfView:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [v1 contentView];
        [v10 addSubview:v7];

        [v1 setNeedsLayout];
      }

      v11 = *&v1[v2];
      *&v1[v2] = v7;
    }

    else if (v3)
    {

      [v3 setHidden:1];
    }
  }
}

id sub_204008(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_2040A0(char a1)
{
  v2 = v1;
  v4 = sub_AB4E30();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  v13.receiver = v2;
  v13.super_class = v8;
  v9 = objc_msgSendSuper2(&v13, "isSelected");
  v12.receiver = v2;
  v12.super_class = v8;
  objc_msgSendSuper2(&v12, "setSelected:", a1 & 1);
  if (v9 != [v2 isSelected])
  {
    v10 = [v2 _bridgedConfigurationState];
    sub_AB4E00();
    isa = sub_AB4DF0().super.super.isa;
    (*(v5 + 8))(v7, v4);

    [v2 _bridgedUpdateConfigurationUsingState:isa];
  }
}

void sub_20420C()
{
  v1 = v0;
  v195.receiver = v0;
  v195.super_class = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  objc_msgSendSuper2(&v195, "layoutSubviews");
  v2 = sub_200934();
  [v1 bounds];
  v3.n128_u64[0] = CGRectGetHeight(v196);
  (*(&stru_1F8.offset + (swift_isaMask & *v2)))(44.0, v3);

  [v1 bounds];
  v177 = v5;
  v178 = v4;
  v174 = v6;
  v176 = v7;
  v8 = [v1 contentView];
  [v8 bounds];
  v10 = v9;
  v187 = v11;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  [v16 displayScale];
  [v1 music_inheritedLayoutInsets];
  v18 = v17;
  v20 = v19;
  [v1 effectiveUserInterfaceLayoutDirection];
  v21 = [v1 tableViewCell];
  rect_16 = v10;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 layoutManager];

    if (v23)
    {
      if (![v1 isEditing])
      {
        goto LABEL_6;
      }

      v24 = [v1 tableViewCell];
      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = v24;
      v26 = [v24 showingDeleteConfirmation];

      if ((v26 & 1) == 0)
      {
        v27 = [v1 tableViewCell];
        [v23 contentEndingRectForCell:v27 forNewEditingState:1];
        v29 = v28;
        v31 = v30;
        v188 = v33;
        v191 = v32;

        v197.origin.x = v29;
        v197.origin.y = v31;
        v197.size.height = v188;
        v197.size.width = v191;
        MinX = CGRectGetMinX(v197);

        v10 = rect_16;
        if (v20 - MinX > 8.0)
        {
          v20 = v20 - MinX;
        }

        else
        {
          v20 = 8.0;
        }
      }

      else
      {
LABEL_6:
      }
    }
  }

  v35 = UIEdgeInsetsInsetRect(v10, v187, v13, v15, v18, v20);
  v37 = v36;
  v39 = v38;
  rect_8 = v15;
  v41 = v40;
  v42 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 8);
  v192 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24);
  sub_AB9EC0();
  v198.origin.x = v35;
  rect_24 = v37;
  v198.origin.y = v37;
  v198.size.width = v39;
  v182 = v41;
  v198.size.height = v41;
  v43 = v42;
  CGRectGetMinX(v198);
  sub_76368(0, 0, 1);
  v166 = v44;
  sub_ABA470();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_ABA490();
  v172 = v16;
  v173 = v8;
  v179 = v39;
  if (sub_76B28(v53, v54, v55, v56))
  {
    v199.origin.x = v46;
    v199.origin.y = v48;
    v199.size.width = v50;
    v199.size.height = v52;
    v57 = v192 + v43 + CGRectGetWidth(v199);
    rect = v35 + v57;
    v39 = v39 - v57;
  }

  else
  {
    rect = v35;
  }

  v175 = v35;
  sub_201644();
  v58 = [v1 effectiveUserInterfaceLayoutDirection];
  v59 = 0;
  v60 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  v61 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
  v180 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
  v62 = 0.0;
  v63 = v182;
  v64 = rect_24;
  v193 = v13;
  do
  {
    v81 = *(&off_CEFF18 + v59 + 32);
    if (v81)
    {
      if (v81 == &dword_0 + 1)
      {
        if (*(v1 + v61))
        {
          v84 = *(v1 + v180);
          if (v84)
          {
            v65 = v84;
            v189 = v62;
            [v65 sizeThatFits:{v13, rect_8}];
            v205.size.width = v85;
            v68 = v86;
            v205.origin.x = 0.0;
            v205.origin.y = 0.0;
            v205.size.height = v68;
            Width = CGRectGetWidth(v205);
            if (Width > 0.0)
            {
              v70 = Width;
            }

            else
            {
              v70 = 0.0;
            }

LABEL_17:
            v201.origin.x = rect;
            v201.origin.y = v64;
            v201.size.width = v39;
            v201.size.height = v63;
            CGRectGetMaxX(v201);
            v202.origin.x = 0.0;
            v202.origin.y = 0.0;
            v202.size.width = v70;
            v202.size.height = v68;
            CGRectGetWidth(v202);
            v71 = [v1 traitCollection];
            [v71 displayScale];

            v167 = v68;
            sub_ABA470();
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v79 = v78;
            v13 = v193;
            sub_ABA490();
            [v65 setFrame:*&v167];
            v203.origin.x = v73;
            v203.origin.y = v75;
            v203.size.width = v77;
            v203.size.height = v79;
            v62 = v189 + CGRectGetWidth(v203) + 0.0;
            v204.origin.x = v73;
            v204.origin.y = v75;
            v204.size.width = v77;
            v64 = rect_24;
            v204.size.height = v79;
            v63 = v182;
            v80 = CGRectGetWidth(v204);

LABEL_18:
LABEL_19:
            v39 = v39 - v80;
          }
        }
      }

      else if (v81 == &dword_0 + 2)
      {
        v82 = *(v1 + v60);
        if (v82)
        {
          v83 = v82;
          if (([v83 isHidden] & 1) == 0)
          {
            v65 = v83;
            v189 = v62;
            [v65 sizeThatFits:{v13, rect_8}];
            v200.size.width = v66;
            v68 = v67;
            v200.origin.x = 0.0;
            v200.origin.y = 0.0;
            v200.size.height = v68;
            v69 = CGRectGetWidth(v200);
            if (v69 > 0.0)
            {
              v70 = v69;
            }

            else
            {
              v70 = 0.0;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
        v102 = v81;
        if (([v102 isHidden] & 1) == 0)
        {
          v103 = v102;
          [v103 sizeThatFits:{v13, rect_8}];
          v211.size.width = v104;
          v106 = v105;
          v211.origin.x = 0.0;
          v211.origin.y = 0.0;
          v211.size.height = v106;
          v107 = CGRectGetWidth(v211);
          if (v107 > 0.0)
          {
            v108 = v107;
          }

          else
          {
            v108 = 0.0;
          }

          v212.origin.x = rect;
          v212.origin.y = v64;
          v212.size.width = v39;
          v212.size.height = v63;
          CGRectGetMaxX(v212);
          v213.origin.x = 0.0;
          v213.origin.y = 0.0;
          v213.size.width = v108;
          v213.size.height = v106;
          CGRectGetWidth(v213);
          v109 = [v1 traitCollection];
          [v109 displayScale];

          v169 = v106;
          sub_ABA470();
          v111 = v110;
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v13 = v193;
          sub_ABA490();
          [v103 setFrame:*&v169];
          v214.origin.x = v111;
          v214.origin.y = v113;
          v214.size.width = v115;
          v214.size.height = v117;
          v62 = v62 + CGRectGetWidth(v214) + 0.0;
          v215.origin.x = v111;
          v215.origin.y = v113;
          v215.size.width = v115;
          v64 = rect_24;
          v215.size.height = v117;
          v63 = v182;
          v80 = CGRectGetWidth(v215);
          sub_7FCC4(v81);
          sub_7FCC4(v81);
          goto LABEL_19;
        }

        sub_7FCC4(v81);
      }
    }

    else
    {
      v58 = (*(&stru_2E8.reloff + (swift_isaMask & *v1)))(v58);
      if (v58)
      {
        v65 = sub_200934();
        [v65 sizeThatFits:{v13, rect_8}];
        v206.size.width = v88;
        v90 = v89;
        v206.origin.x = 0.0;
        v206.origin.y = 0.0;
        v206.size.height = v90;
        v91 = CGRectGetWidth(v206);
        if (v91 > 0.0)
        {
          v92 = v91;
        }

        else
        {
          v92 = 0.0;
        }

        v207.origin.x = rect;
        v207.origin.y = v64;
        v207.size.width = v39;
        v207.size.height = v63;
        CGRectGetMaxX(v207);
        v208.origin.x = 0.0;
        v208.origin.y = 0.0;
        v208.size.width = v92;
        v208.size.height = v90;
        CGRectGetWidth(v208);
        v93 = [v1 traitCollection];
        [v93 displayScale];

        v168 = v90;
        sub_ABA470();
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v13 = v193;
        sub_ABA490();
        [v65 setFrame:*&v168];
        v209.origin.x = v95;
        v209.origin.y = v97;
        v209.size.width = v99;
        v209.size.height = v101;
        v62 = v62 + CGRectGetWidth(v209) + 0.0;
        v210.origin.x = v95;
        v210.origin.y = v97;
        v210.size.width = v99;
        v64 = rect_24;
        v210.size.height = v101;
        v63 = v182;
        v80 = CGRectGetWidth(v210);
        goto LABEL_18;
      }
    }

    v59 += 8;
  }

  while (v59 != 24);
  if (v62 <= 0.0)
  {
    v118 = v39;
  }

  else
  {
    v118 = v39 + -12.0;
  }

  v119 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  v120 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v194 = v118;
  sub_ABA490();
  [v120 setFrame:?];

  [v1 separatorInset];
  v181 = v121;
  v190 = v122;
  v216.origin.x = v35;
  v216.origin.y = v64;
  v216.size.width = v179;
  v216.size.height = v63;
  v171 = CGRectGetMinX(v216);
  v217.origin.x = rect_16;
  v217.origin.y = v187;
  v217.size.width = v13;
  v217.size.height = rect_8;
  v170 = CGRectGetMinX(v217);
  v123 = v8;
  [v8 frame];
  sub_ABA4A0();
  v124 = v63;
  v125 = CGRectGetMinX(v218);
  v219.origin.x = v178;
  v219.origin.y = v177;
  v219.size.width = v174;
  v219.size.height = v176;
  v126 = CGRectGetMinX(v219);
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment))
  {
    v220.origin.x = rect;
    v220.origin.y = v64;
    v220.size.width = v118;
    v220.size.height = v124;
    v127 = CGRectGetMinX(v220);
    v221.size.height = rect_8;
    v221.origin.x = rect_16;
    v221.origin.y = v187;
    v221.size.width = v13;
    v128 = v127 - CGRectGetMinX(v221);
    [v8 frame];
    sub_ABA4A0();
    v129 = CGRectGetMinX(v222);
    v223.origin.x = v178;
    v223.origin.y = v177;
    v223.size.width = v174;
    v223.size.height = v176;
    v130 = v128 + v129 - CGRectGetMinX(v223);
  }

  else
  {
    v130 = v171 - v170 + v125 - v126;
  }

  v131 = v172;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8))
  {
    v132 = 0.0;
    v133 = v182;
    v134 = v187;
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8) == 1)
    {
      v132 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment);
    }
  }

  else
  {
    v135 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment);
    v224.size.height = rect_8;
    v224.origin.x = rect_16;
    v134 = v187;
    v224.origin.y = v187;
    v224.size.width = v13;
    MaxX = CGRectGetMaxX(v224);
    v225.origin.x = v175;
    v225.origin.y = v64;
    v225.size.width = v179;
    v133 = v182;
    v225.size.height = v182;
    v132 = MaxX - CGRectGetMaxX(v225) + v135;
  }

  v137 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset);
  *v137 = v181;
  v137[1] = v130;
  v137[2] = v190;
  v137[3] = v132;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) == 1 && (v138 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition, *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition) != 2))
  {
    sub_ABA490();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v145 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView;
    v146 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
    if (*(v1 + v138) == 3)
    {
      [v146 removeFromSuperview];
    }

    else
    {
      if (v146)
      {
        v147 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
      }

      else
      {
        v148 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v149 = qword_DE6C70;
        v147 = v148;
        if (v149 != -1)
        {
          swift_once();
        }

        [v147 setBackgroundColor:qword_E718B0];
        v150 = *(v1 + v145);
        *(v1 + v145) = v147;

        v146 = 0;
      }

      v151 = v146;
      v152 = [v147 superview];

      if (v152)
      {
      }

      else
      {
        [v173 addSubview:v147];
      }

      v226.size.height = rect_8;
      v226.origin.x = rect_16;
      v226.origin.y = v134;
      v226.size.width = v13;
      [v147 setFrame:{v140, CGRectGetHeight(v226) - v144, v142, v144}];
    }

    if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator) == 1 && (*(v1 + v138) == 3 || !*(v1 + v138)))
    {
      v153 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView;
      v154 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView);
      if (v154)
      {
        v155 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView);
      }

      else
      {
        v156 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v157 = qword_DE6C70;
        v155 = v156;
        if (v157 != -1)
        {
          swift_once();
        }

        [v155 setBackgroundColor:qword_E718B0];
        v158 = *(v1 + v153);
        *(v1 + v153) = v155;

        v154 = 0;
      }

      v159 = v154;
      v160 = [v155 superview];

      if (v160)
      {
      }

      else
      {
        [v173 addSubview:v155];
      }

      [v155 setFrame:{v140, 0.0, v142, v144}];
    }

    else
    {
      [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView) removeFromSuperview];
    }
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView) removeFromSuperview];
    [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView) removeFromSuperview];
    type metadata accessor for UIEdgeInsets(0);
    if ((sub_AB38D0() & 1) != 0 && (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset) & 1) == 0)
    {
      [v1 setSeparatorInset:{v181, v130, v190, v132}];
    }
  }

  ObjectType = swift_getObjectType();
  v162 = swift_conformsToProtocol2();
  if (v162)
  {
    v163 = v162;
    v164 = v1;
    sub_37C2C8(rect, ObjectType, v163);
    v165 = *(v1 + v119);
    sub_ABA490();
    [v165 setFrame:?];

    sub_37C39C(ObjectType, v163, rect, v64, v194, v133);
    v123 = v172;
    v131 = v164;
  }
}