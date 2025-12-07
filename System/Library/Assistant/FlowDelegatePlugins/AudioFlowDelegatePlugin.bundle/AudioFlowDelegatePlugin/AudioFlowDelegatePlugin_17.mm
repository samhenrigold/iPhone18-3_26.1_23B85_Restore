uint64_t sub_1FC5F8(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v91 = a1;
  v90 = sub_2CE000();
  v3 = *(v90 - 8);
  v4 = __chkstk_darwin(v90);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v88 = &v87 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v87 - v10;
  v12 = __chkstk_darwin(v9);
  v89 = &v87 - v13;
  __chkstk_darwin(v12);
  v15 = &v87 - v14;
  v16 = sub_20410(&qword_354F10, &unk_2D7330);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = &v87 - v20;
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
  swift_beginAccess();
  v92 = v2;
  v23 = v2 + v22;
  v24 = v21;
  sub_F3F4(v23, v21, &qword_354F10, &unk_2D7330);
  v25 = sub_2CA870();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    goto LABEL_2;
  }

  sub_F3F4(v21, v19, &qword_354F10, &unk_2D7330);
  v32 = (*(v26 + 88))(v19, v25);
  v33 = v19;
  if (v32 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v88 = v24;
    (*(v26 + 96))(v19, v25);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v34 = v3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = v90;
    v36 = sub_3ED0(v90, static Logger.default);
    swift_beginAccess();
    v87 = *(v34 + 16);
    v87(v15, v36, v35);
    v37 = sub_2CDFE0();
    v38 = sub_2CE670();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog received .NLv3IntentPlusServerConversion parse.", v39, 2u);
    }

    v40 = *(v34 + 8);
    v40(v15, v35);
    v41 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v42 = v41;
      v43 = sub_112C0(_swiftEmptyArrayStorage);
      v99 = v43;
      v44 = sub_1D15EC();
      if (v45)
      {
        *(&v97 + 1) = &type metadata for String;
        *&v96 = v44;
        *(&v96 + 1) = v45;
        sub_E2DC(&v96, v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v43;
        sub_237690(v95, 0x5474736163646F70, 0xEC0000006369706FLL, isUniquelyReferenced_nonNull_native);
        v99 = v94;
      }

      else
      {
        sub_236110(0x5474736163646F70, 0xEC0000006369706FLL, &v96);
        sub_30B8(&v96, &qword_34CEA0, &qword_2D0FC0);
      }

      v65 = sub_1D05E4();
      if (v66)
      {
        *(&v97 + 1) = &type metadata for String;
        *&v96 = v65;
        *(&v96 + 1) = v66;
        sub_E2DC(&v96, v95);
        v67 = v99;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v67;
        sub_237690(v95, 0xD000000000000016, 0x80000000002DE7C0, v68);
        v69 = v94;
      }

      else
      {
        sub_236110(0xD000000000000016, 0x80000000002DE7C0, &v96);
        sub_30B8(&v96, &qword_34CEA0, &qword_2D0FC0);
        v69 = v99;
      }

      v70 = v92;
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      v71 = swift_allocObject();
      v72 = v91;
      v71[2] = v70;
      v71[3] = v72;
      v71[4] = v93;

      sub_23CFF0(v69, 0, &v96, sub_203634, v71);

      sub_30B8(&v96, &qword_34C6C0, &qword_2D0710);
    }

    else
    {

      v61 = v89;
      v87(v89, v36, v35);
      v62 = sub_2CDFE0();
      v63 = sub_2CE680();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_0, v62, v63, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Failed to build playMediaIntent.", v64, 2u);
      }

      v40(v61, v35);
      sub_1FD78C(v91, v93);
    }

    v73 = sub_2CAFE0();
    (*(*(v73 - 8) + 8))(v33, v73);
    v24 = v88;
  }

  else
  {
    if (v32 != enum case for Parse.pommesResponse(_:))
    {
      (*(v26 + 8))(v19, v25);
LABEL_2:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v27 = v90;
      v28 = sub_3ED0(v90, static Logger.default);
      swift_beginAccess();
      (*(v3 + 16))(v6, v28, v27);
      v29 = sub_2CDFE0();
      v30 = sub_2CE680();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Unexpected parse type.", v31, 2u);
      }

      (*(v3 + 8))(v6, v27);
      sub_1FD78C(v91, v93);
      return sub_30B8(v24, &qword_354F10, &unk_2D7330);
    }

    (*(v26 + 96))(v19, v25);
    v89 = *v19;
    v47 = v3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v48 = v90;
    v49 = sub_3ED0(v90, static Logger.default);
    swift_beginAccess();
    v50 = *(v47 + 16);
    v50(v11, v49, v48);
    v51 = sub_2CDFE0();
    v52 = sub_2CE670();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog received .pommesResponse parse.", v53, 2u);
    }

    v54 = *(v47 + 8);
    v54(v11, v48);
    v55 = sub_1B8014();
    if (v55)
    {
      v56 = v55;
      v57 = sub_112C0(_swiftEmptyArrayStorage);
      v99 = v57;
      v58 = sub_1D15EC();
      if (v59)
      {
        *(&v97 + 1) = &type metadata for String;
        *&v96 = v58;
        *(&v96 + 1) = v59;
        sub_E2DC(&v96, v95);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v57;
        sub_237690(v95, 0x5474736163646F70, 0xEC0000006369706FLL, v60);
        v99 = v94;
      }

      else
      {
        sub_236110(0x5474736163646F70, 0xEC0000006369706FLL, &v96);
        sub_30B8(&v96, &qword_34CEA0, &qword_2D0FC0);
      }

      v78 = sub_1D05E4();
      if (v79)
      {
        *(&v97 + 1) = &type metadata for String;
        *&v96 = v78;
        *(&v96 + 1) = v79;
        sub_E2DC(&v96, v95);
        v80 = v99;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v80;
        sub_237690(v95, 0xD000000000000016, 0x80000000002DE7C0, v81);
        v82 = v94;
      }

      else
      {
        sub_236110(0xD000000000000016, 0x80000000002DE7C0, &v96);
        sub_30B8(&v96, &qword_34CEA0, &qword_2D0FC0);
        v82 = v99;
      }

      v83 = v92;
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      v84 = swift_allocObject();
      v85 = v91;
      v84[2] = v83;
      v84[3] = v85;
      v84[4] = v93;

      sub_23CFF0(v82, 0, &v96, sub_2034A8, v84);

      sub_30B8(&v96, &qword_34C6C0, &qword_2D0710);
    }

    else
    {
      v74 = v88;
      v50(v88, v49, v48);
      v75 = sub_2CDFE0();
      v76 = sub_2CE680();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_0, v75, v76, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Failed to build playMediaIntent.", v77, 2u);
      }

      v54(v74, v48);
      sub_1FD78C(v91, v93);
    }
  }

  return sub_30B8(v24, &qword_354F10, &unk_2D7330);
}

uint64_t sub_1FD2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v7 = sub_2CE000();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v42 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = __chkstk_darwin(v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v39 - v13;
  v15 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v15);
  v17 = (v39 - v16);
  sub_F3F4(a1, v39 - v16, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39[0] = a3;
    v39[1] = a2;
    v48 = *v17;
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v18 = v47;
      v20 = v40;
      v19 = v41;
      v21 = v42;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v22 = sub_3ED0(v19, static Logger.default);
      swift_beginAccess();
      (*(v20 + 16))(v21, v22, v19);
      v23 = v18;
      v24 = sub_2CDFE0();
      v25 = sub_2CE680();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v46 = v27;
        *v26 = 136315138;
        v28 = [v23 localizedDescription];
        v29 = sub_2CE270();
        v30 = v19;
        v32 = v31;

        v44 = v29;
        v45 = v32;
        v33 = sub_2CE3C0();
        v35 = sub_3F08(v33, v34, &v46);

        *(v26 + 4) = v35;
        _os_log_impl(&dword_0, v24, v25, "SwitchPodcastNewsPreferenceFlow#cannotSwitchNewsSourcePreferenceDialog Error creating dialog %s.", v26, 0xCu);
        sub_306C(v27);

        (*(v20 + 8))(v42, v30);
      }

      else
      {

        (*(v20 + 8))(v21, v19);
      }

      sub_1FD78C(v39[0], v43);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    sub_24BE0(v17, v14);
    sub_F3F4(v14, v12, &qword_34C6E8, &unk_2D0FF0);
    v36 = *&v12[*(v9 + 48)];
    sub_1FDF90(v12, v36, a3, v43);

    sub_30B8(v14, &qword_34C6E8, &unk_2D0FF0);
    v37 = sub_2CA130();
    return (*(*(v37 - 8) + 8))(v12, v37);
  }

  return result;
}

uint64_t sub_1FD7C8(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, void, _OWORD *, uint64_t, void *))
{
  v24 = a5;
  v25 = a6;
  v8 = v6;
  v23 = a1;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, a3, v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v18 = sub_112C0(_swiftEmptyArrayStorage);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v19 = swift_allocObject();
  v20 = v23;
  v19[2] = v8;
  v19[3] = v20;
  v19[4] = a2;

  v25(v18, 0, v26, v24, v19);

  return sub_30B8(v26, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1FDA2C(uint64_t a1, void (*a2)(char *), void (*a3)(char *), uint64_t a4, const char *a5)
{
  v44 = a5;
  v45 = a2;
  v8 = sub_2C9EC0();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2CE000();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v43 - v15;
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v17);
  v19 = (v43 - v18);
  sub_F3F4(a1, v43 - v18, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = a3;
    v43[1] = a4;
    v56 = *v19;
    sub_20410(&qword_34C6E0, &unk_2D0730);
    sub_334A0(0, &qword_34FF48, NSError_ptr);
    if (swift_dynamicCast())
    {
      v20 = v55;
      v21 = v51;
      v22 = v46;
      v23 = v47;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v24 = sub_3ED0(v21, static Logger.default);
      swift_beginAccess();
      (*(v23 + 16))(v22, v24, v21);
      v25 = v20;
      v26 = sub_2CDFE0();
      v27 = sub_2CE680();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v54 = v29;
        *v28 = 136315138;
        v30 = [v25 localizedDescription];
        v31 = sub_2CE270();
        v32 = v23;
        v34 = v33;

        v52 = v31;
        v53 = v34;
        v35 = sub_2CE3C0();
        v37 = sub_3F08(v35, v36, &v54);

        *(v28 + 4) = v37;
        _os_log_impl(&dword_0, v26, v27, v44, v28, 0xCu);
        sub_306C(v29);

        (*(v32 + 8))(v22, v51);
      }

      else
      {

        (*(v23 + 8))(v22, v21);
      }

      v41 = v45;
      v42 = v48;
      sub_2C9EB0();
      v41(v42);

      (*(v49 + 8))(v42, v50);
    }

    else
    {
      result = sub_2CEE90();
      __break(1u);
    }
  }

  else
  {
    sub_24BE0(v19, v16);
    sub_F3F4(v16, v14, &qword_34C6E8, &unk_2D0FF0);
    v38 = *&v14[*(v11 + 48)];
    sub_1FDF90(v14, v38, a3, a4);

    sub_30B8(v16, &qword_34C6E8, &unk_2D0FF0);
    v39 = sub_2CA130();
    return (*(*(v39 - 8) + 8))(v14, v39);
  }

  return result;
}

uint64_t sub_1FDF90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v33 = sub_2CA910();
  v9 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v20 = sub_2CA130();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  *&v19[*(v17 + 56)] = a2;
  v21 = qword_34BF58;
  v22 = a2;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v23, v12);
  v24 = sub_2CDFE0();
  v25 = sub_2CE690();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "SwitchPodcastNewsPreferenceFlow#publishDialog Reached logic.", v26, 2u);
  }

  (*(v13 + 8))(v15, v12);
  sub_2CB5B0();
  v27 = sub_2CA000();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_2C9DC0();
  sub_30B8(&v36, &qword_34CC80, &qword_2D1520);
  sub_30B8(v8, &unk_353020, &unk_2D0970);
  sub_35E0((v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher), *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher + 24));
  v28 = v33;
  *(&v37 + 1) = v33;
  v38 = &protocol witness table for AceOutput;
  v29 = sub_F390(&v36);
  (*(v9 + 16))(v29, v11, v28);
  v30 = swift_allocObject();
  *(v30 + 16) = v34;
  *(v30 + 24) = v35;

  sub_2CA010();

  (*(v9 + 8))(v11, v28);
  sub_30B8(v19, &qword_34C6E8, &unk_2D0FF0);
  return sub_306C(&v36);
}

