void sub_1F650(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v6 = type metadata accessor for AppStoreSettingsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  aBlock = *(v2 + *(__chkstk_darwin(v6) + 44));
  sub_3CB4(&unk_52800, qword_3D1A0);
  sub_3A458();
  if (v94)
  {
    v88 = v94;
    v80 = v7;
    v81 = v8;
    v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = (v2 + *(v6 + 40));
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    *&aBlock = *v9;
    *(&aBlock + 1) = v10;
    v86 = v12;
    v90 = v12;
    v91 = v13;
    v14 = sub_3CB4(&qword_52778, &qword_3D170);
    sub_3A4E8();
    v15 = v95;
    if (v95)
    {
      v83 = v13;
      v84 = v10;
      v16 = v94;
      v17 = *(v6 + 48);

      v87 = v17;
      v18 = sub_39E78();
      v19 = sub_3A878();

      v20 = os_log_type_enabled(v18, v19);
      v85 = v14;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = v11;
        v23 = a1;
        v24 = a2;
        v25 = swift_slowAlloc();
        *&aBlock = v25;
        *v21 = 136315138;
        *(v21 + 4) = sub_36FC(v16, v15, &aBlock);
        _os_log_impl(&dword_0, v18, v19, "Creating AuthKit surrogate context with ID: %s", v21, 0xCu);
        sub_44BC(v25);
        a2 = v24;
        a1 = v23;
        v11 = v22;
      }

      v26 = objc_allocWithZone(AKAppleIDAuthenticationUISurrogateContext);
      v27 = sub_3A6D8();

      v28 = [v26 initWithSurrogateID:v27];

      if (v28)
      {
        v29 = v28;
        v30 = sub_39E78();
        v31 = sub_3A878();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v11;
          v34 = a1;
          v35 = a2;
          v36 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v36 = v28;
          v37 = v29;
          _os_log_impl(&dword_0, v30, v31, "Created AuthKit surrogate context: %@", v32, 0xCu);
          sub_1A614(v36, &qword_524F8, &qword_3C930);
          a2 = v35;
          a1 = v34;
          v11 = v33;
        }

        v79 = v29;
        v38 = v88;
        [v29 setPresentingViewController:v88];
        v39 = v38;
        v40 = sub_39E78();
        v41 = sub_3A878();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          *(v42 + 4) = v39;
          *v43 = v38;
          v44 = v39;
          _os_log_impl(&dword_0, v40, v41, "Set view controller on context: %@", v42, 0xCu);
          sub_1A614(v43, &qword_524F8, &qword_3C930);
        }

        v45 = sub_39E78();
        v46 = sub_3A878();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_0, v45, v46, "Creating AuthKit controller", v47, 2u);
        }

        v48 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
        v49 = sub_39E78();
        if (v48)
        {
          v50 = sub_3A878();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_0, v49, v50, "Created AuthKit controller", v51, 2u);
          }

          v88 = v39;

          v52 = sub_39E78();
          v53 = sub_3A878();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_0, v52, v53, "About to authenticate using surrogate context", v54, 2u);
          }

          v55 = v82;
          sub_296EC(v3, v82, type metadata accessor for AppStoreSettingsView);
          v56 = (*(v80 + 80) + 16) & ~*(v80 + 80);
          v57 = (v81 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
          v58 = swift_allocObject();
          sub_28818(v55, v58 + v56);
          v59 = (v58 + v57);
          *v59 = a1;
          v59[1] = a2;
          v92 = sub_2942C;
          v93 = v58;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v90 = sub_27DB0;
          v91 = &unk_4E2D8;
          v60 = _Block_copy(&aBlock);
          v61 = v79;

          [v48 authenticateWithContext:v61 completion:v60];
          _Block_release(v60);

          v62 = sub_39E78();
          v63 = sub_3A878();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_0, v62, v63, "Started authentication using surrogate context", v64, 2u);
          }

          *&aBlock = v11;
          *(&aBlock + 1) = v84;
          v90 = v86;
          v91 = v83;
          v94 = 0;
          v95 = 0;

          sub_3A4F8();

          return;
        }

        v76 = sub_3A898();
        if (os_log_type_enabled(v49, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_0, v49, v76, "Could not create AuthKit controller", v77, 2u);
        }

        *&aBlock = v11;
        *(&aBlock + 1) = v84;
        v90 = v86;
        v91 = v83;
        v94 = 0;
        v95 = 0;
        v78 = sub_3A4F8();
        (a1)(v78);

        v75 = v79;
LABEL_30:

        return;
      }

      v72 = sub_39E78();
      v73 = sub_3A898();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "Could not create AuthKit context", v74, 2u);
      }

      *&aBlock = v11;
      *(&aBlock + 1) = v84;
      v90 = v86;
      v91 = v83;
      v94 = 0;
      v95 = 0;
      v71 = sub_3A4F8();
    }

    else
    {
      v68 = sub_39E78();
      v69 = sub_3A888();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_0, v68, v69, "Can’t present AuthKit UI because no context ID is available", v70, 2u);
      }
    }

    (a1)(v71);
    v75 = v88;
    goto LABEL_30;
  }

  v65 = sub_39E78();
  v66 = sub_3A888();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v65, v66, "Can’t present AuthKit UI because no view controller is available", v67, 2u);
  }

  a1();
}

uint64_t sub_20050(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreSettingsView(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  v4 = __chkstk_darwin(v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  sub_3A7F8();
  v7 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_296EC(a1, v6, type metadata accessor for AppStoreSettingsView);
  v8 = sub_39E78();
  v9 = sub_3A878();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28 = v7;
    v11 = v10;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v11 = 136315138;
    v12 = &v6[*(v2 + 40)];
    v13 = *(v12 + 1);
    *&v34 = *v12;
    *(&v34 + 1) = v13;
    v35 = *(v12 + 1);
    sub_3CB4(&qword_52778, &qword_3D170);
    sub_3A4E8();
    if (v33)
    {
      v14 = v32;
    }

    else
    {
      v14 = 0x296C6C756E28;
    }

    if (v33)
    {
      v15 = v33;
    }

    else
    {
      v15 = 0xE600000000000000;
    }

    sub_29754(v6, type metadata accessor for AppStoreSettingsView);
    v16 = sub_36FC(v14, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Got new AuthKit context ID: %s", v11, 0xCu);
    sub_44BC(v27);
  }

  else
  {

    sub_29754(v6, type metadata accessor for AppStoreSettingsView);
  }

  v17 = a1 + *(v2 + 40);
  v18 = *(v17 + 8);
  *&v34 = *v17;
  *(&v34 + 1) = v18;
  v35 = *(v17 + 16);
  sub_3CB4(&qword_52778, &qword_3D170);
  sub_3A4E8();
  if (v33)
  {

    v34 = *(a1 + *(v2 + 44));
    sub_3CB4(&unk_52800, qword_3D1A0);
    sub_3A458();
    if (v32)
    {

      v19 = sub_39E78();
      v20 = sub_3A878();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "Finishing AuthKit surrogate auth from onChange", v21, 2u);
      }

      v22 = v30;
      sub_296EC(a1, v30, type metadata accessor for AppStoreSettingsView);
      v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v24 = swift_allocObject();
      sub_28818(v22, v24 + v23);
      sub_1F650(sub_29160, v24);
    }
  }
}

void sub_204B0(uint64_t a1, const char *a2)
{
  type metadata accessor for AppStoreSettingsView(0);
  oslog = sub_39E78();
  v3 = sub_3A878();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, oslog, v3, a2, v4, 2u);
  }
}

uint64_t sub_2056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_39F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 104))(v7, enum case for ScenePhase.active(_:), v4);
  v8 = sub_39F58();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = (a3 + *(type metadata accessor for AppStoreSettingsView(0) + 32));
    v10 = *v9;
    v11 = *(v9 + 1);
    v13[16] = v10;
    v14 = v11;
    v13[15] = 0;
    sub_3CB4(&unk_527F0, &qword_3D198);
    sub_3A468();
  }
}

double sub_20728@<D0>(uint64_t a3@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  sub_3A078();
  type metadata accessor for AppStoreSettingsView(0);
  sub_39F88();
  sub_39EA8();
  sub_3CB4(&qword_527B8, &qword_3D180);
  sub_3CB4(&qword_527E0, &qword_3D190);
  sub_28D80(&qword_527B0, &qword_527B8, &qword_3D180, sub_28E30);
  sub_28D80(&qword_527D8, &qword_527E0, &qword_3D190, sub_28E84);
  sub_3A1A8();

  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_20944@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for AppStoreSettingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_296EC(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_28818(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  *a2 = sub_28F48;
  a2[1] = v8;
  return result;
}

uint64_t sub_20AB8(uint64_t a1)
{
  type metadata accessor for AppStoreSettingsView(0);
  sub_3CB4(&unk_527F0, &qword_3D198);
  return sub_3A468();
}

uint64_t sub_20B28()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isAppInstallationAllowed];
    v3 = [v1 isAutomaticAppDownloadsAllowed];
    v4 = v3;
    v5 = v2 & v3;
    type metadata accessor for AppStoreSettingsView(0);
    v6 = sub_39E78();
    v7 = sub_3A8A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109632;
      *(v8 + 4) = v5;
      *(v8 + 8) = 1024;
      *(v8 + 10) = v2;
      *(v8 + 14) = 1024;
      *(v8 + 16) = v4 & 1;
      _os_log_impl(&dword_0, v6, v7, "Auto Downloads Allowed: %{BOOL}d - isAppInstallationAllowed: %{BOOL}d, isAutomaticAppDownloadsAllowed: %{BOOL}d", v8, 0x14u);
    }
  }

  else
  {
    type metadata accessor for AppStoreSettingsView(0);
    v1 = sub_39E78();
    v9 = sub_3A888();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v1, v9, "Failed to get MCProfileConnection for auto downloads", v10, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t sub_20CD0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v7 = sub_3CB4(&qword_52A70, &qword_3D6C8);
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v61 = &v57[-v8];
  v62 = sub_3CB4(&qword_52A78, &qword_3D6D0);
  __chkstk_darwin(v62);
  v64 = &v57[-v9];
  v65 = sub_3CB4(&qword_52A80, &qword_3D6D8);
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = &v57[-v10];
  v11 = sub_3CB4(&qword_52A88, &qword_3D6E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v63 = &v57[-v13];
  v14 = sub_3CB4(&qword_52A90, &qword_3D6E8);
  v15 = __chkstk_darwin(v14 - 8);
  v72 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v57[-v17];
  v19 = sub_3CB4(&qword_52A98, &qword_3D6F0);
  v20 = __chkstk_darwin(v19 - 8);
  v70 = &v57[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v71 = &v57[-v23];
  v24 = __chkstk_darwin(v22);
  v74 = &v57[-v25];
  __chkstk_darwin(v24);
  v77 = &v57[-v26];
  sub_3A7F8();
  v69 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v75 = v18;
  v76 = v7;
  if (a1)
  {
    v58 = a3;
    v66 = v12;
    v67 = v11;
    type metadata accessor for AppStoreSettingsView(0);
    type metadata accessor for AppStoreSettingsViewModel(0);
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
    v27 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v80 == 1)
    {
      v79 = 0;
      v28 = sub_3A518();
    }

    else
    {
      v30 = sub_39F98();
      swift_getKeyPath();
      sub_3A008();
    }

    __chkstk_darwin(v28);
    *&v57[-16] = a2;
    sub_3CB4(&qword_52AA0, &qword_3D720);
    sub_6254(&qword_52AA8, &qword_52AA0, &qword_3D720, &protocol conformance descriptor for VStack<A>);
    v31 = v77;
    sub_3A4D8();
    v7 = v76;
    v68 = *(v78 + 56);
    v68(v31, 0, 1, v76);
    v18 = v75;
    v12 = v66;
    v11 = v67;
    if (v58)
    {
      goto LABEL_10;
    }

LABEL_7:
    v29 = 1;
    goto LABEL_19;
  }

  v68 = *(v78 + 56);
  v68(v77, 1, 1, v7);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v32 = [objc_opt_self() isAutomaticUpdateAuthorizationEnabled];
  if (v32)
  {
    __chkstk_darwin(v32);
    *&v57[-16] = a2;
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_3CB4(&qword_52AC8, &qword_3D758);
    sub_6254(&unk_52AD0, &qword_52AC8, &qword_3D758, &protocol conformance descriptor for VStack<A>);
    sub_8A10();
    v33 = v59;
    sub_39FC8();
    v34 = v60;
    v35 = v65;
    (*(v60 + 16))(v64, v33, v65);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52AB8, &qword_52A80, &qword_3D6D8, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_6254(&qword_52AC0, &qword_52A70, &qword_3D6C8, &protocol conformance descriptor for Toggle<A>);
    v36 = v63;
    sub_3A1A8();
    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v66 = v12;
    v67 = v11;
    type metadata accessor for AppStoreSettingsView(0);
    v37 = a2;
    type metadata accessor for AppStoreSettingsViewModel(0);
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
    v38 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v80 == 1)
    {
      v79 = 0;
      v39 = sub_3A518();
    }

    else
    {
      v40 = sub_39F98();
      swift_getKeyPath();
      sub_3A008();
    }

    __chkstk_darwin(v39);
    *&v57[-16] = v37;
    sub_3CB4(&qword_52AA0, &qword_3D720);
    a2 = v37;
    sub_6254(&qword_52AA8, &qword_52AA0, &qword_3D720, &protocol conformance descriptor for VStack<A>);
    v41 = v61;
    sub_3A4D8();
    v42 = v78;
    (*(v78 + 16))(v64, v41, v7);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52AB8, &qword_52A80, &qword_3D6D8, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_6254(&qword_52AC0, &qword_52A70, &qword_3D6C8, &protocol conformance descriptor for Toggle<A>);
    v36 = v63;
    sub_3A1A8();
    (*(v42 + 8))(v41, v7);
    v18 = v75;
    v12 = v66;
    v11 = v67;
  }

  sub_8750(v36, v18, &qword_52A88, &qword_3D6E0);
  v29 = 0;
LABEL_19:
  v43 = 1;
  (*(v12 + 56))(v18, v29, 1, v11);
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v44 = a2;
  v45 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((v80 & 1) == 0)
  {
    v46 = sub_39F98();
    swift_getKeyPath();
    sub_3A008();

    __chkstk_darwin(v47);
    *&v57[-16] = v44;
    sub_3CB4(&qword_52AA0, &qword_3D720);
    sub_6254(&qword_52AA8, &qword_52AA0, &qword_3D720, &protocol conformance descriptor for VStack<A>);
    sub_3A4D8();
    v43 = 0;
  }

  v48 = v74;
  v68(v74, v43, 1, v76);
  v49 = v77;
  v50 = v71;
  sub_1A5AC(v77, v71, &qword_52A98, &qword_3D6F0);
  v51 = v75;
  v52 = v72;
  sub_1A5AC(v75, v72, &qword_52A90, &qword_3D6E8);
  v53 = v70;
  sub_1A5AC(v48, v70, &qword_52A98, &qword_3D6F0);
  v54 = v73;
  sub_1A5AC(v50, v73, &qword_52A98, &qword_3D6F0);
  v55 = sub_3CB4(&qword_52AB0, &qword_3D728);
  sub_1A5AC(v52, v54 + *(v55 + 48), &qword_52A90, &qword_3D6E8);
  sub_1A5AC(v53, v54 + *(v55 + 64), &qword_52A98, &qword_3D6F0);
  sub_1A614(v48, &qword_52A98, &qword_3D6F0);
  sub_1A614(v51, &qword_52A90, &qword_3D6E8);
  sub_1A614(v49, &qword_52A98, &qword_3D6F0);
  sub_1A614(v53, &qword_52A98, &qword_3D6F0);
  sub_1A614(v52, &qword_52A90, &qword_3D6E8);
  sub_1A614(v50, &qword_52A98, &qword_3D6F0);
}