uint64_t sub_1FE448(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_2C9EC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v17 = v5;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "SwitchPodcastNewsPreferenceFlow#publishDialog Dialog successfully generated and published.", v15, 2u);
    v5 = v17;
  }

  (*(v9 + 8))(v11, v8);
  sub_2C9EB0();
  a3(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1FE6CC()
{
  v1 = v0;
  v494 = sub_2CCB20();
  v493 = *(v494 - 8);
  __chkstk_darwin(v494);
  v492 = &v486 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v3 - 8);
  v524 = &v486 - v4;
  v529 = sub_2CAA00();
  v528 = *(v529 - 1);
  __chkstk_darwin(v529);
  v525 = &v486 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v6 - 8);
  v552 = &v486 - v7;
  v8 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v8 - 8);
  v553 = &v486 - v9;
  v10 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v10 - 8);
  v554 = &v486 - v11;
  v12 = sub_2CB970();
  v13 = *(v12 - 8);
  v556 = v12;
  v557 = v13;
  __chkstk_darwin(v12);
  v555 = &v486 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CCB30();
  v16 = *(v15 - 8);
  v547 = v15;
  v548 = v16;
  __chkstk_darwin(v15);
  v546 = &v486 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CCAC0();
  v19 = *(v18 - 8);
  v550 = v18;
  v551 = v19;
  __chkstk_darwin(v18);
  v549 = &v486 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = sub_2CD540();
  v518 = *(v516 - 8);
  __chkstk_darwin(v516);
  v496 = &v486 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v522 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v22 = __chkstk_darwin(v522);
  v502 = &v486 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v513 = &v486 - v24;
  v25 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v26 = __chkstk_darwin(v25 - 8);
  v495 = &v486 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v498 = &v486 - v29;
  v30 = __chkstk_darwin(v28);
  v499 = &v486 - v31;
  v32 = __chkstk_darwin(v30);
  v503 = &v486 - v33;
  v34 = __chkstk_darwin(v32);
  v519 = &v486 - v35;
  __chkstk_darwin(v34);
  v520 = &v486 - v36;
  v535 = sub_2CD4C0();
  v536 = *(v535 - 8);
  __chkstk_darwin(v535);
  v510 = &v486 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v534 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v38 = __chkstk_darwin(v534);
  v506 = &v486 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v515 = &v486 - v41;
  __chkstk_darwin(v40);
  v533 = &v486 - v42;
  v43 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v44 = __chkstk_darwin(v43 - 8);
  v497 = &v486 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v511 = &v486 - v47;
  v48 = __chkstk_darwin(v46);
  v512 = &v486 - v49;
  v50 = __chkstk_darwin(v48);
  v504 = &v486 - v51;
  v52 = __chkstk_darwin(v50);
  v521 = &v486 - v53;
  v54 = __chkstk_darwin(v52);
  v514 = &v486 - v55;
  v56 = __chkstk_darwin(v54);
  v508 = &v486 - v57;
  v58 = __chkstk_darwin(v56);
  v526 = &v486 - v59;
  __chkstk_darwin(v58);
  v527 = &v486 - v60;
  v61 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v61 - 8);
  v532 = &v486 - v62;
  v537 = type metadata accessor for AudioNLv3Intent(0);
  v531 = *(v537 - 8);
  __chkstk_darwin(v537);
  v539 = &v486 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2CE000();
  v558 = *(v64 - 8);
  v559 = v64;
  v65 = __chkstk_darwin(v64);
  v543 = &v486 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v540 = &v486 - v68;
  v69 = __chkstk_darwin(v67);
  v505 = &v486 - v70;
  v71 = __chkstk_darwin(v69);
  v501 = &v486 - v72;
  v73 = __chkstk_darwin(v71);
  v509 = &v486 - v74;
  v75 = __chkstk_darwin(v73);
  v491 = &v486 - v76;
  v77 = __chkstk_darwin(v75);
  v490 = &v486 - v78;
  v79 = __chkstk_darwin(v77);
  v530 = &v486 - v80;
  v81 = __chkstk_darwin(v79);
  v523 = &v486 - v82;
  v83 = __chkstk_darwin(v81);
  v517 = &v486 - v84;
  v85 = __chkstk_darwin(v83);
  v507 = &v486 - v86;
  v87 = __chkstk_darwin(v85);
  v500 = &v486 - v88;
  __chkstk_darwin(v87);
  v538 = &v486 - v89;
  v90 = sub_20410(&qword_354F10, &unk_2D7330);
  v91 = __chkstk_darwin(v90 - 8);
  v541 = (&v486 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __chkstk_darwin(v91);
  v545 = &v486 - v94;
  __chkstk_darwin(v93);
  v542 = &v486 - v95;
  v96 = sub_2CA7B0();
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v99 = &v486 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v100 - 8);
  v102 = &v486 - v101;
  v103 = sub_2CA870();
  v544 = *(v103 - 8);
  v104 = __chkstk_darwin(v103);
  v106 = &v486 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __chkstk_darwin(v104);
  v109 = &v486 - v108;
  __chkstk_darwin(v107);
  v111 = &v486 - v110;
  v112 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
  swift_beginAccess();
  v113 = &v1[v112];
  v114 = v1;
  sub_F3F4(v113, v102, &qword_34E480, &qword_2D2280);
  if ((*(v97 + 48))(v102, 1, v96))
  {
    sub_30B8(v102, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v115 = v559;
    v116 = sub_3ED0(v559, static Logger.default);
    swift_beginAccess();
    v117 = v558;
    v118 = v543;
    (*(v558 + 2))(v543, v116, v115);
    v119 = sub_2CDFE0();
    v120 = sub_2CE680();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_0, v119, v120, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Parse is nil.", v121, 2u);
    }

    (*(v117 + 1))(v118, v115);
    v123 = v550;
    v122 = v551;
    v124 = v549;
    (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
    v126 = v547;
    v125 = v548;
    v127 = v546;
    (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
    v559 = sub_2CCAE0();
    (*(v125 + 8))(v127, v126);
    (*(v122 + 8))(v124, v123);
    v128 = *&v114[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
    v558 = *&v114[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v114[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v128);
    v130 = v556;
    v129 = v557;
    v131 = v555;
    (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
    v132 = enum case for ActivityType.failed(_:);
    v133 = sub_2C9C20();
    v134 = *(v133 - 8);
    v135 = v554;
    (*(v134 + 104))(v554, v132, v133);
    (*(v134 + 56))(v135, 0, 1, v133);
    v136 = sub_2CA130();
    v137 = v553;
    (*(*(v136 - 8) + 56))(v553, 1, 1, v136);
    v138 = sub_2C98F0();
    v139 = v552;
    (*(*(v138 - 8) + 56))(v552, 1, 1, v138);
    sub_2CB4C0();

    sub_30B8(v139, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v137, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v135, &qword_34CB88, &unk_2D0D90);
    (*(v129 + 8))(v131, v130);
    return 0;
  }

  v488 = v106;
  (*(v97 + 16))(v99, v102, v96);
  sub_30B8(v102, &qword_34E480, &qword_2D2280);
  sub_2CA790();
  (*(v97 + 8))(v99, v96);
  v140 = v544;
  (*(v544 + 32))(v111, v109, v103);
  v141 = *(v140 + 16);
  v142 = v542;
  v543 = v111;
  v487 = v141;
  v141(v542, v111, v103);
  (*(v140 + 56))(v142, 0, 1, v103);
  v143 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
  swift_beginAccess();
  sub_FECE8(v142, &v114[v143], &qword_354F10, &unk_2D7330);
  swift_endAccess();
  v542 = v114;
  v144 = v545;
  sub_F3F4(&v114[v143], v545, &qword_354F10, &unk_2D7330);
  v145 = (*(v140 + 48))(v144, 1, v103);
  v146 = v103;
  v148 = v558;
  v147 = v559;
  v489 = v146;
  if (v145 == 1)
  {
    goto LABEL_8;
  }

  v172 = v541;
  sub_F3F4(v144, v541, &qword_354F10, &unk_2D7330);
  v173 = (*(v140 + 88))(v172, v146);
  if (v173 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    if (v173 != enum case for Parse.pommesResponse(_:))
    {
      (*(v140 + 8))(v172, v146);
LABEL_8:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v149 = sub_3ED0(v147, static Logger.default);
      swift_beginAccess();
      v150 = v540;
      (*(v148 + 2))(v540, v149, v147);
      v151 = sub_2CDFE0();
      v152 = sub_2CE680();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        *v153 = 0;
        _os_log_impl(&dword_0, v151, v152, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse received non-pommesResponse parse.", v153, 2u);
      }

      (*(v148 + 1))(v150, v147);
      v155 = v550;
      v154 = v551;
      v156 = v549;
      (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
      v158 = v547;
      v157 = v548;
      v159 = v546;
      (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
      v559 = sub_2CCAE0();
      (*(v157 + 8))(v159, v158);
      (*(v154 + 8))(v156, v155);
      v160 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
      v558 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
      sub_35E0(&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v160);
      v162 = v556;
      v161 = v557;
      v163 = v555;
      (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
      v164 = enum case for ActivityType.failed(_:);
      v165 = sub_2C9C20();
      v166 = *(v165 - 8);
      v167 = v554;
      (*(v166 + 104))(v554, v164, v165);
      (*(v166 + 56))(v167, 0, 1, v165);
      v168 = sub_2CA130();
      v169 = v553;
      (*(*(v168 - 8) + 56))(v553, 1, 1, v168);
      v170 = sub_2C98F0();
      v171 = v552;
      (*(*(v170 - 8) + 56))(v552, 1, 1, v170);
      sub_2CB4C0();

      sub_30B8(v171, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v169, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v167, &qword_34CB88, &unk_2D0D90);
      (*(v161 + 8))(v163, v162);
      goto LABEL_13;
    }

    (*(v140 + 96))(v172, v146);
    v206 = *v172;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v207 = v147;
    v208 = sub_3ED0(v147, static Logger.default);
    swift_beginAccess();
    v541 = *(v148 + 2);
    (v541)(v530, v208, v207);
    v209 = sub_2CDFE0();
    v210 = sub_2CE670();
    v211 = os_log_type_enabled(v209, v210);
    v212 = v528;
    v213 = v524;
    if (v211)
    {
      v214 = swift_slowAlloc();
      *v214 = 0;
      _os_log_impl(&dword_0, v209, v210, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse received .pommesResponse parse.", v214, 2u);
    }

    v217 = *(v148 + 1);
    v215 = v148 + 8;
    v216 = v217;
    v218 = v559;
    v217(v530, v559);
    v219 = v206;
    v220 = sub_1B7F14();
    v221 = v529;
    if (!v220)
    {
      v255 = v505;
      (v541)(v505, v208, v218);
      v256 = v219;
      v257 = sub_2CDFE0();
      v258 = sub_2CE680();

      v259 = os_log_type_enabled(v257, v258);
      v558 = v256;
      if (v259)
      {
        v260 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v560 = v261;
        *v260 = 136315138;
        sub_2CDAD0();
        sub_2CDA50();
        v262 = v255;
        v263 = sub_2CE420();
        v265 = v264;

        v266 = sub_3F08(v263, v265, &v560);

        *(v260 + 4) = v266;
        _os_log_impl(&dword_0, v257, v258, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse pommesResponse doesn't contain audioExperience %s.", v260, 0xCu);
        sub_306C(v261);

        v216(v262, v559);
      }

      else
      {

        v216(v255, v218);
      }

      v306 = v542;
      v308 = v550;
      v307 = v551;
      v309 = v549;
      (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
      v311 = v547;
      v310 = v548;
      v312 = v546;
      (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
      v559 = sub_2CCAE0();
      (*(v310 + 8))(v312, v311);
      (*(v307 + 8))(v309, v308);
      v313 = *&v306[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
      v551 = *&v306[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
      sub_35E0(&v306[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v313);
      v314 = v556;
      v315 = v557;
      v316 = v555;
      (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
      v317 = enum case for ActivityType.failed(_:);
      v318 = sub_2C9C20();
      v319 = *(v318 - 8);
      v320 = v554;
      (*(v319 + 104))(v554, v317, v318);
      (*(v319 + 56))(v320, 0, 1, v318);
      v321 = sub_2CA130();
      v322 = v553;
      (*(*(v321 - 8) + 56))(v553, 1, 1, v321);
      v323 = sub_2C98F0();
      v324 = v552;
      (*(*(v323 - 8) + 56))(v552, 1, 1, v323);
      sub_2CB4C0();

      sub_30B8(v324, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v322, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v320, &qword_34CB88, &unk_2D0D90);
      (*(v315 + 8))(v316, v314);
      goto LABEL_13;
    }

    v540 = v219;
    v222 = v525;
    v539 = v220;
    sub_2CDA40();
    sub_2CD700();
    (*(v212 + 16))(v213, v222, v221);
    (*(v212 + 56))(v213, 0, 1, v221);
    v223 = sub_2CD600();
    if (!v223)
    {
      v280 = v501;
      v281 = v559;
      (v541)(v501, v208, v559);
      v282 = sub_2CDFE0();
      v283 = sub_2CE680();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        *v284 = 0;
        _os_log_impl(&dword_0, v282, v283, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse AudioUsoIntent failed to be constructed.", v284, 2u);
      }

      v216(v280, v281);
      v286 = v550;
      v285 = v551;
      v287 = v549;
      (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
      v289 = v547;
      v288 = v548;
      v290 = v546;
      (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
      v559 = sub_2CCAE0();
      (*(v288 + 8))(v290, v289);
      (*(v285 + 8))(v287, v286);
      v291 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
      v558 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
      sub_35E0(&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v291);
      v292 = v556;
      v293 = v557;
      v294 = v555;
      (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
      v295 = enum case for ActivityType.failed(_:);
      v296 = sub_2C9C20();
      v297 = *(v296 - 8);
      v298 = v554;
      (*(v297 + 104))(v554, v295, v296);
      (*(v297 + 56))(v298, 0, 1, v296);
      v299 = sub_2CA130();
      v300 = v553;
      (*(*(v299 - 8) + 56))(v553, 1, 1, v299);
      v301 = sub_2C98F0();
      v302 = v552;
      (*(*(v301 - 8) + 56))(v552, 1, 1, v301);
      sub_2CB4C0();

      goto LABEL_97;
    }

    v533 = v208;
    v537 = v216;
    v558 = v215;
    v224 = v512;
    v538 = v223;
    sub_2CD6C0();
    v225 = v536;
    v226 = v511;
    v227 = v535;
    (*(v536 + 104))(v511, enum case for CommonAudio.Verb.update(_:), v535);
    (*(v225 + 56))(v226, 0, 1, v227);
    v228 = *(v534 + 48);
    v229 = v506;
    sub_F3F4(v224, v506, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v226, v229 + v228, &qword_34D6B8, &qword_2D15B0);
    v230 = *(v225 + 48);
    if (v230(v229, 1, v227) == 1)
    {
      sub_30B8(v226, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v224, &qword_34D6B8, &qword_2D15B0);
      v231 = v230(v229 + v228, 1, v227);
      v232 = v509;
      v233 = v533;
      if (v231 == 1)
      {
        sub_30B8(v229, &qword_34D6B8, &qword_2D15B0);
LABEL_88:
        v396 = v499;
        sub_2CD6F0();
        v397 = v518;
        v398 = v498;
        v399 = v516;
        (*(v518 + 104))(v498, enum case for CommonAudio.MediaType.news(_:), v516);
        (*(v397 + 56))(v398, 0, 1, v399);
        v400 = *(v522 + 48);
        v401 = v502;
        sub_F3F4(v396, v502, &qword_34D6D0, qword_2D34A0);
        v402 = v401;
        sub_F3F4(v398, v401 + v400, &qword_34D6D0, qword_2D34A0);
        v403 = *(v397 + 48);
        if (v403(v402, 1, v399) == 1)
        {
          sub_30B8(v398, &qword_34D6D0, qword_2D34A0);
          v404 = v502;
          sub_30B8(v396, &qword_34D6D0, qword_2D34A0);
          v405 = v403(v404 + v400, 1, v399);
          v305 = v537;
          if (v405 == 1)
          {
            sub_30B8(v404, &qword_34D6D0, qword_2D34A0);
LABEL_106:
            v434 = v490;
            (v541)(v490, v233, v559);
            v435 = sub_2CDFE0();
            v436 = sub_2CE670();
            if (os_log_type_enabled(v435, v436))
            {
              v437 = swift_slowAlloc();
              *v437 = 0;
              _os_log_impl(&dword_0, v435, v436, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Correct update verb and news mediaType present in AudioUsoIntent.", v437, 2u);
            }

            v438 = v559;
            v305(v434, v559);
            v439 = sub_2CD650();
            v440 = v542;
            v441 = &v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId];
            *v441 = v439;
            v441[1] = v442;

            v443 = sub_2CD670();
            v444 = &v440[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier];
            *v444 = v443;
            v444[1] = v445;

            v446 = v491;
            v447 = v233;
            v448 = v438;
            (v541)(v491, v447, v438);

            v449 = sub_2CDFE0();
            v450 = sub_2CE670();

            if (os_log_type_enabled(v449, v450))
            {
              LODWORD(v541) = v450;
              v451 = swift_slowAlloc();
              v452 = swift_slowAlloc();
              *v451 = 138412546;
              v453 = v441[1];
              if (v453)
              {
                v454 = *v441;
                sub_10C40();
                swift_allocError();
                *v455 = v454;
                v455[1] = v453;

                v456 = _swift_stdlib_bridgeErrorToNSError();
                v457 = v456;
              }

              else
              {
                v456 = 0;
                v457 = 0;
              }

              *(v451 + 4) = v456;
              *v452 = v457;
              *(v451 + 12) = 2112;
              v458 = v444[1];
              if (v458)
              {
                v459 = *v444;
                sub_10C40();
                swift_allocError();
                *v460 = v459;
                v460[1] = v458;

                v461 = _swift_stdlib_bridgeErrorToNSError();
                v462 = v461;
              }

              else
              {
                v461 = 0;
                v462 = 0;
              }

              v440 = v542;
              *(v451 + 14) = v461;
              v452[1] = v462;
              _os_log_impl(&dword_0, v449, v541, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse newsPodcastTopicId: %@ & newsPodcastIdentifier: %@.", v451, 0x16u);
              sub_20410(&unk_34FC00, &unk_2D0150);
              swift_arrayDestroy();

              v448 = v559;
            }

            v305(v446, v448);
            v464 = v550;
            v463 = v551;
            v465 = v549;
            (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
            v467 = v547;
            v466 = v548;
            v468 = v546;
            (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
            v469 = v493;
            v470 = v492;
            v471 = v494;
            (*(v493 + 104))(v492, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v494);
            v472 = sub_2CCAD0();
            v558 = v473;
            v559 = v472;
            (*(v469 + 8))(v470, v471);
            (*(v466 + 8))(v468, v467);
            (*(v463 + 8))(v465, v464);
            v474 = *&v440[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
            v551 = *&v440[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
            sub_35E0(&v440[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v474);
            v475 = v556;
            v476 = v557;
            v477 = v555;
            (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
            v478 = enum case for ActivityType.completed(_:);
            v479 = sub_2C9C20();
            v480 = *(v479 - 8);
            v481 = v554;
            (*(v480 + 104))(v554, v478, v479);
            (*(v480 + 56))(v481, 0, 1, v479);
            v482 = sub_2CA130();
            v483 = v553;
            (*(*(v482 - 8) + 56))(v553, 1, 1, v482);
            v484 = sub_2C98F0();
            v485 = v552;
            (*(*(v484 - 8) + 56))(v552, 1, 1, v484);
            sub_2CB4C0();

            sub_30B8(v485, &qword_34CB78, &unk_2D0D80);
            sub_30B8(v483, &qword_34CB80, &unk_2D0B30);
            sub_30B8(v481, &qword_34CB88, &unk_2D0D90);
            (*(v476 + 8))(v477, v475);
            (*(v528 + 8))(v525, v529);
            (*(v544 + 8))(v543, v489);
            goto LABEL_104;
          }
        }

        else
        {
          v406 = v495;
          sub_F3F4(v402, v495, &qword_34D6D0, qword_2D34A0);
          if (v403(v402 + v400, 1, v399) != 1)
          {
            v430 = v518;
            v431 = v402 + v400;
            v432 = v496;
            (*(v518 + 32))(v496, v431, v399);
            sub_2035E8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
            LODWORD(v536) = sub_2CE250();
            v433 = *(v430 + 8);
            v433(v432, v399);
            sub_30B8(v498, &qword_34D6D0, qword_2D34A0);
            sub_30B8(v499, &qword_34D6D0, qword_2D34A0);
            v433(v406, v399);
            sub_30B8(v402, &qword_34D6D0, qword_2D34A0);
            v305 = v537;
            v232 = v509;
            if (v536)
            {
              goto LABEL_106;
            }

            goto LABEL_94;
          }

          sub_30B8(v498, &qword_34D6D0, qword_2D34A0);
          v404 = v502;
          sub_30B8(v499, &qword_34D6D0, qword_2D34A0);
          (*(v518 + 8))(v406, v399);
          v305 = v537;
        }

        sub_30B8(v404, &qword_34D6A8, &unk_2D15A0);
        v232 = v509;
LABEL_94:
        v407 = v233;
        v408 = v559;
        (v541)(v232, v407, v559);
        v409 = sub_2CDFE0();
        v410 = sub_2CE680();
        if (os_log_type_enabled(v409, v410))
        {
          v411 = swift_slowAlloc();
          *v411 = 0;
          _os_log_impl(&dword_0, v409, v410, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Update verb / news mediaType not present in AudioUsoIntent.", v411, 2u);
        }

        v305(v232, v408);
        v413 = v550;
        v412 = v551;
        v414 = v549;
        (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
        v416 = v547;
        v415 = v548;
        v417 = v546;
        (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
        v559 = sub_2CCAE0();
        (*(v415 + 8))(v417, v416);
        (*(v412 + 8))(v414, v413);
        v418 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
        v558 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
        sub_35E0(&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v418);
        v292 = v556;
        v293 = v557;
        v294 = v555;
        (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
        v419 = enum case for ActivityType.failed(_:);
        v420 = sub_2C9C20();
        v421 = *(v420 - 8);
        v298 = v554;
        (*(v421 + 104))(v554, v419, v420);
        (*(v421 + 56))(v298, 0, 1, v420);
        v422 = sub_2CA130();
        v300 = v553;
        (*(*(v422 - 8) + 56))(v553, 1, 1, v422);
        v423 = sub_2C98F0();
        v302 = v552;
        (*(*(v423 - 8) + 56))(v552, 1, 1, v423);
        sub_2CB4C0();

LABEL_97:
        sub_30B8(v302, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v300, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v298, &qword_34CB88, &unk_2D0D90);
        (*(v293 + 8))(v294, v292);
        (*(v528 + 8))(v525, v529);
LABEL_13:
        (*(v544 + 8))(v543, v489);
LABEL_79:
        sub_30B8(v545, &qword_354F10, &unk_2D7330);
        return 0;
      }
    }

    else
    {
      v303 = v497;
      sub_F3F4(v229, v497, &qword_34D6B8, &qword_2D15B0);
      v304 = v230(v229 + v228, 1, v227);
      v232 = v509;
      if (v304 != 1)
      {
        v392 = v536;
        v393 = v229 + v228;
        v394 = v510;
        (*(v536 + 32))(v510, v393, v227);
        sub_2035E8(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        LODWORD(v534) = sub_2CE250();
        v395 = *(v392 + 8);
        v395(v394, v227);
        sub_30B8(v511, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v512, &qword_34D6B8, &qword_2D15B0);
        v395(v303, v227);
        sub_30B8(v229, &qword_34D6B8, &qword_2D15B0);
        v305 = v537;
        v233 = v533;
        if ((v534 & 1) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_88;
      }

      sub_30B8(v511, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v512, &qword_34D6B8, &qword_2D15B0);
      (*(v536 + 8))(v303, v227);
      v233 = v533;
    }

    sub_30B8(v229, &qword_34D6B0, &unk_2D4FC0);
    v305 = v537;
    goto LABEL_94;
  }

  (*(v140 + 96))(v172, v146);
  sub_20410(&qword_353070, &unk_2D0FB0);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v174 = sub_3ED0(v147, static Logger.default);
  swift_beginAccess();
  v175 = *(v148 + 2);
  v176 = v538;
  v528 = v174;
  v530 = v148 + 16;
  v529 = v175;
  (v175)(v538, v174, v147);
  v177 = sub_2CDFE0();
  v178 = sub_2CE670();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_0, v177, v178, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse received .NLv3IntentPlusServerConversion parse.", v179, 2u);
    v176 = v538;
  }

  v181 = *(v148 + 1);
  v180 = v148 + 8;
  v540 = v181;
  (v181)(v176, v147);
  v182 = v488;
  v487(v488, v543, v146);
  v183 = v532;
  sub_2B6170(v182, v532);
  if ((*(v531 + 48))(v183, 1, v537) == 1)
  {
    sub_30B8(v183, &qword_34D360, &qword_2D11E0);
    v184 = v523;
    (v529)(v523, v528, v147);
    v185 = sub_2CDFE0();
    v186 = sub_2CE680();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 0;
      _os_log_impl(&dword_0, v185, v186, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse AudioNLv3Intent failed to be constructed.", v187, 2u);
    }

    (v540)(v184, v147);
    v189 = v550;
    v188 = v551;
    v190 = v549;
    (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
    v192 = v547;
    v191 = v548;
    v193 = v546;
    (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
    v559 = sub_2CCAE0();
    (*(v191 + 8))(v193, v192);
    (*(v188 + 8))(v190, v189);
    v194 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
    v558 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v194);
    v196 = v556;
    v195 = v557;
    v197 = v555;
    (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
    v198 = enum case for ActivityType.failed(_:);
    v199 = sub_2C9C20();
    v200 = *(v199 - 8);
    v201 = v554;
    (*(v200 + 104))(v554, v198, v199);
    (*(v200 + 56))(v201, 0, 1, v199);
    v202 = sub_2CA130();
    v203 = v553;
    (*(*(v202 - 8) + 56))(v553, 1, 1, v202);
    v204 = sub_2C98F0();
    v205 = v552;
    (*(*(v204 - 8) + 56))(v552, 1, 1, v204);
    sub_2CB4C0();

    sub_30B8(v205, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v203, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v201, &qword_34CB88, &unk_2D0D90);
    (*(v195 + 8))(v197, v196);
LABEL_78:
    (*(v544 + 8))(v543, v489);
    v362 = sub_2CAFE0();
    (*(*(v362 - 8) + 8))(v541, v362);
    goto LABEL_79;
  }

  v558 = v180;
  sub_D416C(v183, v539);
  if (qword_34C080 != -1)
  {
    swift_once();
  }

  v234 = qword_357108;
  v235 = sub_2035E8(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
  v532 = v234;
  v531 = v235;
  sub_2CACA0();
  v236 = v536;
  v237 = (v536 + 56);
  v238 = v526;
  if (v560 == 11)
  {
    v239 = *v237;
    v240 = v527;
    v241 = v527;
    v242 = 1;
  }

  else
  {
    v240 = v527;
    sub_DEB38(v560, v527);
    v239 = *v237;
    v241 = v240;
    v242 = 0;
  }

  v243 = v535;
  v239(v241, v242, 1, v535);
  v244 = v534;
  v525 = *(v236 + 104);
  (v525)(v238, enum case for CommonAudio.Verb.update(_:), v243);
  v538 = v239;
  v239(v238, 0, 1, v243);
  v245 = *(v244 + 48);
  v246 = v533;
  sub_F3F4(v240, v533, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v238, v246 + v245, &qword_34D6B8, &qword_2D15B0);
  v247 = *(v236 + 48);
  if (v247(v246, 1, v243) == 1)
  {
    sub_30B8(v238, &qword_34D6B8, &qword_2D15B0);
    v248 = v533;
    sub_30B8(v240, &qword_34D6B8, &qword_2D15B0);
    if (v247(v248 + v245, 1, v243) == 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v249 = v508;
    sub_F3F4(v246, v508, &qword_34D6B8, &qword_2D15B0);
    if (v247(v246 + v245, 1, v243) != 1)
    {
      v277 = v536;
      v278 = v510;
      (*(v536 + 32))(v510, v246 + v245, v243);
      sub_2035E8(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      LODWORD(v524) = sub_2CE250();
      v279 = *(v277 + 8);
      v279(v278, v243);
      sub_30B8(v526, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v527, &qword_34D6B8, &qword_2D15B0);
      v279(v249, v243);
      v272 = v522;
      sub_30B8(v533, &qword_34D6B8, &qword_2D15B0);
      v250 = v559;
      v251 = v538;
      if (v524)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    }

    sub_30B8(v526, &qword_34D6B8, &qword_2D15B0);
    v248 = v533;
    sub_30B8(v527, &qword_34D6B8, &qword_2D15B0);
    (*(v536 + 8))(v249, v243);
  }

  sub_30B8(v248, &qword_34D6B0, &unk_2D4FC0);
  v250 = v559;
  v251 = v538;
LABEL_45:
  sub_2CACA0();
  v252 = v514;
  if (v560 == 11)
  {
    v253 = v514;
    v254 = 1;
  }

  else
  {
    sub_DEB38(v560, v514);
    v253 = v252;
    v254 = 0;
  }

  v267 = v535;
  v251(v253, v254, 1, v535);
  v268 = v515;
  v269 = v521;
  (v525)(v521, enum case for CommonAudio.Verb.modify(_:), v267);
  v251(v269, 0, 1, v267);
  v270 = v269;
  v271 = *(v534 + 48);
  sub_F3F4(v252, v268, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v270, v268 + v271, &qword_34D6B8, &qword_2D15B0);
  if (v247(v268, 1, v267) == 1)
  {
    sub_30B8(v270, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v252, &qword_34D6B8, &qword_2D15B0);
    if (v247(v268 + v271, 1, v267) == 1)
    {
      v248 = v268;
LABEL_53:
      v272 = v522;
      sub_30B8(v248, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_68;
    }

LABEL_56:
    v274 = &qword_34D6B0;
    v275 = &unk_2D4FC0;
    v276 = v268;
LABEL_74:
    sub_30B8(v276, v274, v275);
    goto LABEL_75;
  }

  v273 = v504;
  sub_F3F4(v268, v504, &qword_34D6B8, &qword_2D15B0);
  if (v247(v268 + v271, 1, v267) == 1)
  {
    sub_30B8(v521, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v252, &qword_34D6B8, &qword_2D15B0);
    (*(v536 + 8))(v273, v267);
    goto LABEL_56;
  }

  v325 = v273;
  v326 = v536;
  v327 = v268 + v271;
  v328 = v510;
  (*(v536 + 32))(v510, v327, v267);
  sub_2035E8(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v329 = sub_2CE250();
  v330 = *(v326 + 8);
  v330(v328, v267);
  sub_30B8(v521, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v252, &qword_34D6B8, &qword_2D15B0);
  v330(v325, v267);
  sub_30B8(v268, &qword_34D6B8, &qword_2D15B0);
  v272 = v522;
  if ((v329 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_68:
  v331 = v520;
  sub_2B84C8(v520);
  v332 = v518;
  v333 = v519;
  v334 = v516;
  (*(v518 + 104))(v519, enum case for CommonAudio.MediaType.news(_:), v516);
  (*(v332 + 56))(v333, 0, 1, v334);
  v335 = *(v272 + 48);
  v336 = v513;
  sub_F3F4(v331, v513, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v333, v336 + v335, &qword_34D6D0, qword_2D34A0);
  v337 = *(v332 + 48);
  if (v337(v336, 1, v334) != 1)
  {
    v339 = v503;
    sub_F3F4(v336, v503, &qword_34D6D0, qword_2D34A0);
    if (v337(v336 + v335, 1, v334) == 1)
    {
      sub_30B8(v519, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v520, &qword_34D6D0, qword_2D34A0);
      (*(v332 + 8))(v339, v334);
      v250 = v559;
      goto LABEL_73;
    }

    v364 = v496;
    (*(v332 + 32))(v496, v336 + v335, v334);
    sub_2035E8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
    v365 = v339;
    v366 = sub_2CE250();
    v367 = *(v332 + 8);
    v367(v364, v334);
    sub_30B8(v519, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v520, &qword_34D6D0, qword_2D34A0);
    v367(v365, v334);
    sub_30B8(v336, &qword_34D6D0, qword_2D34A0);
    v250 = v559;
    if (v366)
    {
      goto LABEL_82;
    }

LABEL_75:
    v340 = v517;
    (v529)(v517, v528, v250);
    v341 = sub_2CDFE0();
    v342 = sub_2CE680();
    if (os_log_type_enabled(v341, v342))
    {
      v343 = swift_slowAlloc();
      *v343 = 0;
      _os_log_impl(&dword_0, v341, v342, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Update verb / news mediaType not present in AudioNLv3Intent.", v343, 2u);
    }

    (v540)(v340, v250);
    v345 = v550;
    v344 = v551;
    v346 = v549;
    (*(v551 + 104))(v549, enum case for AdditionalMetricsDescription.ModuleName.snspf(_:), v550);
    v348 = v547;
    v347 = v548;
    v349 = v546;
    (*(v548 + 104))(v546, enum case for AdditionalMetricsDescription.SourceFunction.chkAndSetPrs(_:), v547);
    v559 = sub_2CCAE0();
    (*(v347 + 8))(v349, v348);
    (*(v344 + 8))(v346, v345);
    v350 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 24];
    v558 = *&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider + 32];
    sub_35E0(&v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider], v350);
    v352 = v556;
    v351 = v557;
    v353 = v555;
    (*(v557 + 104))(v555, enum case for TypeOfIntent.switchNewsPreference(_:), v556);
    v354 = enum case for ActivityType.failed(_:);
    v355 = sub_2C9C20();
    v356 = *(v355 - 8);
    v357 = v554;
    (*(v356 + 104))(v554, v354, v355);
    (*(v356 + 56))(v357, 0, 1, v355);
    v358 = sub_2CA130();
    v359 = v553;
    (*(*(v358 - 8) + 56))(v553, 1, 1, v358);
    v360 = sub_2C98F0();
    v361 = v552;
    (*(*(v360 - 8) + 56))(v552, 1, 1, v360);
    sub_2CB4C0();

    sub_30B8(v361, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v359, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v357, &qword_34CB88, &unk_2D0D90);
    (*(v351 + 8))(v353, v352);
    sub_FED50(v539);
    goto LABEL_78;
  }

  sub_30B8(v333, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v331, &qword_34D6D0, qword_2D34A0);
  v338 = v337(v336 + v335, 1, v334);
  v250 = v559;
  if (v338 != 1)
  {
LABEL_73:
    v274 = &qword_34D6A8;
    v275 = &unk_2D15A0;
    v276 = v336;
    goto LABEL_74;
  }

  sub_30B8(v336, &qword_34D6D0, qword_2D34A0);
LABEL_82:
  v368 = v500;
  v369 = v528;
  (v529)(v500, v528, v250);
  v370 = sub_2CDFE0();
  v371 = sub_2CE670();
  if (os_log_type_enabled(v370, v371))
  {
    v372 = swift_slowAlloc();
    *v372 = 0;
    _os_log_impl(&dword_0, v370, v371, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse Correct update verb and news mediaType present in AudioNLv3Intent.", v372, 2u);
  }

  (v540)(v368, v250);
  v373 = v539;
  v374 = sub_2B7B44();
  v375 = v542;
  v376 = &v542[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId];
  *v376 = v374;
  v376[1] = v377;

  v378 = sub_2B8018();
  v379 = &v375[OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier];
  *v379 = v378;
  v379[1] = v380;

  (v529)(v507, v369, v250);

  v381 = sub_2CDFE0();
  v382 = sub_2CE670();

  v383 = os_log_type_enabled(v381, v382);
  v384 = v489;
  if (v383)
  {
    v385 = swift_slowAlloc();
    v386 = swift_slowAlloc();
    *v385 = 138412546;
    v387 = v376[1];
    if (v387)
    {
      v388 = *v376;
      sub_10C40();
      swift_allocError();
      *v389 = v388;
      v389[1] = v387;

      v390 = _swift_stdlib_bridgeErrorToNSError();
      v391 = v390;
    }

    else
    {
      v390 = 0;
      v391 = 0;
    }

    *(v385 + 4) = v390;
    *v386 = v391;
    *(v385 + 12) = 2112;
    v424 = v379[1];
    if (v424)
    {
      v425 = *v379;
      sub_10C40();
      swift_allocError();
      *v426 = v425;
      v426[1] = v424;

      v427 = _swift_stdlib_bridgeErrorToNSError();
      v428 = v427;
    }

    else
    {
      v427 = 0;
      v428 = 0;
    }

    v373 = v539;
    *(v385 + 14) = v427;
    v386[1] = v428;
    _os_log_impl(&dword_0, v381, v382, "SwitchPodcastNewsPreferenceFlow#checkAndSetParse newsPodcastTopicId: %@ & newsPodcastIdentifier: %@.", v385, 0x16u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();
  }

  (v540)(v507, v559);
  sub_FED50(v373);
  (*(v544 + 8))(v543, v384);
  v429 = sub_2CAFE0();
  (*(*(v429 - 8) + 8))(v541, v429);
LABEL_104:
  sub_30B8(v545, &qword_354F10, &unk_2D7330);
  return 1;
}

uint64_t sub_203034()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input, &qword_34E480, &qword_2D2280);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse, &qword_354F10, &unk_2D7330);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider));
  return v0;
}

uint64_t sub_203124()
{
  sub_203034();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SwitchNewsSourcePreferenceFlow(uint64_t a1)
{
  result = qword_354D58;
  if (!qword_354D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2031D0(uint64_t a1)
{
  sub_203308(319, &qword_34E5A0, &type metadata accessor for Input);
  if (v1 <= 0x3F)
  {
    sub_203308(319, &unk_354D68, &type metadata accessor for Parse);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_203308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_203370()
{
  result = qword_354F08;
  if (!qword_354F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F08);
  }

  return result;
}

uint64_t sub_203410(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SwitchNewsSourcePreferenceFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2034C8()
{
  v1 = *(sub_2C8D90() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1F9584(v4, v0 + v2, v5, v6);
}

uint64_t sub_203564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_203588(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  dispatch_group_leave(v5);
}

uint64_t sub_2035E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_203650()
{
  result = qword_354F28;
  if (!qword_354F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F28);
  }

  return result;
}

Swift::Int sub_2036A4()
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

Swift::Int sub_203710(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

void sub_203760(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_330AA8;
  v6._object = v3;
  v5 = sub_2CEDF0(v4, v6);

  *a2 = v5 != 0;
}

uint64_t sub_2037E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20396C();
  v5 = sub_2039C0();
  v6 = sub_203A14();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_203858()
{
  result = qword_354F30;
  if (!qword_354F30)
  {
    sub_2DB30(&qword_354F38, &qword_2D73A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F30);
  }

  return result;
}

unint64_t sub_2038C0()
{
  result = qword_354F40;
  if (!qword_354F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F40);
  }

  return result;
}

unint64_t sub_203918()
{
  result = qword_354F48;
  if (!qword_354F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F48);
  }

  return result;
}

unint64_t sub_20396C()
{
  result = qword_354F50;
  if (!qword_354F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F50);
  }

  return result;
}

unint64_t sub_2039C0()
{
  result = qword_354F58;
  if (!qword_354F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F58);
  }

  return result;
}

unint64_t sub_203A14()
{
  result = qword_354F60;
  if (!qword_354F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354F60);
  }

  return result;
}

void sub_203A68(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a2;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (v16)
  {
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = a1;
    v17[4] = a3;
    v17[5] = a4;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;

      v20 = v39;
      v21 = [v19 hashedRouteUIDs];
      if (!v21)
      {
LABEL_15:
        v38 = a3;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v31 = sub_3ED0(v9, static Logger.default);
        swift_beginAccess();
        (*(v10 + 16))(v15, v31, v9);
        v32 = sub_2CDFE0();
        v33 = sub_2CE670();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v37 = a4;
          v35 = v34;
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          *(v35 + 4) = 0;
          *v36 = 0;
          _os_log_impl(&dword_0, v32, v33, "SiriAudioUIAssertionProvider#suppressSnippetIfneeded routeId: %@", v35, 0xCu);
          sub_212CC(v36);

          a4 = v37;
        }

        (*(v10 + 8))(v15, v9);
        sub_204B3C(a1, 0, 0, v38, a4);

        return;
      }
    }

    else
    {
      type metadata accessor for DetermineIntent();
      v26 = swift_dynamicCastClass();

      v27 = v39;
      if (!v26)
      {
        goto LABEL_15;
      }

      v21 = [v26 targetDeviceIds];
      if (!v21)
      {
        goto LABEL_15;
      }
    }

    v28 = v21;
    sub_2CE410();

    sub_35E0((v5 + 96), *(v5 + 120));
    v29 = swift_allocObject();
    *(v29 + 16) = sub_205ED8;
    *(v29 + 24) = v17;

    sub_2CDE00();

    v30 = v39;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v22, v9);
    v23 = sub_2CDFE0();
    v24 = sub_2CE670();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "SiriAudioUIAssertionProvider#suppressSnippetIfneeded no intent passed in", v25, 2u);
    }

    (*(v10 + 8))(v13, v9);
    sub_204B3C(a1, 0, 0, a3, a4);
  }
}

uint64_t sub_203F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a1;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v24 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    if (a2)
    {
      sub_10C40();
      swift_allocError();
      v23[1] = a3;
      *v19 = v26;
      v19[1] = a2;

      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 4) = v20;
    *v18 = v21;
    _os_log_impl(&dword_0, v15, v16, "SiriAudioUIAssertionProvider#suppressSnippetIfneeded routeId: %@", v17, 0xCu);
    sub_212CC(v18);

    a5 = v24;
  }

  (*(v11 + 8))(v13, v10);
  return sub_204B3C(v25, v26, a2, a5, a6);
}

uint64_t sub_204218(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE670();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "SiriAudioUIAssertionProvider#acquireUIAssertion...", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a2;
  v16[4] = a3;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    type metadata accessor for DetermineIntent();
    v23 = swift_dynamicCastClass();

    if (!v23)
    {
LABEL_11:
      sub_204558(0, 0, v4, a2, a3);
    }

    v24 = a1;
    v20 = [v23 targetDeviceIds];
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_10:

    goto LABEL_11;
  }

  v18 = v17;

  v19 = a1;
  v20 = [v18 hashedRouteUIDs];
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v20;
  sub_2CE410();

  sub_35E0(v4 + 12, v4[15]);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_205E24;
  *(v22 + 24) = v16;

  sub_2CDE00();
}

uint64_t sub_204558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2CDFE0();
  v14 = sub_2CE670();

  if (os_log_type_enabled(v13, v14))
  {
    v25 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    if (a2)
    {
      sub_10C40();
      swift_allocError();
      *v17 = v25;
      v17[1] = a2;

      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v15 + 4) = v18;
    *v16 = v19;
    _os_log_impl(&dword_0, v13, v14, "SiriAudioUIAssertionProvider#acquireUIAssertion routeId: %@", v15, 0xCu);
    sub_212CC(v16);
  }

  (*(v9 + 8))(v11, v8);
  sub_35E0(a3 + 7, a3[10]);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v26;
  v23 = v27;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v23;

  sub_2CC850();
}

double sub_204860(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_204EC8(a1 & 1);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v14, v7);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v24 = v11;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    if (v13)
    {
      sub_10C40();
      swift_allocError();
      v23 = a4;
      *v19 = v24;
      v19[1] = v13;

      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 4) = v20;
    *v18 = v21;
    _os_log_impl(&dword_0, v15, v16, "SiriAudioUIAssertionProvider#acquireUIAssertion returning sessionID: %@", v17, 0xCu);
    sub_212CC(v18);

    v11 = v24;
  }

  (*(v8 + 8))(v10, v7);
  a3(v11, v13);

  return result;
}

uint64_t sub_204B3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    result = sub_2CEDA0();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
  v12 = sub_2CE260();
  [v11 setViewId:v12];

LABEL_7:
  sub_35E0((v5 + 56), *(v5 + 80));
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a4;
  v14[5] = a5;

  sub_2CC850();
}

void sub_204CE8(char a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_204EC8(a1 & 1);
    v8 = v7;

    if (v8)
    {
      if (a3 >> 62)
      {
        if (sub_2CEDA0())
        {
LABEL_5:
          if ((a3 & 0xC000000000000001) != 0)
          {
            v9 = sub_2CECD0();
          }

          else
          {
            if (!*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_20;
            }

            v9 = *(a3 + 32);
          }

          v10 = v9;
          v11 = sub_2CE260();

          [v10 setCorrespondingSessionID:v11];

          if ((a3 & 0xC000000000000001) != 0)
          {
            v12 = sub_2CECD0();
LABEL_12:
            v13 = v12;
            v14 = sub_2CE260();
            [v13 setViewId:v14];

            goto LABEL_15;
          }

          if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
          {
            v12 = *(a3 + 32);
            goto LABEL_12;
          }

LABEL_20:
          __break(1u);
          return;
        }
      }

      else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_5;
      }
    }
  }

LABEL_15:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_205AA8(a3);
  }

  a4(a3);
}

uint64_t sub_204EC8(char a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE670();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "SiriAudioUIAssertionProvider#fetchSessionIDIfNeeded shouldSuppressSnippet: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  if (a1)
  {
    return sub_2050A4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2050A4()
{
  v1 = v0;
  v2 = sub_2CE150();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2CE180();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2CE1A0();
  v41 = *(v49 - 8);
  v5 = __chkstk_darwin(v49);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v38 - v7;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v15 = *(v9 + 16);
  v15(v13, v14, v8);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "SiriAudioUIAssertionProvider#acquireAndReleaseQuickControlsAssertion acquire Media Remote assertion.", v18, 2u);
  }

  v19 = *(v9 + 8);
  v19(v13, v8);
  v20 = v1;
  sub_35E0((v1 + 56), *(v1 + 80));
  v21 = sub_2CC830();
  v23 = v22;
  if (v22)
  {
    v24 = v21;
    sub_205924();

    v38 = sub_2CE9B0();
    v25 = v39;
    sub_2CE190();
    v26 = v40;
    sub_2CE1C0();
    v48 = v23;
    v41 = *(v41 + 8);
    (v41)(v25, v49);
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v24;
    v27[4] = v48;
    aBlock[4] = sub_205970;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A4294;
    aBlock[3] = &unk_339280;
    v28 = _Block_copy(aBlock);

    v29 = v42;
    sub_2CE160();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10101C();
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v30 = v44;
    v31 = v47;
    sub_2CEC10();
    v32 = v38;
    sub_2CE9A0();
    _Block_release(v28);

    (*(v46 + 8))(v30, v31);
    (*(v43 + 8))(v29, v45);
    (v41)(v26, v49);
  }

  else
  {
    v33 = v48;
    v15(v48, v14, v8);
    v34 = sub_2CDFE0();
    v35 = sub_2CE680();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "SiriAudioUIAssertionProvider#acquireAndReleaseQuickControlsAssertion No UI sessionID has been provided", v36, 2u);
    }

    v19(v33, v8);
    return 0;
  }

  return v24;
}

uint64_t sub_2056D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2CDFE0();
  v10 = sub_2CE670();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "SiriAudioUIAssertionProvider#acquireAndReleaseQuickControlsAssertion release Media Remote assertion.", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  sub_35E0(a1 + 7, a1[10]);
  return sub_2CC840();
}

uint64_t sub_2058B8()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_205924()
{
  result = qword_34FF18;
  if (!qword_34FF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34FF18);
  }

  return result;
}

uint64_t sub_20597C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_205994(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_2CECD0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_205F30;
  }

  __break(1u);
  return result;
}

void (*sub_205A20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_2CECD0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_205AA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_205AA8(unint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
LABEL_19:
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2CDFE0();
  v8 = sub_2CE660();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    v25 = v9;
    *v9 = 136446210;
    if (a1 >> 62)
    {
      v10 = sub_2CEDA0();
    }

    else
    {
      v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    v26 = v8;
    v27 = v7;
    v28 = v5;
    v29 = v3;
    v30 = v2;
    if (v10)
    {
      v11 = 0;
      v7 = 0;
      v31 = a1 & 0xFFFFFFFFFFFFFF8;
      v32 = a1 & 0xC000000000000001;
      v12 = 0xE000000000000000;
      while (1)
      {
        if (v32)
        {
          v13 = sub_2CECD0();
          v14 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v11 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v13 = *(a1 + 8 * v11 + 32);
          v14 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            goto LABEL_14;
          }
        }

        v15 = v13;
        v5 = v10;
        v16 = [v15 description];
        v3 = a1;
        v17 = sub_2CE270();
        v2 = v18;

        v10 = v5;
        v33 = v7;
        v34 = v12;

        v36._countAndFlagsBits = v17;
        a1 = v3;
        v36._object = v2;
        sub_2CE350(v36);

        v7 = v33;
        v12 = v34;
        ++v11;
        if (v14 == v5)
        {
          goto LABEL_17;
        }
      }
    }

    v7 = 0;
    v12 = 0xE000000000000000;
LABEL_17:
    v20 = sub_3F08(v7, v12, &v35);

    v21 = v25;
    *(v25 + 1) = v20;
    v22 = v27;
    _os_log_impl(&dword_0, v27, v26, "SiriAudioUIAssertionProvider#logRenderingViewInfo views: %{public}s", v21, 0xCu);
    sub_306C(v24);

    return (*(v29 + 8))(v28, v30);
  }

  else
  {
LABEL_15:

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_205E34(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_205E90()
{

  return _swift_deallocObject(v0, 48);
}

double sub_205EE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_7F0EC(a1);
  v2(v3);

  return result;
}

uint64_t sub_205F3C()
{
  type metadata accessor for InternalSignalsManager();
  v0 = swift_allocObject();
  sub_2CB4A0();
  sub_2CB490();
  sub_2CB810();
  swift_allocObject();
  result = sub_2CB7F0();
  *(v0 + 16) = result;
  off_355060 = v0;
  return result;
}

uint64_t static InternalSignalsManager.doesIntent(_:haveInternalSignalWith:)(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  if (qword_34C000 != -1)
  {
LABEL_20:
    swift_once();
  }

  v38 = v12;
  v42 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v40 = *(v7 + 16);
  v40(v14, v15, v6);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = v15;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "InternalSignalsManager#doesIntent#haveInternalSignalWith (lock aquired)", v18, 2u);
    v15 = v44;
  }

  v19 = *(v7 + 8);
  v43 = v7 + 8;
  v44 = v6;
  v41 = v19;
  v19(v14, v6);
  v20 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0(a1);
  v12 = v20;
  v7 = v20[2];
  if (v7)
  {
    v21 = 0;
    v6 = v20 + 5;
    while (1)
    {
      if (v21 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = *(v6 - 1);
      a1 = *v6;

      v46._countAndFlagsBits = a2;
      v46._object = a3;
      if (sub_2CE3B0(v46))
      {
        break;
      }

      ++v21;
      v6 += 2;
      if (v7 == v21)
      {
        goto LABEL_11;
      }
    }

    v29 = v38;
    v30 = v44;
    v40(v38, v15, v44);

    v31 = sub_2CDFE0();
    v32 = sub_2CE690();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136315138;
      v35 = sub_3F08(v14, a1, &v45);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_0, v31, v32, "InternalSignalsManager#doesIntent#haveInternalSignalWith %s is present. (unlock)", v33, 0xCu);
      sub_306C(v34);
    }

    else
    {
    }

    v41(v29, v30);
    v28 = 1;
  }

  else
  {
LABEL_11:

    v22 = v39;
    v23 = v44;
    v40(v39, v15, v44);

    v24 = sub_2CDFE0();
    v25 = sub_2CE690();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_3F08(a2, a3, &v45);
      _os_log_impl(&dword_0, v24, v25, "InternalSignalsManager#doesIntenthaveInternalSignalWith prefix: %s is not present in intent. (unlock)", v26, 0xCu);
      sub_306C(v27);
    }

    v41(v22, v23);
    v28 = 0;
  }

  sub_2CB800();

  return v28;
}

uint64_t static InternalSignalsManager.getSignal(with:from:)(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (qword_34C000 != -1)
  {
LABEL_19:
    swift_once();
  }

  v39 = v12;
  v43 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v41 = *(v7 + 16);
  v41(v14, v15, v6);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v15;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "InternalSignalsManager#getSignal (lock aquired)", v18, 2u);
    v15 = v45;
  }

  v19 = *(v7 + 8);
  v44 = v7 + 8;
  v45 = v6;
  v42 = v19;
  v19(v14, v6);
  v20 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0(a3);
  v12 = v20;
  v7 = v20[2];
  if (v7)
  {
    v21 = 0;
    v6 = v20 + 5;
    while (1)
    {
      if (v21 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_19;
      }

      v14 = *(v6 - 1);
      a3 = *v6;

      v47._countAndFlagsBits = a1;
      v47._object = a2;
      if (sub_2CE3B0(v47))
      {
        break;
      }

      ++v21;
      v6 += 2;
      if (v7 == v21)
      {
        goto LABEL_11;
      }
    }

    v28 = v39;
    v29 = v45;
    v41(v39, v15, v45);
    v30 = v28;

    v31 = sub_2CDFE0();
    v32 = sub_2CE690();

    v33 = v31;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_3F08(v14, a3, &v46);
      _os_log_impl(&dword_0, v33, v32, "InternalSignalsManager#getSignal returning signal: %s. (unlock)", v34, 0xCu);
      sub_306C(v35);
    }

    else
    {
    }

    v42(v30, v29);

    sub_2CB800();

    v36 = sub_2CE320();
    sub_208000(v36, v14, a3);

    v37 = sub_2CE2E0();

    return v37;
  }

  else
  {
LABEL_11:

    v22 = v40;
    v23 = v45;
    v41(v40, v15, v45);
    v24 = sub_2CDFE0();
    v25 = sub_2CE690();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "InternalSignalsManager#getSignal could not find signal. (unlock)", v26, 2u);
    }

    v42(v22, v23);

    sub_2CB800();

    return 0;
  }
}

uint64_t static InternalSignalsManager.add(_:to:)(uint64_t a1, unint64_t a2, void *a3)
{
  v40 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v37 = *(v6 + 16);
  v38 = v11;
  v37(v10, v11, v5);

  v12 = a3;
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v5;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_3F08(v40, v16, &v41);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    v20 = v12;
    _os_log_impl(&dword_0, v13, v14, "InternalSignalsManager#add signal: %s, to intent: %@...", v17, 0x16u);
    sub_212CC(v18);

    sub_306C(v19);

    a2 = v16;
    v5 = v36;
  }

  v21 = *(v6 + 8);
  v21(v10, v5);
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    if (qword_34C000 != -1)
    {
      swift_once();
    }

    return sub_206F78(v40, a2, v23);
  }

  else
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      if (qword_34C000 != -1)
      {
        swift_once();
      }

      return sub_2080B0(v40, a2, v26);
    }

    else
    {
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        if (qword_34C000 != -1)
        {
          swift_once();
        }

        return sub_208610(v40, a2, v28);
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = v29;
          if (qword_34C000 != -1)
          {
            swift_once();
          }

          return sub_208B70(v40, a2, v30);
        }

        else
        {
          v31 = v39;
          v37(v39, v38, v5);
          v32 = sub_2CDFE0();
          v33 = sub_2CE680();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_0, v32, v33, "InternalSignalsManager#add Unexpected intent type when adding internal signal", v34, 2u);
          }

          return (v21)(v31, v5);
        }
      }
    }
  }
}