uint64_t sub_21B68@<X0>(uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_3A188();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_3CB4(&qword_52B00, &qword_3D7A0);
  __chkstk_darwin(v3);
  sub_3CB4(&qword_52B08, qword_3D7A8);
  sub_6254(&unk_52B10, &qword_52B08, qword_3D7A8, &protocol conformance descriptor for TupleView<A>);
  sub_39F48();
}

uint64_t sub_21D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = sub_39B68();
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v68 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_34418(v5);
  v71 = sub_3A708();
  v72 = v6;
  v66 = sub_6144();
  v7 = sub_3A2E8();
  v9 = v8;
  v11 = v10;
  v67 = v12;
  v13 = (a1 + *(type metadata accessor for AppStoreSettingsView(0) + 24));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = type metadata accessor for AppStoreSettingsViewModel(0);
  v18 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v62 = v15;
  v63 = v14;
  v61 = v16;
  v59 = v18;
  v60 = v17;
  v19 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v71 == 1)
  {
    v20 = sub_3A3F8();
  }

  else
  {
    v21 = [objc_opt_self() labelColor];
    v20 = sub_3A3E8();
  }

  v71 = v20;
  v22 = sub_3A2C8();
  v24 = v23;
  v26 = v25;
  sub_AC60(v7, v9, v11 & 1);

  sub_3A298();
  v27 = sub_3A2D8();
  v64 = v28;
  v65 = v27;
  v58 = v29;
  v67 = v30;

  sub_AC60(v22, v24, v26 & 1);

  sub_34740(v5);
  v71 = sub_3A708();
  v72 = v31;
  v32 = sub_3A2E8();
  v34 = v33;
  v36 = v35;
  v37 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v71 == 1)
  {
    v38 = sub_3A3F8();
  }

  else
  {
    v38 = sub_3A418();
  }

  v71 = v38;
  v39 = sub_3A2C8();
  v41 = v40;
  v43 = v42;
  sub_AC60(v32, v34, v36 & 1);

  sub_3A2A8();
  v44 = sub_3A2D8();
  v46 = v45;
  v48 = v47;
  v50 = v49;

  sub_AC60(v39, v41, v43 & 1);

  v51 = v58 & 1;
  v69 = v58 & 1;
  LOBYTE(v71) = v58 & 1;
  v70 = v48 & 1;
  v53 = v64;
  v52 = v65;
  v54 = v57;
  *v57 = v65;
  v54[1] = v53;
  *(v54 + 16) = v51;
  v54[3] = v67;
  v54[4] = v44;
  v54[5] = v46;
  *(v54 + 48) = v48 & 1;
  v54[7] = v50;
  sub_3CA4(v52, v53, v51);

  sub_3CA4(v44, v46, v48 & 1);

  sub_AC60(v44, v46, v48 & 1);

  sub_AC60(v52, v53, v69);
}

uint64_t sub_221F0@<X0>(uint64_t a5@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_3A188();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_3CB4(&qword_52AE0, &qword_3D788);
  __chkstk_darwin(v6);
  sub_3CB4(&qword_52AE8, &qword_3D790);
  sub_6254(&qword_52AF0, &qword_52AE8, &qword_3D790, &protocol conformance descriptor for TupleView<A>);
  sub_39F48();
}

uint64_t sub_223A8@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  v69 = a4;
  v74 = a5;
  v7 = sub_39B68();
  __chkstk_darwin(v7 - 8);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v75 = sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
  v64[0] = v9;
  v113 = sub_3A708();
  v114 = v11;
  v68 = sub_6144();
  v12 = sub_3A2E8();
  v14 = v13;
  v16 = v15;
  v73 = v17;
  v18 = (a1 + *(type metadata accessor for AppStoreSettingsView(0) + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = type metadata accessor for AppStoreSettingsViewModel(0);
  v23 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v66 = v20;
  v67 = v19;
  v65 = v21;
  v64[1] = v23;
  v64[2] = v22;
  v24 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v113 == 1)
  {
    sub_3A3F8();
    v25 = sub_3A408();
  }

  else
  {
    v26 = [objc_opt_self() labelColor];
    v25 = sub_3A3E8();
  }

  v113 = v25;
  v27 = sub_3A2C8();
  v29 = v28;
  v31 = v30;
  sub_AC60(v12, v14, v16 & 1);

  sub_3A298();
  v32 = sub_3A2D8();
  v71 = v33;
  v72 = v32;
  v35 = v34;
  v73 = v36;

  sub_AC60(v27, v29, v31 & 1);

  sub_3A568();
  v37 = sub_3A038();
  v70 = v35 & 1;
  v135 = v35 & 1;
  v69(v37);
  v113 = sub_3A708();
  v114 = v38;
  v39 = sub_3A2E8();
  v41 = v40;
  v43 = v42;
  v44 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v113 == 1)
  {
    sub_3A3F8();
    v45 = sub_3A408();
  }

  else
  {
    v45 = sub_3A418();
  }

  v113 = v45;
  v46 = sub_3A2C8();
  v48 = v47;
  v50 = v49;
  sub_AC60(v39, v41, v43 & 1);

  sub_3A2A8();
  v51 = sub_3A2D8();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_AC60(v46, v48, v50 & 1);

  sub_3A568();
  sub_3A038();
  v58 = v55 & 1;
  v126 = v55 & 1;
  v60 = v71;
  v59 = v72;
  *&v84 = v72;
  *(&v84 + 1) = v71;
  v61 = v70;
  LOBYTE(v85) = v70;
  *(&v85 + 1) = *v134;
  DWORD1(v85) = *&v134[3];
  v62 = v73;
  *(&v85 + 1) = v73;
  v90 = v131;
  v91 = v132;
  v92 = v133;
  v86 = v127;
  v87 = v128;
  v88 = v129;
  v89 = v130;
  v76[6] = v131;
  v76[7] = v132;
  v76[2] = v127;
  v76[3] = v128;
  v76[4] = v129;
  v76[5] = v130;
  v76[0] = v84;
  v76[1] = v85;
  *&v93 = v51;
  *(&v93 + 1) = v53;
  LOBYTE(v94) = v58;
  *(&v94 + 1) = *v125;
  DWORD1(v94) = *&v125[3];
  *(&v94 + 1) = v57;
  v99 = v81;
  v100 = v82;
  v101 = v83;
  v95 = v77;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v76[12] = v78;
  v76[13] = v79;
  v76[10] = v94;
  v76[11] = v77;
  v76[14] = v80;
  v76[15] = v81;
  v76[16] = v82;
  v76[17] = v83;
  v76[8] = v133;
  v76[9] = v93;
  memcpy(v74, v76, 0x120uLL);
  v102[0] = v51;
  v102[1] = v53;
  v103 = v58;
  *v104 = *v125;
  *&v104[3] = *&v125[3];
  v105 = v57;
  v110 = v81;
  v111 = v82;
  v112 = v83;
  v106 = v77;
  v107 = v78;
  v108 = v79;
  v109 = v80;
  sub_1A5AC(&v84, &v113, &qword_52AF8, &qword_3D798);
  sub_1A5AC(&v93, &v113, &qword_52AF8, &qword_3D798);
  sub_1A614(v102, &qword_52AF8, &qword_3D798);
  v113 = v59;
  v114 = v60;
  v115 = v61;
  *v116 = *v134;
  *&v116[3] = *&v134[3];
  v117 = v62;
  v122 = v131;
  v123 = v132;
  v124 = v133;
  v118 = v127;
  v119 = v128;
  v120 = v129;
  v121 = v130;
  sub_1A614(&v113, &qword_52AF8, &qword_3D798);
}

uint64_t sub_22AD4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_39B68();
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v6 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (LOBYTE(v17[0]) == 1)
  {
    sub_353E0(v5);
    v17[0] = sub_3A708();
    v17[1] = v7;
    sub_6144();
    v8 = sub_3A2E8();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v16 = v12 & 1;
  }

  else
  {

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v14 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
  a2[2] = v16;
  a2[3] = v14;
  return result;
}