uint64_t sub_206F78(uint64_t a1, unint64_t a2, void *a3)
{
  v43 = a3;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v42 = v9;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v16 = *(v6 + 16);
  v45 = v6 + 16;
  v46 = v15;
  v44 = v16;
  v16(v14, v15, v5);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InternalSignalsManager#add#fromPlayMediaIntent (lock aquired)", v19, 2u);
  }

  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v14, v5);
  v23 = [v43 backingStore];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v43 = v20;
    v26 = [v24 privatePlayMediaIntentData];
    if (!v26)
    {
      v27 = [objc_allocWithZone(_INPBPrivatePlayMediaIntentData) init];
      [v25 setPrivatePlayMediaIntentData:v27];
      v26 = v27;
    }

    v28 = [v25 privatePlayMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2CE260();
      [v29 addInternalSignal:v30];
    }

    v44(v12, v46, v5);

    v31 = sub_2CDFE0();
    v32 = sub_2CE690();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = a2;
      v36 = v34;
      v47 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_3F08(a1, v35, &v47);
      _os_log_impl(&dword_0, v31, v32, "InternalSignalsManager#add#fromPlayMediaIntent added %s to playMediaIntent. (unlock)", v33, 0xCu);
      sub_306C(v36);
    }

    v21(v12, v5);

    sub_2CB800();
  }

  else
  {

    v38 = v42;
    v44(v42, v46, v5);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "InternalSignalsManager#add#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v41, 2u);
    }

    v21(v38, v5);
    return sub_2CB800();
  }
}

uint64_t static InternalSignalsManager.remove(_:from:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v35 = a3;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v33 = *(v6 + 16);
  v34 = v12;
  v33(v11, v12, v5);

  v13 = sub_2CDFE0();
  v14 = sub_2CE690();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v6;
    v17 = a1;
    v18 = v16;
    v36 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_3F08(v17, a2, &v36);
    _os_log_impl(&dword_0, v13, v14, "InternalSignalsManager#remove %s...", v15, 0xCu);
    sub_306C(v18);
    a1 = v17;
    v6 = v32;
  }

  v19 = *(v6 + 8);
  v19(v11, v5);
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    if (qword_34C000 != -1)
    {
      swift_once();
    }

    return sub_2090D0(a1, a2, v21);
  }

  else
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      if (qword_34C000 != -1)
      {
        swift_once();
      }

      return sub_209704(a1, a2, v24);
    }

    else
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = v25;
        if (qword_34C000 != -1)
        {
          swift_once();
        }

        return sub_209D38(a1, a2, v26);
      }

      else
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          if (qword_34C000 != -1)
          {
            swift_once();
          }

          return sub_20A36C(a1, a2, v28);
        }

        else
        {
          v33(v9, v34, v5);
          v29 = sub_2CDFE0();
          v30 = sub_2CE680();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_0, v29, v30, "InternalSignalsManager#remove Unexpected intent type when removing internal signal", v31, 2u);
          }

          return (v19)(v9, v5);
        }
      }
    }
  }
}

uint64_t sub_207934(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2079E0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *_s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 privatePlayMediaIntentData];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v2 = [v3 privateAddMediaIntentData];
      if (!v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v2 = [v4 privateUpdateMediaAffinityIntentData];
        if (!v2)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
          return _swiftEmptyArrayStorage;
        }

        v2 = [v5 privateSearchForMediaIntentData];
        if (!v2)
        {
          return _swiftEmptyArrayStorage;
        }
      }
    }
  }

  v6 = v2;
  v7 = [v2 internalSignals];

  if (v7)
  {
    v8 = sub_2CE410();

    return v8;
  }

  return _swiftEmptyArrayStorage;
}

BOOL _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v39 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v36 = *(v5 + 16);
  v36(v9, v10, v4);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "InternalSignalsManager#doesIntent#have (lock aquired)", v13, 2u);
  }

  v14 = *(v5 + 8);
  v41 = v5 + 8;
  v42 = v4;
  v37 = v14;
  v14(v9, v4);
  v15 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC08internalF03forSaySSGSo8INIntentC_tFZ_0(a1);
  v16 = v15;
  v17 = *(a2 + 16);
  v38 = a2;
  v18 = (a2 + 40);
  v19 = v17 + 1;
  do
  {
    if (!--v19)
    {
      break;
    }

    v20 = v18 + 2;
    v21 = *v18;
    v43[0] = *(v18 - 1);
    v43[1] = v21;
    __chkstk_darwin(v15);
    *(&v35 - 2) = v43;

    v22 = sub_13964(sub_13A68, (&v35 - 4), v16);

    v18 = v20;
  }

  while ((v22 & 1) == 0);

  v23 = v40;
  v24 = v42;
  v36(v40, v10, v42);

  v25 = sub_2CDFE0();
  v26 = sub_2CE690();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v27 = 136315394;
    v28 = sub_2CE420();
    v30 = sub_3F08(v28, v29, v43);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    if (v19)
    {
      v31 = 0;
    }

    else
    {
      v31 = 7630702;
    }

    if (v19)
    {
      v32 = 0xE000000000000000;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = sub_3F08(v31, v32, v43);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_0, v25, v26, "InternalSignalsManager#doesIntent signals: %s %s present in intent. (unlock)", v27, 0x16u);
    swift_arrayDestroy();
  }

  v37(v23, v24);

  sub_2CB800();

  return v19 != 0;
}