uint64_t sub_22CE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_3CB4(&qword_52A20, &qword_3D668);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = __chkstk_darwin(v3);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v33 - v6;
  v7 = sub_3CB4(&qword_528F8, &qword_3D220);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = __chkstk_darwin(v7);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  sub_3A7F8();
  v35 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v12 = sub_39F98();
  swift_getKeyPath();
  sub_3A008();

  __chkstk_darwin(v45);
  *(&v33 - 2) = a1;
  v43 = v11;
  v13 = sub_3A4D8();
  v34 = &v33;
  __chkstk_darwin(v13);
  *(&v33 - 2) = a1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_3A078();
  v16 = v15;
  v17 = sub_39F88();
  v18 = sub_39EA8();

  v45 = v14;
  v46 = v16;
  v47 = v18;
  v48 = v17;
  sub_3CB4(&qword_52A28, &qword_3D698);
  sub_3CB4(&qword_527B8, &qword_3D180);
  sub_6254(&qword_52A30, &qword_52A28, &qword_3D698, &protocol conformance descriptor for HStack<A>);
  sub_28D80(&qword_527B0, &qword_527B8, &qword_3D180, sub_28E30);
  v19 = v44;
  sub_39FC8();
  v20 = v36;
  v21 = v37;
  v22 = *(v37 + 16);
  v23 = v38;
  v22(v36, v43, v38);
  v24 = v41;
  v34 = *(v41 + 16);
  v25 = v39;
  v26 = v19;
  v27 = v42;
  (v34)(v39, v26, v42);
  v28 = v40;
  v22(v40, v20, v23);
  v29 = sub_3CB4(&qword_52A38, &qword_3D6A0);
  (v34)(&v28[*(v29 + 48)], v25, v27);
  v30 = *(v24 + 8);
  v30(v44, v27);
  v31 = *(v21 + 8);
  v31(v43, v23);
  v30(v25, v27);
  v31(v20, v23);
}

uint64_t sub_23290@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_39B68();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v23 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_35708(v5);
  v24 = sub_3A708();
  v25 = v6;
  sub_6144();
  v7 = sub_3A2E8();
  v9 = v8;
  v11 = v10;
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v12 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v24 == 1)
  {
    v13 = [objc_opt_self() labelColor];
    v14 = sub_3A3E8();
  }

  else
  {
    sub_3A3F8();
    v14 = sub_3A408();
  }

  v24 = v14;
  v15 = sub_3A2C8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_AC60(v7, v9, v11 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

double sub_2353C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_3A168();
  v18 = 1;
  sub_236B8(a1, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_1A5AC(&v19, &v10, &qword_52A40, &qword_3D6A8);
  sub_1A614(v25, &qword_52A40, &qword_3D6A8);

  *&v17[87] = v24;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  *&v17[7] = v19;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  result = *v17;
  v8 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v8;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 112) = *&v17[95];
  *(a2 + 49) = v5;
  return result;
}

uint64_t sub_236B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = sub_39B68();
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v47 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_33114(v5);
  *&v51 = sub_3A708();
  *(&v51 + 1) = v6;
  sub_6144();
  v7 = sub_3A2E8();
  v9 = v8;
  v11 = v10;
  v12 = *(type metadata accessor for AppStoreSettingsView(0) + 24);
  v41 = a1;
  v13 = a1 + v12;
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  v16 = type metadata accessor for AppStoreSettingsViewModel(0);
  v17 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v44 = v14;
  v43 = v15;
  v42 = v16;
  v40 = v17;
  v18 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v51 == 1)
  {
    v19 = [objc_opt_self() labelColor];
    v20 = sub_3A3E8();
  }

  else
  {
    v20 = sub_3A3F8();
  }

  *&v51 = v20;
  v21 = sub_3A2C8();
  v45 = v22;
  v46 = v21;
  HIDWORD(v38) = v23;
  v48 = v24;
  sub_AC60(v7, v9, v11 & 1);

  sub_23B04(&v51);
  v25 = v51;
  v27 = v52;
  v26 = v53;
  v28 = v54;
  v29 = v55;
  v30 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v51 == 1)
  {
    v31 = sub_3A418();
  }

  else
  {
    v31 = sub_3A3F8();
  }

  v44 = v31;
  v32 = BYTE4(v38) & 1;
  LOBYTE(v51) = BYTE4(v38) & 1;
  v50 = 1;
  v49 = v29;
  v33 = v29;
  v35 = v45;
  v34 = v46;
  v36 = v39;
  *v39 = v46;
  v36[1] = v35;
  *(v36 + 16) = v32;
  v36[3] = v48;
  v36[4] = 0;
  *(v36 + 40) = 1;
  *(v36 + 3) = v25;
  v36[8] = v27;
  v36[9] = v26;
  *(v36 + 80) = v28;
  *(v36 + 81) = v33;
  v36[11] = v31;
  sub_3CA4(v34, v35, v32);

  sub_2A680(v25, *(&v25 + 1), v27, v26, v28, v33, sub_2A434, sub_2A63C);

  sub_2A680(v25, *(&v25 + 1), v27, v26, v28, v33, sub_2A518, sub_2A698);

  sub_AC60(v34, v35, v32);
}

uint64_t sub_23B04@<X0>(_OWORD *a2@<X8>)
{
  v39 = a2;
  v2 = sub_39B68();
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_39D48();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v38 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v8 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v9 = (*(v40 + 88))(v7, v41);
  if (v9 == enum case for CellularSettings.Prompt.always(_:))
  {
    sub_32708(v4);
    *&v45 = sub_3A708();
    *(&v45 + 1) = v10;
    sub_6144();
    v11 = sub_3A2E8();
    v13 = v12;
    *&v42 = v11;
    *(&v42 + 1) = v12;
    v15 = v14 & 1;
    *&v43 = v14 & 1;
    *(&v43 + 1) = v16;
    LOBYTE(v44) = 0;
    sub_3CA4(v11, v12, v14 & 1);

    sub_3A1A8();
    v42 = v45;
    v43 = v46;
    LOBYTE(v44) = v47;
    HIBYTE(v44) = 1;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
  }

  else
  {
    if (v9 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      v17 = sub_39F88();
      sub_129A0();
      v19 = v18;
      v21 = v20;

      sub_32368(v19, v21, v4);

      *&v45 = sub_3A708();
      *(&v45 + 1) = v22;
      sub_6144();
      v23 = sub_3A2E8();
      v11 = v23;
      v13 = v24;
      v15 = v25 & 1;
      *&v42 = v23;
      *(&v42 + 1) = v24;
      *&v43 = v25 & 1;
      *(&v43 + 1) = v26;
      LOBYTE(v44) = 1;
    }

    else
    {
      if (v9 != enum case for CellularSettings.Prompt.never(_:))
      {
        v42 = 0u;
        v43 = 0u;
        LOBYTE(v44) = 1;
        sub_3A1A8();
        v42 = v45;
        v43 = v46;
        LOBYTE(v44) = v47;
        HIBYTE(v44) = 1;
        sub_3CB4(&qword_528F0, &qword_3C568);
        sub_3CB4(&qword_521F8, &qword_3C570);
        sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
        sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
        sub_3A1A8();
        v36 = v46;
        v37 = v45;
        v33 = v47;
        v34 = v48;
        (*(v40 + 8))(v7, v41);

        v32 = v36;
        v31 = v37;
        goto LABEL_11;
      }

      sub_32348(v4);
      *&v45 = sub_3A708();
      *(&v45 + 1) = v27;
      sub_6144();
      v23 = sub_3A2E8();
      v11 = v23;
      v13 = v24;
      *&v42 = v23;
      *(&v42 + 1) = v24;
      v15 = v28 & 1;
      *&v43 = v28 & 1;
      *(&v43 + 1) = v29;
      LOBYTE(v44) = 0;
    }

    sub_3CA4(v23, v24, v15);

    sub_3A1A8();
    v42 = v45;
    v43 = v46;
    v44 = v47;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
  }

  sub_3A1A8();
  sub_AC60(v11, v13, v15);

  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
LABEL_11:
  v35 = v39;
  *v39 = v31;
  v35[1] = v32;
  *(v35 + 32) = v33;
  *(v35 + 33) = v34;
  return result;
}

uint64_t sub_241BC@<X0>(_OWORD *a2@<X8>)
{
  v39 = a2;
  v2 = sub_39B68();
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_39D48();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v38 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v8 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v9 = (*(v40 + 88))(v7, v41);
  if (v9 == enum case for CellularSettings.Prompt.always(_:))
  {
    sub_32724(v4);
    *&v45 = sub_3A708();
    *(&v45 + 1) = v10;
    sub_6144();
    v11 = sub_3A2E8();
    v13 = v11;
    v14 = v12;
    *&v42 = v11;
    *(&v42 + 1) = v12;
    v16 = v15 & 1;
    *&v43 = v15 & 1;
    *(&v43 + 1) = v17;
    LOBYTE(v44) = 0;
LABEL_7:
    sub_3CA4(v11, v12, v16);

    sub_3A1A8();
    v42 = v45;
    v43 = v46;
    v44 = v47;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    goto LABEL_8;
  }

  if (v9 == enum case for CellularSettings.Prompt.overLimit(_:))
  {
    v18 = sub_39F88();
    sub_129A0();
    v20 = v19;
    v22 = v21;

    sub_32A4C(v20, v22, v4);

    *&v45 = sub_3A708();
    *(&v45 + 1) = v23;
    sub_6144();
    v11 = sub_3A2E8();
    v13 = v11;
    v14 = v12;
    v16 = v24 & 1;
    *&v42 = v11;
    *(&v42 + 1) = v12;
    *&v43 = v24 & 1;
    *(&v43 + 1) = v25;
    LOBYTE(v44) = 1;
    goto LABEL_7;
  }

  if (v9 != enum case for CellularSettings.Prompt.never(_:))
  {
    v42 = 0u;
    v43 = 0u;
    LOBYTE(v44) = 1;
    sub_3A1A8();
    v42 = v45;
    v43 = v46;
    LOBYTE(v44) = v47;
    HIBYTE(v44) = 1;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_3CB4(&qword_521F8, &qword_3C570);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    sub_3A1A8();
    v36 = v46;
    v37 = v45;
    v29 = v47;
    v30 = v48;
    (*(v40 + 8))(v7, v41);

    v28 = v36;
    v27 = v37;
    goto LABEL_9;
  }

  sub_32DE8(v4);
  *&v45 = sub_3A708();
  *(&v45 + 1) = v32;
  sub_6144();
  v13 = sub_3A2E8();
  v14 = v33;
  *&v42 = v13;
  *(&v42 + 1) = v33;
  v16 = v34 & 1;
  *&v43 = v34 & 1;
  *(&v43 + 1) = v35;
  LOBYTE(v44) = 0;
  sub_3CA4(v13, v33, v34 & 1);

  sub_3A1A8();
  v42 = v45;
  v43 = v46;
  LOBYTE(v44) = v47;
  HIBYTE(v44) = 1;
  sub_3CB4(&qword_528F0, &qword_3C568);
  sub_3CB4(&qword_521F8, &qword_3C570);
  sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
  sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
LABEL_8:
  sub_3A1A8();
  sub_AC60(v13, v14, v16);

  v27 = v45;
  v28 = v46;
  v29 = v47;
  v30 = v48;
LABEL_9:
  v31 = v39;
  *v39 = v27;
  v31[1] = v28;
  *(v31 + 32) = v29;
  *(v31 + 33) = v30;
  return result;
}

uint64_t sub_24874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_3A7F8();
  v16[2] = sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v16[1] = v16;
  __chkstk_darwin(isCurrentExecutor);
  v16[0] = v15;
  v15[2] = a1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v4 = sub_3A078();
  v6 = v5;
  type metadata accessor for AppStoreSettingsView(0);
  v7 = sub_39F88();
  v8 = sub_39EA8();

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v7;
  sub_3CB4(&qword_529B0, &qword_3D510);
  sub_3CB4(&qword_527E0, &qword_3D190);
  sub_29F70();
  sub_28D80(&qword_527D8, &qword_527E0, &qword_3D190, sub_28E84);
  v9 = v17;
  sub_39FC8();
  v10 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  LOBYTE(v7) = v18;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;

  result = sub_3CB4(&qword_528A8, &qword_3D1F8);
  v14 = (v9 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_2ABB0;
  v14[2] = v12;
  return result;
}

double sub_24BC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppStoreSettingsView(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_3A168();
  v25 = 1;
  sub_24E20(a1, &v18);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v26 = v18;
  v27 = v19;
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v32[5] = v23;
  v32[0] = v18;
  v32[1] = v19;
  sub_1A5AC(&v26, &v17, &qword_529D0, &qword_3D520);
  sub_1A614(v32, &qword_529D0, &qword_3D520);
  *&v24[39] = v28;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v7 = v25;
  sub_296EC(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v8 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v9 = swift_allocObject();
  sub_28818(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  v10 = *&v24[32];
  *(a2 + 65) = *&v24[48];
  v11 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v11;
  result = *v24;
  v13 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v13;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  v14 = *&v24[95];
  *(a2 + 49) = v10;
  *(a2 + 112) = v14;
  *(a2 + 120) = sub_2A27C;
  *(a2 + 128) = v9;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  return result;
}

uint64_t sub_24E20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = sub_39B68();
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v47 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_32020(v5);
  *&v51 = sub_3A708();
  *(&v51 + 1) = v6;
  sub_6144();
  v7 = sub_3A2E8();
  v9 = v8;
  v11 = v10;
  v12 = *(type metadata accessor for AppStoreSettingsView(0) + 24);
  v43 = a1;
  v13 = a1 + v12;
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  v16 = type metadata accessor for AppStoreSettingsViewModel(0);
  v17 = sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v46 = v14;
  v45 = v15;
  v44 = v16;
  v40 = v17;
  v18 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v51 == 1)
  {
    v19 = sub_3A3F8();
  }

  else
  {
    v20 = [objc_opt_self() labelColor];
    v19 = sub_3A3E8();
  }

  *&v51 = v19;
  v21 = sub_3A2C8();
  v41 = v22;
  v42 = v21;
  HIDWORD(v38) = v23;
  v48 = v24;
  sub_AC60(v7, v9, v11 & 1);

  sub_2521C(&v51);
  v25 = v51;
  v27 = v52;
  v26 = v53;
  v28 = v54;
  v29 = v55;
  v30 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v51 == 1)
  {
    v31 = sub_3A3F8();
  }

  else
  {
    v31 = sub_3A418();
  }

  v46 = v31;
  v32 = BYTE4(v38) & 1;
  LOBYTE(v51) = BYTE4(v38) & 1;
  v50 = 1;
  v49 = v29;
  v33 = v29;
  v35 = v41;
  v34 = v42;
  v36 = v39;
  *v39 = v42;
  v36[1] = v35;
  *(v36 + 16) = v32;
  v36[3] = v48;
  v36[4] = 0;
  *(v36 + 40) = 1;
  *(v36 + 3) = v25;
  v36[8] = v27;
  v36[9] = v26;
  *(v36 + 40) = v28;
  *(v36 + 82) = v33;
  v36[11] = v31;
  sub_3CA4(v34, v35, v32);

  sub_2A38C(v25, *(&v25 + 1), v27, v26, v28, v33);

  sub_2A470(v25, *(&v25 + 1), v27, v26, v28, v33);

  sub_AC60(v34, v35, v32);
}

id sub_2521C@<X0>(_OWORD *a2@<X8>)
{
  v37[0] = a2;
  v2 = sub_39B68();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v37 - v6;
  sub_3A7F8();
  v37[1] = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v8 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v42)
  {
    sub_319CC(v7);
    *&v42 = sub_3A708();
    *(&v42 + 1) = v9;
    sub_6144();
    *&v38 = sub_3A2E8();
    *(&v38 + 1) = v10;
    *&v39 = v11 & 1;
    *(&v39 + 1) = v12;
    v40 = 0;
    v41 = 1;
LABEL_19:
    sub_3CB4(&qword_529D8, &qword_3D578);
    sub_2A55C();
    sub_3A1A8();

    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v37[0];
    *v37[0] = v42;
    *(v36 + 16) = v33;
    *(v36 + 32) = v34;
    *(v36 + 34) = v35;
    return result;
  }

  v13 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (!v42)
  {
    sub_31054(v7);
    *&v42 = sub_3A708();
    *(&v42 + 1) = v17;
    sub_6144();
    v18 = sub_3A2E8();
    v20 = v18;
    v21 = v19;
    *&v38 = v18;
    *(&v38 + 1) = v19;
    v23 = v22 & 1;
    *&v39 = v22 & 1;
    *(&v39 + 1) = v24;
    LOBYTE(v40) = 0;
LABEL_14:
    sub_3CA4(v18, v19, v23);

    sub_3A1A8();
    v38 = v42;
    v39 = v43;
    v40 = v44;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_3A1A8();
    sub_AC60(v20, v21, v23);

    goto LABEL_15;
  }

  if (v42 != 1)
  {
    sub_319CC(v7);
    *&v42 = sub_3A708();
    *(&v42 + 1) = v25;
    sub_6144();
    *&v38 = sub_3A2E8();
    *(&v38 + 1) = v27;
    *&v39 = v26 & 1;
    *(&v39 + 1) = v28;
    v40 = 256;
    sub_3CB4(&qword_528F0, &qword_3C568);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_3A1A8();
LABEL_15:
    if (HIBYTE(v44))
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v38 = v42;
    v39 = v43;
    v40 = v32 | v44;
    v41 = 0;
    goto LABEL_19;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_3137C(v5);
    }

    else
    {
      sub_316A4(v5);
    }

    *&v42 = sub_3A708();
    *(&v42 + 1) = v29;
    sub_6144();
    v18 = sub_3A2E8();
    v20 = v18;
    v21 = v19;
    v23 = v30 & 1;
    *&v38 = v18;
    *(&v38 + 1) = v19;
    *&v39 = v30 & 1;
    *(&v39 + 1) = v31;
    LOBYTE(v40) = 1;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_25760(uint64_t a1)
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v4 = sub_39F88();
  v5 = sub_3A818();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v4;
  v7 = sub_3A7E8();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_DD34(0, 0, v3, &unk_3D528, v8);
}

uint64_t sub_2596C@<X0>(_OWORD *a2@<X8>)
{
  v32 = a2;
  v2 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_39B68();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = __chkstk_darwin(v5);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  sub_3A7F8();
  v31 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v10 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v38 == 1)
  {
    sub_33A8C(v9);
    *&v38 = sub_3A708();
    *(&v38 + 1) = v11;
    sub_6144();
    v33 = sub_3A2E8();
    v34 = v12;
    v35 = v13 & 1;
    v36 = v14;
    v37 = 0;
    sub_3A1A8();
LABEL_8:

    v19 = v38;
    v21 = v39;
    v20 = v40;
    goto LABEL_9;
  }

  v15 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v17 = v29;
  v16 = v30;
  if ((*(v29 + 48))(v4, 1, v30) != 1)
  {
    v22 = v28;
    (*(v17 + 32))(v28, v4, v16);
    (*(v17 + 16))(v9, v22, v16);
    *&v38 = sub_3A708();
    *(&v38 + 1) = v23;
    sub_6144();
    v33 = sub_3A2E8();
    v34 = v24;
    v35 = v25 & 1;
    v36 = v26;
    v37 = 1;
    sub_3A1A8();
    (*(v17 + 8))(v22, v16);
    goto LABEL_8;
  }

  sub_1A614(v4, &qword_524A8, &qword_3C7E0);

  v19 = 0uLL;
  v20 = -1;
  v21 = 0uLL;
LABEL_9:
  v27 = v32;
  *v32 = v19;
  v27[1] = v21;
  *(v27 + 32) = v20;
  return result;
}

void sub_25DBC(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v1 = sub_39F88();
  sub_13924();
}

uint64_t sub_25F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v4 = sub_39F98();
  swift_getKeyPath();
  sub_3A008();

  sub_3A4D8();
}