unint64_t sub_208000(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2CE330();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2CE3D0();
}

uint64_t sub_2080B0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v40 = a1;
  v41 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v39 = a2;
  v42 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#add#fromAddMediaIntent (lock aquired)", v17, 2u);
  }

  v18 = *(v5 + 8);
  v18(v12, v4);
  v19 = [v41 backingStore];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v41 = v18;
    v22 = [v20 privateAddMediaIntentData];
    if (!v22)
    {
      v23 = [objc_allocWithZone(_INPBPrivateAddMediaIntentData) init];
      [v21 setPrivateAddMediaIntentData:v23];
      v22 = v23;
    }

    v24 = [v21 privateAddMediaIntentData];
    v25 = v39;
    if (v24)
    {
      v26 = v24;
      v27 = sub_2CE260();
      [v26 addInternalSignal:v27];
    }

    v14(v10, v13, v4);

    v28 = sub_2CDFE0();
    v29 = sub_2CE690();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_3F08(v40, v25, &v43);
      _os_log_impl(&dword_0, v28, v29, "InternalSignalsManager#add#fromAddMediaIntent added %s to addMediaIntent. (unlock)", v30, 0xCu);
      sub_306C(v31);
    }

    v41(v10, v4);

    sub_2CB800();
  }

  else
  {

    v32 = v38;
    v14(v38, v13, v4);
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "InternalSignalsManager#add#fromAddMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v35, 2u);
    }

    v18(v32, v4);

    sub_2CB800();
  }
}

uint64_t sub_208610(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v40 = a1;
  v41 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v39 = a2;
  v42 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent (lock aquired)", v17, 2u);
  }

  v18 = *(v5 + 8);
  v18(v12, v4);
  v19 = [v41 backingStore];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v41 = v18;
    v22 = [v20 privateUpdateMediaAffinityIntentData];
    if (!v22)
    {
      v23 = [objc_allocWithZone(_INPBPrivateUpdateMediaAffinityIntentData) init];
      [v21 setPrivateUpdateMediaAffinityIntentData:v23];
      v22 = v23;
    }

    v24 = [v21 privateUpdateMediaAffinityIntentData];
    v25 = v39;
    if (v24)
    {
      v26 = v24;
      v27 = sub_2CE260();
      [v26 addInternalSignal:v27];
    }

    v14(v10, v13, v4);

    v28 = sub_2CDFE0();
    v29 = sub_2CE690();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_3F08(v40, v25, &v43);
      _os_log_impl(&dword_0, v28, v29, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent added %s to updateMediaIntent. (unlock)", v30, 0xCu);
      sub_306C(v31);
    }

    v41(v10, v4);

    sub_2CB800();
  }

  else
  {

    v32 = v38;
    v14(v38, v13, v4);
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent Unexpected backing store error while adding internal signal. (unlock)", v35, 2u);
    }

    v18(v32, v4);

    sub_2CB800();
  }
}

uint64_t sub_208B70(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v40 = a1;
  v41 = a3;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v39 = a2;
  v42 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#add#fromSearchMediaIntent (lock aquired)", v17, 2u);
  }

  v18 = *(v5 + 8);
  v18(v12, v4);
  v19 = [v41 backingStore];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v41 = v18;
    v22 = [v20 privateSearchForMediaIntentData];
    if (!v22)
    {
      v23 = [objc_allocWithZone(_INPBPrivateSearchForMediaIntentData) init];
      [v21 setPrivateSearchForMediaIntentData:v23];
      v22 = v23;
    }

    v24 = [v21 privateSearchForMediaIntentData];
    v25 = v39;
    if (v24)
    {
      v26 = v24;
      v27 = sub_2CE260();
      [v26 addInternalSignal:v27];
    }

    v14(v10, v13, v4);

    v28 = sub_2CDFE0();
    v29 = sub_2CE690();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_3F08(v40, v25, &v43);
      _os_log_impl(&dword_0, v28, v29, "InternalSignalsManager#add#fromSearchMediaIntent added %s to searchMediaIntent. (unlock)", v30, 0xCu);
      sub_306C(v31);
    }

    v41(v10, v4);

    sub_2CB800();
  }

  else
  {

    v32 = v38;
    v14(v38, v13, v4);
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "InternalSignalsManager#add#fromSearchMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v35, 2u);
    }

    v18(v32, v4);

    sub_2CB800();
  }
}

uint64_t sub_2090D0(uint64_t a1, unint64_t a2, void *a3)
{
  v50 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v45 - v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v49 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v47 = *(v6 + 16);
  v47(v13, v14, v5);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v48 = (v6 + 16);
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#remove#fromPlayMediaIntent (lock aquired)", v17, 2u);
  }

  v48 = *(v6 + 8);
  v48(v13, v5);
  v18 = [a3 backingStore];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v45 = v19;
    v20 = [v19 privatePlayMediaIntentData];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 internalSignals];

      if (v22)
      {
        v23 = sub_2CE410();

        v24 = *(v23 + 16);
        v25 = v50;
        if (v24)
        {
          v26 = 0;
          v27 = (v23 + 40);
          while (*(v27 - 1) != v25 || *v27 != a2)
          {
            v29 = sub_2CEEA0();
            v25 = v50;
            if (v29)
            {
              break;
            }

            ++v26;
            v27 += 2;
            if (v24 == v26)
            {
              goto LABEL_18;
            }
          }

          v33 = [v45 privatePlayMediaIntentData];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 internalSignals];
            if (v35)
            {
              v36 = v35;
              v37 = sub_2CE410();

              v51 = v37;
              sub_207934(v26);

              if (v51)
              {
                v38.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v38.super.isa = 0;
              }

              [v34 setInternalSignals:v38.super.isa];
            }

            else
            {
              [v34 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v39 = v46;
    v47(v46, v14, v5);

    v40 = sub_2CDFE0();
    v41 = sub_2CE690();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_3F08(v50, a2, &v51);
      _os_log_impl(&dword_0, v40, v41, "InternalSignalsManager#remove#fromPlayMediaIntent removed %s from playMediaIntent. (unlock)", v42, 0xCu);
      sub_306C(v43);
    }

    v48(v39, v5);

    sub_2CB800();
  }

  else
  {

    v47(v9, v14, v5);
    v30 = sub_2CDFE0();
    v31 = sub_2CE680();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#remove#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v32, 2u);
    }

    v48(v9, v5);

    sub_2CB800();
  }
}

uint64_t sub_209704(uint64_t a1, unint64_t a2, void *a3)
{
  v50 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v45 - v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v49 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v47 = *(v6 + 16);
  v47(v13, v14, v5);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v48 = (v6 + 16);
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#remove#fromAddMediaIntent (lock aquired)", v17, 2u);
  }

  v48 = *(v6 + 8);
  v48(v13, v5);
  v18 = [a3 backingStore];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v45 = v19;
    v20 = [v19 privateAddMediaIntentData];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 internalSignals];

      if (v22)
      {
        v23 = sub_2CE410();

        v24 = *(v23 + 16);
        v25 = v50;
        if (v24)
        {
          v26 = 0;
          v27 = (v23 + 40);
          while (*(v27 - 1) != v25 || *v27 != a2)
          {
            v29 = sub_2CEEA0();
            v25 = v50;
            if (v29)
            {
              break;
            }

            ++v26;
            v27 += 2;
            if (v24 == v26)
            {
              goto LABEL_18;
            }
          }

          v33 = [v45 privateAddMediaIntentData];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 internalSignals];
            if (v35)
            {
              v36 = v35;
              v37 = sub_2CE410();

              v51 = v37;
              sub_207934(v26);

              if (v51)
              {
                v38.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v38.super.isa = 0;
              }

              [v34 setInternalSignals:v38.super.isa];
            }

            else
            {
              [v34 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v39 = v46;
    v47(v46, v14, v5);

    v40 = sub_2CDFE0();
    v41 = sub_2CE690();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_3F08(v50, a2, &v51);
      _os_log_impl(&dword_0, v40, v41, "InternalSignalsManager#remove#fromAddMediaIntent removed %s from addMediaIntent. (unlock)", v42, 0xCu);
      sub_306C(v43);
    }

    v48(v39, v5);

    sub_2CB800();
  }

  else
  {

    v47(v9, v14, v5);
    v30 = sub_2CDFE0();
    v31 = sub_2CE680();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#remove#fromAddMediaIntent Unexpected backing store error adding internal signal. (unlock)", v32, 2u);
    }

    v48(v9, v5);

    sub_2CB800();
  }
}

uint64_t sub_209D38(uint64_t a1, unint64_t a2, void *a3)
{
  v50 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v45 - v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v49 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v47 = *(v6 + 16);
  v47(v13, v14, v5);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v48 = (v6 + 16);
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#remove#fromUpdateMediaIntent (lock aquired)", v17, 2u);
  }

  v48 = *(v6 + 8);
  v48(v13, v5);
  v18 = [a3 backingStore];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v45 = v19;
    v20 = [v19 privateUpdateMediaAffinityIntentData];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 internalSignals];

      if (v22)
      {
        v23 = sub_2CE410();

        v24 = *(v23 + 16);
        v25 = v50;
        if (v24)
        {
          v26 = 0;
          v27 = (v23 + 40);
          while (*(v27 - 1) != v25 || *v27 != a2)
          {
            v29 = sub_2CEEA0();
            v25 = v50;
            if (v29)
            {
              break;
            }

            ++v26;
            v27 += 2;
            if (v24 == v26)
            {
              goto LABEL_18;
            }
          }

          v33 = [v45 privateUpdateMediaAffinityIntentData];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 internalSignals];
            if (v35)
            {
              v36 = v35;
              v37 = sub_2CE410();

              v51 = v37;
              sub_207934(v26);

              if (v51)
              {
                v38.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v38.super.isa = 0;
              }

              [v34 setInternalSignals:v38.super.isa];
            }

            else
            {
              [v34 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v39 = v46;
    v47(v46, v14, v5);

    v40 = sub_2CDFE0();
    v41 = sub_2CE690();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_3F08(v50, a2, &v51);
      _os_log_impl(&dword_0, v40, v41, "InternalSignalsManager#remove#fromUpdateMediaIntent removed %s from updateMediaIntent. (unlock)", v42, 0xCu);
      sub_306C(v43);
    }

    v48(v39, v5);

    sub_2CB800();
  }

  else
  {

    v47(v9, v14, v5);
    v30 = sub_2CDFE0();
    v31 = sub_2CE680();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#remove#fromUpdateMediaIntent Unexpected backing store error adding internal signal. (unlock)", v32, 2u);
    }

    v48(v9, v5);

    sub_2CB800();
  }
}

uint64_t sub_20A36C(uint64_t a1, unint64_t a2, void *a3)
{
  v50 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v45 - v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  if (qword_34C000 != -1)
  {
    swift_once();
  }

  v49 = off_355060;

  sub_2CB7E0();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v47 = *(v6 + 16);
  v47(v13, v14, v5);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v48 = (v6 + 16);
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "InternalSignalsManager#remove#fromSearchMediaIntent (lock aquired)", v17, 2u);
  }

  v48 = *(v6 + 8);
  v48(v13, v5);
  v18 = [a3 backingStore];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v45 = v19;
    v20 = [v19 privateSearchForMediaIntentData];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 internalSignals];

      if (v22)
      {
        v23 = sub_2CE410();

        v24 = *(v23 + 16);
        v25 = v50;
        if (v24)
        {
          v26 = 0;
          v27 = (v23 + 40);
          while (*(v27 - 1) != v25 || *v27 != a2)
          {
            v29 = sub_2CEEA0();
            v25 = v50;
            if (v29)
            {
              break;
            }

            ++v26;
            v27 += 2;
            if (v24 == v26)
            {
              goto LABEL_18;
            }
          }

          v33 = [v45 privateSearchForMediaIntentData];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 internalSignals];
            if (v35)
            {
              v36 = v35;
              v37 = sub_2CE410();

              v51 = v37;
              sub_207934(v26);

              if (v51)
              {
                v38.super.isa = sub_2CE400().super.isa;
              }

              else
              {
                v38.super.isa = 0;
              }

              [v34 setInternalSignals:v38.super.isa];
            }

            else
            {
              [v34 setInternalSignals:0];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v39 = v46;
    v47(v46, v14, v5);

    v40 = sub_2CDFE0();
    v41 = sub_2CE690();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_3F08(v50, a2, &v51);
      _os_log_impl(&dword_0, v40, v41, "InternalSignalsManager#remove#fromSearchMediaIntent removed %s from searchMediaIntent. (unlock)", v42, 0xCu);
      sub_306C(v43);
    }

    v48(v39, v5);

    sub_2CB800();
  }

  else
  {

    v47(v9, v14, v5);
    v30 = sub_2CDFE0();
    v31 = sub_2CE680();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "InternalSignalsManager#remove#fromSearchMediaIntent Unexpected backing store error adding internal signal. (unlock)", v32, 2u);
    }

    v48(v9, v5);

    sub_2CB800();
  }
}

uint64_t sub_20A9C4()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_F3F4(v21, &v14, qword_34C708, &qword_2D1620);
  if (v15)
  {

    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_30B8(&v14, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

uint64_t sub_20AE68(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2CC2B0();
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  sub_F3F4(a1, &v44 - v10, &qword_34E480, &qword_2D2280);
  sub_EEAC(a3, v70);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v69[3] = &type metadata for StringsBackedAppNameResolver;
  v12 = sub_2869C();
  v69[4] = v12;
  v69[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v69[0] + 16);
  sub_2C9A00();
  v67[3] = v6;
  v67[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v67);
  sub_2CC2A0();
  v66[3] = sub_2CC040();
  v66[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v66);
  sub_2CC030();
  v13 = sub_2CB4A0();
  v14 = sub_2CB490();
  v65[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v65[3] = v13;
  v65[0] = v14;
  v46 = type metadata accessor for AudioAppResolutionFlow(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  v17 = sub_2CA7B0();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent;
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent) = 0;
  swift_beginAccess();
  v47 = v11;
  sub_BED04(v11, v15 + v16);
  swift_endAccess();
  v19 = *(v15 + v18);
  *(v15 + v18) = a2;

  sub_EEAC(v69, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver);
  sub_EEAC(v68, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService);
  sub_EEAC(v70, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher);
  v20 = (v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  *v20 = sub_104B9C;
  v20[1] = 0;
  sub_EEAC(v67, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags);
  sub_EEAC(v66, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider);
  sub_EEAC(v65, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v69, v64);
  sub_EEAC(v68, v63);
  v21 = CATDefaultMode;
  v22 = sub_2CBC00();
  v23 = a2;
  v24 = sub_2CBBF0();
  sub_2CC2A0();
  v25 = sub_F9A0(v64, v64[3]);
  v44 = &v44;
  __chkstk_darwin(v25);
  v27 = (&v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  type metadata accessor for CatService();
  v29 = swift_allocObject();
  v62[3] = &type metadata for StringsBackedAppNameResolver;
  v62[4] = v12;
  v30 = swift_allocObject();
  v62[0] = v30;
  v31 = v27[3];
  v30[3] = v27[2];
  v30[4] = v31;
  v30[5] = v27[4];
  v32 = v27[1];
  v30[1] = *v27;
  v30[2] = v32;
  v61[3] = v22;
  v61[4] = &protocol witness table for MorphunProvider;
  v61[0] = v24;
  v60[3] = v6;
  v60[4] = &protocol witness table for FeatureFlagProvider;
  v33 = sub_F390(v60);
  v34 = v45;
  (*(v45 + 16))(v33, v8, v6);
  *(v29 + 296) = v21;
  sub_EEAC(v60, v29 + 256);
  sub_EEAC(v62, v59);
  sub_EEAC(v61, v58);
  sub_EEAC(v63, v57);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v35 = sub_2CCA30();

  v36 = sub_2CCA20();
  v54[3] = v35;
  v54[4] = &protocol witness table for MultiUserConnectionProvider;
  v54[0] = v36;
  v53[3] = sub_2CB9E0();
  v53[4] = &protocol witness table for DeviceProvider;
  sub_F390(v53);
  sub_2CB9C0();
  sub_EEAC(v59, v29 + 16);
  sub_EEAC(v58, v29 + 216);
  sub_EEAC(v57, v29 + 56);
  sub_EEAC(v54, v29 + 96);
  sub_EEAC(v53, v29 + 176);
  sub_F3F4(v55, &v48, qword_34C708, &qword_2D1620);
  v37 = v34;
  if (v49)
  {

    sub_30B8(v55, qword_34C708, &qword_2D1620);
    sub_306C(v57);
    sub_306C(v58);
    sub_306C(v59);
    (*(v34 + 8))(v8, v6);
    sub_306C(v63);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v62);
    sub_306C(v53);
    sub_306C(v54);
    sub_F338(&v48, &v50);
  }

  else
  {
    sub_EEAC(v57, &v50);
    v38 = sub_2C9E60();
    swift_allocObject();
    v39 = sub_2C9E50();
    v51 = v38;
    v52 = &protocol witness table for ContactsManager;

    *&v50 = v39;
    sub_30B8(v55, qword_34C708, &qword_2D1620);
    sub_306C(v57);
    sub_306C(v58);
    sub_306C(v59);
    (*(v37 + 8))(v8, v6);
    sub_306C(v63);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v62);
    sub_306C(v53);
    sub_306C(v54);
    if (v49)
    {
      sub_30B8(&v48, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v50, v29 + 136);
  sub_306C(v64);
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService) = v29;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v40 = swift_allocObject();

  sub_306C(v68);
  sub_306C(v70);
  sub_30B8(v47, &qword_34E480, &qword_2D2280);
  sub_306C(v65);
  sub_306C(v66);
  sub_306C(v67);
  sub_306C(v69);
  v40[2] = 0xD000000000000011;
  v40[3] = 0x80000000002DA8D0;
  v40[4] = v29;
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService) = v40;
  v41 = (v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer);
  *v41 = sub_104BA4;
  v41[1] = 0;
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state) = 0;
  v70[0] = v15;
  sub_216000(&qword_353898, type metadata accessor for AudioAppResolutionFlow, &unk_2D41F0);
  v42 = sub_2C97B0();

  return v42;
}

uint64_t sub_20B6F0(char *a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v2 - 8);
  v4 = &v84 - v3;
  v90 = sub_2CA810();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2CA870();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v87 = &v84 - v13;
  v14 = __chkstk_darwin(v12);
  v86 = &v84 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v84 - v17;
  v19 = __chkstk_darwin(v16);
  v84 = &v84 - v20;
  v21 = __chkstk_darwin(v19);
  v92 = &v84 - v22;
  __chkstk_darwin(v21);
  v24 = &v84 - v23;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v26 = *(v9 + 16);
  v94 = v25;
  v95 = v9 + 16;
  v93 = v26;
  v26(v24, v25, v8);
  v27 = sub_2CDFE0();
  v28 = sub_2CE690();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v85 = v18;
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "AmbiguousPlayFlow#on Handling input", v29, 2u);
    v18 = v85;
  }

  v30 = *(v9 + 8);
  v30(v24, v8);
  v31 = v98;
  sub_2CA790();
  v32 = v96;
  v33 = v97;
  v34 = (*(v96 + 88))(v31, v97);
  if (v34 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_6;
  }

  if (v34 != enum case for Parse.directInvocation(_:))
  {
    if (v34 == enum case for Parse.pegasusResults(_:))
    {
LABEL_6:
      (*(v32 + 8))(v98, v33);
      v35 = v92;
      v93(v92, v94, v8);
      v36 = sub_2CDFE0();
      v37 = sub_2CE680();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "AmbiguousPlayFlow#on received unsupported parse", v38, 2u);
      }

      v30(v35, v8);
      return 0;
    }

    v49 = v88;
    v93(v88, v94, v8);
    v50 = sub_2CDFE0();
    v51 = sub_2CE660();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "AmbiguousPlayFlow#on received supported parse", v52, 2u);
    }

    v30(v49, v8);
    (*(v96 + 8))(v98, v97);
    v53 = sub_2CA7B0();
    v54 = *(v53 - 8);
    (*(v54 + 16))(v4, a1, v53);
    (*(v54 + 56))(v4, 0, 1, v53);
    v55 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
    v56 = v89;
    swift_beginAccess();
    sub_A4888(v4, v56 + v55);
    goto LABEL_30;
  }

  v92 = a1;
  v39 = v98;
  (*(v32 + 96))(v98, v33);
  v40 = v39;
  v41 = v90;
  (*(v91 + 32))(v6, v40, v90);
  sub_238E4C(v6, v99);
  if (v100 == 4)
  {
    v98 = v6;
    v58 = v99[5];
    v57 = v99[6];
    v59 = v99[0];

    if (v57)
    {
      v93(v18, v94, v8);

      v60 = sub_2CDFE0();
      v61 = sub_2CE680();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v85 = v18;
        v63 = v62;
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        sub_10C40();
        swift_allocError();
        *v65 = v58;
        v65[1] = v57;
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v66;
        *v64 = v66;
        _os_log_impl(&dword_0, v60, v61, "PlayMediaShim DirectInvocation reports an error: %@", v63, 0xCu);
        sub_30B8(v64, &unk_34FC00, &unk_2D0150);

        v18 = v85;
      }

      else
      {
      }

      v30(v18, v8);
      v46 = *(v91 + 8);
      v47 = v98;
      v48 = v90;
      goto LABEL_36;
    }

    if (!v59)
    {
      v80 = v84;
      v93(v84, v94, v8);
      v81 = sub_2CDFE0();
      v82 = sub_2CE680();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v81, v82, "PlayMediaShim DirectInvocation doesn't include audioExperience", v83, 2u);
      }

      v30(v80, v8);
      v46 = *(v91 + 8);
      v47 = v98;
      goto LABEL_19;
    }

    (*(v91 + 8))(v98, v41);
    v79 = *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience);
    *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience) = v59;

    return 1;
  }

  if (v100 != 255)
  {
    sub_30B8(v99, &qword_34CCB0, &qword_2D5710);
  }

  sub_238E4C(v6, v101);
  if (!v103)
  {
    v98 = v4;
    v67 = v6;
    v68 = v102;

    v69 = v86;
    v93(v86, v94, v8);
    v70 = sub_2CDFE0();
    v71 = sub_2CE690();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "AmbiguousPlayFlow#on received replay request direct invocation. Handling in SiriAudio", v72, 2u);
    }

    v30(v69, v8);
    (*(v91 + 8))(v67, v41);
    v73 = sub_2CA7B0();
    v74 = *(v73 - 8);
    v75 = v98;
    (*(v74 + 16))(v98, v92, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v76 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
    v77 = v89;
    swift_beginAccess();
    sub_A4888(v75, v77 + v76);
LABEL_30:
    swift_endAccess();
    return 1;
  }

  if (v103 != 255)
  {
    sub_30B8(v101, &qword_34CCB0, &qword_2D5710);
  }

  v42 = v87;
  v93(v87, v94, v8);
  v43 = sub_2CDFE0();
  v44 = sub_2CE680();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "Only DirectInvocation from PlayMediaShim is supported", v45, 2u);
  }

  v30(v42, v8);
  v46 = *(v91 + 8);
  v47 = v6;
LABEL_19:
  v48 = v41;
LABEL_36:
  v46(v47, v48);
  return 0;
}

uint64_t sub_20C3FC(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v18 = a1;
  v2 = sub_2CDFD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v9 = qword_35F760;
  sub_2CDFB0();
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = "ambiguousPlayFlowFrameAction";
  *(v12 + 24) = 28;
  *(v12 + 32) = 2;
  (*(v3 + 32))(v12 + v10, v6, v2);
  v13 = (v12 + v11);
  v14 = v19;
  *v13 = v18;
  v13[1] = v14;

  v15 = sub_2CE9E0();
  sub_2CDF90(v15, &dword_0, v9, "ambiguousPlayFlowFrameAction", 28, 2, v8, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

  sub_212A20(v20, sub_13B2C, v12);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20C658(int a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v45 = a4;
  v42 = a1;
  v46 = a1;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v48 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v40 = *(v11 + 16);
  v41 = v16;
  v40(v15, v16, v10);
  v17 = a2;
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();

  v20 = os_log_type_enabled(v18, v19);
  v47 = v17;
  if (v20)
  {
    v37 = v11;
    v38 = a5;
    v39 = a3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 136315138;
    v23 = [v17 hashedRouteUIDs];
    if (v23)
    {
      v24 = v23;
      v25 = sub_2CE410();
    }

    else
    {
      v25 = 0;
    }

    v49 = v25;
    sub_20410(&qword_353C98, &unk_2D6A00);
    v32 = sub_2CEB70();
    v34 = v33;

    v35 = sub_3F08(v32, v34, &v50);

    *(v21 + 4) = v35;
    _os_log_impl(&dword_0, v18, v19, "AmbiguousPlayFlow#execute Resolved hashed route ids: %s", v21, 0xCu);
    sub_306C(v22);

    v26 = *(v37 + 8);
    v26(v15, v10);
    a5 = v38;
    if ((v46 & 0x100) == 0)
    {
      return sub_20DF24(v43, v44, v47, v45, a5);
    }
  }

  else
  {

    v26 = *(v11 + 8);
    v26(v15, v10);
    if ((v46 & 0x100) == 0)
    {
      return sub_20DF24(v43, v44, v47, v45, a5);
    }
  }

  v27 = v42;
  v40(v48, v41, v10);
  v28 = sub_2CDFE0();
  v29 = sub_2CE680();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "AmbiguousPlayFlow#execute WHA route resolution failed. Returning an error", v30, 2u);
  }

  v26(v48, v10);
  if (v27 == 1)
  {
    return sub_20F18C(v47, v45, a5);
  }

  if (v27 == 3)
  {
    return sub_20FB9C(v47, v45, a5);
  }

  return sub_20F7B0(v47, v45, a5);
}

uint64_t sub_20CA84(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C9EC0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v12, v17, v9);
    swift_errorRetain();
    v18 = sub_2CDFE0();
    v19 = sub_2CE680();
    sub_C7340(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v20 = 136446466;
      v21 = sub_2CCCC0();
      v23 = a4;
      v24 = sub_3F08(v21, v22, &v32);

      *(v20 + 4) = v24;
      a4 = v23;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v25;
      v26 = v28;
      *v28 = v25;
      _os_log_impl(&dword_0, v18, v19, "AmbiguousPlayFlow#execute %{public}s Resume first party app intent failed with an error: %@", v20, 0x16u);
      sub_30B8(v26, &unk_34FC00, &unk_2D0150);

      sub_306C(v29);
    }

    (*(v10 + 8))(v12, v9);
    return sub_20EA54(0x7463657078656E75, 0xEF65737261506465, v30, a4);
  }

  else
  {
    sub_2C9EA0();
    a3(v16);
    return (*(v14 + 8))(v16, v13);
  }
}

void sub_20CE00(uint64_t a1, char a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v99 = a5;
  v100 = a4;
  v96 = a3;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v8 - 8);
  v90 = &v85 - v9;
  v91 = sub_2C9C20();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CCB30();
  v88 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CCAC0();
  v87 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2C9EC0();
  v94 = *(v18 - 8);
  v95 = v18;
  __chkstk_darwin(v18);
  v93 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v97 = *(v20 - 8);
  v98 = v20;
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v85 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v85 - v26;
  __chkstk_darwin(v25);
  v30 = &v85 - v29;
  if (a2)
  {
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_2CECB0(104);
    v105._countAndFlagsBits = 0xD00000000000004ELL;
    v105._object = 0x80000000002DF990;
    sub_2CE350(v105);
    swift_getErrorValue();
    v106._countAndFlagsBits = sub_2CEEF0();
    sub_2CE350(v106);

    v107._countAndFlagsBits = 0xD000000000000018;
    v107._object = 0x80000000002DC330;
    sub_2CE350(v107);
    v32 = v103;
    v31 = v104;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = v98;
    v34 = sub_3ED0(v98, static Logger.default);
    swift_beginAccess();
    v35 = v97;
    (*(v97 + 16))(v30, v34, v33);

    v36 = sub_2CDFE0();
    v37 = sub_2CE680();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v101 = v39;
      *v38 = 136315138;
      v40 = sub_3F08(v32, v31, &v101);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_0, v36, v37, "%s", v38, 0xCu);
      sub_306C(v39);
    }

    else
    {
    }

    (*(v35 + 8))(v30, v33);
    *(v96 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
    swift_getErrorValue();
    v108._countAndFlagsBits = sub_2CEEF0();
    v101 = 0xD00000000000001ELL;
    v102 = 0x80000000002DF9E0;
    sub_2CE350(v108);

    sub_20EA54(v101, v102, v100, v99);

    return;
  }

  if (a1)
  {
    v41 = qword_34BF58;

    v42 = a1;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = v98;
    v44 = sub_3ED0(v98, static Logger.default);
    swift_beginAccess();
    v45 = v97;
    (*(v97 + 16))(v27, v44, v43);
    v46 = sub_2CDFE0();
    v47 = sub_2CE690();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v42;
      v50 = swift_slowAlloc();
      v101 = v50;
      *v48 = 136446210;
      v51 = sub_2CCCC0();
      v53 = sub_3F08(v51, v52, &v101);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_0, v46, v47, "AmbiguousPlayFlow#execute %{public}s executing resume flow from controls", v48, 0xCu);
      sub_306C(v50);
      v42 = v49;
    }

    (*(v45 + 8))(v27, v43);
    v54 = v93;
    sub_2C9EA0();
    v100(v54);
    sub_C7340(v42, 0);
LABEL_27:
    (*(v94 + 8))(v54, v95);
    return;
  }

  v86 = v28;
  *(v96 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
  v55 = objc_allocWithZone(NSUserDefaults);
  v56 = sub_2CE260();
  v57 = [v55 initWithSuiteName:v56];

  if (!v57 || (v58 = sub_2CE260(), v59 = [v57 BOOLForKey:v58], v57, v58, (v59 & 1) == 0) || (sub_35E0(v96 + 7, v96[10]), (sub_2CC7B0() & 1) == 0))
  {
    v72 = v87;
    (*(v87 + 104))(v17, enum case for AdditionalMetricsDescription.ModuleName.apf(_:), v15);
    v73 = v88;
    (*(v88 + 104))(v14, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v12);
    sub_2CCAE0();
    (*(v73 + 8))(v14, v12);
    (*(v72 + 8))(v17, v15);
    sub_35E0(v96 + 39, v96[42]);
    v74 = v89;
    v75 = v91;
    (*(v89 + 104))(v11, enum case for ActivityType.fallback(_:), v91);
    v76 = sub_2C98F0();
    v77 = v90;
    (*(*(v76 - 8) + 56))(v90, 1, 1, v76);
    sub_2CB510();

    sub_30B8(v77, &qword_34CB78, &unk_2D0D80);
    (*(v74 + 8))(v11, v75);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v78 = v98;
    v79 = sub_3ED0(v98, static Logger.default);
    swift_beginAccess();
    v80 = v97;
    (*(v97 + 16))(v86, v79, v78);
    v81 = sub_2CDFE0();
    v82 = sub_2CE680();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "AmbiguousPlayFlow#execute no content in the music queue, looking to shuffle local library", v83, 2u);
    }

    (*(v80 + 8))(v86, v78);
    sub_D8B98();
    v84 = sub_2CE7D0();
    sub_1356F8(v92, v84);

    v54 = v93;
    sub_2C9EA0();
    v100(v54);

    goto LABEL_27;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v60 = v98;
  v61 = sub_3ED0(v98, static Logger.default);
  swift_beginAccess();
  v62 = v97;
  (*(v97 + 16))(v24, v61, v60);
  v63 = sub_2CDFE0();
  v64 = sub_2CE660();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v101 = v66;
    *v65 = 136446210;
    v67 = sub_2CCCC0();
    v69 = sub_3F08(v67, v68, &v101);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_0, v63, v64, "AmbiguousPlayFlow#execute %{public}s no flow received from controls for NLv4IntentOnly parse and device is offline, shuffling local library", v65, 0xCu);
    sub_306C(v66);
  }

  (*(v62 + 8))(v24, v60);
  sub_D8B98();
  v70 = sub_2CE7D0();
  sub_1356F8(v92, v70);
  v71 = v93;
  sub_2C9EA0();
  v100(v71);

  (*(v94 + 8))(v71, v95);
}

uint64_t sub_20DB88(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = v3;
  v28 = a2;
  v25 = a1;
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_2C9EC0();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = v4;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AmbiguousPlayFlow#nextFlow", v18, 2u);
    v4 = v24;
  }

  (*(v12 + 8))(v14, v11);
  v19 = *(v4 + 392);
  v20 = sub_2CA7B0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, v25, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  v19(v8, v28, v4 + 352);
  sub_30B8(v8, &qword_34E480, &qword_2D2280);
  v22 = v26;
  sub_2C9EA0();

  a3(v22);
  return (*(v27 + 8))(v22, v9);
}

uint64_t sub_20DF24(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v44 = a4;
  v45 = a5;
  v42 = a1;
  v43 = a2;
  v8 = sub_2CA7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  if (*(v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v18, v19, v12);
    v20 = sub_2CDFE0();
    v21 = sub_2CE690();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "AmbiguousPlayFlow#executeFlow has previously been rejected by controls, executing next flow", v22, 2u);
    }

    (*(v13 + 8))(v18, v12);
    v23 = v43;
    v24 = a3;
    return sub_20DB88(v23, v24, v44);
  }

  v25 = a3;
  if (a3)
  {
    v46 = a3;
    sub_D8B98();
    v41 = a3;
    v26 = sub_2CC140();
    v25 = v41;
    if (v26)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v27 = sub_3ED0(v12, static Logger.default);
      swift_beginAccess();
      (*(v13 + 16))(v16, v27, v12);
      v28 = sub_2CDFE0();
      v29 = sub_2CE690();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "AmbiguousPlayFlow#executeFlow This is a SiriForAirPlay request, pushing the next play flow directly without calling ControlsFlowProvider", v30, 2u);
      }

      (*(v13 + 8))(v16, v12);
      v23 = v43;
      v24 = v41;
      return sub_20DB88(v23, v24, v44);
    }
  }

  v32 = v6[6];
  v40 = v6[5];
  v41 = v32;
  v39 = sub_35E0(v6 + 2, v40);
  (*(v9 + 16))(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v8);
  v33 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v45;
  v36 = swift_allocObject();
  *(v36 + 16) = v6;
  (*(v9 + 32))(v36 + v33, v11, v8);
  *(v36 + v34) = v25;
  v37 = (v36 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v44;
  v37[1] = v35;

  v38 = v25;

  sub_2CDC50();
}

uint64_t sub_20E3C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *))
{
  v54 = a5;
  v55 = a6;
  v53 = a4;
  v9 = sub_2C9EC0();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - v18;
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  if (a2)
  {
    v52 = a3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v21, v22, v12);
    swift_errorRetain();
    v23 = sub_2CDFE0();
    v24 = sub_2CE680();
    sub_C7340(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v56 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_2CEEF0();
      v29 = sub_3F08(v27, v28, &v56);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "AmbiguousPlayFlowFrame#executeFlow Failure getting frame from controls: %s", v25, 0xCu);
      sub_306C(v26);
    }

    (*(v13 + 8))(v21, v12);
    v30 = v53;
    v31 = v54;
    v32 = v55;
    return sub_20DB88(v30, v31, v32);
  }

  if (!a1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v16, v41, v12);
    v42 = sub_2CDFE0();
    v43 = sub_2CE660();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136446210;
      v46 = sub_2CCCC0();
      v50 = v13;
      v48 = sub_3F08(v46, v47, &v56);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "AmbiguousPlayFlow#executeFlow %{public}s no flow received from controls for intent", v44, 0xCu);
      sub_306C(v45);

      (*(v50 + 8))(v16, v12);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    v30 = v53;
    v31 = v54;
    v32 = v55;
    return sub_20DB88(v30, v31, v32);
  }

  v33 = qword_34BF58;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v19, v34, v12);
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v37 = 136446210;
    v38 = sub_2CCCC0();
    v50 = v13;
    v40 = sub_3F08(v38, v39, &v56);

    *(v37 + 4) = v40;
    _os_log_impl(&dword_0, v35, v36, "AmbiguousPlayFlow#executeFlow %{public}s executing resume flow from controls", v37, 0xCu);
    sub_306C(v54);

    (*(v50 + 8))(v19, v12);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  sub_2C9EA0();
  v55(v11);
  sub_C7340(a1, 0);
  return (*(v51 + 8))(v11, v52);
}

uint64_t sub_20EA54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_3F08(a1, a2, &v31);
    _os_log_impl(&dword_0, v14, v15, "AmbiguousPlayFlow#genericErrorDialog Reached logic... %s", v18, 0xCu);
    sub_306C(v19);

    a4 = v17;
    v5 = v29;
  }

  (*(v10 + 8))(v12, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v21;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2CC1F0();
  *(inited + 88) = v22;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2CECB0(59);
  v33._object = 0x80000000002DF820;
  v33._countAndFlagsBits = 0xD000000000000039;
  sub_2CE350(v33);
  v34._countAndFlagsBits = a1;
  v34._object = a2;
  sub_2CE350(v34);
  v23 = v31;
  v24 = v32;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v23;
  *(inited + 104) = v24;
  v25 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  v26[2] = v5;
  v26[3] = a1;
  v27 = v30;
  v26[4] = a2;
  v26[5] = v27;
  v26[6] = a4;

  sub_3D150(v25, 0, sub_212038, v26);
}

uint64_t sub_20EDFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v38 = a6;
  v35 = a3;
  v36 = a5;
  v8 = sub_20410(&unk_3519A0, &qword_2D0980);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v34 = v33 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v13 + 8))(v15, v12);
  v20 = a2[22];
  v33[2] = a2[23];
  v33[1] = sub_35E0(a2 + 19, v20);
  v33[0] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v21 = v34;
  sub_F3F4(a1, v34, &unk_3519A0, &qword_2D0980);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v21, v26 + v22, &unk_3519A0, &qword_2D0980);
  v27 = (v26 + v23);
  v28 = v36;
  v29 = v37;
  v30 = v38;
  *v27 = v35;
  v27[1] = v29;
  *(v26 + v24) = a2;
  *(v26 + v25) = 0;
  v31 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v28;
  v31[1] = v30;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_20F18C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE670();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AmbiguousPlayFlow#unsupportedOnPlatformErrorResponse Reached logic...", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = sub_112C0(_swiftEmptyArrayStorage);
  v20[3] = sub_D8B98();
  v20[4] = &off_3381B8;
  v20[0] = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  v18 = a1;

  sub_3D81C(v16, v20, sub_21202C, v17);

  return sub_30B8(v20, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_20F400(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v35 = a4;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v34 = v33 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v33[0] = 0x80000000002DD100;
  v19 = a2[22];
  v33[3] = a2[23];
  v33[2] = sub_35E0(a2 + 19, v19);
  v33[1] = sub_2CBD50();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v20 = v34;
  sub_F3F4(a1, v34, &unk_3519A0, &qword_2D0980);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_14A58(v20, v25 + v21, &unk_3519A0, &qword_2D0980);
  v26 = (v25 + v22);
  *v26 = 0xD000000000000015;
  v26[1] = v33[0];
  *(v25 + v23) = a2;
  v27 = v35;
  v28 = v36;
  *(v25 + v24) = v36;
  v29 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v37;
  *v29 = v27;
  v29[1] = v30;

  v31 = v28;

  sub_2CBC50();

  return sub_30B8(v38, &qword_34E970, &qword_2D2910);
}

uint64_t sub_20F7EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v35 = a4;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v34 = v33 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v33[0] = 0x80000000002DF800;
  v19 = a2[22];
  v33[3] = a2[23];
  v33[2] = sub_35E0(a2 + 19, v19);
  v33[1] = sub_2CBD50();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v20 = v34;
  sub_F3F4(a1, v34, &unk_3519A0, &qword_2D0980);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_14A58(v20, v25 + v21, &unk_3519A0, &qword_2D0980);
  v26 = (v25 + v22);
  *v26 = 0xD00000000000001BLL;
  v26[1] = v33[0];
  *(v25 + v23) = a2;
  v27 = v35;
  v28 = v36;
  *(v25 + v24) = v36;
  v29 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v37;
  *v29 = v27;
  v29[1] = v30;

  v31 = v28;

  sub_2CBC50();

  return sub_30B8(v38, &qword_34E970, &qword_2D2910);
}

uint64_t sub_20FBD8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, void *))
{
  v25 = a4;
  v26 = a5;
  v10 = v7;
  v27 = a2;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = a1;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, v25, v20, 2u);
    a1 = v24;
  }

  (*(v14 + 8))(v16, v13);
  v28[3] = sub_D8B98();
  v28[4] = &off_3381B8;
  v28[0] = a1;
  v21 = swift_allocObject();
  v21[2] = v10;
  v21[3] = a1;
  v21[4] = v27;
  v21[5] = a3;
  v22 = a1;

  a7(v28, a6, v21);

  return sub_30B8(v28, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_20FE54(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v35 = a4;
  v7 = sub_20410(&unk_3519A0, &qword_2D0980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v34 = v33 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AmbiguousPlayFlow#handleErrorDialogResult Handling dialog Result...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v33[0] = 0x80000000002DD0E0;
  v19 = a2[22];
  v33[3] = a2[23];
  v33[2] = sub_35E0(a2 + 19, v19);
  v33[1] = sub_2CBD50();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v20 = v34;
  sub_F3F4(a1, v34, &unk_3519A0, &qword_2D0980);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_14A58(v20, v25 + v21, &unk_3519A0, &qword_2D0980);
  v26 = (v25 + v22);
  *v26 = 0xD000000000000011;
  v26[1] = v33[0];
  *(v25 + v23) = a2;
  v27 = v35;
  v28 = v36;
  *(v25 + v24) = v36;
  v29 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v37;
  *v29 = v27;
  v29[1] = v30;

  v31 = v28;

  sub_2CBC50();

  return sub_30B8(v38, &qword_34E970, &qword_2D2910);
}

uint64_t sub_210204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(char *), uint64_t a9)
{
  v129 = a8;
  v123 = a7;
  v122 = a6;
  v121 = a5;
  v120 = a4;
  v117 = a3;
  v124 = a1;
  v127 = a9;
  v9 = sub_2C9EC0();
  v130 = *(v9 - 8);
  v131 = v9;
  __chkstk_darwin(v9);
  v128 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2CE000();
  v125 = *(v126 - 8);
  v11 = __chkstk_darwin(v126);
  v115 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v105 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = __chkstk_darwin(v14 - 8);
  v113 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v105 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v19 = __chkstk_darwin(v18 - 8);
  v111 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = &v105 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = __chkstk_darwin(v22 - 8);
  v110 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v108 = &v105 - v25;
  v119 = sub_2CCB30();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_2CCAC0();
  v28 = *(v118 - 8);
  __chkstk_darwin(v118);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v31 = __chkstk_darwin(v106);
  v107 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v105 - v33;
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v35);
  v37 = (&v105 - v36);
  sub_2CCFB0();

  v38 = sub_2CCF80();
  sub_F3F4(v117, v37, &unk_3519A0, &qword_2D0980);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v124 = v38;
  if (EnumCaseMultiPayload == 1)
  {
    v40 = *v37;
    v135 = v120;
    v136 = v121;

    v139._countAndFlagsBits = 95;
    v139._object = 0xE100000000000000;
    sub_2CE350(v139);
    v42 = v135;
    v41 = v136;
    v121 = v40;
    swift_getErrorValue();
    v135 = sub_2CEEF0();
    v136 = v43;
    v44 = sub_2CE3C0();
    v46 = v45;
    v135 = v42;
    v136 = v41;

    v140._countAndFlagsBits = v44;
    v140._object = v46;
    sub_2CE350(v140);

    v47 = v118;
    (*(v28 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.apf(_:), v118);
    v48 = v116;
    v49 = v119;
    (*(v116 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v119);
    v120 = sub_2CCAE0();

    (*(v48 + 8))(v27, v49);
    (*(v28 + 8))(v30, v47);
    sub_EEAC((v122 + 39), &v135);
    v122 = sub_35E0(&v135, v137);
    v50 = enum case for ActivityType.failed(_:);
    v51 = sub_2C9C20();
    v52 = *(v51 - 8);
    v53 = v110;
    (*(v52 + 104))(v110, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = sub_2CA130();
    v55 = v111;
    (*(*(v54 - 8) + 56))();
    v56 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v57 = sub_2C98F0();
    v58 = *(v57 - 8);
    v59 = v113;
    (*(v58 + 104))(v113, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    if (v123)
    {

      sub_2CE710();
    }

    else
    {
    }

    v82 = v125;
    v83 = v115;
    sub_2CB4E0();

    sub_30B8(v59, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v55, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v53, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v135);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v84 = v126;
    v85 = sub_3ED0(v126, static Logger.default);
    swift_beginAccess();
    (*(v82 + 16))(v83, v85, v84);
    swift_errorRetain();
    v86 = sub_2CDFE0();
    v87 = sub_2CE680();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v134 = v89;
      *v88 = 136315138;
      swift_getErrorValue();
      v132 = sub_2CEEF0();
      v133 = v90;
      v91 = sub_2CE3C0();
      v93 = sub_3F08(v91, v92, &v134);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_0, v86, v87, "AmbiguousPlayFlow#handleErrorDialogResult Could not properly create dialog %s, silently failing...", v88, 0xCu);
      sub_306C(v89);

      (*(v82 + 8))(v115, v84);
    }

    else
    {

      (*(v82 + 8))(v83, v84);
    }

    v94 = v128;
    sub_2C9EB0();
    v129(v94);

    return (*(v130 + 8))(v94, v131);
  }

  else
  {
    v60 = v34;
    sub_14A58(v37, v34, &qword_34C6E8, &unk_2D0FF0);
    v61 = v118;
    (*(v28 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.apf(_:), v118);
    v62 = v116;
    v63 = v119;
    (*(v116 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v119);
    v120 = sub_2CCAE0();
    v121 = v64;
    (*(v62 + 8))(v27, v63);
    (*(v28 + 8))(v30, v61);
    v65 = v122;
    sub_EEAC((v122 + 39), &v135);
    v118 = v138;
    v119 = sub_35E0(&v135, v137);
    v66 = enum case for ActivityType.failed(_:);
    v67 = sub_2C9C20();
    v68 = *(v67 - 8);
    v69 = v108;
    (*(v68 + 104))(v108, v66, v67);
    v70 = v69;
    (*(v68 + 56))(v69, 0, 1, v67);
    v71 = v107;
    sub_F3F4(v60, v107, &qword_34C6E8, &unk_2D0FF0);
    v72 = *(v71 + *(v106 + 48));

    v73 = sub_2CA130();
    v74 = *(v73 - 8);
    v75 = v109;
    (*(v74 + 32))(v109, v71, v73);
    v76 = v75;
    (*(v74 + 56))(v75, 0, 1, v73);
    v77 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v78 = sub_2C98F0();
    v79 = *(v78 - 8);
    v80 = v112;
    (*(v79 + 104))(v112, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    v81 = v80;
    if (v123)
    {
      sub_2CE710();
    }

    v96 = v126;
    v97 = v125;
    sub_2CB4E0();

    sub_30B8(v81, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v70, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v135);
    v98 = sub_2C9BE0();
    sub_35E0(v65 + 14, v65[17]);
    sub_2CA150();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v99 = sub_3ED0(v96, static Logger.default);
    swift_beginAccess();
    v100 = v114;
    (*(v97 + 16))(v114, v99, v96);
    v101 = sub_2CDFE0();
    v102 = sub_2CE670();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_0, v101, v102, "AmbiguousPlayFlow#handleErrorDialogResult Dialog successfully generated, responding and exiting...", v103, 2u);
    }

    (*(v97 + 8))(v100, v96);
    v104 = v128;
    sub_2C9EB0();
    v129(v104);

    (*(v130 + 8))(v104, v131);
    return sub_30B8(v60, &qword_34C6E8, &unk_2D0FF0);
  }
}

void *sub_2112EC()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);

  sub_306C(v0 + 14);
  sub_306C(v0 + 19);
  sub_306C(v0 + 24);
  sub_306C(v0 + 29);
  sub_306C(v0 + 34);
  sub_306C(v0 + 39);
  sub_306C(v0 + 44);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input, &qword_34E480, &qword_2D2280);

  return v0;
}