uint64_t sub_260BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a1;
  v30 = a2;
  v2 = sub_3CB4(&qword_52980, &qword_3D300);
  v3 = __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = &v27 - v5;
  v6 = type metadata accessor for AppStoreSettingsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_3CB4(&qword_52950, &qword_3D2A8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_3A7F8();
  v29 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_296EC(v27, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_28818(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_3A498();
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v18 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v32 == 1)
  {
    sub_3A498();
    v19 = v28;
    (*(v10 + 32))(v28, v13, v9);
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v19 = v28;
  }

  (*(v10 + 56))(v19, v20, 1, v9);
  v21 = *(v10 + 16);
  v21(v13, v15, v9);
  v22 = v31;
  sub_1A5AC(v19, v31, &qword_52980, &qword_3D300);
  v23 = v30;
  v21(v30, v13, v9);
  v24 = sub_3CB4(&qword_52988, &unk_3D350);
  sub_1A5AC(v22, &v23[*(v24 + 48)], &qword_52980, &qword_3D300);
  sub_1A614(v19, &qword_52980, &qword_3D300);
  v25 = *(v10 + 8);
  v25(v15, v9);
  sub_1A614(v22, &qword_52980, &qword_3D300);
  v25(v13, v9);
}

uint64_t sub_265E0(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A468();
}

id sub_266DC()
{
  v0 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_39BF8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = [objc_opt_self() ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];

  if (!v8)
  {
    v20 = 0u;
    v21 = 0u;
LABEL_11:
    sub_1A614(&v20, &qword_52990, qword_3C2D0);
    goto LABEL_12;
  }

  if ([v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagPersonalization])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v9 = v18;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_3AA38(51);
  v22._object = 0x800000000003E870;
  v22._countAndFlagsBits = 0xD000000000000031;
  sub_3A748(v22);
  if (v9)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_3A748(v10);

  sub_39BD8();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_1A614(v2, &qword_52710, &qword_3D120);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;

    sub_39BB8(v14);
    v16 = v15;
    sub_29D78(&_swiftEmptyArrayStorage);
    isa = sub_3A638().super.isa;

    [v13 openSensitiveURL:v16 withOptions:isa];

    (*(v4 + 8))(v6, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B04@<X0>(void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_39B68();
  __chkstk_darwin(v5 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  sub_3A708();
  sub_6144();
  v7 = sub_3A2E8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v13;
  return result;
}

uint64_t sub_26C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for AppStoreSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_39B68();
  __chkstk_darwin(v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3CB4(&qword_52950, &qword_3D2A8);
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  sub_3A7F8();
  v39 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_376C0(v8);
  v41 = sub_3A708();
  v42 = v12;
  sub_296EC(a1, v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_28818(v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_6144();
  sub_3A4B8();
  v35 = sub_3A178();
  v34 = v15;
  v16 = (a1 + *(v3 + 28));
  v17 = *v16;
  v18 = *(v16 + 1);
  v44 = v17;
  v45 = v18;
  v36 = sub_3CB4(&unk_527F0, &qword_3D198);
  v19 = sub_3A478();
  v31 = v30;
  v30[1] = v43;
  __chkstk_darwin(v19);
  v33 = a1;
  sub_3CB4(&qword_52958, &qword_3D2B0);
  v32 = v3;
  sub_6254(&qword_52960, &qword_52950, &qword_3D2A8, &protocol conformance descriptor for Button<A>);
  sub_6254(&qword_52968, &qword_52958, &qword_3D2B0, &protocol conformance descriptor for TupleView<A>);
  v20 = v38;
  v21 = v40;
  sub_3A378();

  (*(v37 + 8))(v11, v20);
  v22 = v33 + *(v32 + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v41) = v23;
  v42 = v24;
  sub_3A458();
  v25 = v44;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;

  result = sub_3CB4(&qword_52940, &qword_3D2A0);
  v29 = (v21 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_29A38;
  v29[2] = v27;
  return result;
}

uint64_t sub_27118(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A468();
}

uint64_t sub_271F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v41 = a2;
  v2 = type metadata accessor for AppStoreSettingsView(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_3CB4(&qword_52970, &qword_3D2E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_39B68();
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB4(&qword_52950, &qword_3D2A8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v34 - v15;
  v16 = __chkstk_darwin(v14);
  v38 = &v34 - v17;
  __chkstk_darwin(v16);
  v35 = &v34 - v18;
  sub_3A7F8();
  v37 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_376C0(v9);
  v42 = sub_3A708();
  v43 = v19;
  sub_39F18();
  v20 = sub_39F38();
  v21 = *(*(v20 - 8) + 56);
  v21(v6, 0, 1, v20);
  sub_296EC(v36, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v23 = swift_allocObject();
  sub_28818(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_6144();
  v24 = v35;
  sub_3A4A8();
  sub_379EC(v9);
  v42 = sub_3A708();
  v43 = v25;
  sub_39F28();
  v21(v6, 0, 1, v20);
  v26 = v38;
  sub_3A4A8();
  v27 = *(v11 + 16);
  v28 = v39;
  v27(v39, v24, v10);
  v29 = v40;
  v27(v40, v26, v10);
  v30 = v41;
  v27(v41, v28, v10);
  v31 = sub_3CB4(&qword_52978, &qword_3D2F0);
  v27(&v30[*(v31 + 48)], v29, v10);
  v32 = *(v11 + 8);
  v32(v26, v10);
  v32(v24, v10);
  v32(v29, v10);
  v32(v28, v10);
}

uint64_t sub_276E4(uint64_t a1)
{
  v2 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v6 = sub_39F88();
  v7 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag;
  swift_beginAccess();
  sub_1A5AC(v6 + v7, &v17, &qword_52538, &qword_3CC00);
  if (v18)
  {
    sub_1A748(&v17, v19);
    sub_1AF88(v19);

    sub_44BC(v19);
  }

  else
  {
    sub_1A614(&v17, &qword_52538, &qword_3CC00);
    v8 = sub_3A818();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = v6;
    v10 = sub_3A7E8();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_DD34(0, 0, v4, &unk_3D2F8, v11);
  }

  v12 = (a1 + *(v5 + 32));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v19[0]) = v13;
  v19[1] = v14;
  LOBYTE(v17) = 1;
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A468();
}

uint64_t sub_279BC()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_27A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!a2)
  {
    if (a1)
    {
      sub_3CB4(&qword_52870, &qword_3D1C0);
      isa = sub_3A638().super.isa;
      v11 = [(objc_class *)isa ak_redactedCopy];

      sub_3A648();
      type metadata accessor for AppStoreSettingsView(0);

      v5 = sub_39E78();
      v12 = sub_3A878();

      if (!os_log_type_enabled(v5, v12))
      {

        goto LABEL_12;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v15 = sub_3A658();
      v17 = v16;

      v18 = sub_36FC(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_0, v5, v12, "Got auth results: %s", v13, 0xCu);
      sub_44BC(v14);
    }

    else
    {
      type metadata accessor for AppStoreSettingsView(0);
      v5 = sub_39E78();
      v20 = sub_3A888();
      if (!os_log_type_enabled(v5, v20))
      {
        goto LABEL_12;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v5, v20, "Attempted surrogate auth but got neither results nor error", v21, 2u);
    }

    goto LABEL_12;
  }

  type metadata accessor for AppStoreSettingsView(0);
  swift_errorRetain();
  v5 = sub_39E78();
  v6 = sub_3A888();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "Failed to authenticate using surrogate context: %@", v7, 0xCu);
    sub_1A614(v8, &qword_524F8, &qword_3C930);

LABEL_12:

    return a4(v19);
  }

  return a4(v19);
}

uint64_t sub_27DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_3CB4(&qword_52870, &qword_3D1C0);
    v4 = sub_3A648();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_27E84(uint64_t a1)
{
  v2 = sub_39F68();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_3A098();
}

uint64_t type metadata accessor for AppStoreSettingsView(uint64_t a1)
{
  result = qword_52670;
  if (!qword_52670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreSettingsRoute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreSettingsRoute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_28130(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3CB4(&qword_52610, "\n;");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_39E98();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_282D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_3CB4(&qword_52610, "\n;");
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_39E98();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[12];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_28464(uint64_t a1)
{
  sub_285F8(319, &qword_52680, &type metadata accessor for ScenePhase);
  if (v1 <= 0x3F)
  {
    sub_285F8(319, &qword_52688, &type metadata accessor for WithCurrentHostingControllerAction);
    if (v2 <= 0x3F)
    {
      sub_2864C(319);
      if (v3 <= 0x3F)
      {
        sub_286E0();
        if (v4 <= 0x3F)
        {
          sub_28730(319, &unk_526A8, &qword_51DC0, &qword_3DA50, &type metadata accessor for Binding);
          if (v5 <= 0x3F)
          {
            sub_28730(319, &unk_526B8, &unk_52600, &unk_3CFD0, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_39E98();
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

void sub_285F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_39F78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2864C(uint64_t a1)
{
  if (!qword_52690)
  {
    type metadata accessor for AppStoreSettingsViewModel(255);
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
    v1 = sub_39FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_52690);
    }
  }
}

void sub_286E0()
{
  if (!qword_526A0)
  {
    v0 = sub_3A488();
    if (!v1)
    {
      atomic_store(v0, &qword_526A0);
    }
  }
}

void sub_28730(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_4348(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_28798()
{
  result = qword_52708;
  if (!qword_52708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52708);
  }

  return result;
}

uint64_t sub_28818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_288AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppStoreSettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_28920()
{
  result = qword_52780;
  if (!qword_52780)
  {
    sub_4348(&qword_52730, &qword_3D140);
    sub_4348(&qword_52728, &qword_3D138);
    sub_4348(&qword_52720, &qword_3D130);
    sub_4348(&qword_52718, &qword_3D128);
    sub_6254(&qword_52768, &qword_52718, &qword_3D128, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_6144();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52780);
  }

  return result;
}

unint64_t sub_28AB0()
{
  result = qword_52788;
  if (!qword_52788)
  {
    sub_4348(&qword_51DC0, &qword_3DA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52788);
  }

  return result;
}

uint64_t sub_28B54(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2056C(a1, a2, v6);
}

uint64_t sub_28BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_28C1C@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for AppStoreSettingsView(0);

  return sub_20728(a2);
}

unint64_t sub_28C9C()
{
  result = qword_527A8;
  if (!qword_527A8)
  {
    sub_4348(&qword_52798, &qword_3D178);
    sub_28D80(&qword_527B0, &qword_527B8, &qword_3D180, sub_28E30);
    sub_28D80(&qword_527D8, &qword_527E0, &qword_3D190, sub_28E84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527A8);
  }

  return result;
}

uint64_t sub_28D80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    a4();
    sub_6254(&qword_527C8, &qword_527D0, &qword_3D188, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_28E30()
{
  result = qword_527C0;
  if (!qword_527C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527C0);
  }

  return result;
}

unint64_t sub_28E84()
{
  result = qword_527E8;
  if (!qword_527E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527E8);
  }

  return result;
}

uint64_t sub_28ED8@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(type metadata accessor for AppStoreSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20944(v4, a1);
}

uint64_t sub_28F60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_3A128();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3CB4(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1A5AC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_3A898();
    v19 = sub_3A288();
    sub_39E68();

    sub_3A118();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_291D0()
{
  v1 = type metadata accessor for AppStoreSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_39F68();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_3CB4(&qword_525F8, &qword_3CFC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_3A268();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_8380(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));

  v9 = v1[12];
  v10 = sub_39E98();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2942C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreSettingsView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_27A4C(a1, a2, v2 + v6, v7);
}

uint64_t sub_294DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29510()
{
  result = qword_528B8;
  if (!qword_528B8)
  {
    sub_4348(&qword_528A8, &qword_3D1F8);
    sub_6254(&qword_528C0, &qword_528C8, &qword_3D208, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_6254(&unk_528D0, &qword_520A0, &unk_3D210, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_528B8);
  }

  return result;
}

unint64_t sub_295F4()
{
  result = qword_528E0;
  if (!qword_528E0)
  {
    sub_4348(&qword_528B0, &qword_3D200);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_528E0);
  }

  return result;
}

uint64_t sub_296EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_297CC()
{
  result = qword_52948;
  if (!qword_52948)
  {
    sub_4348(&qword_52940, &qword_3D2A0);
    sub_4348(&qword_52950, &qword_3D2A8);
    sub_4348(&qword_52958, &qword_3D2B0);
    sub_6254(&qword_52960, &qword_52950, &qword_3D2A8, &protocol conformance descriptor for Button<A>);
    sub_6254(&qword_52968, &qword_52958, &qword_3D2B0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_6254(&unk_528D0, &qword_520A0, &unk_3D210, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52948);
  }

  return result;
}

uint64_t sub_29974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3A0F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_299A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3A0F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_41F0;

  return sub_16D04(a1, v4, v5, v6);
}

unint64_t sub_29B1C(uint64_t a1, uint64_t a2)
{
  sub_3AB48();
  sub_3A738();
  v4 = sub_3AB58();

  return sub_29BD8(a1, a2, v4);
}

unint64_t sub_29B94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3A9F8(*(v2 + 40));

  return sub_29C90(a1, v4);
}

unint64_t sub_29BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_3AB28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29C90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2AAC0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_3AA08();
      sub_2AB1C(v8);
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

unint64_t sub_29D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB4(&qword_52998, &qword_3D360);
    v3 = sub_3AAF8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A5AC(v4, &v13, &unk_529A0, &qword_3D368);
      v5 = v13;
      v6 = v14;
      result = sub_29B1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29EA8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_29EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_29F70()
{
  result = qword_529B8;
  if (!qword_529B8)
  {
    sub_4348(&qword_529B0, &qword_3D510);
    sub_6254(&qword_529C0, &qword_529C8, &qword_3D518, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_529B8);
  }

  return result;
}

uint64_t sub_2A038()
{
  v1 = type metadata accessor for AppStoreSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_39F68();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_3CB4(&qword_525F8, &qword_3CFC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_3A268();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_8380(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));

  v9 = v1[12];
  v10 = sub_39E98();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2A298()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_13C58(a1, v4, v5, v6);
}

uint64_t sub_2A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_3CA4(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A3E0(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_2A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_3CA4(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A434(a1, a2, a3, a4);
  }
}

uint64_t sub_2A434(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_3CA4(a1, a2, a3 & 1);
}

uint64_t sub_2A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_AC60(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A4C4(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_2A4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_AC60(a1, a2, a3 & 1);
  }

  else
  {

    return sub_2A518(a1, a2, a3, a4);
  }
}

uint64_t sub_2A518(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_AC60(a1, a2, a3 & 1);
}

unint64_t sub_2A55C()
{
  result = qword_529E0;
  if (!qword_529E0)
  {
    sub_4348(&qword_529D8, &qword_3D578);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_529E0);
  }

  return result;
}

uint64_t sub_2A63C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_3CA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5 & 1;
  if (a6)
  {
    return a8(a1, a2, a3, a4, v8);
  }

  else
  {
    return a7(a1, a2, a3, a4, v8);
  }
}

uint64_t sub_2A698(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_AC60(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2A894()
{
  sub_4348(&qword_52750, &qword_3D160);
  sub_4348(&qword_52748, &qword_3D158);
  sub_4348(&qword_52740, &qword_3D150);
  sub_4348(&qword_52798, &qword_3D178);
  sub_4348(&qword_52738, &qword_3D148);
  sub_39F68();
  sub_4348(&qword_52730, &qword_3D140);
  sub_4348(&qword_51DC0, &qword_3DA50);
  sub_28920();
  sub_28AB0();
  swift_getOpaqueTypeConformance2();
  sub_28BD4(&qword_52790, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  sub_4468();
  sub_28C9C();
  swift_getOpaqueTypeConformance2();
  sub_C484();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2ABB4()
{
  v1 = v0;
  v17 = 0u;
  v18 = 0u;
  if ([v0 hasValidGetter])
  {
    if ([v0 performGetter])
    {
      sub_3A938();
      swift_unknownObjectRelease();
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
    }

    else
    {
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  sub_2C0B8(&v17, &v14);
  v2 = *(&v15 + 1);
  sub_1A614(&v14, &qword_52990, qword_3C2D0);
  if (!v2 || [v1 cellType] == &dword_8 + 1)
  {
    goto LABEL_25;
  }

  if ([v1 cellType] != &dword_0 + 2 && objc_msgSend(v1, "cellType") != &dword_4)
  {
    v3 = [v1 titleDictionary];
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v3 = [v1 shortTitleDictionary];
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_11:
  v4 = v3;
  v5 = sub_3A648();

LABEL_14:
  sub_2C0B8(&v17, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        v14 = v11;
        v15 = v12;
        v16 = v13;
        if (v5)
        {
          if (*(v5 + 16) && (v6 = sub_29B94(&v14), (v7 & 1) != 0))
          {
            sub_4508(*(v5 + 56) + 32 * v6, &v11);
            sub_2AB1C(&v14);
            sub_1A614(&v17, &qword_52990, qword_3C2D0);
          }

          else
          {

            sub_2AB1C(&v14);
            sub_1A614(&v17, &qword_52990, qword_3C2D0);
            v11 = 0u;
            v12 = 0u;
          }

          v17 = v11;
          v18 = v12;
        }

        else
        {
          sub_2AB1C(&v14);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {

    sub_1A614(v10, &qword_52990, qword_3C2D0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_1A614(&v11, &qword_52B48, &unk_3D850);
LABEL_25:
  sub_2C0B8(&v17, &v14);
  v8 = *(&v15 + 1);
  sub_1A614(&v14, &qword_52990, qword_3C2D0);
  if (!v8)
  {
    if ([v1 propertyForKey:PSValueKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
    }

    else
    {
      sub_1A614(&v17, &qword_52990, qword_3C2D0);
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
  }

  v14 = v17;
  v15 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
    sub_1A614(&v14, &qword_52990, qword_3C2D0);
  }

  return 0;
}

uint64_t sub_2AF9C()
{
  if ([v0 propertyForKey:PSCellClassKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_3CB4(&qword_52B38, &qword_3D848);
    if (swift_dynamicCast())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = NSStringFromClass(ObjCClassFromMetadata);
      v3 = sub_3A6F8();
      v5 = v4;

      v6 = [v0 identifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_3A6F8();
        v10 = v9;

        if (v8 == 0x4143494649544F4ELL && v10 == 0xED0000534E4F4954)
        {

LABEL_15:

          v11 = 1;
          return v11 & 1;
        }

        v12 = sub_3AB28();

        if (v12)
        {
          goto LABEL_15;
        }
      }

      if (v3 != 0xD00000000000002BLL || 0x800000000003E8B0 != v5)
      {
        v11 = sub_3AB28();

        return v11 & 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1A614(v16, &qword_52990, qword_3C2D0);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2B1A8()
{
  if ([v0 propertyForKey:PSCellClassKey])
  {
    sub_3A938();
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
    sub_3CB4(&qword_52B38, &qword_3D848);
    if (swift_dynamicCast())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = NSStringFromClass(ObjCClassFromMetadata);
      v3 = sub_3A6F8();

      return v3;
    }
  }

  else
  {
    sub_1A614(v7, &qword_52990, qword_3C2D0);
  }

  return 0;
}

void sub_2B2B8()
{
  v1 = [v0 identifier];
  if (!v1)
  {
LABEL_7:
    v8 = sub_2B1A8();
    if (!v9)
    {
      return;
    }

    if (v8 != 0xD00000000000002BLL || v9 != 0x800000000003E8B0)
    {
      v18 = sub_3AB28();

      if ((v18 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_3A6F8();
  v5 = v4;

  if (v3 != 0x4143494649544F4ELL || v5 != 0xED0000534E4F4954)
  {
    v7 = sub_3AB28();

    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:

LABEL_11:
  v10 = sub_2B4D4();
  if (v10)
  {
    v19 = v10;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11 && (v12 = v11, [v11 refreshCellContentsWithSpecifier:v0], (v13 = objc_msgSend(v12, "detailTextLabel")) != 0) && (v14 = v13, v15 = objc_msgSend(v13, "text"), v14, v15))
    {
      sub_3A6F8();

      v16 = sub_3A6D8();

      [v0 setProperty:v16 forKey:PSValueKey];

      v17 = v16;
    }

    else
    {
      v17 = v19;
    }
  }
}

id sub_2B4D4()
{
  result = [objc_opt_self() cellClassForSpecifier:v0];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_1AF40(0, &qword_52B28, UITableViewCell_ptr);
    result = swift_dynamicCastMetatype();
    if (result)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1AF40(0, &qword_52B30, PSTableCell_ptr);
      if ([(objc_class *)ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()])
      {
        result = swift_dynamicCastMetatype();
        if (result)
        {
          v3 = swift_getObjCClassFromMetadata();
          v4 = [v3 cellStyle];
          v5 = [v3 reuseIdentifierForSpecifier:v0];
          if (v5)
          {
            v6 = v5;
            sub_3A6F8();

            v7 = v0;
            v8 = sub_3A6D8();
          }

          else
          {
            v9 = v0;
            v8 = 0;
          }

          v10 = [objc_allocWithZone(v3) initWithStyle:v4 reuseIdentifier:v8 specifier:v0];

          return v10;
        }
      }

      else
      {
        return [objc_allocWithZone(ObjCClassFromMetadata) initWithStyle:1 reuseIdentifier:0];
      }
    }
  }

  return result;
}

uint64_t sub_2B668()
{
  if ([v0 cellType] == &dword_4 + 2 && objc_msgSend(v0, "hasValidGetter") && objc_msgSend(v0, "hasValidSetter"))
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_3A7F8();

    v2 = sub_3A7E8();
    v3 = swift_allocObject();
    v3[2] = v2;
    v3[3] = &protocol witness table for MainActor;
    v3[4] = v1;

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = sub_3A7E8();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = &protocol witness table for MainActor;
    v6[4] = v4;

    sub_3A508();
  }

  else
  {
    sub_3A518();
  }

  return v8;
}

void sub_2B818(unsigned __int8 *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_12:
    sub_1A614(&v15, &qword_52990, qword_3C2D0);
LABEL_13:
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = sub_3A6D8();
      v10 = [v8 propertyForKey:v9];

      if (v10)
      {
        sub_3A938();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      v15 = v13;
      v16 = v14;
      if (*(&v14 + 1))
      {
        if (swift_dynamicCast())
        {

          goto LABEL_23;
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    sub_1A614(&v15, &qword_52990, qword_3C2D0);
    goto LABEL_22;
  }

  v4 = Strong;
  v5 = [Strong performGetter];

  if (v5)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_12;
  }

  sub_1AF40(0, &qword_52B40, NSObject_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = v13;
    sub_3A6E8();
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v11 = [v12 BOOLValue];

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
LABEL_24:
  *a2 = v11;
}

uint64_t sub_2BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_3AB48();
  sub_3A738();
  v6 = sub_3AB58();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_3AB28() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_2BCE8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(NSNumber) initWithBool:v4];
    [v6 performSetterWithValue:v7];
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_51C10 != -1)
  {
    swift_once();
  }

  v9 = qword_53C28;
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  [v8 postNotificationName:v9 object:v10];
}

NSString sub_2BE80()
{
  result = sub_3A6D8();
  qword_53C28 = result;
  return result;
}

void PSSpecifier.objectWillChange.getter()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_51C10 != -1)
  {
    swift_once();
  }

  sub_3A8F8();
}

unint64_t sub_2BF6C()
{
  result = qword_52B20;
  if (!qword_52B20)
  {
    sub_3A8E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B20);
  }

  return result;
}

uint64_t sub_2BFD0@<X0>(uint64_t *a2@<X8>)
{
  sub_1AF40(0, &qword_52D40, PSSpecifier_ptr);
  result = sub_3AA48();
  *a2 = result;
  return result;
}

uint64_t sub_2C024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2C06C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2C0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52990, qword_3C2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_2C12C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2C140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2C188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = sub_3CB4(&qword_52B78, &qword_3D908);
  v25 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v24 - v7;
  v27 = sub_3CB4(&qword_52B98, &qword_3D920);
  __chkstk_darwin(v27);
  v10 = &v24 - v9;
  v29 = sub_3CB4(&qword_52B68, &qword_3D900);
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v24 - v12;
  v14 = sub_3CB4(&qword_52B50, &qword_3D8F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  sub_3A7F8();
  v28 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_2AF9C();
  v26 = &v24;
  v18 = __chkstk_darwin(v17);
  *(&v24 - 4) = a1;
  *(&v24 - 3) = a2;
  *(&v24 - 2) = a3;
  v19 = __chkstk_darwin(v18);
  *(&v24 - 4) = a1;
  *(&v24 - 3) = a2;
  *(&v24 - 2) = a3;
  if (v19)
  {
    sub_3CB4(&qword_52BA0, &qword_3D928);
    sub_3CB4(&qword_52BA8, &unk_3D930);
    sub_6254(&qword_52BB0, &qword_52BA0, &qword_3D928, &protocol conformance descriptor for VStack<A>);
    sub_2DBA4();
    sub_3A438();
    v20 = v29;
    (*(v11 + 16))(v10, v13, v29);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52B60, &qword_52B68, &qword_3D900, &protocol conformance descriptor for Label<A, B>);
    sub_2D9DC();
    sub_3A1A8();
    (*(v11 + 8))(v13, v20);
  }

  else
  {
    sub_3CB4(&qword_52B88, &unk_3D910);
    sub_3CB4(&qword_52020, &qword_3C280);
    sub_6254(&qword_52B80, &qword_52B88, &unk_3D910, &protocol conformance descriptor for Label<A, B>);
    sub_7EE4();
    sub_39FB8();
    v21 = v25;
    v22 = v30;
    (*(v25 + 16))(v10, v8, v30);
    swift_storeEnumTagMultiPayload();
    sub_6254(&qword_52B60, &qword_52B68, &qword_3D900, &protocol conformance descriptor for Label<A, B>);
    sub_2D9DC();
    sub_3A1A8();
    (*(v21 + 8))(v8, v22);
  }

  sub_2DB04(v16, v31);
}

uint64_t sub_2C764@<X0>(uint64_t a4@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_3A188();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_3CB4(&qword_52C08, &qword_3D958);
  __chkstk_darwin(v5);
  sub_3CB4(&qword_52C10, &qword_3D960);
  sub_6254(&qword_52C18, &qword_52C10, &qword_3D960, &protocol conformance descriptor for TupleView<A>);
  sub_39F48();
}

uint64_t sub_2C924@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_3A6F8();
    v8 = v7;

    v41 = v6;
    v42 = v8;
    sub_6144();
    v9 = sub_3A2E8();
    v34 = v10;
    v35 = v9;
    v33 = v11;
    v13 = v12 & 1;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v13 = 0;
    v33 = 0;
  }

  v32 = sub_3A298();
  KeyPath = swift_getKeyPath();
  v15 = sub_2ABB4();
  if (v16)
  {
    v41 = v15;
    v42 = v16;
    sub_6144();
    v17 = sub_3A2E8();
    v19 = v18;
    v21 = v20;
    v23 = v22 & 1;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v21 = 0;
  }

  v24 = sub_3A418();
  v25 = swift_getKeyPath();
  v26 = sub_3A2A8();
  v27 = swift_getKeyPath();
  *&v37 = v17;
  *(&v37 + 1) = v19;
  *&v38 = v23;
  *(&v38 + 1) = v21;
  *&v39 = v25;
  *(&v39 + 1) = v24;
  *&v40 = v27;
  *(&v40 + 1) = v26;
  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v13;
  *(a2 + 24) = v33;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v32;
  v28 = v37;
  v29 = v38;
  v30 = v40;
  *(a2 + 80) = v39;
  *(a2 + 96) = v30;
  *(a2 + 48) = v28;
  *(a2 + 64) = v29;
  v41 = v17;
  v42 = v19;
  v43 = v23;
  v44 = v21;
  v45 = v25;
  v46 = v24;
  v47 = v27;
  v48 = v26;
  sub_2DEA0(v35, v34, v13, v33);

  sub_1A5AC(&v37, v36, &qword_52C20, &qword_3D9C8);
  sub_1A614(&v41, &qword_52C20, &qword_3D9C8);
  sub_2DEE4(v35, v34, v13, v33);
}

uint64_t sub_2CBAC@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v28 = a2;
  v32 = a3;
  v4 = sub_3CB4(&qword_52BE8, &unk_3DB20);
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v30 = sub_3CB4(&qword_52BF0, &qword_3D950);
  __chkstk_darwin(v30);
  v8 = &v27 - v7;
  v9 = sub_3CB4(&qword_52BF8, &unk_3DB30);
  __chkstk_darwin(v9);
  v11 = (&v27 - v10);
  v31 = sub_3CB4(&qword_52BD8, &unk_3D940);
  __chkstk_darwin(v31);
  v13 = &v27 - v12;
  if ([a1 propertyForKey:PSIconImageKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1A614(&v36, &qword_52990, qword_3C2D0);
LABEL_8:
    if ([a1 propertyForKey:PSIconUTTypeIdentifierKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36 = v34;
    v37 = v35;
    if (*(&v35 + 1))
    {
      if (swift_dynamicCast())
      {
        v17 = objc_allocWithZone(ISIcon);
        v18 = sub_3A6D8();

        [v17 initWithType:v18];

        v19 = v28;
        sub_39CE8();
        v20 = v29;
        (*(v29 + 16))(v11, v6, v4);
        swift_storeEnumTagMultiPayload();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);
        sub_3A1A8();
        sub_1A5AC(v13, v8, &qword_52BD8, &unk_3D940);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        v15 = v32;
        sub_3A1A8();
        sub_1A614(v13, &qword_52BD8, &unk_3D940);
        (*(v20 + 8))(v6, v4);
        v16 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1A614(&v36, &qword_52990, qword_3C2D0);
    }

    if ([a1 propertyForKey:PSLazyIconAppID])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v15 = v32;
    v36 = v34;
    v37 = v35;
    if (*(&v35 + 1))
    {
      if (swift_dynamicCast())
      {
        v21 = objc_allocWithZone(ISIcon);
        v22 = sub_3A6D8();

        [v21 initWithBundleIdentifier:v22];

        v23 = v28;
        sub_39CE8();
        v24 = v29;
        (*(v29 + 16))(v8, v6, v4);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);
        sub_3A1A8();
        (*(v24 + 8))(v6, v4);
        v16 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1A614(&v36, &qword_52990, qword_3C2D0);
    }

    v16 = 1;
    goto LABEL_23;
  }

  sub_2DD98();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = v33;
  *v11 = sub_3A428();
  swift_storeEnumTagMultiPayload();
  sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);

  sub_3A1A8();
  sub_1A5AC(v13, v8, &qword_52BD8, &unk_3D940);
  swift_storeEnumTagMultiPayload();
  sub_2DCE0();
  v15 = v32;
  sub_3A1A8();

  sub_1A614(v13, &qword_52BD8, &unk_3D940);
  v16 = 0;
LABEL_23:
  v25 = sub_3CB4(&qword_52BC8, &unk_3DB10);
  return (*(*(v25 - 8) + 56))(v15, v16, 1, v25);
}

uint64_t sub_2D2F8@<X0>(uint64_t *a1@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2ABB4();
  if (v2)
  {
    sub_6144();
    v3 = sub_3A2E8();
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v11 = v7 & 1;
  }

  else
  {

    v3 = 0;
    v5 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t sub_2D3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v4);
  sub_3CB4(&qword_52020, &qword_3C280);
  sub_3CB4(&qword_52BA8, &unk_3D930);
  sub_7EE4();
  sub_2DBA4();
  sub_3A438();
}

uint64_t sub_2D574@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_3A6F8();

    sub_6144();
    v6 = sub_3A2E8();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14 = v10 & 1;
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_2D694@<X0>(void *a1@<X1>, void *a2@<X2>, void *a4@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2CBAC(a1, a2, a4);
}

uint64_t sub_2D75C()
{
  v1 = sub_39CD8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_39CB8();
  __chkstk_darwin(v2);
  v5 = *(v0 + 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v5;
  sub_39CC8();
  sub_39CA8();

  sub_3CB4(&qword_52B50, &qword_3D8F8);
  sub_2D924();
  sub_2DA94();
  return sub_39FC8();
}

unint64_t sub_2D924()
{
  result = qword_52B58;
  if (!qword_52B58)
  {
    sub_4348(&qword_52B50, &qword_3D8F8);
    sub_6254(&qword_52B60, &qword_52B68, &qword_3D900, &protocol conformance descriptor for Label<A, B>);
    sub_2D9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B58);
  }

  return result;
}

unint64_t sub_2D9DC()
{
  result = qword_52B70;
  if (!qword_52B70)
  {
    sub_4348(&qword_52B78, &qword_3D908);
    sub_6254(&qword_52B80, &qword_52B88, &unk_3D910, &protocol conformance descriptor for Label<A, B>);
    sub_7EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B70);
  }

  return result;
}

unint64_t sub_2DA94()
{
  result = qword_52B90;
  if (!qword_52B90)
  {
    sub_39CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52B90);
  }

  return result;
}

uint64_t sub_2DB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52B50, &qword_3D8F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2DBA4()
{
  result = qword_52BB8;
  if (!qword_52BB8)
  {
    sub_4348(&qword_52BA8, &unk_3D930);
    sub_2DC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52BB8);
  }

  return result;
}

unint64_t sub_2DC28()
{
  result = qword_52BC0;
  if (!qword_52BC0)
  {
    sub_4348(&qword_52BC8, &unk_3DB10);
    sub_2DCE0();
    sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52BC0);
  }

  return result;
}

unint64_t sub_2DCE0()
{
  result = qword_52BD0;
  if (!qword_52BD0)
  {
    sub_4348(&qword_52BD8, &unk_3D940);
    sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52BD0);
  }

  return result;
}

unint64_t sub_2DD98()
{
  result = qword_52C00;
  if (!qword_52C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52C00);
  }

  return result;
}

uint64_t sub_2DDF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3A0D8();
  *a1 = result;
  return result;
}

uint64_t sub_2DE48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3A0A8();
  *a1 = result;
  return result;
}

uint64_t sub_2DEA0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_3CA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2DEE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_AC60(result, a2, a3 & 1);
  }

  return result;
}

void sub_2E0FC()
{
  v1 = v0;
  v2 = type metadata accessor for AppStoreSettingsView(0);
  __chkstk_darwin(v2 - 8);
  v4 = (v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_39B68();
  __chkstk_darwin(v5 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppStoreSettingsController();
  v45.receiver = v1;
  v45.super_class = v8;
  objc_msgSendSuper2(&v45, "viewDidLoad");
  sub_33DC4(v7);
  sub_3A708();
  v9 = sub_3A6D8();

  [v1 setTitle:v9];

  v44[0] = 0;
  v44[1] = 0;
  sub_3CB4(&qword_51DC0, &qword_3DA50);
  sub_3A518();
  sub_1B238(v44[2], v44[3], v44[4], v44[5], v4);
  v10 = objc_allocWithZone(sub_3CB4(&qword_52C60, &qword_3DA58));
  v11 = sub_3A198();
  [v1 addChildViewController:v11];
  [v11 willMoveToParentViewController:v1];
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v11 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  [v13 addSubview:v14];

  [v11 didMoveToParentViewController:v1];
  v16 = [v11 view];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_3CB4(&qword_52318, &unk_3DA60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_3DA20;
  v18 = [v11 view];

  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = [v18 topAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v17 + 32) = v23;
  v24 = [v11 view];

  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = [v24 bottomAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v28 = [v26 bottomAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v17 + 40) = v29;
  v30 = [v11 view];

  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = [v30 leadingAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v17 + 48) = v35;
  v36 = [v11 view];

  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = [v36 trailingAnchor];

  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 trailingAnchor];

    v42 = [v37 constraintEqualToAnchor:v41];
    *(v17 + 56) = v42;
    sub_2E794();
    isa = sub_3A768().super.isa;

    [v40 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_2E73C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppStoreSettingsController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_2E794()
{
  result = qword_52C68;
  if (!qword_52C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52C68);
  }

  return result;
}

uint64_t sub_2E80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v4);
  sub_3CB4(&qword_52020, &qword_3C280);
  sub_3CB4(&qword_52BA8, &unk_3D930);
  sub_7EE4();
  sub_2DBA4();
  sub_3A438();
}

uint64_t sub_2E988@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_3A6F8();

    sub_6144();
    v6 = sub_3A2E8();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14 = v10 & 1;
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_2EAA8@<X0>(void *a2@<X1>, void *a3@<X2>, void *x8_0@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2EB6C(a2, a3, x8_0);
}

uint64_t sub_2EB6C@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v29 = a2;
  v5 = sub_3CB4(&qword_52BE8, &unk_3DB20);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v31 = sub_3CB4(&qword_52BF0, &qword_3D950);
  __chkstk_darwin(v31);
  v9 = &v28 - v8;
  v10 = sub_3CB4(&qword_52BF8, &unk_3DB30);
  __chkstk_darwin(v10);
  v12 = (&v28 - v11);
  v32 = sub_3CB4(&qword_52BD8, &unk_3D940);
  __chkstk_darwin(v32);
  v14 = &v28 - v13;
  v15 = [a1 propertyForKey:PSIconImageKey];
  v33 = a3;
  if (v15)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    sub_1A614(&v37, &qword_52990, qword_3C2D0);
LABEL_8:
    if ([a1 propertyForKey:PSIconUTTypeIdentifierKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    if (*(&v36 + 1))
    {
      if (swift_dynamicCast())
      {
        v19 = objc_allocWithZone(ISIcon);
        v20 = sub_3A6D8();

        [v19 initWithType:v20];

        v21 = v29;
        sub_39CE8();
        v22 = v30;
        (*(v30 + 16))(v12, v7, v5);
        swift_storeEnumTagMultiPayload();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);
        sub_3A1A8();
        sub_2F38C(v14, v9);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        v17 = v33;
        sub_3A1A8();
        sub_1A614(v14, &qword_52BD8, &unk_3D940);
LABEL_21:
        (*(v22 + 8))(v7, v5);
        v18 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      sub_1A614(&v37, &qword_52990, qword_3C2D0);
    }

    if ([a1 propertyForKey:PSLazyIconAppID])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    if (*(&v36 + 1))
    {
      if (swift_dynamicCast())
      {
        v23 = objc_allocWithZone(ISIcon);
        v24 = sub_3A6D8();

        [v23 initWithBundleIdentifier:v24];

        v25 = v29;
        sub_39CE8();
        v22 = v30;
        (*(v30 + 16))(v9, v7, v5);
        swift_storeEnumTagMultiPayload();
        sub_2DCE0();
        sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);
        v17 = v33;
        sub_3A1A8();
        goto LABEL_21;
      }
    }

    else
    {
      sub_1A614(&v37, &qword_52990, qword_3C2D0);
    }

    v18 = 1;
    v17 = v33;
    goto LABEL_24;
  }

  sub_2DD98();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = v34;
  *v12 = sub_3A428();
  swift_storeEnumTagMultiPayload();
  sub_6254(&qword_52BE0, &qword_52BE8, &unk_3DB20, &protocol conformance descriptor for AsyncIconImage<A>);

  sub_3A1A8();
  sub_2F38C(v14, v9);
  swift_storeEnumTagMultiPayload();
  sub_2DCE0();
  v17 = v33;
  sub_3A1A8();

  sub_1A614(v14, &qword_52BD8, &unk_3D940);
  v18 = 0;
LABEL_24:
  v26 = sub_3CB4(&qword_52BC8, &unk_3DB10);
  return (*(*(v26 - 8) + 56))(v17, v18, 1, v26);
}

uint64_t sub_2F280()
{
  sub_2B668();
  sub_3CB4(&qword_52B88, &unk_3D910);
  sub_6254(&qword_52B80, &qword_52B88, &unk_3D910, &protocol conformance descriptor for Label<A, B>);
  return sub_3A4D8();
}

uint64_t sub_2F38C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52BD8, &unk_3D940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2F440()
{
  v1 = sub_2FD9C();
  v2 = [v1 specifiers];

  if (v2)
  {
    v3 = sub_3A778();

    v4 = sub_2FEB8(v3);

    if (v4)
    {
      v11 = &_swiftEmptyArrayStorage;
      v12 = &_swiftEmptyArrayStorage;
      if (v4 >> 62)
      {
        goto LABEL_25;
      }

      v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
        while (1)
        {
          v10 = v0;
          while (1)
          {
            if (__OFSUB__(v5--, 1))
            {
              goto LABEL_19;
            }

            if ((v4 & 0xC000000000000001) == 0)
            {
              break;
            }

            v7 = sub_3AA58();
LABEL_13:
            v8 = v7;
            if ([v7 cellType])
            {
              [v8 loadValuesAndTitlesFromDataSource];
              sub_2B2B8();
              if (v11 >> 62 && sub_3AAE8() < 0)
              {
                __break(1u);
LABEL_19:
                __break(1u);
LABEL_20:

                v9 = v12;
                v0 = v10;
                goto LABEL_21;
              }

              v0 = &v11;
              sub_30E54(0, 0, v8);

              if (!v5)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v0 = &v12;
              sub_3084C(0, 0, v8, v11);
              v11 = &_swiftEmptyArrayStorage;
              if (!v5)
              {
                goto LABEL_20;
              }
            }
          }

          if ((v5 & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v5 = sub_3AAE8();
          if (!v5)
          {
            goto LABEL_26;
          }
        }

        if (v5 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 32 + 8 * v5);
        goto LABEL_13;
      }

LABEL_26:

      v9 = &_swiftEmptyArrayStorage;
LABEL_21:

      sub_2F908(v9);
      *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections) = v9;
    }
  }
}

uint64_t sub_2F638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_3A7E8();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_30598();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_3AA38(66);
    v12._object = 0x800000000003EB30;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    sub_3A748(v12);
    v13._countAndFlagsBits = sub_3AB68();
    sub_3A748(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    sub_3A748(v14);
    result = sub_3AAD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2F7D4(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_3A968();
    v9 = v8;
    v10 = sub_3A9E8();
    v12 = v11;
    v13 = sub_3A988();
    sub_30628(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_30628(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_3A958();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_30AF4(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_30628(v7, v9, v6 != 0);
  return v16;
}

void sub_2F908(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (*(*(v1 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections) + 16) == *(a1 + 16))
  {
    v27 = ObjectType;
    v28 = v1;

    v4 = sub_2FCBC();
    if (v4)
    {
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = v7;
      while (1)
      {
        if (![v8 isEqualToSpecifier:{v10, v27, v28}])
        {
LABEL_37:

          sub_30F40();
          sub_39EB8();
          sub_39EC8();

          return;
        }

        v15 = v9 >> 62 ? sub_3AAE8() : *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
        v31 = v11 >> 62;
        if (v11 >> 62)
        {
          if (v15 != sub_3AAE8())
          {
            goto LABEL_37;
          }
        }

        else if (v15 != *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v29 = v10;
        v16 = v9 >> 62 ? sub_3AAE8() : *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));

        v17 = v11;

        if (v16)
        {
          break;
        }

LABEL_8:

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v8 = sub_2FCBC();
        v9 = v12;
        v10 = v13;
        v11 = v14;
        if (!v8)
        {
          goto LABEL_38;
        }
      }

      v18 = v9 & 0xFFFFFFFFFFFFFF8;
      v30 = v9 & 0xC000000000000001;
      v19 = 4;
      while (1)
      {
        v20 = v19 - 4;
        if (v30)
        {
          v21 = v9;
          v22 = sub_3AA58();
        }

        else
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_41;
          }

          v21 = v9;
          v22 = *(v9 + 8 * v19);
        }

        v23 = v22;
        v24 = v19 - 3;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v31)
        {
          if (v20 == sub_3AAE8())
          {
LABEL_7:

            goto LABEL_8;
          }
        }

        else if (v20 == *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_7;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v25 = sub_3AA58();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v25 = *(v17 + 8 * v19);
        }

        v26 = v25;
        if (([v23 isEqualToSpecifier:v25] & 1) == 0)
        {

          sub_30F40();
          sub_39EB8();
          sub_39EC8();

          return;
        }

        ++v19;
        v9 = v21;
        if (v24 == v16)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    else
    {
LABEL_38:
    }
  }

  else
  {
    sub_30F40();
    sub_39EB8();
    sub_39EC8();
  }
}

void *sub_2FCBC()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 16 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v5 + 16);
    if (v6 == v7)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v6 < v7)
    {
      v8 = *(v5 + 16 * v6 + 32);
      *(v0 + 24) = v6 + 1;
      v9 = v4;
      v10 = v4;

      v11 = v8;

      return v9;
    }
  }

  __break(1u);
  return result;
}

id sub_2FD9C()
{
  v1 = OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp;
  v2 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = objc_allocWithZone(PSSystemPolicyForApp);
  v5 = sub_3A6D8();
  v6 = [v4 initWithBundleIdentifier:v5];

  if (v6)
  {
    [v6 setDelegate:v0];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  result = sub_3AAD8();
  __break(1u);
  return result;
}

void *sub_2FEB8(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_3AAA8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_4508(i, v5);
    sub_1AF40(0, &qword_52D40, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_3AA88();
    sub_3AAB8();
    sub_3AAC8();
    sub_3AA98();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_30050()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3010C@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_39EB8();
  *a2 = result;
  return result;
}

uint64_t sub_3014C()
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2F440();
}

void sub_30270(uint64_t a1, char a2)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  sub_1AF40(0, &qword_52D20, UIScene_ptr);
  sub_305C0();
  v6 = sub_3A838();

  v7 = sub_2F7D4(v6, &qword_52D20, UIScene_ptr);

  if (!v7)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
LABEL_9:

    return;
  }

  v9 = [v8 keyWindow];

  if (v9 && (v7 = [v9 rootViewController], v9, v7))
  {
    if (a1)
    {
      [v7 presentViewController:a1 animated:a2 & 1 completion:0];
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

uint64_t sub_304D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_3051C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_305C0()
{
  result = qword_52D28;
  if (!qword_52D28)
  {
    sub_1AF40(255, &qword_52D20, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52D28);
  }

  return result;
}

uint64_t sub_30628(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

char *sub_30634(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB4(&unk_52D30, &qword_3DC10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_30740(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB4(&qword_52D48, &qword_3DC18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_3084C(unint64_t result, int64_t a2, void *a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_30634(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_309C8(result, a2, 1, a3, a4);
  *v4 = v6;
}

uint64_t sub_30928(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_3AAE8();
LABEL_9:
  result = sub_3AA68();
  *v2 = result;
  return result;
}

void sub_309C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = *v5;
  v11 = (v10 + 32 + 16 * a1);
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v6);
  v13 = a3 - v6;
  if (v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_21;
  }

  a1 = &v11[2 * a3];
  v16 = (v10 + 32 + 16 * a2);
  if (a1 != v16 || a1 >= v16 + 16 * v15)
  {
    a1 = memmove(a1, v16, 16 * v15);
  }

  v18 = *(v10 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v19;
LABEL_13:
  if (a3 > 0)
  {
    a1 = a4;
    *v11 = a4;
    v11[1] = a5;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    v20 = a1;

    __break(1u);
    return;
  }
}

void sub_30AF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_3A9C8();
      sub_1AF40(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1AF40(0, a5, a6);
    if (sub_3A998() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_3A9A8();
    swift_dynamicCast();
    v6 = v18;
    v11 = sub_3A908(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = sub_3A918();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
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

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

char *sub_30D28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1AF40(0, &qword_52D40, PSSpecifier_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_3AAE8();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_3AAE8();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_30E54(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_3AAE8();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_3AAE8();
  }

  else
  {
    v13 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_30928(result, 1);

  return sub_30D28(v7, v6, 1, v4);
}

unint64_t sub_30F40()
{
  result = qword_51FB8;
  if (!qword_51FB8)
  {
    type metadata accessor for AppStoreSystemPolicyViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51FB8);
  }

  return result;
}

unint64_t sub_30F94(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_31054@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_3137C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_316A4@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_319CC@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_31CF8@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32020@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32368@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  v20 = a3;
  v3 = sub_39C18();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_39B58();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A6C8();
  __chkstk_darwin(v15 - 8);
  v16 = sub_3A6A8();
  __chkstk_darwin(v16 - 8);
  sub_3A698();
  v21._countAndFlagsBits = 0x58585F5245444E55;
  v21._object = 0xED00005F424D5F58;
  sub_3A688(v21);
  sub_3A678(v19);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_3A688(v22);
  sub_3A6B8();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v17 = sub_39BF8();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_39BE8();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32724@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32A4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  v20 = a3;
  v3 = sub_39C18();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_39B58();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A6C8();
  __chkstk_darwin(v15 - 8);
  v16 = sub_3A6A8();
  __chkstk_darwin(v16 - 8);
  sub_3A698();
  v21._object = 0x800000000003EF50;
  v21._countAndFlagsBits = 0xD000000000000019;
  sub_3A688(v21);
  sub_3A678(v19);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_3A688(v22);
  sub_3A6B8();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v17 = sub_39BF8();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_39BE8();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_32DE8@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33114@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_3343C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33764@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33A8C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_33DC4@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_340F0@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34418@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34740@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34A68@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_34D90@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_350B8@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_353E0@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_35708@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_35A30@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_35D5C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_36084@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_363AC@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_366D4@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_369FC@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_36D24@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_3704C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_37374@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_376C0@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_37A00@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a2;
  v18[2] = a3;
  v3 = sub_39C18();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_39B98();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_39B58();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A6C8();
  __chkstk_darwin(v15 - 8);
  sub_3A668();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v16 = sub_39BF8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_39BE8();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_37D18@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_39C18();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_39B98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_39B58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3A6C8();
  __chkstk_darwin(v13 - 8);
  sub_3A668();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_39BF8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_39BE8();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_39C08();
  return sub_39B78();
}

uint64_t sub_38048(int a1, int a2, int a3, int a4)
{
  if (qword_53BE8 == -1)
  {
    if (qword_53BF0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_39AB8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_53BF0)
    {
      return _availability_version_check();
    }
  }

  if (qword_53BE0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_39AD0();
    a3 = v10;
    a4 = v9;
    v8 = dword_53BD0 < v11;
    if (dword_53BD0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_53BD4 > a3)
      {
        return 1;
      }

      if (dword_53BD4 >= a3)
      {
        return dword_53BD8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_53BD0 < a2;
  if (dword_53BD0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_381DC(uint64_t result)
{
  v1 = qword_53BF0;
  if (qword_53BF0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_53BF0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_53BD0, &dword_53BD4, &dword_53BD8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_38688(id *a1)
{
  if (!a1[17])
  {
    v2 = [[NSMutableDictionary alloc] initWithCapacity:7];
    v3 = a1[17];
    a1[17] = v2;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [LSApplicationRecord enumeratorWithOptions:0];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ([ASDUpdatesService isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:v9])
          {
            v10 = [v9 bundleIdentifier];
            v11 = [v9 localizedName];
            v12 = v11;
            if (v10)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13)
            {
              [a1[17] setObject:v11 forKeyedSubscript:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v14 = [a1 specifiers];
  [a1 setSpecifiers:?];
}

char *sub_388B4(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR___PSListController__specifiers];
    *&result[OBJC_IVAR___PSListController__specifiers] = 0;

    if (a2)
    {
      v5 = *(v3 + 19);
      *(v3 + 19) = 0;
    }

    sub_38688(v3);
    result = [*(v3 + 17) count];
    if (result)
    {

      return [v3 reloadSpecifiers];
    }
  }

  return result;
}

void sub_38B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 136))
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_38C50;
    v4[3] = &unk_4E710;
    v4[4] = v1;
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    [v3 enumerateObjectsUsingBlock:v4];
    sub_388B4(*(a1 + 32), 1);
  }
}

void sub_38C50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [*(*(a1 + 32) + 136) setObject:v7 forKeyedSubscript:v6];
}

char *sub_38E84(uint64_t a1)
{
  result = [*(*(a1 + 32) + 136) count];
  if (result)
  {
    v10 = [*(*(a1 + 32) + 136) count];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          [*(*(a1 + 32) + 136) setObject:0 forKeyedSubscript:v7];
          v8 = *(*(a1 + 32) + 152);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_3906C;
          v12[3] = &unk_4E760;
          v12[4] = v7;
          v9 = [v8 indexOfObjectPassingTest:v12];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*(*(a1 + 32) + 152) removeObjectAtIndex:v9];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    result = [*(*(a1 + 32) + 136) count];
    if (v10 != result)
    {
      return sub_388B4(*(a1 + 32), 0);
    }
  }

  return result;
}

id sub_3906C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_39490(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(PSSpecifier);
  *&v7[OBJC_IVAR___PSSpecifier_cellType] = 6;
  [v7 setIdentifier:v6];
  [v7 setName:v5];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v7 setObject:v6 forKeyedSubscript:PSLazyIconAppID];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconDontUnload];
  [v7 setTarget:*(a1 + 32)];
  *&v7[OBJC_IVAR___PSSpecifier_getter] = "_automaticUpdatesEnabledForAppSpecifier:";
  *&v7[OBJC_IVAR___PSSpecifier_setter] = "_setAutomaticUpdatesEnabled:forAppSpecifier:";
  [*(*(a1 + 32) + 152) addObject:?];
}

int64_t sub_395D0(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_39724(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = objc_opt_new();
    [v3 hideApplicationBadgeForPendingUpdates];
    if (a2)
    {
      [v3 reloadFromServerInBackgroundWithCompletionBlock:&stru_4E830];
    }
  }
}

char *sub_399F0(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  *(*(a1 + 32) + 161) = [v2 isLowPowerModeEnabled];

  v3 = *(a1 + 32);

  return sub_388B4(v3, 0);
}