uint64_t sub_2113A8()
{
  sub_2112EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AmbiguousPlayFlow(uint64_t a1)
{
  result = qword_355170;
  if (!qword_355170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_211454(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_211548()
{
  result = qword_355320;
  if (!qword_355320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355320);
  }

  return result;
}

uint64_t sub_2115E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbiguousPlayFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_211640(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_BYTE *))
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(v9);
}

uint64_t sub_211714(_BYTE *a1, uint64_t (*a2)(_BYTE *))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return a2(v4);
}

uint64_t sub_211758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v74 = a5;
  v75 = a6;
  v11 = sub_2CDFD0();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  v13 = __chkstk_darwin(v11);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v79 = &v70 - v14;
  v80 = sub_2CE000();
  v15 = *(v80 - 8);
  v16 = __chkstk_darwin(v80);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v70 - v19;
  v21 = sub_2CDE30();
  __chkstk_darwin(v21);
  v76 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v23;
  v24 = *(v23 + 16);
  v78 = v25;
  v24();
  v26 = sub_2CDDF0();
  v87[3] = v26;
  v87[4] = &protocol witness table for EncryptionProvider;
  v27 = sub_F390(v87);
  (*(*(v26 - 8) + 16))(v27, a3, v26);
  v86[3] = sub_2CC710();
  v86[4] = &protocol witness table for SharedContextProvider;
  v86[0] = a4;

  sub_1DC8D8(a1, &v83);
  if (v84)
  {
    sub_F338(&v83, v85);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v28 = v80;
    v29 = sub_3ED0(v80, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v20, v29, v28);
    v30 = a7;
    v31 = sub_2CDFE0();
    v32 = sub_2CE690();

    v33 = os_log_type_enabled(v31, v32);
    v70 = v30;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v83 = v35;
      *v34 = 136446210;
      v36 = sub_2CE770();
      v38 = sub_3F08(v36, v37, &v83);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v31, v32, "INPlayMediaIntent#performRouteResolution This is a WHA request... Running for intent INPlayMediaIntent: %{public}s", v34, 0xCu);
      sub_306C(v35);

      (*(v15 + 8))(v20, v80);
    }

    else
    {

      (*(v15 + 8))(v20, v28);
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v74;
    *(v51 + 24) = v75;
    v52 = qword_34BF98;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = qword_35F760;
    v54 = v79;
    sub_2CDFB0();
    v55 = v71;
    v56 = v72;
    v57 = v73;
    (*(v72 + 16))(v71, v54, v73);
    v58 = (*(v56 + 80) + 33) & ~*(v56 + 80);
    v59 = (v12 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = "resolveWHADestinationDevices";
    *(v60 + 24) = 28;
    *(v60 + 32) = 2;
    (*(v56 + 32))(v60 + v58, v55, v57);
    v61 = (v60 + v59);
    *v61 = sub_21631C;
    v61[1] = v51;

    v62 = sub_2CE9E0();
    v63 = v79;
    sub_2CDF90(v62, &dword_0, v53, "resolveWHADestinationDevices", 28, 2, v79, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1E3F14;
    *(v64 + 24) = v60;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_216358;
    *(v65 + 24) = v64;
    sub_EEAC(v85, &v83);
    sub_EEAC(v86, v82);
    sub_EEAC(v87, v81);
    v66 = swift_allocObject();
    v66[2] = sub_21639C;
    v66[3] = v65;
    sub_F338(&v83, (v66 + 4));
    sub_F338(v82, (v66 + 9));
    v67 = v70;
    v66[14] = v70;
    sub_F338(v81, (v66 + 15));
    v68 = v67;

    v50 = v76;
    v49 = v78;
    sub_2CDE40();

    (*(v56 + 8))(v63, v57);

    sub_306C(v85);
  }

  else
  {
    sub_30B8(&v83, &qword_3547A8, &unk_2D6BE8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = v80;
    v40 = sub_3ED0(v80, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v18, v40, v39);
    v41 = a7;
    v42 = sub_2CDFE0();
    v43 = sub_2CE660();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v83 = v45;
      *v44 = 136446210;
      v46 = sub_2CE770();
      v48 = sub_3F08(v46, v47, &v83);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "INPlayMediaIntent#performRouteResolution No homeAutomationProvider was found in the intent: %{public}s. This is expected if no home automation entities were requested", v44, 0xCu);
      sub_306C(v45);
    }

    (*(v15 + 8))(v18, v39);
    v49 = v78;
    v74(0);
    v50 = v76;
  }

  (*(v77 + 8))(v50, v49);
  sub_306C(v87);
  return sub_306C(v86);
}

uint64_t sub_212048(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_210204(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_212130(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v29 = a3;
  v26 = a1;
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_2C9EC0();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = a2;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AmbiguousPlayFlow#nextFlow", v18, 2u);
    a2 = v25;
  }

  (*(v12 + 8))(v14, v11);
  v19 = v29;
  v20 = *(v29 + 392);
  v21 = sub_2CA7B0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v8, v26, v21);
  (*(v22 + 56))(v8, 0, 1, v21);
  v20(v8, a2, v19 + 352);
  sub_30B8(v8, &qword_34E480, &qword_2D2280);
  v23 = v27;
  sub_2C9EA0();

  a4(v23);
  return (*(v28 + 8))(v23, v9);
}

uint64_t sub_2124D0(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v53 = a2;
  v49 = a1;
  v10 = sub_2CA7B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v50 = *(v14 - 1);
  v51 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = swift_allocObject();
  v52 = a5;
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  v54 = v20;
  v55 = a4;
  if (*(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) != 1)
  {
    v48 = a3;
    if (a3)
    {
      v56 = a3;
      sub_D8B98();
      swift_retain_n();
      if (sub_2CC140())
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v31 = v51;
        v32 = sub_3ED0(v51, static Logger.default);
        swift_beginAccess();
        v33 = v50;
        (*(v50 + 16))(v17, v32, v31);
        v34 = sub_2CDFE0();
        v35 = sub_2CE690();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_0, v34, v35, "AmbiguousPlayFlow#executeFlow This is a SiriForAirPlay request, pushing the next play flow directly without calling ControlsFlowProvider", v36, 2u);
        }

        (*(v33 + 8))(v17, v31);

        v29 = v53;
        v30 = v48;
        goto LABEL_14;
      }
    }

    else
    {
      swift_retain_n();
    }

    v37 = v55;
    v38 = v55[5];
    v52 = v55[6];
    v51 = sub_35E0(v55 + 2, v38);
    (*(v11 + 16))(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v10);
    v39 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v40 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    (*(v11 + 32))(v41 + v39, v13, v10);
    v42 = v48;
    *(v41 + v40) = v48;
    v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
    v44 = v54;
    *v43 = sub_24350;
    v43[1] = v44;

    v45 = v42;

    sub_2CDC50();
  }

  v21 = a3;
  v22 = qword_34BF58;
  swift_retain_n();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = v51;
  v24 = sub_3ED0(v51, static Logger.default);
  swift_beginAccess();
  v25 = v50;
  (*(v50 + 16))(v19, v24, v23);
  v26 = sub_2CDFE0();
  v27 = sub_2CE690();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "AmbiguousPlayFlow#executeFlow has previously been rejected by controls, executing next flow", v28, 2u);
  }

  (*(v25 + 8))(v19, v23);

  v29 = v53;
  v30 = v21;
LABEL_14:
  sub_212130(v29, v30, v55, v52);
}

uint64_t sub_212A20(void *a1, void (*a2)(char *), uint64_t a3)
{
  v411 = a1;
  v396 = sub_2C9EC0();
  v397 = *(v396 - 8);
  __chkstk_darwin(v396);
  v395 = &v354 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = sub_2CDDF0();
  v381 = *(v382 - 8);
  __chkstk_darwin(v382);
  v378 = &v354 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_2CDE30();
  v379 = *(v380 - 8);
  __chkstk_darwin(v380);
  v377 = &v354 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_2CA340();
  v366 = *(v367 - 8);
  v8 = __chkstk_darwin(v367);
  v358 = &v354 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v360 = &v354 - v11;
  __chkstk_darwin(v10);
  v365 = &v354 - v12;
  v391 = sub_2CA810();
  v390 = *(v391 - 8);
  v13 = __chkstk_darwin(v391);
  v372 = &v354 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v368 = &v354 - v16;
  v17 = __chkstk_darwin(v15);
  v361 = &v354 - v18;
  __chkstk_darwin(v17);
  v393 = &v354 - v19;
  v402 = sub_2CA870();
  v20 = *(v402 - 8);
  v21 = __chkstk_darwin(v402);
  v386 = &v354 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = (&v354 - v24);
  v376 = v26;
  __chkstk_darwin(v23);
  v403 = (&v354 - v27);
  v28 = sub_20410(&qword_34E480, &qword_2D2280);
  v29 = __chkstk_darwin(v28 - 8);
  v371 = &v354 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v387 = &v354 - v32;
  __chkstk_darwin(v31);
  v34 = &v354 - v33;
  v412 = sub_2CA7B0();
  v410 = *(v412 - 8);
  v35 = *(v410 + 64);
  v36 = __chkstk_darwin(v412);
  v373 = &v354 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v36);
  v385 = &v354 - v38;
  v39 = __chkstk_darwin(v37);
  v392 = &v354 - v40;
  __chkstk_darwin(v39);
  v408 = &v354 - v41;
  v42 = sub_2CE000();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v375 = &v354 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v364 = &v354 - v47;
  v48 = __chkstk_darwin(v46);
  v388 = &v354 - v49;
  v50 = __chkstk_darwin(v48);
  v384 = &v354 - v51;
  v52 = __chkstk_darwin(v50);
  v383 = &v354 - v53;
  v54 = __chkstk_darwin(v52);
  v357 = &v354 - v55;
  v56 = __chkstk_darwin(v54);
  v363 = &v354 - v57;
  v58 = __chkstk_darwin(v56);
  v374 = &v354 - v59;
  v60 = __chkstk_darwin(v58);
  v369 = &v354 - v61;
  v62 = __chkstk_darwin(v60);
  v389 = &v354 - v63;
  v64 = __chkstk_darwin(v62);
  v359 = &v354 - v65;
  v66 = __chkstk_darwin(v64);
  v362 = &v354 - v67;
  v68 = __chkstk_darwin(v66);
  v370 = &v354 - v69;
  v70 = __chkstk_darwin(v68);
  v72 = &v354 - v71;
  __chkstk_darwin(v70);
  v74 = &v354 - v73;
  v75 = swift_allocObject();
  v398 = a2;
  *(v75 + 16) = a2;
  *(v75 + 24) = a3;
  v409 = v75;
  v76 = qword_34BF58;
  v401 = a3;
  swift_retain_n();
  if (v76 != -1)
  {
    swift_once();
  }

  v394 = v25;
  v399 = v20;
  v77 = sub_3ED0(v42, static Logger.default);
  swift_beginAccess();
  v78 = *(v43 + 16);
  v404 = v77;
  v413 = v42;
  v406 = (v43 + 16);
  v405 = v78;
  (v78)(v74, v77, v42);
  v79 = sub_2CDFE0();
  v80 = sub_2CE690();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_0, v79, v80, "AmbiguousPlayFlow#execute", v81, 2u);
  }

  v82 = *(v43 + 8);
  v83 = v413;
  v407 = v43 + 8;
  v400 = v82;
  v82(v74, v413);
  v84 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
  v85 = v411;
  swift_beginAccess();
  sub_F3F4(v85 + v84, v34, &qword_34E480, &qword_2D2280);
  v86 = v410;
  v87 = *(v410 + 48);
  v88 = v412;
  if (v87(v34, 1, v412) == 1)
  {
    sub_30B8(v34, &qword_34E480, &qword_2D2280);
    (v405)(v72, v404, v83);
    v89 = sub_2CDFE0();
    v90 = sub_2CE680();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "AmbiguousPlayFlow#execute Parse is nil", v91, 2u);
    }

    v400(v72, v83);
    v92 = v395;
    sub_2C9EB0();
    v398(v92);
    v93 = v397[1];
    v94 = v92;
    v95 = &v417;
    goto LABEL_9;
  }

  v97 = v86 + 32;
  v356 = *(v86 + 32);
  v356(v408, v34, v88);
  v98 = v403;
  sub_2CA790();
  v99 = v399;
  v100 = v394;
  v101 = v402;
  v355 = *(v399 + 16);
  v355(v394, v98, v402);
  v102 = (*(v99 + 88))(v100, v101);
  if (v102 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v391 = v97;
    (*(v99 + 96))(v100, v101);
    v393 = *(v100 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v103 = sub_2CA830();
    objc_opt_self();
    v104 = swift_dynamicCastObjCClass();
    if (!v104)
    {

      v107 = v412;
      goto LABEL_35;
    }

    v105 = v104;
    v106 = v387;
    sub_F3F4(v411 + v84, v387, &qword_34E480, &qword_2D2280);
    v107 = v412;
    if (v87(v106, 1, v412) == 1)
    {

      sub_30B8(v106, &qword_34E480, &qword_2D2280);
LABEL_35:
      v165 = v403;
      v166 = v389;
      v167 = v413;
      (v405)(v389, v404, v413);
      v168 = sub_2CDFE0();
      v169 = sub_2CE680();
      v170 = os_log_type_enabled(v168, v169);
      v171 = v400;
      if (v170)
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&dword_0, v168, v169, "AmbiguousPlayFlow#execute NLv3IntentPlusServerConversion error", v172, 2u);
      }

      v171(v166, v167);
      v173 = v395;
      sub_2C9EB0();
      v398(v173);

      (v397[1])(v173, v396);
      (*(v99 + 8))(v165, v402);
      (*(v410 + 8))(v408, v107);
      v96 = sub_2CAFE0();
      v93 = *(*(v96 - 8) + 8);
      v94 = v394;
      goto LABEL_38;
    }

    v356(v392, v106, v107);
    v175 = v403;
    v176 = v105;
    sub_1DC8D8(v403, v418);
    v177 = v419;
    sub_30B8(v418, &qword_3547A8, &unk_2D6BE8);
    if (v177)
    {
      v178 = v175;
      v179 = v402;
      v355(v386, v178, v402);
      v180 = v107;
      v181 = v410;
      v182 = *(v410 + 16);
      v390 = v105;
      v183 = v385;
      v182(v385, v392, v180);
      v184 = v399;
      v185 = (*(v399 + 80) + 48) & ~*(v399 + 80);
      v186 = (v376 + *(v181 + 80) + v185) & ~*(v181 + 80);
      v187 = swift_allocObject();
      v188 = v411;
      *(v187 + 2) = v176;
      *(v187 + 3) = v188;
      v189 = v409;
      *(v187 + 4) = sub_13BD8;
      *(v187 + 5) = v189;
      (*(v184 + 32))(&v187[v185], v386, v179);
      v190 = v412;
      v356(&v187[v186], v183, v412);
      v191 = v103;

      v192 = v377;
      sub_2CDE20();
      v193 = v378;
      sub_2CDDE0();
      sub_2CC710();
      v194 = sub_2CC700();
      v195 = v403;
      sub_211758(v403, v192, v193, v194, sub_216590, v187, v390);

      (*(v381 + 8))(v193, v382);
      (*(v379 + 8))(v192, v380);
      v196 = *(v181 + 8);
      v196(v392, v190);
      (*(v184 + 8))(v195, v402);
      v196(v408, v190);
      v197 = sub_2CAFE0();
      (*(*(v197 - 8) + 8))(v394, v197);
    }

    else
    {
      v250 = v401;

      v251 = v103;
      v252 = v392;
      sub_2124D0(v175, v392, v176, v411, v398, v250);

      v253 = *(v410 + 8);
      v253(v252, v107);
      (*(v399 + 8))(v175, v402);
      v253(v408, v107);
      v254 = sub_2CAFE0();
      (*(*(v254 - 8) + 8))(v100, v254);
    }

    goto LABEL_39;
  }

  if (v102 == enum case for Parse.directInvocation(_:))
  {
    (*(v99 + 96))(v100, v101);
    v108 = v390;
    v109 = v393;
    v110 = v391;
    (*(v390 + 4))(v393, v100, v391);
    v111 = *(v411 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience);
    v112 = v412;
    if (v111)
    {
      v113 = v383;
      (v405)(v383, v404, v413);
      v114 = v111;
      v115 = sub_2CDFE0();
      v116 = sub_2CE670();
      v117 = os_log_type_enabled(v115, v116);
      v118 = v400;
      if (v117)
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_0, v115, v116, "AmbiguousPlayFlow#execute Constructing INPlayMediaIntent", v119, 2u);
      }

      v120 = v413;
      v118(v113, v413);
      v121 = [objc_allocWithZone(INPlayMediaIntent) init];
      sub_2CDBC0();
      sub_2CDBB0();
      sub_2CDBA0();

      v122 = sub_2CDBD0();
      v123 = sub_1BA200(v114, v122, 0, 0);

      v124 = v384;
      (v405)(v384, v404, v120);
      v125 = sub_2CDFE0();
      v126 = sub_2CE670();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_0, v125, v126, "AmbiguousPlayFlow#execute Constructing playMediaRCHFlowWrapper", v127, 2u);
      }

      v128 = v413;
      v118(v124, v413);
      sub_1356F8(v408, v123);
      (v405)(v388, v404, v128);
      v129 = sub_2CDFE0();
      v130 = sub_2CE670();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v390;
      if (v131)
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&dword_0, v129, v130, "AmbiguousPlayFlow#execute Sending shim input to playMediaRCHFlowWrapper", v133, 2u);
      }

      v118(v388, v413);
      v134 = v395;
      sub_2C9EA0();
      v398(v134);

      (v397[1])(v134, v396);
      v132[1](v393, v391);
    }

    else
    {
      sub_238E4C(v109, v418);
      if (v421)
      {
        if (v421 != 255)
        {
          sub_30B8(v418, &qword_34CCB0, &qword_2D5710);
        }

        v209 = v375;
        (v405)(v375, v404, v413);
        v210 = v108[2];
        v211 = v372;
        v210(v372, v109, v110);
        v212 = sub_2CDFE0();
        v213 = sub_2CE680();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          v411 = swift_slowAlloc();
          v416 = v411;
          *v214 = 136315138;
          v210(v368, v211, v110);
          v215 = sub_2CE2A0();
          v217 = v216;
          v218 = v108[1];
          v219 = v110;
          v218(v211, v110);
          v220 = sub_3F08(v215, v217, &v416);

          *(v214 + 4) = v220;
          _os_log_impl(&dword_0, v212, v213, "AmbiguousPlayFlow#execute Unsupported direct invocation use case %s", v214, 0xCu);
          sub_306C(v411);

          v221 = v375;
        }

        else
        {

          v218 = v108[1];
          v219 = v110;
          v218(v211, v110);
          v221 = v209;
        }

        v400(v221, v413);
        v280 = v395;
        sub_2C9EB0();
        v398(v280);
        (v397[1])(v280, v396);
        v218(v393, v219);
      }

      else
      {
        v255 = v418[2];

        if (v255)
        {
          objc_opt_self();
          v256 = swift_dynamicCastObjCClass();
          if (v256)
          {
            v257 = v408;
            sub_1356F8(v408, v256);
            v258 = v395;
            sub_2C9EA0();
            v398(v258);

            (v397[1])(v258, v396);
            (v108[1])(v109, v110);
            (*(v399 + 8))(v403, v402);
            (*(v410 + 8))(v257, v112);
            goto LABEL_39;
          }
        }

        v411 = v255;
        v290 = v364;
        v291 = v413;
        (v405)(v364, v404, v413);
        v292 = v108;
        v293 = v108[2];
        v294 = v361;
        v293(v361, v109, v110);
        v295 = sub_2CDFE0();
        v296 = sub_2CE680();
        if (os_log_type_enabled(v295, v296))
        {
          v297 = swift_slowAlloc();
          v405 = swift_slowAlloc();
          v416 = v405;
          *v297 = 136315138;
          v293(v368, v294, v110);
          v298 = sub_2CE2A0();
          v300 = v299;
          v406 = v292[1];
          v406(v294, v110);
          v301 = sub_3F08(v298, v300, &v416);

          *(v297 + 4) = v301;
          v302 = v110;
          _os_log_impl(&dword_0, v295, v296, "AmbiguousPlayFlow#execute Unable to convert intent to INPlayMediaIntent from direct invocation use case %s", v297, 0xCu);
          sub_306C(v405);

          v303 = v364;
          v304 = v413;
        }

        else
        {

          v302 = v110;
          v406 = v292[1];
          v406(v294, v110);
          v303 = v290;
          v304 = v291;
        }

        v400(v303, v304);
        v324 = v395;
        sub_2C9EB0();
        v398(v324);

        (v397[1])(v324, v396);
        v406(v393, v302);
      }
    }

    (*(v399 + 8))(v403, v402);
    goto LABEL_83;
  }

  if (v102 == enum case for Parse.NLv4IntentOnly(_:))
  {
LABEL_24:
    v391 = v97;
    v135 = *(v99 + 8);
    v135(v100, v101);
    sub_35E0(v411 + 29, v411[32]);
    v136 = sub_2CC400();
    v399 = v99 + 8;
    if ((v136 & 1) == 0)
    {
      v222 = v374;
      v223 = v413;
      (v405)(v374, v404, v413);
      v224 = sub_2CDFE0();
      v225 = sub_2CE680();
      v226 = os_log_type_enabled(v224, v225);
      v227 = v412;
      if (v226)
      {
        v228 = swift_slowAlloc();
        v229 = v135;
        v230 = swift_slowAlloc();
        v418[0] = v230;
        *v228 = 136315138;
        *(v228 + 4) = sub_3F08(0xD000000000000062, 0x80000000002DF880, v418);
        _os_log_impl(&dword_0, v224, v225, "%s", v228, 0xCu);
        sub_306C(v230);
        v135 = v229;
      }

      v400(v222, v223);
      v231 = v403;
      *(v411 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
      sub_20EA54(0x7463657078656E75, 0xEF65737261506465, sub_13BD8, v409);
      v135(v231, v402);
      (*(v410 + 8))(v408, v227);
      goto LABEL_39;
    }

    v137 = v386;
    sub_2CA790();
    v138 = sub_2CA7C0();
    v135(v137, v101);
    v139 = v412;
    v140 = v413;
    v393 = v135;
    if (v138)
    {
      if (sub_44BB4())
      {
        v141 = v363;
        (v405)(v363, v404, v140);
        v142 = sub_2CDFE0();
        v143 = sub_2CE660();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v418[0] = v145;
          *v144 = 136446210;
          v146 = sub_2CCCC0();
          v148 = sub_3F08(v146, v147, v418);
          v139 = v412;

          *(v144 + 4) = v148;
          _os_log_impl(&dword_0, v142, v143, "AmbiguousPlayFlow#execute %{public}s Resume app intent, handling in SiriAudio.", v144, 0xCu);
          sub_306C(v145);
        }

        v400(v141, v140);
        v149 = v403;
        sub_2CD700();
        swift_allocObject();

        sub_2CD6B0();
        sub_D8B98();
        sub_2CD5E0();
        v150 = sub_2CE8F0();

        v151 = sub_2CD5E0();
        if (v152)
        {
          v394 = v151;
          if (sub_2CBDB0())
          {
            v153 = v357;
            (v405)(v357, v404, v140);
            v154 = sub_2CDFE0();
            v155 = sub_2CE660();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              v405 = v156;
              v406 = swift_slowAlloc();
              v418[0] = v406;
              *v156 = 136446210;
              v157 = sub_2CCCC0();
              v159 = sub_3F08(v157, v158, v418);

              v160 = v405;
              *(v405 + 4) = v159;
              _os_log_impl(&dword_0, v154, v155, "AmbiguousPlayFlow#execute %{public}s Resume first party app intent. Handling in Controls", v160, 0xCu);
              sub_306C(v406);
            }

            v400(v153, v140);
            v161 = v411;
            v162 = v411[5];
            v413 = v411[6];
            sub_35E0(v411 + 2, v162);
            v163 = swift_allocObject();
            v164 = v409;
            v163[2] = sub_13BD8;
            v163[3] = v164;
            v163[4] = v161;

            sub_2CDC40();

            (v393)(v403, v402);
LABEL_83:
            v93 = *(v410 + 8);
            v94 = v408;
            v95 = &v422;
LABEL_9:
            v96 = *(v95 - 32);
LABEL_38:
            v93(v94, v96);
            goto LABEL_39;
          }
        }

        v349 = v408;
        sub_1356F8(v408, v150);
        v350 = v395;
        sub_2C9EA0();
        v398(v350);

        (v397[1])(v350, v396);
        (v393)(v149, v402);
        (*(v410 + 8))(v349, v139);
        goto LABEL_39;
      }
    }

    v281 = v411;
    v282 = v411[5];
    v413 = v411[6];
    sub_35E0(v411 + 2, v282);
    v283 = v410;
    v284 = v385;
    v285 = v408;
    (*(v410 + 16))(v385, v408, v139);
    v286 = v139;
    v287 = (*(v283 + 80) + 40) & ~*(v283 + 80);
    v288 = swift_allocObject();
    v288[2] = v281;
    v288[3] = sub_13BD8;
    v288[4] = v409;
    v356(v288 + v287, v284, v286);

    v289 = v403;
    sub_2CDC50();

    (v393)(v289, v402);
    (*(v283 + 8))(v285, v286);
    goto LABEL_39;
  }

  if (v102 != enum case for Parse.pommesResponse(_:))
  {
    if (v102 != enum case for Parse.uso(_:))
    {
      if (v102 == enum case for Parse.ifClientAction(_:))
      {
        (*(v99 + 96))(v100, v101);
        v232 = v366;
        v233 = v365;
        v234 = v367;
        (*(v366 + 32))(v365, v100, v367);
        v235 = v362;
        v236 = v413;
        (v405)(v362, v404, v413);
        v237 = *(v232 + 16);
        v238 = v360;
        v237(v360, v233, v234);
        v239 = sub_2CDFE0();
        v240 = sub_2CE660();
        v241 = os_log_type_enabled(v239, v240);
        v242 = v400;
        if (v241)
        {
          v243 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v418[0] = v244;
          *v243 = 136315138;
          v237(v358, v238, v234);
          v245 = sub_2CE2A0();
          v247 = v246;
          v248 = *(v232 + 8);
          v411 = ((v232 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v248(v238, v234);
          v249 = sub_3F08(v245, v247, v418);

          *(v243 + 4) = v249;
          _os_log_impl(&dword_0, v239, v240, "AmbiguousPlayFlow#execute received IF client action parse: %s", v243, 0xCu);
          sub_306C(v244);

          v400(v362, v413);
        }

        else
        {

          v325 = *(v232 + 8);
          v411 = ((v232 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v325(v238, v234);
          v242(v235, v236);
        }

        v326 = v410;
        v327 = *(v410 + 16);
        v328 = v385;
        v327(v385, v408, v412);
        v329 = type metadata accessor for AudioFlowProvider();
        v330 = swift_allocObject();
        v331 = sub_2CB4A0();
        v332 = sub_2CB490();
        v419 = v331;
        v420 = &protocol witness table for SiriKitTaskLoggingProvider;
        v418[0] = v332;
        sub_2CA430();
        v333 = sub_20A9C4();
        v415[3] = v329;
        v415[4] = &off_3367A0;
        v415[0] = v330;
        type metadata accessor for ShimFlow(0);
        v334 = swift_allocObject();
        v335 = sub_F9A0(v415, v329);
        v413 = &v354;
        __chkstk_darwin(v335);
        v337 = (&v354 - ((v336 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v338 + 16))(v337);
        v339 = *v337;
        v414[4] = &off_3367A0;
        v414[3] = v329;
        v414[0] = v339;
        v340 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience;
        v341 = type metadata accessor for ShimExperience(0);
        (*(*(v341 - 8) + 56))(&v334[v340], 1, 1, v341);
        v342 = v412;
        v327(&v334[OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input], v328, v412);
        sub_EEAC(v414, &v334[OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_audioFlowProvider]);
        sub_EEAC(v418, &v334[OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider]);
        sub_EEAC(&v416, &v334[OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher]);
        type metadata accessor for PlayMediaCatDialogService();
        v343 = swift_allocObject();
        v343[5] = 0x6964654D79616C50;
        v343[6] = 0xEF746E65746E4961;
        v343[2] = 0xD000000000000011;
        v343[3] = 0x80000000002DA8D0;
        v343[4] = v333;
        *&v334[OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_playMediaCatDialogService] = v343;
        sub_2C9C10();
        swift_allocObject();
        v344 = sub_2C9BF0();
        sub_306C(&v416);
        v345 = *(v326 + 8);
        v346 = v328;
        v347 = v342;
        v345(v346, v342);
        sub_306C(v418);
        sub_306C(v414);
        *&v334[OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_viewFactory] = v344;
        sub_306C(v415);
        v418[0] = v334;
        sub_216000(&qword_355328, type metadata accessor for ShimFlow, &unk_2D14C0);
        v348 = v395;
        sub_2C9E90();

        v398(v348);
        (v397[1])(v348, v396);
        (*(v366 + 8))(v365, v367);
        (*(v399 + 8))(v403, v402);
        v345(v408, v347);
      }

      else
      {
        v305 = v359;
        v306 = v413;
        (v405)(v359, v404, v413);
        v307 = sub_2CDFE0();
        v308 = sub_2CE680();
        v309 = os_log_type_enabled(v307, v308);
        v310 = v403;
        v311 = v400;
        if (v309)
        {
          v312 = swift_slowAlloc();
          *v312 = 0;
          _os_log_impl(&dword_0, v307, v308, "AmbiguousPlayFlow#execute unexpected parse type", v312, 2u);
        }

        v311(v305, v306);
        v313 = v395;
        sub_2C9EB0();
        v398(v313);
        (v397[1])(v313, v396);
        v314 = *(v399 + 8);
        v315 = v402;
        v314(v310, v402);
        (*(v410 + 8))(v408, v412);
        v314(v394, v315);
      }

      goto LABEL_39;
    }

    goto LABEL_24;
  }

  (*(v99 + 96))(v100, v101);
  v198 = *v100;
  v199 = v370;
  (v405)(v370, v404, v413);
  v200 = sub_2CDFE0();
  v201 = sub_2CE670();
  v202 = os_log_type_enabled(v200, v201);
  v397 = v198;
  if (v202)
  {
    v203 = swift_slowAlloc();
    *v203 = 0;
    _os_log_impl(&dword_0, v200, v201, "AmbiguousPlayFlow#execute received .pommesResponse parse.", v203, 2u);
  }

  v400(v199, v413);
  v204 = v371;
  sub_F3F4(v411 + v84, v371, &qword_34E480, &qword_2D2280);
  v205 = v412;
  v206 = v87(v204, 1, v412);
  v207 = v373;
  if (v206 == 1)
  {
    sub_30B8(v204, &qword_34E480, &qword_2D2280);
    v208 = v403;
  }

  else
  {
    v356(v373, v204, v205);
    v259 = sub_1B8014();
    v208 = v403;
    if (v259)
    {
      v260 = v259;
      sub_1DC8D8(v403, v418);
      v261 = v419;
      sub_30B8(v418, &qword_3547A8, &unk_2D6BE8);
      if (v261)
      {
        v355(v386, v208, v402);
        v262 = v205;
        v263 = v410;
        v264 = v385;
        (*(v410 + 16))(v385, v207, v262);
        v265 = v399;
        v266 = (*(v399 + 80) + 48) & ~*(v399 + 80);
        v267 = (v376 + *(v263 + 80) + v266) & ~*(v263 + 80);
        v268 = swift_allocObject();
        v269 = v411;
        *(v268 + 2) = v260;
        *(v268 + 3) = v269;
        v270 = v409;
        *(v268 + 4) = sub_13BD8;
        *(v268 + 5) = v270;
        v271 = v402;
        (*(v265 + 32))(&v268[v266], v386, v402);
        v272 = v264;
        v273 = v412;
        v356(&v268[v267], v272, v412);

        v274 = v260;
        v275 = v377;
        sub_2CDE20();
        v276 = v378;
        sub_2CDDE0();
        sub_2CC710();
        v277 = sub_2CC700();
        v278 = v403;
        sub_211758(v403, v275, v276, v277, sub_2160E0, v268, v274);

        (*(v381 + 8))(v276, v382);
        (*(v379 + 8))(v275, v380);
        v279 = *(v263 + 8);
        v279(v373, v273);
        (*(v265 + 8))(v278, v271);
        v279(v408, v273);
      }

      else
      {
        v351 = v401;

        v352 = v260;
        sub_2124D0(v208, v207, v260, v411, v398, v351);

        v353 = *(v410 + 8);
        v353(v207, v205);
        (*(v399 + 8))(v208, v402);
        v353(v408, v205);
      }

      goto LABEL_39;
    }

    (*(v410 + 8))(v207, v205);
  }

  *(v411 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state) = 1;
  v316 = v369;
  v317 = v413;
  (v405)(v369, v404, v413);
  v318 = sub_2CDFE0();
  v319 = sub_2CE680();
  if (os_log_type_enabled(v318, v319))
  {
    v320 = v316;
    v321 = swift_slowAlloc();
    v322 = swift_slowAlloc();
    v418[0] = v322;
    *v321 = 136315138;
    v205 = v412;
    *(v321 + 4) = sub_3F08(0xD000000000000048, 0x80000000002DF8F0, v418);
    _os_log_impl(&dword_0, v318, v319, "%s", v321, 0xCu);
    sub_306C(v322);

    v323 = v320;
  }

  else
  {

    v323 = v316;
  }

  v400(v323, v317);
  sub_20EA54(0xD000000000000013, 0x80000000002DF940, sub_13BD8, v409);

  (*(v399 + 8))(v208, v402);
  (*(v410 + 8))(v408, v205);
LABEL_39:
}

uint64_t sub_216000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216048(uint64_t a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_20CE00(a1, a2 & 1, v6, v7, v8, v9);
}

uint64_t sub_2160E4()
{
  v1 = sub_2CA870();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2CA7B0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_216244(__int16 a1)
{
  v3 = *(sub_2CA870() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2CA7B0() - 8);
  return sub_20C658(a1 & 0x1FF, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_216358(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return v2(v5);
}

uint64_t sub_21639C(__int16 a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 0x1FF;
  return v2(&v4);
}

uint64_t sub_2163DC()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_2164D0(uint64_t a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20E3C4(a1, a2 & 1, v8, v2 + v6, v9, v10);
}

uint64_t INMediaItem.isInternalSignalPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 privateMediaItemValueData];
      if (v6 && (v7 = v6, v8 = [v6 internalSignals], v7, v8))
      {
        v9 = sub_2CE410();

        v14[0] = v4;
        v14[1] = v5;
        __chkstk_darwin(v10);
        v13[2] = v14;
        v11 = sub_13964(sub_13A88, v13, v9);

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t _s11descr32D959O27NeedsDisambiguationStrategyCMa(uint64_t a1)
{
  result = qword_355358;
  if (!qword_355358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21672C()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_286F0(v21, &v14);
  if (v15)
  {

    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_28760(&v14);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

void *sub_216B3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v26 = v8;
  v27 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v25 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v24[3] = v9;
  v24[4] = &off_337EB0;
  v24[0] = a4;
  type metadata accessor for AddMedia.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v24, v9);
  __chkstk_darwin(v11);
  v13 = (&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v15;
  type metadata accessor for AddMediaCatDialogService();
  v16 = swift_allocObject();
  *(v16 + 55) = -18;
  *(v16 + 16) = 0xD000000000000011;
  *(v16 + 24) = 0x80000000002DA8D0;
  *(v16 + 32) = a1;
  strcpy((v16 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);

  v23[3] = sub_2CC2B0();
  v23[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v23);
  sub_2CC2A0();
  v22[3] = sub_2CC360();
  v22[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v22);
  sub_2CC350();
  v17 = sub_2CB490();
  v21[3] = v8;
  v21[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v21[0] = v17;
  type metadata accessor for AddMediaDialogProvider(0);
  v18 = swift_allocObject();
  v18[15] = v16;
  sub_EEAC(v23, (v18 + 16));
  sub_EEAC(v21, (v18 + 21));
  sub_EEAC(v22, (v18 + 3));
  sub_EEAC(v21, (v18 + 8));
  sub_306C(a2);
  sub_306C(v21);
  sub_306C(v22);
  sub_306C(v23);
  v18[13] = 0xD000000000000011;
  v18[14] = 0x80000000002DA8D0;
  v18[2] = a1;
  v10[2] = v18;
  sub_F338(&v25, (v10 + 3));
  sub_306C(v24);
  return v10;
}

uint64_t sub_216DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_21672C();
  sub_2C9A00();
  sub_2CB4A0();
  v15 = sub_2CB490();
  _s27NeedsDisambiguationStrategyCMa();
  inited = swift_initStackObject();
  v17 = sub_218C84(v14, v35, v15, inited);

  if (a5 == 0x657449616964656DLL && a6 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    *&v34[0] = sub_26838();
    sub_20410(&qword_34C8F8, &unk_2D0AA0);
    sub_72068(&qword_355580, &qword_34C8F8, &unk_2D0AA0, &protocol conformance descriptor for MediaItemDisambiguationStrategy<A>);
    v18 = sub_2C96A0();
    v20 = v19;

    v21 = sub_218EE4;
LABEL_9:
    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    *(v26 + 24) = v20;

    (v21)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  if (a5 == 0xD000000000000010 && 0x80000000002D9DE0 == a6 || (sub_2CEEA0() & 1) != 0)
  {
    v23 = v17[3];
    v22 = v17[4];
    sub_EEAC((v17 + 5), v34);
    v32 = sub_2CC2B0();
    v33 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v31);

    sub_2CC2A0();
    sub_20410(&qword_355570, &qword_2D77C0);
    v24 = swift_allocObject();
    v24[14] = &off_32F220;
    v24[2] = v22;
    v24[3] = v23;
    sub_F338(v34, (v24 + 4));
    sub_F338(&v31, (v24 + 9));
    *&v34[0] = v24;
    sub_72068(&qword_355578, &qword_355570, &qword_2D77C0, &unk_2D0CD8);
    v18 = sub_2C96A0();
    v20 = v25;

    v21 = sub_218EA8;
    goto LABEL_9;
  }

  result = sub_2CED80();
  __break(1u);
  return result;
}

uint64_t sub_217168(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v28[3] = v8;
  v28[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v28[0] = a3;
  type metadata accessor for AddMediaCatDialogService();
  v9 = swift_allocObject();
  *(v9 + 55) = -18;
  *(v9 + 16) = 0xD000000000000011;
  *(v9 + 24) = 0x80000000002DA8D0;
  *(v9 + 32) = a1;
  strcpy((v9 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v26 = v10;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v23 = sub_2CC360();
  v24 = &protocol witness table for StringsFileResolver;
  sub_F390(&v22);
  sub_2CC350();
  v20 = v8;
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = sub_2CB490();
  type metadata accessor for AddMediaDialogProvider(0);
  v11 = swift_allocObject();
  v11[15] = v9;
  sub_EEAC(&v25, (v11 + 16));
  sub_EEAC(&v19, (v11 + 21));
  sub_EEAC(&v22, v18);
  sub_F338(&v19, v17);
  sub_306C(&v22);
  sub_306C(&v25);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v18, (v11 + 3));
  sub_F338(v17, (v11 + 8));
  sub_EEAC(v28, &v25);
  v23 = v10;
  v24 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v22);
  sub_2CC2A0();
  v12 = type metadata accessor for SiriAudioOutputProvider();
  v13 = swift_allocObject();
  sub_F338(&v22, v13 + 16);
  v23 = v12;
  v24 = &off_337EB0;

  *&v22 = v13;
  sub_306C(a2);
  sub_306C(v28);
  v14 = qword_3566B0;
  v15 = sub_2CA360();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + 16) = v11;
  sub_F338(&v25, a4 + 24);
  sub_F338(&v22, a4 + 64);
  return a4;
}

uint64_t sub_21740C()
{
  v118 = sub_2CC360();
  v105 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v94 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_2CC2B0();
  v103 = *(v1 - 8);
  __chkstk_darwin(v1);
  v111 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_20410(&qword_355510, &qword_2D7798);
  v109 = *(v115 - 8);
  v3 = __chkstk_darwin(v115);
  v107 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v94 - v5;
  sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v106 = sub_334A0(0, &qword_355518, INAddMediaIntentResponse_ptr);
  sub_2C9780();
  sub_2C9760();
  v7 = sub_21672C();
  sub_2C9A00();
  v8 = sub_2CB4A0();
  v9 = sub_2CB490();
  v153 = v1;
  v154 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v152);

  sub_2CC2A0();
  v10 = type metadata accessor for SiriAudioOutputProvider();
  v11 = swift_allocObject();
  sub_F338(&v152, v11 + 16);
  v153 = v8;
  v154 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v152 = v9;
  v150 = v10;
  v151 = &off_337EB0;
  *&v149 = v11;
  v108 = _s18NeedsValueStrategyCMa_1();
  v12 = swift_allocObject();
  v13 = sub_F9A0(&v149, v10);
  __chkstk_darwin(v13);
  v15 = (&v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 16);
  v101 = v14;
  v102 = (v16 + 16);
  v100 = v17;
  v17(v15);
  v18 = *v15;
  v119 = v10;
  v12[11] = v10;
  v12[12] = &off_337EB0;
  v12[8] = v18;
  v113 = type metadata accessor for AddMediaCatDialogService();
  v19 = swift_allocObject();
  *(v19 + 55) = -18;
  *(v19 + 16) = 0xD000000000000011;
  *(v19 + 24) = 0x80000000002DA8D0;
  *(v19 + 32) = v7;
  strcpy((v19 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);

  v117 = v1;
  v147 = v1;
  v148 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v146);
  sub_2CC2A0();
  v144 = v118;
  v145 = &protocol witness table for StringsFileResolver;
  sub_F390(&v143);
  sub_2CC350();
  v20 = sub_2CB490();
  v142 = &protocol witness table for SiriKitTaskLoggingProvider;
  v141 = v8;
  *&v140 = v20;
  v112 = type metadata accessor for AddMediaDialogProvider(0);
  v21 = swift_allocObject();
  v21[15] = v19;
  sub_EEAC(&v146, (v21 + 16));
  sub_EEAC(&v140, (v21 + 21));
  sub_EEAC(&v143, (v21 + 3));
  sub_EEAC(&v140, (v21 + 8));
  sub_306C(&v155);
  sub_306C(&v140);
  sub_306C(&v143);
  sub_306C(&v146);
  v21[13] = 0xD000000000000011;
  v21[14] = 0x80000000002DA8D0;
  v110 = 0x80000000002DA8D0;
  v21[2] = v7;
  v12[2] = v21;
  sub_F338(&v152, (v12 + 3));
  sub_306C(&v149);

  *&v155 = v12;
  sub_218C3C(&qword_355520, _s18NeedsValueStrategyCMa_1, &unk_2D65C0);
  sub_2C9630();

  sub_2C96F0();
  v22 = sub_21672C();
  sub_2C9A00();
  _s25NeedsConfirmationStrategyCMa_1(0);
  swift_allocObject();
  v23 = sub_1878F8(v22, &v155);

  *&v155 = v23;
  sub_218C3C(&qword_355528, _s25NeedsConfirmationStrategyCMa_1, &unk_2D8300);
  sub_2C9690();

  sub_2C9750();
  v24 = sub_21672C();
  sub_2C9A00();
  v116 = v8;
  v25 = sub_2CB490();
  _s21ConfirmIntentStrategyCMa(0);
  v26 = swift_allocObject();
  v27 = sub_217168(v24, &v155, v25, v26);

  *&v155 = v27;
  sub_218C3C(&qword_355530, _s21ConfirmIntentStrategyCMa, &unk_2D89E0);
  sub_2C96C0();

  v108 = v6;
  sub_2C9720();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v28 = CATDefaultMode;
  v29 = sub_2CBC00();
  v30 = sub_2CBBF0();
  sub_2C9A00();
  v31 = v111;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v32 = swift_allocObject();
  v153 = &type metadata for StringsBackedAppNameResolver;
  v104 = sub_2869C();
  v154 = v104;
  *&v152 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v152 + 16);
  v150 = v29;
  v151 = &protocol witness table for MorphunProvider;
  *&v149 = v30;
  v33 = v117;
  v147 = v117;
  v148 = &protocol witness table for FeatureFlagProvider;
  v34 = sub_F390(&v146);
  v35 = v103;
  (*(v103 + 16))(v34, v31, v33);
  *(v32 + 296) = v28;
  sub_EEAC(&v146, v32 + 256);
  sub_EEAC(&v152, &v143);
  sub_EEAC(&v149, &v140);
  sub_EEAC(&v155, v137);
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v36 = sub_2CCA30();

  v37 = sub_2CCA20();
  v132 = v36;
  v133 = &protocol witness table for MultiUserConnectionProvider;
  *&v131 = v37;
  v99 = sub_2CB9E0();
  v129 = v99;
  v130 = &protocol witness table for DeviceProvider;
  sub_F390(&v128);
  sub_2CB9C0();
  sub_EEAC(&v143, v32 + 16);
  sub_EEAC(&v140, v32 + 216);
  sub_EEAC(v137, v32 + 56);
  sub_EEAC(&v131, v32 + 96);
  sub_EEAC(&v128, v32 + 176);
  sub_286F0(&v134, &v122);
  if (v123)
  {

    sub_28760(&v134);
    sub_306C(v137);
    sub_306C(&v140);
    sub_306C(&v143);
    (*(v35 + 8))(v111, v33);
    sub_306C(&v155);
    sub_306C(&v146);
    sub_306C(&v149);
    sub_306C(&v152);
    sub_306C(&v128);
    sub_306C(&v131);
    sub_F338(&v122, &v125);
  }

  else
  {
    sub_EEAC(v137, &v125);
    v38 = sub_2C9E60();
    swift_allocObject();
    v39 = sub_2C9E50();
    v126 = v38;
    v127 = &protocol witness table for ContactsManager;

    *&v125 = v39;
    sub_28760(&v134);
    sub_306C(v137);
    sub_306C(&v140);
    sub_306C(&v143);
    (*(v35 + 8))(v111, v33);
    sub_306C(&v155);
    sub_306C(&v146);
    sub_306C(&v149);
    sub_306C(&v152);
    sub_306C(&v128);
    sub_306C(&v131);
    if (v123)
    {
      sub_28760(&v122);
    }
  }

  sub_F338(&v125, v32 + 136);
  v40 = swift_allocObject();
  *(v40 + 55) = -18;
  *(v40 + 16) = 0xD000000000000011;
  v41 = v110;
  *(v40 + 24) = v110;
  *(v40 + 32) = v32;
  v42 = v41;
  strcpy((v40 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v153 = v33;
  v154 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v152);
  sub_2CC2A0();
  v150 = v118;
  v151 = &protocol witness table for StringsFileResolver;
  sub_F390(&v149);
  sub_2CC350();
  v43 = v116;
  v44 = sub_2CB490();
  v147 = v43;
  v148 = &protocol witness table for SiriKitTaskLoggingProvider;
  v45 = v43;
  *&v146 = v44;
  v46 = swift_allocObject();
  v46[15] = v40;
  sub_EEAC(&v152, (v46 + 16));
  sub_EEAC(&v146, (v46 + 21));
  sub_EEAC(&v149, &v143);
  sub_EEAC(&v146, &v140);
  sub_306C(&v155);
  sub_306C(&v146);
  sub_306C(&v149);
  sub_306C(&v152);
  v46[13] = 0xD000000000000011;
  v46[14] = v42;
  v46[2] = v32;
  sub_F338(&v143, (v46 + 3));
  sub_F338(&v140, (v46 + 8));
  v47 = type metadata accessor for AddMediaSnippetProvider();
  v103 = v32;
  v48 = v47;
  v49 = swift_allocObject();
  v98 = v46;
  *(v49 + 16) = v46;

  v111 = v49;

  v95 = sub_21672C();
  sub_2CC350();
  sub_2C9A00();
  v153 = v33;
  v154 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v152);
  sub_2CC2A0();
  v50 = sub_2CB490();
  v150 = v45;
  v151 = &protocol witness table for SiriKitTaskLoggingProvider;
  v148 = &protocol witness table for FeatureFlagProvider;
  *&v149 = v50;
  v147 = v33;
  sub_F390(&v146);
  sub_2CC2A0();
  v51 = v119;
  v52 = swift_allocObject();
  sub_F338(&v146, v52 + 16);
  v147 = sub_2CC040();
  v148 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v146);
  sub_2CC030();
  v53 = sub_2CBC40();
  swift_allocObject();
  v54 = sub_2CBC30();
  v145 = &protocol witness table for AppIntentInvoker;
  v144 = v53;
  *&v143 = v54;
  v142 = &off_337EB0;
  v141 = v51;
  *&v140 = v52;
  v139 = &off_335508;
  v138 = v48;
  v137[0] = v49;
  v97 = type metadata accessor for AddMedia.HandleIntentStrategy();
  v55 = swift_allocObject();
  v56 = v51;
  v57 = sub_F9A0(&v140, v51);
  v96 = &v94;
  __chkstk_darwin(v57);
  v59 = (&v94 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100(v59);
  v60 = sub_F9A0(v137, v138);
  v102 = &v94;
  __chkstk_darwin(v60);
  v62 = (&v94 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v59;
  v65 = *v62;
  *(&v135 + 1) = v56;
  v136 = &off_337EB0;
  v133 = &off_335508;
  *&v134 = v64;
  v132 = v48;
  *&v131 = v65;
  v66 = swift_allocObject();
  *(v66 + 55) = -18;
  v67 = v110;
  *(v66 + 16) = 0xD000000000000011;
  *(v66 + 24) = v67;
  v68 = v95;
  *(v66 + 32) = v95;
  strcpy((v66 + 40), "AddMediaIntent");
  v55[2] = v66;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v129 = v33;
  v130 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v128);
  sub_2CC2A0();
  v69 = v118;
  v126 = v118;
  v127 = &protocol witness table for StringsFileResolver;
  sub_F390(&v125);
  sub_2CC350();
  v70 = v116;
  v71 = sub_2CB490();
  v123 = v70;
  v124 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v122 = v71;
  v72 = swift_allocObject();
  v72[15] = v66;
  sub_EEAC(&v128, (v72 + 16));
  sub_EEAC(&v122, (v72 + 21));
  sub_EEAC(&v125, v121);
  sub_F338(&v122, v120);
  sub_306C(&v125);
  sub_306C(&v128);
  v72[13] = 0xD000000000000011;
  v72[14] = v67;
  v72[2] = v68;
  sub_F338(v121, (v72 + 3));
  sub_F338(v120, (v72 + 8));
  v55[34] = v72;
  type metadata accessor for AddMediaViewProvider(0);
  v73 = swift_allocObject();

  sub_10FEB0();

  sub_306C(&v155);
  (*(v105 + 8))(v114, v69);
  *(v73 + 16) = v72;
  sub_F338(&v128, v73 + 24);
  v55[33] = v73;
  sub_F338(&v152, (v55 + 3));
  sub_F338(&v149, (v55 + 8));
  sub_F338(&v134, (v55 + 13));
  sub_F338(&v131, (v55 + 18));
  sub_F338(&v146, (v55 + 23));
  sub_F338(&v143, (v55 + 28));
  sub_306C(v137);
  sub_306C(&v140);
  *&v155 = v55;
  sub_218C3C(&qword_355538, type metadata accessor for AddMedia.HandleIntentStrategy, &protocol conformance descriptor for AddMedia.HandleIntentStrategy);
  sub_2C9640();

  v74 = v115;
  v75 = v108;
  sub_2C9700();
  v76 = swift_allocObject();
  v77 = v98;
  swift_retain_n();
  sub_10FEB0();
  v78 = v104;
  v156 = &type metadata for StringsBackedAppNameResolver;
  v157 = v104;
  *&v155 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v155 + 16);
  v153 = v99;
  v154 = &protocol witness table for DeviceProvider;
  sub_F390(&v152);
  sub_2CB9C0();
  v79 = v117;
  v150 = v117;
  v151 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v149);
  sub_2CC2A0();
  v147 = sub_2CC810();
  v148 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v146);
  sub_2CC800();
  v144 = sub_2CC590();
  v145 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v143);
  sub_2CC580();
  sub_20410(&qword_3512F0, &qword_2D4278);
  v80 = swift_allocObject();
  v81 = class metadata base offset for CommonAppResolver;
  v82 = v80 + *(*v80 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v82, "resolutionType");
  v82[15] = -18;
  sub_EEAC(&v155, v80 + *(*v80 + v81 + 16));
  sub_EEAC(&v152, v80 + *(*v80 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(&v149, v80 + *(*v80 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(&v146, v80 + *(*v80 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(&v143, v80 + *(*v80 + class metadata base offset for CommonAppResolver + 48));
  v83 = sub_2CCF50();
  sub_306C(&v143);
  sub_306C(&v146);
  sub_306C(&v149);
  sub_306C(&v152);
  sub_306C(&v155);
  sub_2C9A00();
  v153 = &type metadata for StringsBackedAppNameResolver;
  v154 = v78;
  *&v152 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v152 + 16);
  v150 = v79;
  v151 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v149);
  sub_2CC2A0();
  v147 = v79;
  v148 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v146);
  sub_2CC2A0();
  v84 = v119;
  v85 = swift_allocObject();
  sub_F338(&v146, v85 + 16);
  v147 = v84;
  v148 = &off_337EB0;
  *&v146 = v85;
  swift_setDeallocating();
  sub_306C((v76 + 24));
  swift_deallocClassInstance();
  sub_20410(&qword_355540, &unk_2D77A0);
  v86 = swift_allocObject();
  v86[26] = 0;
  v86[2] = v83;
  v86[3] = v77;
  v86[4] = sub_107D74;
  v86[5] = 0;
  sub_F338(&v155, (v86 + 6));
  sub_F338(&v152, (v86 + 11));
  sub_F338(&v149, (v86 + 16));
  sub_F338(&v146, (v86 + 21));
  *&v155 = v86;
  sub_72068(&qword_355548, &qword_355540, &unk_2D77A0, &unk_2D7C94);
  sub_2C9660();

  sub_2C9710();
  *&v155 = sub_10D744(v77);
  sub_20410(&qword_3515C0, &unk_2D4560);
  sub_72068(&qword_355550, &qword_3515C0, &unk_2D4560, &unk_2D2FD8);
  sub_2C96B0();

  sub_2C9770();
  v87 = sub_21672C();
  sub_2C9A00();
  v88 = sub_2CB490();
  v153 = v117;
  v154 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v152);

  sub_2CC2A0();
  v89 = swift_allocObject();
  sub_F338(&v152, v89 + 16);
  v90 = sub_216B3C(v87, &v155, v88, v89);

  *&v155 = v90;
  type metadata accessor for AddMedia.UnsupportedValueStrategy();
  sub_218C3C(&qword_34E760, type metadata accessor for AddMedia.UnsupportedValueStrategy, &protocol conformance descriptor for AddMedia.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  sub_20410(&qword_355558, &qword_2D77B0);
  *&v155 = swift_allocObject();
  sub_72068(&qword_355560, &qword_355558, &qword_2D77B0, &unk_2D3D00);
  sub_2C9670();

  sub_2C9730();
  v91 = v109;
  (*(v109 + 16))(v107, v75, v74);
  sub_20410(&qword_355568, &qword_2D77B8);
  swift_allocObject();
  v92 = sub_2C96E0();

  (*(v91 + 8))(v75, v74);
  return v92;
}

uint64_t sub_218C3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_218C84(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_2CB4A0();
  v23 = v8;
  v24 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v22 = a3;
  type metadata accessor for AddMediaCatDialogService();
  v9 = swift_allocObject();
  *(v9 + 55) = -18;
  *(v9 + 16) = 0xD000000000000011;
  *(v9 + 24) = 0x80000000002DA8D0;
  *(v9 + 32) = a1;
  strcpy((v9 + 40), "AddMediaIntent");
  a4[2] = v9;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v20 = sub_2CC2B0();
  v21 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v19);
  sub_2CC2A0();
  v18[3] = sub_2CC360();
  v18[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v18);
  sub_2CC350();
  v16 = v8;
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = sub_2CB490();
  type metadata accessor for AddMediaDialogProvider(0);
  v10 = swift_allocObject();
  v10[15] = v9;
  sub_EEAC(&v19, (v10 + 16));
  sub_EEAC(&v15, (v10 + 21));
  sub_EEAC(v18, v14);
  sub_F338(&v15, v13);
  sub_306C(v18);
  sub_306C(&v19);
  v10[13] = 0xD000000000000011;
  v10[14] = 0x80000000002DA8D0;
  v10[2] = a1;
  sub_F338(v14, (v10 + 3));
  sub_F338(v13, (v10 + 8));
  a4[3] = v10;
  type metadata accessor for AddMediaViewProvider(0);
  v11 = swift_allocObject();

  sub_10FEB0();
  sub_306C(a2);
  *(v11 + 16) = v10;
  sub_F338(&v19, v11 + 24);
  a4[4] = v11;
  sub_F338(&v22, (a4 + 5));
  return a4;
}

uint64_t sub_218EF0(uint64_t a1, char a2, void *a3, uint64_t (*a4)(id), uint64_t a5, void *a6, void *a7)
{
  v121 = a6;
  v122 = a4;
  v123 = a5;
  v126 = sub_2CDF60();
  v116 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CDCF0();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = __chkstk_darwin(v12);
  v117 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v106 - v15;
  v16 = sub_2CDFD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v124 = (&v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v115 = &v106 - v25;
  v26 = __chkstk_darwin(v24);
  __chkstk_darwin(v26);
  v29 = &v106 - v28;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v19, static Logger.default);
    swift_beginAccess();
    (*(v20 + 16))(v23, v30, v19);
    swift_errorRetain();
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    sub_1E1074(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v126 = v17;
      v34 = v16;
      v35 = v33;
      v36 = swift_slowAlloc();
      v125 = v19;
      v37 = a3;
      v38 = v20;
      v39 = v36;
      v128[0] = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v40 = sub_2CEEF0();
      v42 = sub_3F08(v40, v41, v128);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_0, v31, v32, "DetermineIntent#amendTargetDeviceIdsIfWHA Error resolving devices: %s", v35, 0xCu);
      sub_306C(v39);
      a3 = v37;

      v16 = v34;
      v17 = v126;

      (*(v38 + 8))(v23, v125);
    }

    else
    {

      (*(v20 + 8))(v23, v19);
    }

    v65 = sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v66 = qword_35F760;
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_2D0090;
    *(v67 + 56) = &type metadata for Int;
    *(v67 + 64) = &protocol witness table for Int;
    *(v67 + 32) = -1;
    v68 = v124;
    sub_2CDFC0();
    sub_2CDF90(v65, &dword_0, v66, "resolveWHADestinationDevicesResponse", 36, 2, v68, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v67);

    (*(v17 + 8))(v68, v16);
LABEL_23:
    v73 = [a3 setWhaError:1];
    return v122(v73);
  }

  v108 = v27;
  v113 = v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v43 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v44 = *(v20 + 16);
  v110 = v20 + 16;
  v109 = v44;
  v44(v29, v43, v19);

  v45 = sub_2CDFE0();
  v46 = sub_2CE690();
  sub_1E1074(a1, 0);
  v47 = os_log_type_enabled(v45, v46);
  v111 = a7;
  v114 = a1;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v107 = v43;
    v49 = v48;
    v50 = swift_slowAlloc();
    v127[0] = v50;
    *v49 = 136446210;
    v51 = sub_2CE440();
    v112 = a3;
    v53 = v17;
    v54 = sub_3F08(v51, v52, v127);
    a3 = v112;

    *(v49 + 4) = v54;
    v17 = v53;
    _os_log_impl(&dword_0, v45, v46, "DetermineIntent#amendTargetDeviceIdsIfWHA Resolved devices %{public}s", v49, 0xCu);
    sub_306C(v50);

    v43 = v107;
  }

  v55 = *(v20 + 8);
  v55(v29, v19);
  v56 = sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v57 = qword_35F760;
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2D0090;
  *(v58 + 56) = &type metadata for Int;
  *(v58 + 64) = &protocol witness table for Int;
  *(v58 + 32) = 0;
  v59 = v124;
  sub_2CDFC0();
  sub_2CDF90(v56, &dword_0, v57, "resolveWHADestinationDevicesResponse", 36, 2, v59, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v58);

  (*(v17 + 8))(v59, v113);
  v60 = v114;
  if (!*(v114 + 16))
  {
    v69 = v115;
    v109(v115, v43, v19);
    v70 = sub_2CDFE0();
    v71 = sub_2CE680();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "DetermineIntent#amendTargetDeviceIdsIfWHA No resolved devices found", v72, 2u);
    }

    v55(v69, v19);
    goto LABEL_23;
  }

  [a3 setWhaError:0];
  v61 = v121;
  v62 = v121[3];
  v63 = v121[4];
  sub_35E0(v121, v62);
  if ((sub_1BCFC8(v62, v63) & 1) != 0 || sub_1DFB50(v60))
  {
    v64 = v60;
  }

  else
  {
    v109(v108, v43, v19);
    v75 = sub_2CDFE0();
    v76 = sub_2CE690();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "DetermineIntent#amendTargetDeviceIdsIfWHA TVs were not explicitely targeted in the intent. Pruning from all devices", v77, 2u);
    }

    v55(v108, v19);
    v78 = v61[3];
    v79 = v61[4];
    sub_35E0(v61, v78);
    v80 = sub_1BE2A4(v78, v79);
    v64 = sub_1DFDF4(v80, v60);

    sub_1E1074(v60, 0);
  }

  v82 = v119;
  v81 = v120;
  sub_EEAC(v61, v127);
  v83 = v118;
  sub_2CDCE0();
  v84 = v117;
  (*(v82 + 16))(v117, v83, v81);

  v85 = sub_1E1114(v127, v64, v84);
  (*(v82 + 8))(v83, v81);
  sub_21B7C4(v85);
  v87 = v86;
  [a3 setWhaDialogMetadata:v86];

  v88 = v64[2];
  if (v88)
  {
    v121 = v85;
    v112 = a3;
    v124 = *(v116 + 16);
    v89 = *(v116 + 80);
    v120 = v64;
    v90 = v64 + ((v89 + 32) & ~v89);
    v91 = *(v116 + 72);
    v92 = (v116 + 8);
    v93 = _swiftEmptyArrayStorage;
    do
    {
      v96 = v125;
      v95 = v126;
      v124(v125, v90, v126);
      v97 = sub_2CDF20();
      v99 = v98;
      (*v92)(v96, v95);
      if (v99)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_B90C4(0, *(v93 + 2) + 1, 1, v93);
        }

        v101 = *(v93 + 2);
        v100 = *(v93 + 3);
        if (v101 >= v100 >> 1)
        {
          v93 = sub_B90C4((v100 > 1), v101 + 1, 1, v93);
        }

        *(v93 + 2) = v101 + 1;
        v94 = &v93[16 * v101];
        *(v94 + 4) = v97;
        *(v94 + 5) = v99;
      }

      v90 += v91;
      --v88;
    }

    while (v88);

    a3 = v112;
    v85 = v121;
  }

  else
  {

    v93 = _swiftEmptyArrayStorage;
  }

  isa = sub_2CE400().super.isa;
  [a3 setTargetDeviceIds:isa];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v103 = sub_2CEB00(0).super.super.isa;
  [a3 setWhaIsInHereBasedOnRoutes:v103];

  sub_35E0(v111, v111[3]);
  v104 = swift_allocObject();
  v104[2] = v122;
  v104[3] = v123;
  v104[4] = v93;
  v104[5] = a3;

  v105 = a3;
  sub_2CC7F0();
}

void sub_219C68(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = a1;
  v9 = [v8 mediaRouteIdentifier];
  if (!v9)
  {

LABEL_7:
    (a2)();
    return;
  }

  v10 = v9;
  v11 = sub_2CE270();
  v13 = v12;

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  v18[2] = v19;
  v15 = sub_13964(sub_13A68, v18, a4);

  if (v15)
  {
    sub_334A0(0, &qword_353110, NSNumber_ptr);
    isa = sub_2CEB00(1).super.super.isa;
    [a5 setWhaIsInHereBasedOnRoutes:isa];
  }

  a2(v16);
}

uint64_t sub_219DBC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v45 = a3;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = a7;
  v49[4] = a8;
  v19 = sub_F390(v49);
  v20 = *(*(a7 - 8) + 16);
  v44 = v19;
  v20(v19, a1, a7);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v18, v21, v15);
  sub_EEAC(v49, v48);
  v43 = v15;
  v22 = v18;
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = a5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v41 = a4;
    v28 = v27;
    v47 = v27;
    *v26 = 136315138;
    sub_EEAC(v48, v46);
    sub_20410(&qword_355588, &qword_2D77C8);
    v29 = sub_2CE2A0();
    v40 = a2;
    v39 = v22;
    v30 = a6;
    v31 = v29;
    v32 = a8;
    v34 = v33;
    sub_306C(v48);
    v35 = sub_3F08(v31, v34, &v47);
    a8 = v32;

    *(v26 + 4) = v35;
    a6 = v30;
    a2 = v40;
    _os_log_impl(&dword_0, v23, v24, "DetermineIntent#amend Reached amend logic with audio intent: %s", v26, 0xCu);
    sub_306C(v28);
    a4 = v41;

    a5 = v42;

    (*(v16 + 8))(v39, v43);
  }

  else
  {

    sub_306C(v48);
    (*(v16 + 8))(v22, v43);
  }

  v36 = v44;
  sub_21A138(v44, a6, a7, a8);
  sub_21AD8C(v36, a6, a7, a8);
  sub_21B320(v36, a2, v45, a4, a5, a6, a7, a8);
  return sub_306C(v49);
}

uint64_t sub_21A138(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v88 = a2;
  v7 = sub_2CD500();
  v80 = *(v7 - 8);
  v81 = v7;
  __chkstk_darwin(v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2CE000();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34D6D0, qword_2D34A0);
  __chkstk_darwin(v10 - 8);
  v84 = &v75 - v11;
  v12 = sub_2CD540();
  v90 = *(v12 - 8);
  v91 = v12;
  v13 = __chkstk_darwin(v12);
  v83 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v76 = &v75 - v16;
  v17 = __chkstk_darwin(v15);
  v79 = &v75 - v18;
  __chkstk_darwin(v17);
  v86 = &v75 - v19;
  v20 = sub_2CD4C0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v77 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v75 - v25;
  v27 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v28 = __chkstk_darwin(v27 - 8);
  v92 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v75 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v75 - v34;
  __chkstk_darwin(v33);
  v37 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v38;
  (*(v38 + 16))(v37, a1, a3);
  v94 = v37;
  v95 = a3;
  v85 = a4;
  sub_2CD840();
  (*(v21 + 104))(v32, enum case for CommonAudio.Verb.directedAcousticId(_:), v20);
  (*(v21 + 56))(v32, 0, 1, v20);
  v39 = *(v24 + 56);
  sub_F7598(v35, v26);
  sub_F7598(v32, &v26[v39]);
  v40 = *(v21 + 48);
  if (v40(v26, 1, v20) == 1)
  {
    sub_30B8(v32, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v35, &qword_34D6B8, &qword_2D15B0);
    if (v40(&v26[v39], 1, v20) == 1)
    {
      sub_30B8(v26, &qword_34D6B8, &qword_2D15B0);
      v41 = v94;
      v42 = v95;
LABEL_15:
      [v88 setRequestType:7];
      return (*(v93 + 8))(v41, v42);
    }

    goto LABEL_6;
  }

  sub_F7598(v26, v92);
  if (v40(&v26[v39], 1, v20) == 1)
  {
    sub_30B8(v32, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v35, &qword_34D6B8, &qword_2D15B0);
    (*(v21 + 8))(v92, v20);
LABEL_6:
    sub_30B8(v26, &qword_34D6B0, &unk_2D4FC0);
    v41 = v94;
    v42 = v95;
    v43 = v89;
    v44 = v87;
    goto LABEL_7;
  }

  v66 = v77;
  (*(v21 + 32))(v77, &v26[v39], v20);
  sub_21D4B4(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v67 = v92;
  v68 = sub_2CE250();
  v69 = *(v21 + 8);
  v69(v66, v20);
  sub_30B8(v32, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v35, &qword_34D6B8, &qword_2D15B0);
  v69(v67, v20);
  sub_30B8(v26, &qword_34D6B8, &qword_2D15B0);
  v41 = v94;
  v42 = v95;
  v43 = v89;
  v44 = v87;
  if (v68)
  {
    goto LABEL_15;
  }

LABEL_7:
  v45 = v84;
  sub_2CD8D0();
  v46 = v90;
  v47 = v91;
  if ((*(v90 + 48))(v45, 1, v91) != 1)
  {
    v53 = v86;
    (*(v46 + 32))(v86, v45, v47);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v54 = sub_3ED0(v43, static Logger.default);
    swift_beginAccess();
    v55 = v82;
    (v44[2])(v82, v54, v43);
    v56 = v79;
    v92 = *(v46 + 16);
    (v92)(v79, v53, v47);
    v57 = sub_2CDFE0();
    v58 = sub_2CE670();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v96 = v87;
      *v59 = 136315138;
      (v92)(v76, v56, v47);
      v60 = sub_2CE2A0();
      v62 = v61;
      v63 = v56;
      v64 = *(v90 + 8);
      v64(v63, v91);
      v65 = sub_3F08(v60, v62, &v96);
      v47 = v91;

      *(v59 + 4) = v65;
      _os_log_impl(&dword_0, v57, v58, "DetermineIntent#amend Checking mediaType: %s", v59, 0xCu);
      sub_306C(v87);
      v41 = v94;

      v46 = v90;

      (v44[1])(v55, v89);
    }

    else
    {

      v70 = v56;
      v64 = *(v46 + 8);
      v64(v70, v47);
      (v44[1])(v55, v43);
    }

    v71 = v83;
    v72 = v86;
    (v92)(v83, v86, v47);
    v73 = (*(v46 + 88))(v71, v47);
    if (v73 == enum case for CommonAudio.MediaType.artist(_:))
    {
      [v88 setRequestType:1];
      v64(v72, v47);
      v42 = v95;
      return (*(v93 + 8))(v41, v42);
    }

    v42 = v95;
    if (v73 == enum case for CommonAudio.MediaType.playlist(_:))
    {
      goto LABEL_20;
    }

    if (v73 == enum case for CommonAudio.MediaType.radioShow(_:))
    {
LABEL_22:
      [v88 setRequestType:4];
      goto LABEL_30;
    }

    if (v73 != enum case for CommonAudio.MediaType.song(_:) && v73 != enum case for CommonAudio.MediaType.music(_:))
    {
      if (v73 == enum case for CommonAudio.MediaType.album(_:))
      {
        [v88 setRequestType:2];
        goto LABEL_30;
      }

      if (v73 == enum case for CommonAudio.MediaType.radioStation(_:))
      {
        goto LABEL_22;
      }

      if (v73 != enum case for CommonAudio.MediaType.single(_:))
      {
        if (v73 != enum case for CommonAudio.MediaType.musicPlaylist(_:))
        {
          [v88 setRequestType:0];
          v64(v72, v47);
          v64(v71, v47);
          return (*(v93 + 8))(v41, v42);
        }

LABEL_20:
        [v88 setRequestType:5];
LABEL_30:
        v64(v72, v47);
        return (*(v93 + 8))(v41, v42);
      }
    }

    [v88 setRequestType:0];
    goto LABEL_30;
  }

  sub_30B8(v45, &qword_34D6D0, qword_2D34A0);
  v48 = sub_2CD720();
  v50 = v80;
  v49 = v81;
  v51 = v78;
  (*(v80 + 104))(v78, enum case for CommonAudio.Attribute.releaseDate(_:), v81);
  v52 = sub_17F758(v51, v48);

  (*(v50 + 8))(v51, v49);
  if (v52)
  {
    [v88 setRequestType:3];
  }

  return (*(v93 + 8))(v41, v42);
}