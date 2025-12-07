uint64_t sub_2140@<X0>(uint64_t a1@<X8>)
{
  v5[0] = a1;
  v5[1] = "Fatal error";
  v5[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v5[3] = "BackgroundSecurityImprovement/MainView.swift";
  v13 = 0;
  v2 = sub_22FC(&qword_B4B40, &unk_9A850);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v9 = v5 - v6;
  v13 = v1;
  v8 = 1;
  sub_99B90("settings-navigation://com.apple.Settings.PrivacyAndSecurity/BACKGROUND_SECURITY_IMPROVEMENTS", 0x5CuLL, 1);
  v7 = v3;
  sub_991B0();

  v10 = sub_991C0();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, v8) == 1)
  {
    sub_99EF0();
    __break(1u);
  }

  return (*(v11 + 32))(v5[0], v9, v10);
}

uint64_t sub_22FC(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void sub_2368(uint64_t a1@<X8>)
{
  v15 = a1;
  v17 = 0;
  v2 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = &v2 - v2;
  v9 = sub_991C0();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v8 = &v2 - v3;
  v13 = sub_99170();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v4 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v2 - v4;
  v1 = sub_99B10();
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = &v2 - v5;
  v14 = 1;
  sub_99B90("Background Security Updates", 0x1BuLL, 1);
  sub_99B00();
  v10 = *sub_98A68();
  _objc_retain(v10);
  v20 = [v10 bundleURL];
  sub_991A0();
  (*(v6 + 32))(v19, v8, v9);
  _objc_release(v10);
  (*(v11 + 104))(v19, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v13);
  sub_2640();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v14 & 1;
  sub_99190();
  _objc_release(v20);
}

void sub_26C0()
{
  v28 = 0;
  v18 = 0;
  v3 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v2 - v3;
  v10 = sub_991C0();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v9 = &v2 - v4;
  v14 = sub_99170();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v5 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v20 = &v2 - v5;
  v6 = (*(*(sub_99B10() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v17 = &v2 - v6;
  v28 = v0;
  v23 = sub_99180();
  v22 = sub_99F80();
  v16 = v1;
  v15 = 1;
  sub_99B90("Privacy & Security", 0x12uLL, 1);
  sub_99B00();
  v11 = *sub_98A68();
  _objc_retain(v11);
  v21 = [v11 bundleURL];
  sub_991A0();
  (*(v7 + 32))(v20, v9, v10);
  _objc_release(v11);
  (*(v12 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v14);
  sub_2640();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v15 & 1;
  sub_99190();
  _objc_release(v21);
  sub_29D0();
}

uint64_t sub_2A14()
{
  v1 = v0 + *(type metadata accessor for MainView(0) + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_2B30(*v1, v4 & 1);
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  sub_2B78(v3, v4 & 1);
  return v5;
}

uint64_t type metadata accessor for MainView(uint64_t a1)
{
  v2 = qword_B5BF0;
  if (!qword_B5BF0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

id sub_2B30(void *a1, char a2)
{
  if (a2)
  {
    return _objc_retain(a1);
  }

  else
  {
  }
}

void sub_2B78(void *a1, char a2)
{
  if (a2)
  {
    _objc_release(a1);
  }

  else
  {
  }
}

uint64_t sub_2BC0()
{
  swift_getKeyPath();
  sub_99420();
  return v1;
}

uint64_t sub_2BFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_994F0();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_98CA0();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

void *sub_2D30()
{
  v1 = v0 + *(type metadata accessor for MainView(0) + 20);
  v3 = *v1;
  sub_2B30(*v1, *(v1 + 8) & 1);
  return v3;
}

void sub_2D88(void *a1, char a2)
{
  sub_2B30(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for MainView(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_2B78(v4, v5 & 1);
  sub_2B78(a1, a2 & 1);
}

uint64_t sub_2E28()
{
  type metadata accessor for MainView(0);

  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();

  return v1;
}

uint64_t sub_2EC4()
{
  swift_getKeyPath();
  sub_99420();
  return v1;
}

uint64_t sub_2F00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_994F0();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_98F08();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_3034()
{
  v2 = *(v0 + *(type metadata accessor for MainView(0) + 24));

  return v2;
}

uint64_t sub_3088(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for MainView(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

void *sub_3114()
{
  v2 = *(v0 + *(type metadata accessor for MainView(0) + 28));
  _objc_retain(v2);
  return v2;
}

void *sub_31A0(void *a1, void *a2)
{
  updated = type metadata accessor for UpdateHistoryData(0);
  v16 = *(updated - 1);
  if ((*(v16 + 48))(a1, 1))
  {
    v5 = sub_22FC(&qword_B4B58, &qword_9B1A0);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v8 = a2 + updated[5];
    v7 = a1 + updated[5];
    v2 = sub_99230();
    (*(*(v2 - 8) + 16))(v8, v7);
    v3 = updated[6];
    v9 = a2 + v3;
    *(a2 + v3) = *(a1 + v3);
    v10 = *(a1 + v3 + 8);

    *(v9 + 1) = v10;
    v4 = updated[7];
    v11 = a2 + v4;
    *(a2 + v4) = *(a1 + v4);
    v12 = *(a1 + v4 + 8);

    *(v11 + 1) = v12;
    (*(v16 + 56))(a2, 0, 1, updated);
  }

  return a2;
}

uint64_t sub_33D0()
{
  type metadata accessor for MainView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_3468(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for MainView(0) + 36));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_3564()
{
  type metadata accessor for MainView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_3614()
{
  v2 = *(v0 + *(type metadata accessor for MainView(0) + 36));

  return v2 & 1;
}

uint64_t sub_3668(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for MainView(0) + 36);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_36E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v51 = a1;
  v50 = a2;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v3 = sub_22FC(&qword_B4B58, &qword_9B1A0);
  v24 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v47 = (&v24 - v24);
  v39 = 0;
  v25 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v40 = &v24 - v25;
  v33 = sub_991C0();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v26 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v32 = &v24 - v26;
  v37 = sub_99170();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v27 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = &v24 - v27;
  v28 = (*(*(sub_99B10() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v39);
  v38 = &v24 - v28;
  v48 = type metadata accessor for MainView(v4);
  v29 = (*(*(v48 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v51);
  v52 = &v24 - v29;
  v63 = &v24 - v29;
  v62 = v5;
  v61 = v6;
  v45 = 1;
  sub_99B90("Background Security Updates", 0x1BuLL, 1);
  sub_99B00();
  v34 = *sub_98A68();
  _objc_retain(v34);
  v42 = [v34 bundleURL];
  sub_991A0();
  (*(v30 + 32))(v41, v32, v33);
  _objc_release(v34);
  (*(v35 + 104))(v41, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v37);
  sub_2640();
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = v45 & 1;
  sub_99190();
  _objc_release(v42);
  v43 = v48[5];
  swift_getKeyPath();
  sub_99420();
  v7 = v45;
  v8 = v48;
  v9 = v56;
  v10 = v52 + v43;
  *v10 = v55;
  *(v10 + 8) = v9 & 1 & v7;
  v44 = v8[6];
  swift_getKeyPath();
  sub_99420();
  v11 = v45;
  v12 = v48;
  v13 = v54;
  v14 = v52 + v44;
  *v14 = v53;
  *(v14 + 8) = v13 & 1 & v11;
  v46 = v12[9];
  v15 = sub_337C(0);
  v16 = v50;
  v18 = v17;
  v19 = v47;
  v20 = v52 + v46;
  *v20 = v15 & v45;
  *(v20 + 8) = v18;
  sub_31A0(v16, v19);
  sub_3C40(v47, (v52 + v48[8]));
  _objc_retain(v51);
  v21 = v49;
  v22 = v52;
  *(v52 + v48[7]) = v51;
  sub_3DC0(v22, v21);
  sub_4154(v50);
  _objc_release(v51);
  return sub_4240(v52);
}

void *sub_3C40(void *a1, void *a2)
{
  updated = type metadata accessor for UpdateHistoryData(0);
  v10 = *(updated - 1);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_22FC(&qword_B4B58, &qword_9B1A0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + updated[5];
    v5 = a1 + updated[5];
    v2 = sub_99230();
    (*(*(v2 - 8) + 32))(v6, v5);
    *(a2 + updated[6]) = *(a1 + updated[6]);
    *(a2 + updated[7]) = *(a1 + updated[7]);
    (*(v10 + 56))();
  }

  return a2;
}

uint64_t sub_3DC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_99180();
  (*(*(v2 - 8) + 16))(a2, a1);
  v29 = type metadata accessor for MainView(0);
  v20 = v29[5];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  sub_2B30(v21, v22 & 1);
  v3 = a2 + v20;
  *v3 = v21;
  *(v3 + 8) = v22 & 1;
  v23 = v29[6];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);

  v4 = a2 + v23;
  *v4 = v24;
  *(v4 + 8) = v25 & 1;
  v26 = v29[7];
  v28 = *(a1 + v26);
  _objc_retain(v28);
  *(a2 + v26) = v28;
  v30 = v29[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  v33 = *(updated - 1);
  if ((*(v33 + 48))(a1 + v30, 1))
  {
    v8 = sub_22FC(&qword_B4B58, &qword_9B1A0);
    memcpy((a2 + v30), (a1 + v30), *(*(v8 - 8) + 64));
  }

  else
  {
    v17 = a2 + v30;
    *(a2 + v30) = *(a1 + v30);
    v14 = a2 + v30 + updated[5];
    v13 = a1 + v30 + updated[5];
    v5 = sub_99230();
    (*(*(v5 - 8) + 16))(v14, v13);
    v6 = updated[6];
    v15 = a2 + v30 + v6;
    *(v17 + v6) = *(a1 + v30 + v6);
    v16 = *(a1 + v30 + v6 + 8);

    *(v15 + 8) = v16;
    v7 = updated[7];
    v18 = a2 + v30 + v7;
    *(v17 + v7) = *(a1 + v30 + v7);
    v19 = *(a1 + v30 + v7 + 8);

    *(v18 + 8) = v19;
    (*(v33 + 56))(a2 + v30, 0, 1, updated);
  }

  v9 = v29[9];
  v11 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v12 = *(a1 + v9 + 8);

  result = a2;
  *(v11 + 8) = v12;
  return result;
}

uint64_t sub_4154(uint64_t a1)
{
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(updated + 20);
    v1 = sub_99230();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_4240(uint64_t a1)
{
  v1 = sub_99180();
  (*(*(v1 - 8) + 8))(a1);
  v5 = type metadata accessor for MainView(0);
  sub_2B78(*(a1 + v5[5]), *(a1 + v5[5] + 8) & 1);

  _objc_release(*(a1 + v5[7]));
  v6 = v5[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(a1 + v6, 1))
  {
    v4 = a1 + v6 + *(updated + 20);
    v2 = sub_99230();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t MainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v37 = sub_6828;
  v51 = &opaque type descriptor for <<opaque return type of View.contentMargins(_:_:for:)>>;
  v75 = &opaque type descriptor for <<opaque return type of View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)>>;
  v87 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v89 = sub_8F30;
  v104 = sub_990C;
  v136 = 0;
  v135 = 0;
  v95 = 0;
  v111 = sub_99DF0();
  v108 = *(v111 - 8);
  v109 = v111 - 8;
  v21 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v110 = &v21 - v21;
  v55 = sub_991C0();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v22 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v54 = &v21 - v22;
  v60 = sub_99180();
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v23 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v59 = &v21 - v23;
  v64 = sub_99A80();
  v61 = *(v64 - 8);
  v62 = v64 - 8;
  v24 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v95);
  v63 = (&v21 - v24);
  v45 = sub_995E0();
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v25 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v95);
  v44 = &v21 - v25;
  v2 = type metadata accessor for MainView(v1);
  v26 = *(v2 - 8);
  v35 = v26;
  v100 = *(v26 + 64);
  v27 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v103 = &v21 - v27;
  v49 = sub_22FC(&qword_B4B68, &qword_9A8D8);
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v28 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = &v21 - v28;
  v73 = sub_22FC(&qword_B4B70, &qword_9A8E0);
  v65 = *(v73 - 8);
  v66 = v73 - 8;
  v29 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v67 = &v21 - v29;
  v85 = sub_22FC(&qword_B4B78, &qword_9A8E8);
  v81 = *(v85 - 8);
  v82 = v85 - 8;
  v30 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v83 = &v21 - v30;
  v94 = sub_22FC(&qword_B4B80, &qword_9A8F0);
  v91 = *(v94 - 8);
  v92 = v94 - 8;
  v31 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v94);
  v93 = &v21 - v31;
  v105 = sub_22FC(&qword_B4B88, &qword_9A8F8);
  v32 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v105);
  v112 = &v21 - v32;
  v114 = sub_22FC(&qword_B4B90, &qword_9A900);
  v33 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v98);
  v116 = &v21 - v33;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v117 = &v21 - v34;
  v136 = &v21 - v34;
  v135 = v5;
  sub_3DC0(v5, v6);
  v99 = *(v35 + 80);
  v36 = (v99 + 16) & ~v99;
  v101 = 7;
  v38 = swift_allocObject();
  sub_659C(v103, v38 + v36);
  v39 = sub_22FC(&qword_B4B98, &qword_9A908);
  v40 = sub_872C();
  sub_8714();
  *&v76[1] = 1;
  sub_99360();
  v41 = sub_99640();
  v50 = sub_8858();
  sub_8834();
  sub_997B0();
  v7 = v98;
  (*(v42 + 8))(v44, v45);
  (*(v46 + 8))(v48, v49);
  v8 = sub_99B90("com.apple.graphic-icon.security", 0x1FuLL, v76[1] & 1);
  v9 = v61;
  v10 = v8;
  v11 = v63;
  *v63 = v10;
  v11[1] = v12;
  (*(v9 + 104))();
  (*(v57 + 16))(v59, v7, v60);
  sub_26C0();
  v56 = v13;
  sub_2140(v54);
  v133 = v49;
  v134 = v50;
  v88 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_99720();
  (*(v52 + 8))(v54, v55);

  (*(v57 + 8))(v59, v60);
  (*(v61 + 8))(v63, v64);
  (*(v65 + 8))(v67, v73);
  sub_99B90("Security Improvements", 0x15uLL, v76[1] & 1);
  v72 = sub_99580();
  v68 = v14;
  v69 = v15;
  v70 = v16;
  v71 = *sub_98A68();
  _objc_retain(v71);
  v130 = 0;
  v131 = 0;
  v132 = *v76 & 0x100;
  v126 = sub_996F0();
  v127 = v17;
  v128 = v18;
  v129 = v19;
  v77 = v126;
  v78 = v17;
  v79 = v18;
  v80 = v19;
  v124 = v73;
  v125 = OpaqueTypeConformance2;
  v86 = swift_getOpaqueTypeConformance2();
  v120 = v77;
  v121 = v78;
  v122 = v79 & 1 & v76[1];
  v123 = v80;
  sub_997D0();
  sub_88E0(v77, v78, v79 & 1);

  (*(v81 + 8))(v83, v85);
  sub_3DC0(v98, v103);
  v84 = (v99 + 16) & ~v99;
  v90 = swift_allocObject();
  sub_659C(v103, v90 + v84);
  v118 = v85;
  v119 = v86;
  swift_getOpaqueTypeConformance2();
  sub_99850();
  sub_8F94(v89, v90);
  (*(v91 + 8))(v93, v94);
  v97 = [objc_opt_self() defaultCenter];
  v96 = UIApplicationWillEnterForegroundNotification;
  _objc_retain(UIApplicationWillEnterForegroundNotification);
  sub_99E00();
  _objc_release(v96);
  _objc_release(v97);
  sub_3DC0(v98, v103);
  v102 = (v99 + 16) & ~v99;
  v107 = swift_allocObject();
  sub_659C(v103, v107 + v102);
  v106 = sub_9984();
  sub_9B14();
  sub_99870();

  (*(v108 + 8))(v110, v111);
  sub_9B94(v112);
  v115 = sub_9C74();
  sub_71A0(v116, v114, v117);
  sub_9CFC(v116);
  sub_9E54(v117, v116);
  sub_8408(v116, v114, v113);
  sub_9CFC(v116);
  return sub_9CFC(v117);
}

uint64_t sub_54B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v100 = a1;
  v121 = a2;
  v105 = &unk_A645C;
  v110 = &opaque type descriptor for <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>;
  v63 = &opaque type descriptor for <<opaque return type of View.visibilityTransition(when:duration:)>>;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v65 = sub_22FC(&qword_B4CA8, &qword_9A990);
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v69 = v25 - v68;
  v70 = sub_22FC(&qword_B4E38, &qword_9ACA0);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v74 = v25 - v73;
  v75 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v25 - v73);
  v76 = v25 - v75;
  v143 = v25 - v75;
  v77 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v78 = v25 - v77;
  v79 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v77);
  v80 = v25 - v79;
  v142 = v25 - v79;
  v81 = sub_22FC(&qword_B4E40, &qword_9ACA8);
  v82 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v83 = v25 - v82;
  v84 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v82);
  v85 = v25 - v84;
  v86 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v84);
  v87 = v25 - v86;
  v141 = v25 - v86;
  v10 = sub_22FC(&qword_B4B58, &qword_9B1A0);
  v88 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v124 = (v25 - v88);
  v89 = sub_22FC(&qword_B4C68, &qword_9A970);
  v90 = (*(*(v89 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v120 = v25 - v90;
  v91 = sub_22FC(&qword_B4E48, &qword_9ACB0);
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v95 = v25 - v94;
  v96 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v94);
  v97 = v25 - v96;
  v98 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v96);
  v99 = v25 - v98;
  v140 = v25 - v98;
  v117 = sub_22FC(&qword_B4BD8, &qword_9A920);
  v114 = *(v117 - 8);
  v115 = v117 - 8;
  v102 = *(v114 + 64);
  v101 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v100);
  v116 = v25 - v101;
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v13);
  v112 = v25 - v103;
  v139 = v25 - v103;
  v138 = v14;
  v137 = a2;
  sub_68A8(v15);
  v106 = sub_87B4(&qword_B4BD0, &qword_9A918);
  v107 = sub_87B4(&qword_B4C38, &qword_9A950);
  v104 = sub_87B4(&qword_B4BC8, &qword_9A910);
  v16 = sub_C26C();
  v136[21] = v104;
  v136[22] = v16;
  v111 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = sub_CE00();
  v17 = sub_CE78();
  v136[13] = v106;
  v136[14] = &type metadata for String;
  v136[15] = v107;
  v136[16] = &type metadata for Text;
  v136[17] = OpaqueTypeConformance2;
  v136[18] = v109;
  v136[19] = v17;
  v136[20] = &protocol witness table for Text;
  v113 = swift_getOpaqueTypeConformance2();
  sub_71A0(v116, v117, v112);
  v118 = *(v114 + 8);
  v119 = v114 + 8;
  v118(v116, v117);
  sub_7204(v120);
  v123 = 0;
  v122 = type metadata accessor for MainView(0);
  sub_31A0((v121 + *(v122 + 32)), v124);
  updated = type metadata accessor for UpdateHistoryData(v123);
  v61 = (*(*(updated - 8) + 48))(v124, 1) != 1;
  v54 = v61;
  sub_4154(v124);
  v55 = sub_D440();
  sub_7D60();
  sub_99710();
  sub_D124(v120);
  v136[11] = v89;
  v136[12] = v55;
  v56 = swift_getOpaqueTypeConformance2();
  sub_71A0(v97, v91, v99);
  v57 = *(v92 + 8);
  v58 = v92 + 8;
  v57(v97, v91);
  v59 = sub_2E28();
  v60 = (*(*v59 + 184))(v59);

  if (v60)
  {
    v53 = 1;
  }

  else
  {
    v51 = sub_2E28();
    v52 = (*(*v51 + 216))(v51);

    v53 = v52 ^ 1;
  }

  if (v53)
  {
    sub_7D84(v69);
    v50 = *(v121 + *(v122 + 28));
    _objc_retain(v50);
    v133 = v50;
    v49 = v50 != 0;
    v48 = v49;
    sub_127E0(&v133);
    if (v48)
    {
      v47 = 1;
    }

    else
    {
      v45 = sub_2A14();
      v46 = sub_4D884();
      _objc_release(v45);
      v47 = v46;
    }

    v36 = v47;
    v35 = sub_87B4(&qword_B4CA0, &qword_9A988);
    v32 = sub_87B4(&qword_B4C98, &qword_9A980);
    v33 = sub_994C0();
    v34 = sub_DDC0();
    v19 = sub_D0A4();
    v129 = v32;
    v130 = v33;
    v131 = v34;
    v132 = v19;
    v38 = 1;
    v20 = swift_getOpaqueTypeConformance2();
    v127 = v35;
    v128 = v20;
    v37 = swift_getOpaqueTypeConformance2();
    sub_7D60();
    v41 = 1;
    sub_99710();
    (*(v66 + 8))(v69, v65);
    v125 = v65;
    v126 = v37;
    v42 = swift_getOpaqueTypeConformance2();
    sub_71A0(v78, v70, v80);
    v44 = *(v71 + 8);
    v43 = v71 + 8;
    v44(v78, v70);
    v40 = *(v71 + 16);
    v39 = v71 + 16;
    v40(v74, v80, v70);
    sub_8408(v74, v70, v76);
    v44(v74, v70);
    v40(v83, v76, v70);
    (*(v71 + 56))(v83, 0, v41, v70);
    sub_846C(v83, v70, v85);
    sub_12318(v83);
    sub_123CC(v85, v87);
    v44(v76, v70);
    v44(v80, v70);
  }

  else
  {
    (*(v71 + 56))(v83, 1, 1, v70);
    v30 = sub_87B4(&qword_B4CA0, &qword_9A988);
    v27 = sub_87B4(&qword_B4C98, &qword_9A980);
    v28 = sub_994C0();
    v29 = sub_DDC0();
    v21 = sub_D0A4();
    v136[7] = v27;
    v136[8] = v28;
    v136[9] = v29;
    v136[10] = v21;
    v31 = 1;
    v22 = swift_getOpaqueTypeConformance2();
    v136[5] = v30;
    v136[6] = v22;
    v23 = swift_getOpaqueTypeConformance2();
    v136[3] = v65;
    v136[4] = v23;
    swift_getOpaqueTypeConformance2();
    sub_846C(v83, v70, v85);
    sub_12318(v83);
    sub_123CC(v85, v87);
  }

  (*(v114 + 16))(v116, v112, v117);
  v26 = v136;
  v136[0] = v116;
  (*(v92 + 16))(v95, v99, v91);
  v136[1] = v95;
  sub_12500(v87, v85);
  v136[2] = v85;
  v25[0] = v135;
  v135[0] = v117;
  v135[1] = v91;
  v135[2] = v81;
  v25[1] = v134;
  v134[0] = v113;
  v134[1] = v56;
  v134[2] = sub_12634();
  sub_84B8(v26, 3uLL, v25[0], v62);
  sub_12318(v85);
  v57(v95, v91);
  v118(v116, v117);
  sub_12318(v87);
  v57(v99, v91);
  return (v118)(v112, v117);
}

uint64_t sub_6344()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

__n128 sub_659C(uint64_t a1, uint64_t a2)
{
  v2 = sub_99180();
  (*(*(v2 - 8) + 32))(a2, a1);
  v14 = type metadata accessor for MainView(0);
  v3 = a1 + v14[5];
  v4 = a2 + v14[5];
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  v5 = a1 + v14[6];
  v6 = a2 + v14[6];
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  *(a2 + v14[7]) = *(a1 + v14[7]);
  v15 = v14[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  v18 = *(updated - 1);
  if ((*(v18 + 48))(a1 + v15, 1))
  {
    v8 = sub_22FC(&qword_B4B58, &qword_9B1A0);
    memcpy((a2 + v15), (a1 + v15), *(*(v8 - 8) + 64));
  }

  else
  {
    v12 = a2 + v15;
    *(a2 + v15) = *(a1 + v15);
    v11 = a2 + v15 + updated[5];
    v10 = a1 + v15 + updated[5];
    v7 = sub_99230();
    (*(*(v7 - 8) + 32))(v11, v10);
    *(v12 + updated[6]) = *(a1 + v15 + updated[6]);
    *(v12 + updated[7]) = *(a1 + v15 + updated[7]);
    (*(v18 + 56))();
  }

  result = *(a1 + v14[9]);
  *(a2 + v14[9]) = result;
  return result;
}

uint64_t sub_6828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for MainView(0);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_54B0(a1, v4, a2);
}

uint64_t sub_68A8@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v40 = 0;
  v23 = sub_B920;
  v18 = sub_BD3C;
  v35 = &unk_A645C;
  v37 = sub_CBB4;
  v39 = sub_CC30;
  v55 = &opaque type descriptor for <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>;
  v85 = 0;
  v84 = 0;
  v29 = 0;
  v10 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = &v10 - v10;
  v1 = sub_99B10();
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v28 = &v10 - v11;
  v33 = sub_22FC(&qword_B4BC8, &qword_9A910);
  v24 = *(v33 - 8);
  v25 = v33 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v2 = &v10 - v12;
  v26 = &v10 - v12;
  v47 = sub_22FC(&qword_B4BD0, &qword_9A918);
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v13 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v46 = &v10 - v13;
  v63 = sub_22FC(&qword_B4BD8, &qword_9A920);
  v57 = *(v63 - 8);
  v58 = v63 - 8;
  v15 = *(v57 + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v61 = &v10 - v14;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v14);
  v62 = &v10 - v16;
  v85 = &v10 - v16;
  v84 = v3;
  v17 = &v70;
  v71 = v3;
  v19 = &v68;
  v69 = v3;
  v20 = sub_22FC(&qword_B4BE0, &qword_9A928);
  v21 = sub_22FC(&qword_B4BE8, &qword_9A930);
  v22 = sub_BF88();
  v4 = sub_C140();
  sub_BEC0(v23, v17, v20, v21, v22, v4, v2);
  v34 = sub_C26C();
  sub_982E0(0);
  (*(v24 + 8))(v26, v33);
  *&v27[1] = 1;
  sub_99B90("Turn off background security improvements?", 0x2AuLL, 1);
  sub_99B00();
  v30 = *sub_98A68();
  _objc_retain(v30);
  sub_B928();
  v82[2] = 0;
  v82[3] = 0;
  v83 = *v27 & 0x100;
  v5 = sub_99B40();
  v43 = v82;
  v82[0] = v5;
  v82[1] = v6;
  v41 = sub_3564();
  v42 = v7;
  v36 = v8;
  v38 = &v66;
  v67 = v32;
  v49 = sub_22FC(&qword_B4C38, &qword_9A950);
  v80 = v33;
  v81 = v34;
  v56 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_CE00();
  v53 = sub_CE78();
  v48 = &type metadata for String;
  v50 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  sub_99800();

  sub_CF00(v43);
  (*(v44 + 8))(v46, v47);
  v72 = v47;
  v73 = v48;
  v74 = v49;
  v75 = v50;
  v76 = OpaqueTypeConformance2;
  v77 = v52;
  v78 = v53;
  v79 = v54;
  v60 = swift_getOpaqueTypeConformance2();
  sub_71A0(v61, v63, v62);
  v65 = *(v57 + 8);
  v64 = v57 + 8;
  v65(v61, v63);
  (*(v57 + 16))(v61, v62, v63);
  sub_8408(v61, v63, v59);
  v65(v61, v63);
  return (v65)(v62, v63);
}

uint64_t sub_7204@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v63 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v73 = 0;
  v37 = sub_994C0();
  v38 = *(v37 - 8);
  v39 = v38;
  __chkstk_darwin(v37 - 8);
  v40 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22FC(&qword_B4C50, &qword_9A958);
  v42 = *(v41 - 8);
  v43 = v42;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41 - 8);
  v45 = &v18 - v44;
  v46 = sub_22FC(&qword_B4C58, &qword_9A960);
  v47 = *(v46 - 8);
  v48 = v47;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46 - 8);
  v50 = &v18 - v49;
  v51 = sub_22FC(&qword_B4C60, &qword_9A968);
  v52 = *(v51 - 8);
  v53 = v52;
  v55 = v52[8];
  __chkstk_darwin(v51 - 8);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v18 - v57;
  v3 = __chkstk_darwin(&v18 - v57);
  v56 = &v18 - v57;
  __chkstk_darwin(v3);
  v58 = &v18 - v57;
  v91 = &v18 - v57;
  v59 = (*(*(sub_22FC(&qword_B4B58, &qword_9B1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v63);
  v72 = (&v18 - v59);
  v60 = &v18 - v59;
  updated = type metadata accessor for UpdateHistoryData(v4);
  v61 = *(updated - 8);
  v70 = v61;
  __chkstk_darwin(updated - 8);
  v62 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v62;
  v64 = sub_22FC(&qword_B4C68, &qword_9A970);
  v66 = *(*(v64 - 8) + 64);
  v6 = __chkstk_darwin(v63);
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = &v18 - v68;
  v7 = __chkstk_darwin(v6);
  v67 = &v18 - v68;
  v8 = __chkstk_darwin(v7);
  v69 = &v18 - v68;
  v89 = &v18 - v68;
  v88 = v1;
  v9 = type metadata accessor for MainView(v8);
  sub_31A0((v1 + *(v9 + 32)), v72);
  if ((*(v70 + 48))(v72, 1, updated) == 1)
  {
    sub_4154(v60);
LABEL_6:
    v14 = v53[7];
    v19 = 1;
    v14(v65, 1, 1, v51);
    v18 = sub_CF2C();
    v15 = sub_D0A4();
    v84 = v41;
    v85 = v37;
    v86 = v18;
    v87 = v15;
    v20 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82 = v46;
    v83 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_846C(v65, v51, v67);
    sub_D124(v65);
    sub_D1D8(v67, v69);
    goto LABEL_7;
  }

  sub_D5A0(v60, v62);
  v35 = *v62;
  if (v35 != *sub_4A924())
  {
    sub_D668(v62);
    goto LABEL_6;
  }

  v10 = v45;
  v26 = &v18;
  __chkstk_darwin(&v18);
  v24 = &v18 - 4;
  *(&v18 - 2) = v11;
  v25 = sub_22FC(&qword_B4C90, &qword_9A978);
  v23 = type metadata accessor for UpdateHistoryView(255);
  v12 = sub_D024();
  v80 = v23;
  v81 = v12;
  v30 = &unk_A645C;
  v31 = 1;
  v13 = swift_getOpaqueTypeConformance2();
  sub_DBCC(sub_D9F4, v24, &type metadata for Text, v25, &protocol witness table for Text, v13, v10);
  sub_994B0();
  v27 = sub_CF2C();
  v28 = sub_D0A4();
  sub_99770();
  (*(v39 + 8))(v40, v37);
  (*(v43 + 8))(v45, v41);
  v76 = v41;
  v77 = v37;
  v78 = v27;
  v79 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  sub_982E0(2);
  (*(v48 + 8))(v50, v46);
  v74 = v46;
  v75 = v29;
  v32 = swift_getOpaqueTypeConformance2();
  sub_71A0(v56, v51, v58);
  v33 = v53[1];
  v34 = (v53 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v56, v51);
  v73 = v56;
  v22 = v53[2];
  v21 = v53 + 2;
  v22(v54, v58, v51);
  sub_8408(v54, v51, v56);
  v33(v54, v51);
  v22(v65, v56, v51);
  (v53[7])(v65, 0, 1, v51);
  sub_846C(v65, v51, v67);
  sub_D124(v65);
  sub_D1D8(v67, v69);
  v33(v56, v51);
  v33(v58, v51);
  sub_D668(v62);
LABEL_7:
  sub_D30C(v69, v67);
  sub_D440();
  sub_8408(v67, v64, v36);
  sub_D124(v67);
  return sub_D124(v69);
}

uint64_t sub_7D84@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v20 = sub_DC94;
  v14 = sub_DC9C;
  v16 = sub_DCA4;
  v31 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v37 = &unk_A645C;
  v61 = 0;
  v60 = 0;
  v11 = 0;
  v28 = sub_994C0();
  v21 = *(v28 - 8);
  v22 = v28 - 8;
  v5 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v23 = &v5 - v5;
  v27 = sub_22FC(&qword_B4C98, &qword_9A980);
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v6 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v1 = &v5 - v6;
  v26 = &v5 - v6;
  v35 = sub_22FC(&qword_B4CA0, &qword_9A988);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v7 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v34 = &v5 - v7;
  v45 = sub_22FC(&qword_B4CA8, &qword_9A990);
  v39 = *(v45 - 8);
  v40 = v45 - 8;
  v9 = *(v39 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v43 = &v5 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v8);
  v44 = &v5 - v10;
  v61 = &v5 - v10;
  v60 = v2;
  v13 = &v52;
  v53 = v2;
  v15 = &v50;
  v51 = v2;
  v17 = &v48;
  v49 = v2;
  v18 = sub_22FC(&qword_B4CB0, &qword_9A998);
  updated = type metadata accessor for UpdateAvailableView(v11);
  v12 = sub_DCAC();
  v3 = sub_DD40();
  sub_B040(v20, v13, v16, v17, v18, updated, v1, v18, v12, v3, v12);
  sub_994B0();
  v29 = sub_DDC0();
  v30 = sub_D0A4();
  sub_99770();
  (*(v21 + 8))(v23, v28);
  (*(v24 + 8))(v26, v27);
  v56 = v27;
  v57 = v28;
  v58 = v29;
  v59 = v30;
  v38 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_982E0(3);
  (*(v32 + 8))(v34, v35);
  v54 = v35;
  v55 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  sub_71A0(v43, v45, v44);
  v47 = *(v39 + 8);
  v46 = v39 + 8;
  v47(v43, v45);
  (*(v39 + 16))(v43, v44, v45);
  sub_8408(v43, v45, v41);
  v47(v43, v45);
  return (v47)(v44, v45);
}

uint64_t *sub_84B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_99A20();
  return v15;
}

unint64_t sub_872C()
{
  v2 = qword_B4BA0;
  if (!qword_B4BA0)
  {
    sub_87B4(&qword_B4B98, &qword_9A908);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_87B4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_8858()
{
  v2 = qword_B4BA8;
  if (!qword_B4BA8)
  {
    sub_87B4(&qword_B4B68, &qword_9A8D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_88E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_8924(uint64_t a1)
{
  v24 = a1;
  v33 = 0;
  v41 = 0;
  v23 = 0;
  v30 = sub_993B0();
  v25 = v30;
  v26 = *(v30 - 8);
  v29 = v26;
  v27 = v26;
  v1 = __chkstk_darwin(v24);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3;
  v41 = v1;
  v4 = sub_81788();
  (*(v29 + 16))(v3, v4, v30);
  v35 = sub_99390();
  v31 = v35;
  v34 = sub_99D60();
  v32 = v34;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v36 = sub_99F80();
  if (os_log_type_enabled(v35, v34))
  {
    v5 = v23;
    v14 = sub_99E40();
    v10 = v14;
    v11 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v12 = 0;
    v15 = sub_F444(0, v11, v11);
    v13 = v15;
    v16 = sub_F444(v12, &type metadata for Any + 8, &type metadata for Any + 8);
    v40 = v14;
    v39 = v15;
    v38 = v16;
    v17 = 0;
    v18 = &v40;
    sub_F498(0, &v40);
    sub_F498(v17, v18);
    v37 = v36;
    v19 = &v7;
    __chkstk_darwin(&v7);
    v20 = &v7 - 6;
    *(&v7 - 4) = v6;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v21 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v22 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v31, v32, "onAppear called", v10, 2u);
      v8 = 0;
      sub_F5B0(v13, 0, v11);
      sub_F5B0(v16, v8, &type metadata for Any + 8);
      sub_99E20();

      v9 = v22;
    }
  }

  else
  {

    v9 = v23;
  }

  (*(v27 + 8))(v28, v25);
  sub_8FC8();
}

uint64_t sub_8CD8()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

void sub_8F30()
{
  v1 = *(type metadata accessor for MainView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_8924(v2);
}

uint64_t sub_8F94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_8FC8()
{
  v12 = sub_F1EC;
  v32 = 0;
  v14 = 0;
  v18 = sub_99A40();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v3 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v2 - v3;
  v22 = sub_99A70();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v4 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v14);
  v21 = &v2 - v4;
  v5 = *(type metadata accessor for MainView(v1) - 8);
  v8 = v5;
  v9 = *(v5 + 64);
  v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v11 = &v2 - v6;
  v32 = v0;
  sub_DE70();
  v24 = sub_99DC0();
  sub_3DC0(v7, v11);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_659C(v11, v13 + v10);
  v30 = v12;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_F250;
  v29 = &unk_AD228;
  v23 = _Block_copy(&aBlock);
  sub_F304();
  sub_F31C();
  sub_99DD0();
  (*(v15 + 8))(v17, v18);
  (*(v19 + 8))(v21, v22);
  _Block_release(v23);

  _objc_release(v24);
}

void sub_92E0(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = a1;
  v36 = 0;
  v45 = 0;
  v44 = 0;
  v25 = 0;
  v33 = sub_993B0();
  v28 = v33;
  v29 = *(v33 - 8);
  v32 = v29;
  v30 = v29;
  v2 = __chkstk_darwin(v26);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  v45 = v2;
  v44 = v5;
  v6 = sub_81788();
  (*(v32 + 16))(v4, v6, v33);
  v38 = sub_99390();
  v34 = v38;
  v37 = sub_99D60();
  v35 = v37;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v39 = sub_99F80();
  if (os_log_type_enabled(v38, v37))
  {
    v7 = v25;
    v16 = sub_99E40();
    v12 = v16;
    v13 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v14 = 0;
    v17 = sub_F444(0, v13, v13);
    v15 = v17;
    v18 = sub_F444(v14, &type metadata for Any + 8, &type metadata for Any + 8);
    v43 = v16;
    v42 = v17;
    v41 = v18;
    v19 = 0;
    v20 = &v43;
    sub_F498(0, &v43);
    sub_F498(v19, v20);
    v40 = v39;
    v21 = &v9;
    __chkstk_darwin(&v9);
    v22 = &v9 - 6;
    *(&v9 - 4) = v8;
    *(&v9 - 3) = &v42;
    *(&v9 - 2) = &v41;
    v23 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v24 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v34, v35, "onReceive for willEnterForegroundNotification called", v12, 2u);
      v10 = 0;
      sub_F5B0(v15, 0, v13);
      sub_F5B0(v18, v10, &type metadata for Any + 8);
      sub_99E20();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v30 + 8))(v31, v28);
  sub_A09C();
}

uint64_t sub_96B4()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

void sub_990C(uint64_t a1)
{
  v2 = type metadata accessor for MainView(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  sub_92E0(a1, v3);
}

unint64_t sub_9984()
{
  v2 = qword_B4BB0;
  if (!qword_B4BB0)
  {
    sub_87B4(&qword_B4B88, &qword_9A8F8);
    sub_87B4(&qword_B4B78, &qword_9A8E8);
    sub_87B4(&qword_B4B70, &qword_9A8E0);
    sub_87B4(&qword_B4B68, &qword_9A8D8);
    sub_8858();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9B14()
{
  v2 = qword_B4BB8;
  if (!qword_B4BB8)
  {
    sub_99DF0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9B94(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4B80, &qword_9A8F0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(sub_22FC(&qword_B4B88, &qword_9A8F8) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

unint64_t sub_9C74()
{
  v2 = qword_B4BC0;
  if (!qword_B4BC0)
  {
    sub_87B4(&qword_B4B90, &qword_9A900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9CFC(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4B80, &qword_9A8F0);
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(sub_22FC(&qword_B4B88, &qword_9A8F8) + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  v4 = a1 + *(sub_22FC(&qword_B4B90, &qword_9A900) + 52);
  v2 = sub_99DF0();
  (*(*(v2 - 8) + 8))(v4);

  return a1;
}

uint64_t sub_9E54(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FC(&qword_B4B80, &qword_9A8F0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v21 = *(sub_22FC(&qword_B4B88, &qword_9A8F8) + 36);
  if (*(a1 + v21))
  {
    v17 = *(a1 + v21);
    v18 = *(a1 + v21 + 8);

    v3 = (a2 + v21);
    *v3 = v17;
    v3[1] = v18;
  }

  else
  {
    *(a2 + v21) = *(a1 + v21);
  }

  v15 = a2 + v21;
  v16 = a1 + v21;
  if (*(a1 + v21 + 16))
  {
    v13 = *(v16 + 16);
    v14 = *(a1 + v21 + 24);

    *(v15 + 16) = v13;
    *(a2 + v21 + 24) = v14;
  }

  else
  {
    *(v15 + 16) = *(v16 + 16);
  }

  v9 = sub_22FC(&qword_B4B90, &qword_9A900);
  v8 = a2 + *(v9 + 52);
  v7 = a1 + *(v9 + 52);
  v4 = sub_99DF0();
  (*(*(v4 - 8) + 16))(v8, v7);
  v11 = (a2 + *(v9 + 56));
  v5 = (a1 + *(v9 + 56));
  v10 = *v5;
  v12 = v5[1];

  result = a2;
  *v11 = v10;
  v11[1] = v12;
  return result;
}

void sub_A09C()
{
  v32 = 0;
  v40 = 0;
  v22 = 0;
  v29 = sub_993B0();
  v23 = v29;
  v24 = *(v29 - 8);
  v28 = v24;
  v25 = v24;
  v26 = *(v24 + 64);
  __chkstk_darwin(v29 - 8);
  v0 = &v5 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v0;
  v40 = v1;
  v2 = sub_81788();
  (*(v28 + 16))(v0, v2, v29);
  v34 = sub_99390();
  v30 = v34;
  v33 = sub_99D60();
  v31 = v33;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v35 = sub_99F80();
  if (os_log_type_enabled(v34, v33))
  {
    v3 = v22;
    v13 = sub_99E40();
    v9 = v13;
    v10 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v11 = 0;
    v14 = sub_F444(0, v10, v10);
    v12 = v14;
    v15 = sub_F444(v11, &type metadata for Any + 8, &type metadata for Any + 8);
    v39 = v13;
    v38 = v14;
    v37 = v15;
    v16 = 0;
    v17 = &v39;
    sub_F498(0, &v39);
    sub_F498(v16, v17);
    v36 = v35;
    v18 = &v5;
    __chkstk_darwin(&v5);
    v19 = &v5 - 6;
    *(&v5 - 4) = v4;
    *(&v5 - 3) = &v38;
    *(&v5 - 2) = &v37;
    v20 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v30, v31, "App will enter foreground - refreshing security update status", v9, 2u);
      v7 = 0;
      sub_F5B0(v12, 0, v10);
      sub_F5B0(v15, v7, &type metadata for Any + 8);
      sub_99E20();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v25 + 8))(v27, v23);
  v6 = sub_2A14();
  sub_4FBEC();

  sub_8FC8();
}

void *sub_A47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v18 = 0;
  v17 = 0;
  v8[1] = 0;
  updated = type metadata accessor for UpdateAvailableView(0);
  v9 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v15 = v8 - v9;
  v10 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v16 = (v8 - v10);
  v18 = v8 - v10;
  v17 = a1;
  v11 = *(a1 + *(type metadata accessor for MainView(v5) + 28));
  _objc_retain(v11);
  v6 = sub_A5DC();
  sub_3BAC8(v11, v6, v15);
  v14 = sub_DD40();
  sub_71A0(v15, updated, v16);
  sub_10A74(v15);
  sub_10D38(v16, v15);
  sub_8408(v15, updated, v12);
  sub_10A74(v15);
  return sub_10A74(v16);
}

BOOL sub_A5DC()
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v1 = sub_22FC(&qword_B4B58, &qword_9B1A0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v4 - v10;
  v12 = 0;
  updated = type metadata accessor for UpdateHistoryData(0);
  v14 = *(updated - 8);
  v15 = updated - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v17 = &v4 - v16;
  v22 = &v4 - v16;
  v21 = v0;
  v18 = type metadata accessor for MainView(v2);
  v19 = *(v0 + *(v18 + 28));
  _objc_retain(v19);
  if (!v19)
  {
    return 0;
  }

  v8 = v19;
  v7 = v19;
  v20 = v19;
  sub_31A0((v9 + *(v18 + 32)), v11);
  if ((*(v14 + 48))(v11, 1, updated) == 1)
  {
    sub_4154(v11);
    _objc_release(v7);
    return 0;
  }

  sub_D5A0(v11, v17);
  if ((UpdateHistoryData.isSameBuild(descriptor:)(v7) & 1) == 0)
  {
    sub_D668(v17);
    _objc_release(v7);
    return 0;
  }

  v4 = *v17;
  v5 = v4 == *sub_4A950();
  sub_D668(v17);
  _objc_release(v7);
  return v5;
}

uint64_t sub_A840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = 0u;
  v53 = 0u;
  v40 = 0u;
  v41 = 0u;
  v64 = a1;
  v28 = sub_2A14();
  v29 = sub_4D884();
  _objc_release(v28);
  if (v29)
  {
    memset(v55, 0, sizeof(v55));
    sub_846C(v55, &type metadata for Text, &v56);
    v7 = v56;
    v8 = v57;
    v9 = v58;
    v10 = v59;
    sub_103E4(v56, v57, v58, v59);
    v60 = v7;
    v61 = v8;
    v62 = v9;
    v63 = v10;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
  }

  else
  {
    HIBYTE(v14) = 1;
    sub_99B90("Available", 9uLL, 1);
    sub_99580();
    v11 = *sub_98A68();
    _objc_retain(v11);
    v49 = 0;
    v50 = 0;
    v51 = v14 & 0x100;
    v45 = sub_996F0();
    v46 = v2;
    v47 = v3;
    v48 = v4;
    v42[0] = v45;
    v42[1] = v2;
    v43 = v3 & 1;
    v44 = v4;
    sub_71A0(v42, &type metadata for Text, &v52);
    sub_10440(v42);
    v12 = v52;
    v13 = v53;
    v15 = *(&v53 + 1);
    sub_F84C(v52, *(&v52 + 1), v53 & 1);

    v37 = v12;
    v38 = v13 & 1;
    v39 = v15;
    sub_8408(&v37, &type metadata for Text, &v40);
    sub_10440(&v37);
    v17 = v40;
    v16 = v41;
    v18 = *(&v41 + 1);
    sub_F84C(v40, *(&v40 + 1), v41 & 1);

    v30 = v17;
    v31 = v16 & 1;
    v32 = v18;
    sub_846C(&v30, &type metadata for Text, &v33);
    sub_10510(&v30);
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    sub_103E4(v33, v34, v35, v36);
    v60 = v19;
    v61 = v20;
    v62 = v21;
    v63 = v22;
    sub_10440(&v40);
    sub_10440(&v52);
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  v54[0] = v23;
  v54[1] = v24;
  v54[2] = v25;
  v54[3] = v26;
  v6 = sub_22FC(&qword_B4CB0, &qword_9A998);
  sub_DCAC();
  sub_8408(v54, v6, a2);
  sub_10510(v54);
  return sub_10510(&v60);
}

uint64_t sub_AC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = 0u;
  v54 = 0u;
  v41 = 0u;
  v42 = 0u;
  v65 = a1;
  v28 = sub_2A14();
  v29 = sub_4E140();
  _objc_release(v28);
  v30 = sub_21160(v29, 0xC000000000000030);
  sub_109F4(v29);
  if (v30)
  {
    HIBYTE(v14) = 1;
    sub_99B90("Background Security Updates cannot be managed while software update is in progress.", 0x53uLL, 1);
    sub_99580();
    v11 = *sub_98A68();
    _objc_retain(v11);
    v50 = 0;
    v51 = 0;
    v52 = v14 & 0x100;
    v46 = sub_996F0();
    v47 = v2;
    v48 = v3;
    v49 = v4;
    v43[0] = v46;
    v43[1] = v2;
    v44 = v3 & 1;
    v45 = v4;
    sub_71A0(v43, &type metadata for Text, &v53);
    sub_10440(v43);
    v12 = v53;
    v13 = v54;
    v15 = *(&v54 + 1);
    sub_F84C(v53, *(&v53 + 1), v54 & 1);

    v38 = v12;
    v39 = v13 & 1;
    v40 = v15;
    sub_8408(&v38, &type metadata for Text, &v41);
    sub_10440(&v38);
    v17 = v41;
    v16 = v42;
    v18 = *(&v42 + 1);
    sub_F84C(v41, *(&v41 + 1), v42 & 1);

    v31 = v17;
    v32 = v16 & 1;
    v33 = v18;
    sub_846C(&v31, &type metadata for Text, &v34);
    sub_10510(&v31);
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    sub_103E4(v34, v35, v36, v37);
    v61 = v19;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    sub_10440(&v41);
    sub_10440(&v53);
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  else
  {
    memset(v56, 0, sizeof(v56));
    sub_846C(v56, &type metadata for Text, &v57);
    v7 = v57;
    v8 = v58;
    v9 = v59;
    v10 = v60;
    sub_103E4(v57, v58, v59, v60);
    v61 = v7;
    v62 = v8;
    v63 = v9;
    v64 = v10;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
  }

  v55[0] = v23;
  v55[1] = v24;
  v55[2] = v25;
  v55[3] = v26;
  v6 = sub_22FC(&qword_B4CB0, &qword_9A998);
  sub_DCAC();
  sub_8408(v55, v6, a2);
  sub_10510(v55);
  return sub_10510(&v61);
}

uint64_t sub_B040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_999F0();
}

uint64_t sub_B1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v51 = a1;
  v56 = &protocol witness table for MainActor;
  v62 = sub_11DCC;
  v60 = sub_120A4;
  v76 = 0;
  v75 = 0;
  v46 = 0;
  v27 = *(type metadata accessor for MainView(0) - 8);
  v48 = v27;
  v53 = *(v27 + 64);
  v28 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v58 = v21 - v28;
  v29 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v45 = v21 - v29;
  v2 = sub_99B10();
  v30 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v43 = v21 - v30;
  v31 = sub_22FC(&qword_B4C00, &qword_9A938);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v63 = v21 - v34;
  v35 = sub_22FC(&qword_B4BE0, &qword_9A928);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v51);
  v37 = v21 - v36;
  v38 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v39 = v21 - v38;
  v40 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v41 = v21 - v40;
  v76 = v21 - v40;
  v75 = v7;
  *&v42[1] = 1;
  sub_99B90("Automatically Install", 0x15uLL, 1);
  sub_99B00();
  v44 = *sub_98A68();
  _objc_retain(v44);
  sub_B928();
  v73[2] = 0;
  v73[3] = 0;
  v74 = *v42 & 0x100;
  v8 = sub_99B40();
  v67 = v73;
  v73[0] = v8;
  v73[1] = v9;
  sub_3DC0(v51, v58);
  v47 = sub_99CD0();
  v49 = sub_99CC0();
  v52 = *(v48 + 80);
  v50 = (v52 + 32) & ~v52;
  v54 = 7;
  v10 = swift_allocObject();
  v11 = v50;
  v12 = v56;
  v13 = v10;
  v14 = v58;
  v59 = v13;
  *(v13 + 16) = v49;
  *(v13 + 24) = v12;
  sub_659C(v14, v13 + v11);
  sub_3DC0(v51, v58);
  v55 = sub_99CC0();
  v57 = (v52 + 32) & ~v52;
  v15 = swift_allocObject();
  v16 = v56;
  v17 = v57;
  v18 = v15;
  v19 = v58;
  v61 = v18;
  *(v18 + 16) = v55;
  *(v18 + 24) = v16;
  sub_659C(v19, v18 + v17);
  sub_999B0();
  v64 = v70;
  v65 = v71;
  v66 = v72;
  sub_CE00();
  sub_99990();
  v68 = sub_2E28();
  v69 = (*(*v68 + 224))(v68);

  if (v69)
  {
    v25 = 1;
  }

  else
  {
    v23 = sub_2E28();
    v24 = (*(*v23 + 216))(v23);

    v25 = v24;
  }

  v21[1] = v25;
  sub_C030();
  sub_99840();
  (*(v32 + 8))(v63, v31);
  v22 = sub_BF88();
  sub_71A0(v39, v35, v41);
  sub_12124(v39);
  sub_121C8(v41, v37);
  sub_8408(v37, v35, v26);
  sub_12124(v37);
  return sub_12124(v41);
}

uint64_t sub_B940@<X0>(_BYTE *a1@<X8>)
{
  v6 = sub_2E28();
  v7 = (*(*v6 + 224))(v6);

  result = v7;
  if (v7)
  {
    *a1 = 1;
  }

  else
  {
    v3 = sub_2E28();
    v4 = (*(*v3 + 216))(v3);

    result = v4;
    if (v4)
    {
      *a1 = 0;
    }

    else
    {
      v2 = sub_2E28();
      *a1 = (*(*v2 + 184))(v2) & 1;
    }
  }

  return result;
}

uint64_t sub_BA90(char *a1)
{
  v4 = *a1;
  v5 = sub_2E28();
  v6 = (*(*v5 + 184))(v5);

  if (v6)
  {
    v3 = v4 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_3468(1);
  }

  v2 = sub_2E28();
  (*(*v2 + 240))(v2);
}

uint64_t sub_BBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  sub_BD44(v9);
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  sub_99650();
  sub_22FC(&qword_B4C28, &qword_9A948);
  sub_C1E4();
  sub_99830();
  sub_F6A8(v8);
  memcpy(v14, v10, sizeof(v14));
  memcpy(v7, v14, 0x81uLL);
  v4 = sub_22FC(&qword_B4BE8, &qword_9A930);
  sub_C140();
  sub_71A0(v7, v4, v11);
  sub_119B0(v7);
  memcpy(v15, v11, 0x81uLL);
  sub_11A2C(v15, v6);
  memcpy(v5, v15, 0x81uLL);
  sub_8408(v5, v4, a2);
  sub_119B0(v5);
  return sub_119B0(v11);
}

uint64_t sub_BD44@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v10 = v1;
  sub_995A0();
  sub_22FC(&qword_B4CE8, &qword_9A9B8);
  sub_F620();
  sub_999A0();
  memcpy(__dst, v8, sizeof(__dst));
  memcpy(v7, __dst, sizeof(v7));
  v4 = sub_22FC(&qword_B4C28, &qword_9A948);
  sub_C1E4();
  sub_71A0(v7, v4, __b);
  sub_F6A8(v7);
  memcpy(v12, __b, sizeof(v12));
  sub_F724(v12, v6);
  memcpy(v5, v12, sizeof(v5));
  sub_8408(v5, v4, a1);
  sub_F6A8(v5);
  return sub_F6A8(__b);
}

uint64_t sub_BEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_99A00();
}

unint64_t sub_BF88()
{
  v2 = qword_B4BF0;
  if (!qword_B4BF0)
  {
    sub_87B4(&qword_B4BE0, &qword_9A928);
    sub_C030();
    sub_C0B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_C030()
{
  v2 = qword_B4BF8;
  if (!qword_B4BF8)
  {
    sub_87B4(&qword_B4C00, &qword_9A938);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_C0B8()
{
  v2 = qword_B4C08;
  if (!qword_B4C08)
  {
    sub_87B4(&qword_B4C10, &qword_9A940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_C140()
{
  v2 = qword_B4C18;
  if (!qword_B4C18)
  {
    sub_87B4(&qword_B4BE8, &qword_9A930);
    sub_C1E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_C1E4()
{
  v2 = qword_B4C20;
  if (!qword_B4C20)
  {
    sub_87B4(&qword_B4C28, &qword_9A948);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_C26C()
{
  v2 = qword_B4C30;
  if (!qword_B4C30)
  {
    sub_87B4(&qword_B4BC8, &qword_9A910);
    sub_BF88();
    sub_C140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_C320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v44 = a1;
  v50 = sub_118C4;
  v24 = nullsub_1;
  v72 = 0;
  v71 = 0;
  v68 = 0;
  v39 = 0;
  v2 = type metadata accessor for MainView(0);
  v25 = *(v2 - 8);
  v45 = v25;
  v46 = *(v25 + 64);
  v26 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v48 = &v18[-v26 - 5];
  v27 = (*(*(sub_22FC(&qword_B4E20, &unk_9AC90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v49 = &v18[-v27 - 5];
  v28 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v38 = &v18[-v28 - 5];
  v3 = sub_99B10();
  v29 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v36 = &v18[-v29 - 5];
  v58 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v30 = (v56[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v44);
  v31 = &v18[-v30 - 5];
  v32 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v33 = &v18[-v32 - 5];
  v34 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v61 = &v18[-v34 - 5];
  v35 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v54 = &v18[-v35 - 5];
  v72 = &v18[-v35 - 5];
  v71 = v10;
  *&v40[1] = 1;
  sub_99B90("Turn Off", 8uLL, 1);
  sub_99B00();
  v37 = *sub_98A68();
  _objc_retain(v37);
  sub_B928();
  v69[2] = 0;
  v69[3] = 0;
  v70 = *v40 & 0x100;
  v11 = sub_99B40();
  v52 = v69;
  v69[0] = v11;
  v69[1] = v12;
  sub_993D0();
  v41 = sub_993F0();
  v13 = *(v41 - 8);
  v42 = *(v13 + 56);
  v43 = v13 + 56;
  v42(v49, 0, *&v40[1]);
  sub_3DC0(v44, v48);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v51 = swift_allocObject();
  sub_659C(v48, v51 + v47);
  v53 = sub_CE00();
  sub_99940();
  v55 = sub_11928();
  sub_71A0(v61, v58, v54);
  v59 = v56[1];
  v60 = v56 + 1;
  v59(v61, v58);
  v68 = v61;
  *&v18[1] = 1;
  sub_99B90("Cancel", 6uLL, 1);
  sub_99B00();
  v17 = *sub_98A68();
  _objc_retain(v17);
  sub_B928();
  v66[2] = 0;
  v66[3] = 0;
  v67 = *v18 & 0x100;
  v14 = sub_99B40();
  v19 = v66;
  v66[0] = v14;
  v66[1] = v15;
  sub_993E0();
  (v42)(v49, 0, *&v18[1], v41);
  sub_99940();
  sub_71A0(v33, v58, v61);
  v59(v33, v58);
  v21 = v56[2];
  v20 = v56 + 2;
  v21(v33, v54, v58);
  v22 = v65;
  v65[0] = v33;
  v21(v31, v61, v58);
  v65[1] = v31;
  v64[0] = v58;
  v64[1] = v58;
  v62 = v55;
  v63 = v55;
  sub_84B8(v22, 2uLL, v64, v23);
  v59(v31, v58);
  v59(v33, v58);
  v59(v61, v58);
  return (v59)(v54, v58);
}

uint64_t sub_CBBC()
{
  v1 = sub_2E28();
  (*(*v1 + 240))(v1);
}

uint64_t sub_CC30@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_99B90("The security of your DeviceFamilyName and personal data will be reduced if you turn off security improvements.", 0x6EuLL, 1);
  sub_99580();
  v5 = *sub_98A68();
  _objc_retain(v5);
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_996F0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_71A0(v14, &type metadata for Text, &v24);
  sub_10440(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_F84C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_8408(&v11, &type metadata for Text, a1);
  sub_10440(&v11);
  return sub_10440(&v24);
}

unint64_t sub_CE00()
{
  v2 = qword_B4C40;
  if (!qword_B4C40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_CE78()
{
  v2 = qword_B4C48;
  if (!qword_B4C48)
  {
    sub_87B4(&qword_B4C38, &qword_9A950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_CF2C()
{
  v2 = qword_B4C70;
  if (!qword_B4C70)
  {
    sub_87B4(&qword_B4C50, &qword_9A958);
    type metadata accessor for UpdateHistoryView(255);
    sub_D024();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_D024()
{
  v2 = qword_B4C78;
  if (!qword_B4C78)
  {
    type metadata accessor for UpdateHistoryView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_D0A4()
{
  v2 = qword_B4C80;
  if (!qword_B4C80)
  {
    sub_994C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_D124(uint64_t a1)
{
  v3 = sub_22FC(&qword_B4C60, &qword_9A968);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_D1D8(const void *a1, void *a2)
{
  v6 = sub_22FC(&qword_B4C60, &qword_9A968);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4C68, &qword_9A970);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_D30C(const void *a1, void *a2)
{
  v6 = sub_22FC(&qword_B4C60, &qword_9A968);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4C68, &qword_9A970);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_D440()
{
  v2 = qword_B4C88;
  if (!qword_B4C88)
  {
    sub_87B4(&qword_B4C68, &qword_9A970);
    sub_87B4(&qword_B4C58, &qword_9A960);
    sub_87B4(&qword_B4C50, &qword_9A958);
    sub_994C0();
    sub_CF2C();
    sub_D0A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4C88);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_D5A0(char *a1, char *a2)
{
  *a2 = *a1;
  updated = type metadata accessor for UpdateHistoryData(0);
  v4 = updated[5];
  v2 = sub_99230();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  *&a2[updated[6]] = *&a1[updated[6]];
  result = *&a1[updated[7]];
  *&a2[updated[7]] = result;
  return result;
}

uint64_t sub_D668(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateHistoryData(0) + 20);
  v1 = sub_99230();
  (*(*(v1 - 8) + 8))(a1 + v3);

  return a1;
}

uint64_t sub_D718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v12 = a1;
  v19 = &unk_A645C;
  v32 = 0;
  v31 = 0;
  v9 = 0;
  v10 = (*(*(type metadata accessor for UpdateHistoryData(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v15 = &v9 - v10;
  updated = type metadata accessor for UpdateHistoryView(v2);
  v11 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v3 = &v9 - v11;
  v16 = &v9 - v11;
  v26 = sub_22FC(&qword_B4C90, &qword_9A978);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v13 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v12);
  v24 = &v9 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v25 = &v9 - v14;
  v32 = &v9 - v14;
  v31 = v6;
  sub_11334(v6, v7);
  sub_18BB0(v15, v3);
  v18 = sub_D024();
  sub_982E0(2);
  sub_11454(v16);
  v29 = updated;
  v30 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_71A0(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_8408(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_D9FC@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_99B90("Installed", 9uLL, 1);
  sub_99580();
  v5 = *sub_98A68();
  _objc_retain(v5);
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_996F0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_71A0(v14, &type metadata for Text, &v24);
  sub_10440(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_F84C(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_8408(&v11, &type metadata for Text, a1);
  sub_10440(&v11);
  return sub_10440(&v24);
}

uint64_t sub_DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_999E0();
}

unint64_t sub_DCAC()
{
  v2 = qword_B4CB8;
  if (!qword_B4CB8)
  {
    sub_87B4(&qword_B4CB0, &qword_9A998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4CB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DD40()
{
  v2 = qword_B4CC0;
  if (!qword_B4CC0)
  {
    type metadata accessor for UpdateAvailableView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DDC0()
{
  v2 = qword_B4CC8;
  if (!qword_B4CC8)
  {
    sub_87B4(&qword_B4C98, &qword_9A980);
    sub_DCAC();
    sub_DD40();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4CC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DE70()
{
  v2 = qword_B4CD0;
  if (!qword_B4CD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B4CD0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_DED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = a1;
  v140 = 0;
  memset(v130, 0, sizeof(v130));
  v112 = 0u;
  v113 = 0u;
  v99 = 0u;
  v100 = 0u;
  v78 = sub_99570();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v78);
  v82 = &v19 - v81;
  v83 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v81);
  v84 = &v19 - v83;
  v85 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v83);
  v86 = &v19 - v85;
  v140 = a1;
  v87 = sub_2E28();
  v88 = (*(*v87 + 224))(v87);

  if (v88)
  {
    v75 = 1;
  }

  else
  {
    v73 = sub_2E28();
    v74 = (*(*v73 + 216))(v73);

    v75 = v74;
  }

  if (v75)
  {
    v43 = 105;
    sub_99560();
    v48 = 0;
    v54 = 1;
    v141._countAndFlagsBits = sub_99B90("", 0, 1);
    object = v141._object;
    sub_99550(v141);

    sub_99B90("checkmark.seal.fill", 0x13uLL, v54 & 1);
    v42 = sub_998C0();
    sub_99530();

    v142._countAndFlagsBits = sub_99B90(" This setting is currently managed by your organization. Contact your administrator for more information.", v43, v54 & 1);
    v44 = v142._object;
    sub_99550(v142);

    (*(v79 + 16))(v84, v86, v78);
    (*(v79 + 32))(v82, v84, v78);
    (*(v79 + 8))(v86, v78);
    v50 = sub_99590();
    v45 = v5;
    v46 = v6;
    v47 = v7;
    v49 = *sub_98A68();
    _objc_retain(v49);
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = v54 & 1;
    v104 = sub_996F0();
    v105 = v8;
    v106 = v9;
    v107 = v10;
    v51 = v101;
    v101[0] = v104;
    v101[1] = v8;
    v102 = v9 & 1 & v54;
    v103 = v10;
    v64 = &v112;
    v60 = &type metadata for Text;
    v61 = &protocol witness table for Text;
    sub_71A0(v101, &type metadata for Text, &v112);
    sub_10440(v51);
    v52 = v112;
    v53 = v113;
    v55 = *(&v113 + 1);
    sub_F84C(v112, *(&v112 + 1), v113 & 1);

    v56 = &v96;
    v96 = v52;
    v97 = v53 & 1 & v54;
    v98 = v55;
    v63 = &v99;
    sub_8408(&v96, v60, &v99);
    sub_10440(v56);
    v58 = v99;
    v57 = v100;
    v59 = *(&v100 + 1);
    sub_F84C(v99, *(&v99 + 1), v100 & 1);

    v62 = &v89;
    v89 = v58;
    v90 = v57 & 1;
    v91 = v59;
    sub_846C(&v89, v60, &v92);
    sub_10510(v62);
    v65 = v92;
    v66 = v93;
    v67 = v94;
    v68 = v95;
    sub_103E4(v92, v93, v94, v95);
    v136 = v65;
    v137 = v66;
    v138 = v67;
    v139 = v68;
    sub_10440(v63);
    sub_10440(v64);
    v69 = v65;
    v70 = v66;
    v71 = v67;
    v72 = v68;
  }

  else
  {
    memset(v131, 0, sizeof(v131));
    sub_846C(v131, &type metadata for Text, &v132);
    v37 = v132;
    v38 = v133;
    v39 = v134;
    v40 = v135;
    sub_103E4(v132, v133, v134, v135);
    v136 = v37;
    v137 = v38;
    v138 = v39;
    v139 = v40;
    v69 = v37;
    v70 = v38;
    v71 = v39;
    v72 = v40;
  }

  v29 = v72;
  v28 = v71;
  v27 = v70;
  v26 = v69;
  *&v24[1] = 1;
  sub_99B90("Background Security Improvements provide additional protection to your ProductFamilyName in between software updates. \n\nIn rare instances of compatibility issues, these security improvements may be temporarily removed and then enhanced in a future software update. [Learn More…](https://support.apple.com/102657)", 0x13AuLL, 0);
  v23 = sub_99580();
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = *sub_98A68();
  _objc_retain(v22);
  v127 = 0;
  v128 = 0;
  v129 = *v24 & 0x100;
  v123 = sub_996F0();
  v124 = v14;
  v125 = v15;
  v126 = v16;
  v25 = v120;
  v120[0] = v123;
  v120[1] = v14;
  v121 = v15 & 1 & v24[1];
  v122 = v16;
  v36 = v130;
  v30 = &type metadata for Text;
  v31 = &protocol witness table for Text;
  sub_71A0(v120, &type metadata for Text, v130);
  sub_10440(v25);
  v35 = v118;
  v118[0] = v26;
  v118[1] = v27;
  v118[2] = v28;
  v118[3] = v29;
  v33 = v119;
  v119[0] = v118;
  v34 = v117;
  sub_10488(v36, v117);
  v119[1] = v34;
  v17 = sub_22FC(&qword_B4CB0, &qword_9A998);
  v32 = v116;
  v116[0] = v17;
  v116[1] = v30;
  v114 = sub_DCAC();
  v115 = v31;
  sub_84B8(v33, 2uLL, v32, v76);
  sub_10440(v34);
  sub_10510(v35);
  sub_10440(v36);
  return sub_10510(&v136);
}

uint64_t sub_E700(uint64_t a1)
{
  v59 = a1;
  v64 = 0;
  v85 = 0;
  v58 = 0;
  v78 = 0;
  v75 = 0;
  v74 = 0;
  v60 = sub_993B0();
  v61 = *(v60 - 8);
  v62 = v61;
  v1 = __chkstk_darwin(v59);
  v63 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v1;
  v68 = [objc_opt_self() sharedApplication];
  v67 = [v68 connectedScenes];
  v65 = v67;
  v66 = sub_1076C();
  sub_107D0();
  v70 = sub_99D10();

  v84 = v70;
  v69 = sub_22FC(&qword_B4DD8, &qword_9AC60);
  sub_10850();
  sub_99D50();
  v72 = v83;
  v71 = v83;

  if (v72)
  {
    v57 = v71;
    v54 = v71;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    v55 = v3;
    if (v3)
    {
      v53 = v55;
    }

    else
    {

      v53 = 0;
    }

    v52 = v53;

    v56 = v52;
  }

  else
  {

    v56 = 0;
  }

  v51 = v56;
  if (v56)
  {
    v50 = v51;
    v43 = v51;
    v78 = v51;
    v45 = [v51 windows];
    v44 = v45;
    v46 = sub_10908();
    v47 = sub_99C60();
    v77 = v47;
    v48 = sub_22FC(&qword_B4DF0, &qword_9AC68);
    sub_1096C();
    sub_99D50();
    v49 = v76;
    if (v76)
    {
      v42 = v49;
      v40 = v49;
      v75 = v49;

      v4 = [v40 rootViewController];
      v41 = v4;
      if (v4)
      {
        v39 = v41;
        v37 = v41;
        v74 = v41;
        v36 = sub_2A14();
        v5 = v37;
        v34 = &v36[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_viewControllerForPresentation];
        v35 = &v73;
        swift_beginAccess();
        v6 = *v34;
        *v34 = v37;

        swift_endAccess();
        return v58;
      }
    }

    else
    {
    }
  }

  v7 = v63;
  v8 = sub_81788();
  (*(v62 + 16))(v7, v8, v60);
  v32 = sub_99390();
  v29 = v32;
  v31 = sub_99D80();
  v30 = v31;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v33 = sub_99F80();
  if (os_log_type_enabled(v32, v31))
  {
    v9 = v58;
    v20 = sub_99E40();
    v16 = v20;
    v17 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v18 = 0;
    v21 = sub_F444(0, v17, v17);
    v19 = v21;
    v22 = sub_F444(v18, &type metadata for Any + 8, &type metadata for Any + 8);
    v82 = v20;
    v81 = v21;
    v80 = v22;
    v23 = 0;
    v24 = &v82;
    sub_F498(0, &v82);
    sub_F498(v23, v24);
    v79 = v33;
    v25 = &v12;
    __chkstk_darwin(&v12);
    v26 = &v12 - 6;
    *(&v12 - 4) = v10;
    *(&v12 - 3) = &v81;
    *(&v12 - 2) = &v80;
    v27 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v28 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v29, v30, "Failed to set view controller for presentation.", v16, 2u);
      v14 = 0;
      sub_F5B0(v19, 0, v17);
      sub_F5B0(v22, v14, &type metadata for Any + 8);
      sub_99E20();

      v15 = v28;
    }
  }

  else
  {

    v15 = v58;
  }

  v13 = v15;

  (*(v62 + 8))(v63, v60);
  return v13;
}

uint64_t sub_EF94()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

uint64_t sub_F1EC()
{
  v1 = *(type metadata accessor for MainView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_E700(v2);
}

uint64_t sub_F250(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_F2A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_F31C()
{
  sub_10574(0);
  sub_99A40();
  sub_10664();
  sub_22FC(&qword_B4DB8, &qword_9AC58);
  sub_106E4();
  return sub_99E80();
}

uint64_t sub_F444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_99E40();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_F498(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_F528()
{
  v2 = qword_B4CE0;
  if (!qword_B4CE0)
  {
    sub_87B4(&unk_B5950, &qword_9A9B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4CE0);
    return WitnessTable;
  }

  return v2;
}

void sub_F5B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_99E30();
    sub_99E20();
  }
}

unint64_t sub_F620()
{
  v2 = qword_B4CF0;
  if (!qword_B4CF0)
  {
    sub_87B4(&qword_B4CE8, &qword_9A9B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4CF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_F6A8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_88E0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);
  }

  sub_88E0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

uint64_t sub_F724(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    sub_F84C(v7, v8, v9 & 1);
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v9 & 1;
    v10 = *(a1 + 48);

    *(a2 + 48) = v10;
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  sub_F84C(v3, v4, v5 & 1);
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  *(a2 + 72) = v5 & 1;
  v6 = *(a1 + 80);

  result = a2;
  *(a2 + 80) = v6;
  return result;
}

uint64_t sub_F84C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F8EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = sub_99180();
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 28)) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 28));
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_22FC(&qword_B4B58, &qword_9B1A0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 32), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_FADC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_99180();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  else
  {
    result = sub_22FC(&qword_B4B58, &qword_9B1A0);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_FC74(uint64_t a1)
{
  v8 = sub_99180();
  if (v1 <= 0x3F)
  {
    v8 = sub_FE14(319);
    if (v2 <= 0x3F)
    {
      v8 = sub_FEB0(319);
      if (v3 <= 0x3F)
      {
        v8 = sub_FF4C(319);
        if (v4 <= 0x3F)
        {
          v8 = sub_1004C(319);
          if (v5 <= 0x3F)
          {
            v8 = sub_100E8(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v8;
}

unint64_t sub_FE14(uint64_t a1)
{
  v5 = qword_B4D50;
  if (!qword_B4D50)
  {
    type metadata accessor for StatefulManager(255);
    v4 = sub_99410();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_B4D50);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_FEB0(uint64_t a1)
{
  v5 = qword_B4D58;
  if (!qword_B4D58)
  {
    type metadata accessor for PreferencesManager(255);
    v4 = sub_99410();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_B4D58);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_FF4C(uint64_t a1)
{
  v5 = qword_B4D60;
  if (!qword_B4D60)
  {
    sub_FFE8();
    v4 = sub_99E50();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_B4D60);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_FFE8()
{
  v2 = qword_B5970;
  if (!qword_B5970)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5970);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1004C(uint64_t a1)
{
  v5 = qword_B4D68;
  if (!qword_B4D68)
  {
    type metadata accessor for UpdateHistoryData(255);
    v4 = sub_99E50();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_B4D68);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100E8(uint64_t a1)
{
  v5 = qword_B4D70;
  if (!qword_B4D70)
  {
    v4 = sub_99910();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_B4D70);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_101A8()
{
  sub_87B4(&qword_B4CA0, &qword_9A988);
  sub_87B4(&qword_B4C98, &qword_9A980);
  sub_994C0();
  sub_DDC0();
  sub_D0A4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10290()
{
  sub_87B4(&qword_B4BD0, &qword_9A918);
  sub_87B4(&qword_B4C38, &qword_9A950);
  sub_87B4(&qword_B4BC8, &qword_9A910);
  sub_C26C();
  swift_getOpaqueTypeConformance2();
  sub_CE00();
  sub_CE78();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_103E4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_F84C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10440(uint64_t a1)
{
  sub_88E0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_10488(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_F84C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_10510(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_88E0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

uint64_t sub_10574(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_99A40();
      v1 = sub_99C70();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_99A40();
    return v2;
  }

  return result;
}

unint64_t sub_10664()
{
  v2 = qword_B4DB0;
  if (!qword_B4DB0)
  {
    sub_99A40();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_106E4()
{
  v2 = qword_B4DC0;
  if (!qword_B4DC0)
  {
    sub_87B4(&qword_B4DB8, &qword_9AC58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4DC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1076C()
{
  v2 = qword_B4DC8;
  if (!qword_B4DC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B4DC8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_107D0()
{
  v2 = qword_B4DD0;
  if (!qword_B4DD0)
  {
    sub_1076C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4DD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10850()
{
  v2 = qword_B4DE0;
  if (!qword_B4DE0)
  {
    sub_87B4(&qword_B4DD8, &qword_9AC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4DE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10908()
{
  v2 = qword_B4DE8;
  if (!qword_B4DE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B4DE8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1096C()
{
  v2 = qword_B4DF8;
  if (!qword_B4DF8)
  {
    sub_87B4(&qword_B4DF0, &qword_9AC68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4DF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_109F4(unint64_t result)
{
  v1 = result >> 62;
  if (v1 <= 2)
  {
  }

  return result;
}

void *sub_10A74(void *a1)
{
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_99450();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  updated = type metadata accessor for UpdateAvailableView(0);
  sub_2B78(*(a1 + updated[5]), *(a1 + updated[5] + 8) & 1);

  if (*(a1 + updated[9]))
  {
  }

  v3 = a1 + updated[10];
  v4 = sub_22FC(&qword_B4E08, &unk_9B630);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_22FC(&qword_B4E10, &qword_9AC80);

  if (*(a1 + updated[15]))
  {
  }

  _objc_release(*(a1 + updated[16]));
  return a1;
}

void *sub_10D38(void *a1, void *a2)
{
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v50 = *a1;

    *a2 = v50;
  }

  swift_storeEnumTagMultiPayload();
  updated = type metadata accessor for UpdateAvailableView(0);
  v39 = a2 + updated[5];
  v3 = a1 + updated[5];
  v37 = *v3;
  v38 = v3[8];
  sub_2B30(*v3, v38 & 1);
  *v39 = v37;
  v39[8] = v38 & 1;
  v42 = a2 + updated[6];
  v4 = a1 + updated[6];
  v40 = *v4;
  v41 = v4[8];

  *v42 = v40;
  v42[8] = v41 & 1;
  v43 = a2 + updated[7];
  v5 = a1 + updated[7];
  *v43 = *v5;
  v44 = *(v5 + 1);

  *(v43 + 1) = v44;
  v46 = a2 + updated[8];
  v6 = a1 + updated[8];
  *v46 = *v6;
  v47 = *(v6 + 1);

  *(v46 + 1) = v47;
  v48 = (a2 + updated[9]);
  v49 = (a1 + updated[9]);
  if (*v49)
  {
    v35 = *v49;
    v36 = v49[1];

    *v48 = v35;
    v48[1] = v36;
  }

  else
  {
    *v48 = *v49;
  }

  v30 = v49[2];

  v48[2] = v30;
  __dst = a2 + updated[10];
  __src = a1 + updated[10];
  v33 = sub_22FC(&qword_B4E08, &unk_9B630);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(__src, 1))
  {
    v7 = sub_22FC(&qword_B4E18, &qword_9AC88);
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v34 + 16))(__dst, __src, v33);
    (*(v34 + 56))(__dst, 0, 1, v33);
  }

  v18 = *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28);
  v19 = *&__src[v18];

  *&__dst[v18] = v19;
  v8 = updated[11];
  v20 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v21 = *(a1 + v8 + 8);

  *(v20 + 1) = v21;
  v9 = updated[12];
  v22 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v23 = *(a1 + v9 + 8);

  *(v22 + 1) = v23;
  v10 = updated[13];
  v24 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v25 = *(a1 + v10 + 8);

  *(v24 + 1) = v25;
  v11 = updated[14];
  v26 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v27 = *(a1 + v11 + 8);

  *(v26 + 1) = v27;
  v28 = (a2 + updated[15]);
  v29 = (a1 + updated[15]);
  if (*v29)
  {
    v16 = *v29;
    v17 = v29[1];

    *v28 = v16;
    v28[1] = v17;
  }

  else
  {
    *v28 = *v29;
  }

  v13 = v29[2];

  v28[2] = v13;
  v14 = updated[16];
  v15 = *(a1 + v14);
  _objc_retain(v15);
  result = a2;
  *(a2 + v14) = v15;
  *(a2 + updated[17]) = *(a1 + updated[17]);
  return result;
}

char *sub_11334(char *a1, char *a2)
{
  *a2 = *a1;
  updated = type metadata accessor for UpdateHistoryData(0);
  v6 = updated[5];
  v2 = sub_99230();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  v3 = updated[6];
  v8 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v9 = *&a1[v3 + 8];

  *(v8 + 1) = v9;
  v4 = updated[7];
  v12 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v13 = *&a1[v4 + 8];

  result = a2;
  *(v12 + 1) = v13;
  return result;
}

uint64_t sub_11454(uint64_t a1)
{
  v3 = *(type metadata accessor for UpdateHistoryData(0) + 20);
  v1 = sub_99230();
  (*(*(v1 - 8) + 8))(a1 + v3);

  updated = type metadata accessor for UpdateHistoryView(0);
  sub_2B78(*(a1 + *(updated + 20)), *(a1 + *(updated + 20) + 8) & 1);

  return a1;
}

void *sub_1155C(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_1166C()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

uint64_t sub_118C4()
{
  type metadata accessor for MainView(0);

  return sub_CBBC();
}

unint64_t sub_11928()
{
  v2 = qword_B4E30;
  if (!qword_B4E30)
  {
    sub_87B4(&qword_B4E28, &qword_9AD50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4E30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_119B0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_88E0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);
  }

  sub_88E0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

uint64_t sub_11A2C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    sub_F84C(v7, v8, v9 & 1);
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v9 & 1;
    v10 = *(a1 + 48);

    *(a2 + 48) = v10;
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  sub_F84C(v3, v4, v5 & 1);
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  *(a2 + 72) = v5 & 1;
  v6 = *(a1 + 80);

  *(a2 + 80) = v6;
  memcpy((a2 + 88), (a1 + 88), 0x29uLL);
  return a2;
}

uint64_t sub_11B70()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

uint64_t sub_11DCC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for MainView(0);

  return sub_B940(a1);
}

uint64_t sub_11E48()
{
  v8 = type metadata accessor for MainView(0);
  v1 = *(*(v8 - 1) + 80);
  v7 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();
  v2 = sub_99180();
  (*(*(v2 - 8) + 8))();
  sub_2B78(*(v0 + v7 + v8[5]), *(v0 + v7 + v8[5] + 8) & 1);

  _objc_release(*(v0 + v7 + v8[7]));
  v9 = v8[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(v0 + v7 + v9, 1))
  {
    v5 = v6 + v7 + v9 + *(updated + 20);
    v3 = sub_99230();
    (*(*(v3 - 8) + 8))(v5);
  }

  return swift_deallocObject();
}

uint64_t sub_120A4(char *a1)
{
  type metadata accessor for MainView(0);

  return sub_BA90(a1);
}

uint64_t sub_12124(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4C00, &qword_9A938);
  (*(*(v1 - 8) + 8))(a1);
  sub_22FC(&qword_B4BE0, &qword_9A928);

  return a1;
}

uint64_t sub_121C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FC(&qword_B4C00, &qword_9A938);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_22FC(&qword_B4BE0, &qword_9A928) + 36);
  v6 = *(a1 + v5);

  v9 = a2 + v5;
  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);

  result = a2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  return result;
}

uint64_t sub_12318(uint64_t a1)
{
  v3 = sub_22FC(&qword_B4E38, &qword_9ACA0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_123CC(const void *a1, void *a2)
{
  v6 = sub_22FC(&qword_B4E38, &qword_9ACA0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4E40, &qword_9ACA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_12500(const void *a1, void *a2)
{
  v6 = sub_22FC(&qword_B4E38, &qword_9ACA0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4E40, &qword_9ACA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_12634()
{
  v2 = qword_B4E50;
  if (!qword_B4E50)
  {
    sub_87B4(&qword_B4E40, &qword_9ACA8);
    sub_87B4(&qword_B4CA8, &qword_9A990);
    sub_87B4(&qword_B4CA0, &qword_9A988);
    sub_87B4(&qword_B4C98, &qword_9A980);
    sub_994C0();
    sub_DDC0();
    sub_D0A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4E50);
    return WitnessTable;
  }

  return v2;
}

void *sub_12814(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1284C(id *a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_128AC()
{
  v1 = v0 + *(type metadata accessor for UpdateHistoryView(0) + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_2B30(*v1, v4 & 1);
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  sub_2B78(v3, v4 & 1);
  return v5;
}

uint64_t type metadata accessor for UpdateHistoryView(uint64_t a1)
{
  v2 = qword_B5C90;
  if (!qword_B5C90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_129C0()
{
  swift_getKeyPath();
  sub_99420();
  return v1;
}

void *sub_129FC()
{
  v1 = v0 + *(type metadata accessor for UpdateHistoryView(0) + 20);
  v3 = *v1;
  sub_2B30(*v1, *(v1 + 8) & 1);
  return v3;
}

void sub_12A4C(void *a1, char a2)
{
  sub_2B30(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for UpdateHistoryView(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_2B78(v4, v5 & 1);
  sub_2B78(a1, a2 & 1);
}

uint64_t sub_12AC0()
{
  type metadata accessor for UpdateHistoryView(0);

  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();

  return v1;
}

uint64_t sub_12B54()
{
  swift_getKeyPath();
  sub_99420();
  return v1;
}

uint64_t sub_12B90()
{
  v2 = *(v0 + *(type metadata accessor for UpdateHistoryView(0) + 24));

  return v2;
}

uint64_t sub_12BDC(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for UpdateHistoryView(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

uint64_t sub_12C90()
{
  type metadata accessor for UpdateHistoryView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_12D20(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateHistoryView(0) + 28));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_12DD8()
{
  type metadata accessor for UpdateHistoryView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_12E80()
{
  v2 = *(v0 + *(type metadata accessor for UpdateHistoryView(0) + 28));

  return v2 & 1;
}

uint64_t sub_12ECC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateHistoryView(0) + 28);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_12F28()
{
  v1 = v0 + *(type metadata accessor for UpdateHistoryView(0) + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_2B30(*v1, v4 & 1);
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  sub_2B78(v3, v4 & 1);
  v5 = sub_4E140();
  _objc_release(v7);
  v6 = sub_21160(v5, 0xC000000000000038);
  sub_109F4(v5);
  return v6 & 1;
}

uint64_t sub_13010()
{
  v1 = v0 + *(type metadata accessor for UpdateHistoryView(0) + 20);
  v6 = *v1;
  v7 = *(v1 + 8);
  sub_2B30(*v1, v7 & 1);
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  sub_2B78(v6, v7 & 1);
  v8 = sub_5D6BC();
  _objc_release(v10);
  if (v8)
  {
    v5 = 1;
  }

  else
  {

    sub_22FC(&qword_B4B50, &qword_9A890);
    sub_99400();

    v4 = (*(*v9 + 208))(v2);

    v5 = v4 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_131B8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v29 = 0;
  v13 = sub_14060;
  v26 = sub_149A4;
  v28 = sub_14DD4;
  v42 = &opaque type descriptor for <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>;
  v72 = 0;
  v71 = 0;
  v21 = 0;
  v8 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v20 = &v8 - v8;
  v2 = sub_99B10();
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v18 = &v8 - v9;
  v34 = sub_22FC(&qword_B4E58, &qword_9AD38);
  v10 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v33 = &v8 - v10;
  v49 = sub_22FC(&qword_B4E60, &qword_9AD40);
  v43 = *(v49 - 8);
  v44 = v49 - 8;
  v11 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v47 = &v8 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v11);
  v48 = &v8 - v12;
  v72 = &v8 - v12;
  v71 = v1;
  v14 = &v54;
  v55 = v1;
  v15 = sub_22FC(&qword_B4E68, &qword_9AD48);
  v16 = sub_14418();
  sub_143F4();
  *&v17[1] = 1;
  sub_99970();
  sub_99B90("Remove Background Security Improvement?", 0x27uLL, v17[1] & 1);
  sub_99B00();
  v19 = *sub_98A68();
  _objc_retain(v19);
  sub_B928();
  v69[2] = 0;
  v69[3] = 0;
  v70 = *v17 & 0x100;
  v4 = sub_99B40();
  v32 = v69;
  v69[0] = v4;
  v69[1] = v5;
  v6 = (v1 + *(type metadata accessor for UpdateHistoryView(v21) + 28));
  v22 = *v6;
  v23 = *(v6 + 1);

  v67 = v22;
  v68 = v23;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();
  v30 = v64;
  v31 = v65;
  v25 = v66;

  v27 = &v52;
  v53 = v24;
  v36 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v38 = sub_150C4();
  v39 = sub_CE00();
  v40 = sub_11928();
  v35 = &type metadata for String;
  v37 = &type metadata for Text;
  v41 = &protocol witness table for Text;
  sub_99800();

  sub_CF00(v32);
  sub_1514C(v33);
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v59 = v37;
  v60 = v38;
  v61 = v39;
  v62 = v40;
  v63 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_71A0(v47, v49, v48);
  v51 = *(v43 + 8);
  v50 = v43 + 8;
  v51(v47, v49);
  (*(v43 + 16))(v47, v48, v49);
  sub_8408(v47, v49, v45);
  v51(v47, v49);
  return (v51)(v48, v49);
}

uint64_t sub_1394C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v41 = a1;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v21 = sub_22FC(&qword_B4EB0, &qword_9AD88);
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v25 = &v10 - v24;
  v63 = &v10 - v24;
  v26 = sub_22FC(&qword_B4EC8, &qword_9ADA0);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v28 = &v10 - v27;
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v27);
  v30 = &v10 - v29;
  v62 = &v10 - v29;
  v31 = sub_22FC(&qword_B5030, &unk_9AFE0);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v33 = &v10 - v32;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v32);
  v35 = &v10 - v34;
  v36 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v34);
  v37 = &v10 - v36;
  v61 = &v10 - v36;
  v43 = sub_22FC(&qword_B4FE8, "L*");
  v39 = *(*(v43 - 8) + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v43);
  v45 = &v10 - v38;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v42 = &v10 - v40;
  v60 = &v10 - v40;
  v59 = a1;
  sub_14068(v7);
  v44 = sub_191A0();
  sub_71A0(v45, v43, v42);
  sub_1A94C(v45);
  if (sub_13010())
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_12F28();
  }

  if (v19)
  {
    v18 = 1;
    v52 = sub_99980();
    v53 = v8 & 1 & v18;
    v14 = &type metadata for Spacer;
    v15 = &protocol witness table for Spacer;
    sub_71A0(&v52, &type metadata for Spacer, &v54);
    sub_141A4(v28);
    v16 = sub_1925C();
    sub_71A0(v28, v26, v30);
    sub_1B558(v28);
    v49 = v54;
    v50 = v55;
    v17 = v51;
    v51[0] = &v49;
    sub_1B5FC(v30, v28);
    v51[1] = v28;
    v48[0] = v14;
    v48[1] = v26;
    v46 = v15;
    v47 = v16;
    sub_84B8(v17, 2uLL, v48, v25);
    sub_1B558(v28);
    sub_1B6EC(v25, v33);
    (*(v22 + 56))(v33, 0, v18, v21);
    sub_1AB0C();
    sub_846C(v33, v21, v35);
    sub_1AB94(v33);
    sub_1ACAC(v35, v37);
    sub_1B824(v25);
    sub_1B558(v30);
  }

  else
  {
    (*(v22 + 56))(v33, 1, 1, v21);
    sub_1AB0C();
    sub_846C(v33, v21, v35);
    sub_1AB94(v33);
    sub_1ACAC(v35, v37);
  }

  sub_1AE80(v42, v45);
  v13 = v58;
  v58[0] = v45;
  sub_1B2B4(v37, v35);
  v58[1] = v35;
  v11 = v57;
  v57[0] = v43;
  v57[1] = v31;
  v12 = v56;
  v56[0] = v44;
  v56[1] = sub_1B4C0();
  sub_84B8(v13, 2uLL, v11, v20);
  sub_1AB94(v35);
  sub_1A94C(v45);
  sub_1AB94(v37);
  return sub_1A94C(v42);
}

uint64_t sub_14068@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v6 = sub_1655C;
  v17 = 0;
  v12 = sub_22FC(&qword_B4ED0, &qword_9ADA8);
  v4 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v3 - v4;
  v17 = v1;
  v9 = sub_995A0();
  v7 = &v15;
  v16 = v5;
  v8 = sub_22FC(&qword_B4ED8, &qword_9ADB0);
  sub_16564();
  v11 = 0;
  sub_999A0();
  v13 = sub_99660();
  sub_165EC();
  sub_99830();
  return sub_16674(v14);
}

uint64_t sub_141A4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v16 = sub_17AFC;
  v13 = sub_18468;
  v25 = 0;
  updated = type metadata accessor for UpdateHistoryView(0);
  v5 = *(updated - 8);
  v8 = v5;
  v9 = *(v5 + 64);
  v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v11 = &v5 - v6;
  v22 = sub_22FC(&qword_B4EC0, &qword_9AD98);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v7 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v21 = &v5 - v7;
  v25 = v1;
  sub_17618(v1, v3);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_179C0(v11, (v12 + v10));
  v14 = &v23;
  v24 = v1;
  v15 = sub_22FC(&qword_B4EF0, &qword_9ADB8);
  sub_18470();
  sub_99920();
  v18 = sub_12F28();
  sub_18868();
  sub_99840();
  return (*(v19 + 8))(v21, v22);
}

unint64_t sub_14418()
{
  v2 = qword_B4E70;
  if (!qword_B4E70)
  {
    sub_87B4(&qword_B4E68, &qword_9AD48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4E70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_144A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v24 = a1;
  v30 = sub_1A8B8;
  v46 = 0;
  v45 = 0;
  v22 = 0;
  updated = type metadata accessor for UpdateHistoryView(0);
  v12 = *(updated - 8);
  v25 = v12;
  v26 = *(v12 + 64);
  v13 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v28 = &v11 - v13;
  v14 = (*(*(sub_22FC(&qword_B4E20, &unk_9AC90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v29 = &v11 - v14;
  v15 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v21 = &v11 - v15;
  v3 = sub_99B10();
  v16 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v19 = &v11 - v16;
  v39 = sub_22FC(&qword_B4E28, &qword_9AD50);
  v33 = *(v39 - 8);
  v34 = v39 - 8;
  v17 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v24);
  v37 = &v11 - v17;
  v18 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v38 = &v11 - v18;
  v46 = &v11 - v18;
  v45 = v6;
  v23 = 1;
  sub_99B90("Remove & Restart", 0x10uLL, 1);
  sub_99B00();
  v20 = *sub_98A68();
  _objc_retain(v20);
  sub_B928();
  v42[2] = 0;
  v42[3] = 0;
  v43 = 0;
  v44 = v23 & 1;
  v7 = sub_99B40();
  v32 = v42;
  v42[0] = v7;
  v42[1] = v8;
  sub_993C0();
  v9 = sub_993F0();
  (*(*(v9 - 8) + 56))(v29, 0, v23);
  sub_17618(v24, v28);
  v27 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = swift_allocObject();
  sub_179C0(v28, (v31 + v27));
  sub_CE00();
  sub_99940();
  v36 = sub_11928();
  sub_71A0(v37, v39, v38);
  v41 = *(v33 + 8);
  v40 = v33 + 8;
  v41(v37, v39);
  (*(v33 + 16))(v37, v38, v39);
  sub_8408(v37, v39, v35);
  v41(v37, v39);
  return (v41)(v38, v39);
}

void sub_149AC(uint64_t a1)
{
  v26 = a1;
  v33 = 0;
  v42 = 0;
  v25 = 0;
  v27 = sub_993B0();
  v28 = *(v27 - 8);
  v29 = v28;
  v1 = __chkstk_darwin(v26);
  v30 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  sub_99380();
  v35 = sub_99390();
  v31 = v35;
  v34 = sub_99D60();
  v32 = v34;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v36 = sub_99F80();
  if (os_log_type_enabled(v35, v34))
  {
    v3 = v25;
    v16 = sub_99E40();
    v12 = v16;
    v13 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v14 = 0;
    v17 = sub_F444(0, v13, v13);
    v15 = v17;
    v18 = sub_F444(v14, &type metadata for Any + 8, &type metadata for Any + 8);
    v40[0] = v16;
    v39 = v17;
    v38 = v18;
    v19 = 0;
    v20 = v40;
    sub_F498(0, v40);
    sub_F498(v19, v20);
    v37 = v36;
    v21 = &v6;
    __chkstk_darwin(&v6);
    v22 = &v6 - 6;
    *(&v6 - 4) = v4;
    *(&v6 - 3) = &v39;
    *(&v6 - 2) = &v38;
    v23 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v24 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v31, v32, "User Action: Confirmed 'Remove' in UpdateHistoryView confirmation dialog", v12, 2u);
      v10 = 0;
      sub_F5B0(v15, 0, v13);
      sub_F5B0(v18, v10, &type metadata for Any + 8);
      sub_99E20();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v29 + 8))(v30, v27);
  v5 = v26 + *(type metadata accessor for UpdateHistoryView(0) + 20);
  v7 = *v5;
  v8 = *(v5 + 8);
  sub_2B30(v7, v8);
  v40[2] = v7;
  v41 = v8;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v9 = v40[1];
  sub_2B78(v7, v8);
  sub_58F34();
}

uint64_t sub_14DD4@<X0>(uint64_t a1@<X8>)
{
  v8[1] = &v37;
  v20 = a1;
  v24 = &v37;
  v37 = 0u;
  v38 = 0u;
  v12 = 0;
  v9 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = v8 - v9;
  v1 = sub_99B10();
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = v8 - v10;
  HIDWORD(v18) = 1;
  sub_99B90("Removing this will reduce the security of your ProductFamilyName and data. Your ProductFamilyName will restart.", 0x6FuLL, 1);
  sub_99B00();
  v13 = *sub_98A68();
  _objc_retain(v13);
  sub_B928();
  v35[2] = 0;
  v35[3] = 0;
  v36 = *(&v18 + 3) & 0x100;
  v2 = sub_99B40();
  v15 = v35;
  v35[0] = v2;
  v35[1] = v3;
  sub_CE00();
  v31 = sub_99700();
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v16 = v28;
  v28[0] = v31;
  v28[1] = v4;
  v29 = v5 & 1 & BYTE4(v18);
  v30 = v6;
  v21 = &type metadata for Text;
  v22 = &protocol witness table for Text;
  sub_71A0(v28, &type metadata for Text, v24);
  sub_10440(v16);
  v17 = v37;
  LODWORD(v18) = v38;
  v19 = *(&v38 + 1);
  sub_F84C(v37, *(&v37 + 1), v38 & 1);

  v23 = &v25;
  v25 = v17;
  v26 = v18 & 1 & BYTE4(v18);
  v27 = v19;
  sub_8408(&v25, v21, v20);
  sub_10440(v23);
  return sub_10440(v24);
}

unint64_t sub_150C4()
{
  v2 = qword_B4E78;
  if (!qword_B4E78)
  {
    sub_87B4(&qword_B4E58, &qword_9AD38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4E78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1514C(uint64_t a1)
{
  v9 = *(sub_22FC(&qword_B4E80, &qword_9AD58) + 44);
  v11 = *(sub_22FC(&qword_B4E88, &qword_9AD60) + 44);
  v12 = a1 + v9 + v11;
  sub_88E0(*v12, *(v12 + 8), *(v12 + 16) & 1);

  sub_88E0(*(v12 + 32), *(v12 + 40), *(v12 + 48) & 1);

  v13 = *(sub_22FC(&qword_B4E90, &qword_9AD68) + 64);
  v1 = sub_22FC(&qword_B4E98, &qword_9AD70);
  if (!(*(*(v1 - 8) + 48))(v12 + v13, 1))
  {
    v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    if (!(*(*(v2 - 8) + 48))(a1 + v9 + v11 + v13, 1))
    {
      v3 = sub_99350();
      (*(*(v3 - 8) + 8))(a1 + v9 + v11 + v13);
    }
  }

  v8 = a1 + v9 + *(sub_22FC(&qword_B4EA8, &qword_9AD80) + 48);
  v4 = sub_22FC(&qword_B4EB0, &qword_9AD88);
  if (!(*(*(v4 - 8) + 48))(v8, 1))
  {
    v7 = v8 + *(sub_22FC(&qword_B4EB8, &qword_9AD90) + 48);
    v5 = sub_22FC(&qword_B4EC0, &qword_9AD98);
    (*(*(v5 - 8) + 8))(v7);
    sub_22FC(&qword_B4EC8, &qword_9ADA0);
  }

  return a1;
}

uint64_t sub_15460@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v169 = a1;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v127 = v237;
  memset(v237, 0, sizeof(v237));
  v164 = v212;
  memset(v212, 0, sizeof(v212));
  v179 = 0;
  v178 = 0;
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v168 = 0;
  v74 = sub_99350();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v78 = &v46 - v77;
  v79 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v46 - v77);
  v80 = &v46 - v79;
  v81 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v85 = &v46 - v84;
  v86 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v46 - v84);
  v87 = &v46 - v86;
  v88 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v46 - v86);
  v89 = &v46 - v88;
  v241 = &v46 - v88;
  v90 = sub_22FC(&qword_B4E98, &qword_9AD70);
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v94 = &v46 - v93;
  v95 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v46 - v93);
  v96 = &v46 - v95;
  v97 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v46 - v95);
  v98 = &v46 - v97;
  v240 = &v46 - v97;
  v99 = sub_22FC(&qword_B5008, &unk_9AFD0);
  v100 = (*(*(v99 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v168);
  v101 = &v46 - v100;
  v102 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v103 = &v46 - v102;
  v104 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v105 = &v46 - v104;
  v239 = &v46 - v104;
  v136 = sub_99230();
  v133 = *(v136 - 8);
  v134 = v136 - 8;
  v106 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v168);
  v135 = &v46 - v106;
  v142 = sub_99570();
  v140 = *(v142 - 8);
  v141 = v142 - 8;
  v107 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v168);
  v144 = &v46 - v107;
  v108 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v139 = &v46 - v108;
  v109 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v13);
  v143 = &v46 - v109;
  updated = type metadata accessor for UpdateHistoryData(v15);
  v110 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __chkstk_darwin(v169);
  v132 = &v46 - v110;
  v238 = v16;
  sub_11334(v16, &v46 - v110);
  v17 = &v132[*(updated + 24)];
  v111 = *v17;
  v112 = *(v17 + 1);

  sub_D668(v132);
  v113 = v236;
  v236[0] = v111;
  v236[1] = v112;
  sub_CE00();
  v232 = sub_99700();
  v233 = v18;
  v234 = v19;
  v235 = v20;
  v115 = v232;
  v116 = v18;
  v117 = v19;
  v118 = v20;
  v114 = sub_99680();
  v228 = v115;
  v229 = v116;
  *&v170[1] = 1;
  v230 = v117 & 1;
  v231 = v118;
  v224 = sub_996E0();
  v225 = v21;
  v226 = v22;
  v227 = v23;
  v120 = v224;
  v121 = v21;
  v119 = v22;
  v122 = v23;

  sub_88E0(v115, v116, v117 & 1);

  sub_99690();
  v220 = v120;
  v221 = v121;
  v222 = v119 & 1 & v170[1];
  v223 = v122;
  v216 = sub_996C0();
  v217 = v24;
  v218 = v25;
  v219 = v26;
  v123 = v216;
  v124 = v24;
  v125 = v25;
  v126 = v26;
  sub_88E0(v120, v121, v119 & 1);

  v128 = v213;
  v213[0] = v123;
  v213[1] = v124;
  v214 = v125 & 1 & v170[1];
  v215 = v126;
  v165 = &type metadata for Text;
  v166 = &protocol witness table for Text;
  sub_71A0(v213, &type metadata for Text, v127);
  sub_10440(v128);
  v129 = 10;
  sub_99560();
  v242._countAndFlagsBits = sub_99B90("Installed ", v129, v170[1] & 1);
  object = v242._object;
  sub_99550(v242);
  v27 = v169;

  sub_11334(v27, v132);
  (*(v133 + 16))(v135, &v132[*(updated + 20)], v136);
  sub_D668(v132);
  v137._countAndFlagsBits = sub_16834(v135);
  v137._object = v28;
  (*(v133 + 8))(v135, v136);
  sub_99540(v137);

  v243._countAndFlagsBits = sub_99B90("", v168, v170[1] & 1);
  v138 = v243._object;
  sub_99550(v243);

  (*(v140 + 16))(v139, v143, v142);
  (*(v140 + 32))(v144, v139, v142);
  (*(v140 + 8))(v143, v142);
  v149 = sub_99590();
  v145 = v29;
  v146 = v30;
  v147 = v31;
  v148 = *sub_98A68();
  _objc_retain(v148);
  v209 = 0;
  v210 = 0;
  v211 = *v170 & 0x100;
  v205 = sub_996F0();
  v206 = v32;
  v207 = v33;
  v208 = v34;
  v151 = v205;
  v152 = v32;
  v153 = v33;
  v154 = v34;
  v150 = sub_996A0();
  v201 = v151;
  v202 = v152;
  v203 = v153 & 1 & v170[1];
  v204 = v154;
  v197 = sub_996E0();
  v198 = v35;
  v199 = v36;
  v200 = v37;
  v156 = v197;
  v157 = v35;
  v158 = v36;
  v159 = v37;

  sub_88E0(v151, v152, v153 & 1);

  v155 = sub_998A0();
  v193 = v156;
  v194 = v157;
  v195 = v158 & 1 & v170[1];
  v196 = v159;
  v189 = sub_996D0();
  v190 = v38;
  v191 = v39;
  v192 = v40;
  v160 = v189;
  v161 = v38;
  v162 = v39;
  v163 = v40;

  sub_88E0(v156, v157, v158 & 1);

  v167 = v186;
  v186[0] = v160;
  v186[1] = v161;
  v187 = v162 & 1 & v170[1];
  v188 = v163;
  sub_71A0(v186, v165, v164);
  sub_10440(v167);
  v41 = type metadata accessor for UpdateHistoryView(v168);
  v42 = &v169[*(v41 + 20)];
  v171 = *v42;
  v172 = v42[8];
  sub_2B30(v171, v172 & 1);
  v184[4] = v171;
  v185 = v172 & 1 & v170[1];
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v173 = v184[3];
  sub_2B78(v171, v172 & 1);
  v174 = sub_5E360();
  _objc_release(v173);
  if (v174)
  {
    v72 = v174;
    v70 = v174;
    v179 = v174;
    v43 = [v174 readmeSummary];
    v71 = v43;
    if (v43)
    {
      v69 = v71;
      v64 = v71;
      v65 = sub_991E0();
      v66 = v44;
      _objc_release(v64);
      v67 = v65;
      v68 = v66;
    }

    else
    {
      v67 = 0;
      v68 = 0xF000000000000000;
    }

    v62 = v68;
    v63 = v67;
    if ((v68 & 0xF000000000000000) == 0xF000000000000000)
    {
      (*(v82 + 56))(v94, 1, 1, v81);
      sub_19AB8();
      sub_846C(v94, v81, v96);
      sub_1A1C0(v94);
      sub_1A270(v96, v98);
    }

    else
    {
      v60 = v63;
      v61 = v62;
      v56 = v62;
      v55 = v63;
      v176 = v63;
      v177 = v62;
      sub_1A538(v63, v62);
      sub_99340();
      sub_99330();
      v58 = *(v75 + 8);
      v57 = v75 + 8;
      v58(v78, v74);
      sub_19B5C();
      sub_99820();
      v58(v80, v74);
      v59 = sub_19AB8();
      sub_71A0(v87, v81, v89);
      sub_1A5B4(v87);
      v175 = v87;
      sub_1A610(v89, v85);
      sub_8408(v85, v81, v87);
      sub_1A5B4(v85);
      sub_1A610(v87, v94);
      (*(v82 + 56))(v94, 0, 1, v81);
      sub_846C(v94, v81, v96);
      sub_1A1C0(v94);
      sub_1A270(v96, v98);
      sub_1A5B4(v87);
      sub_1A5B4(v89);
      sub_1A6B0(v55, v56);
    }

    v178 = v96;
    sub_1A3D4(v98, v94);
    v54 = sub_19A20();
    sub_8408(v94, v90, v96);
    sub_1A1C0(v94);
    sub_1A3D4(v96, v101);
    (*(v91 + 56))(v101, 0, 1, v90);
    sub_846C(v101, v90, v103);
    sub_19BDC(v101);
    sub_19CE0(v103, v105);
    sub_1A1C0(v96);
    sub_1A1C0(v98);
    _objc_release(v70);
  }

  else
  {
    (*(v91 + 56))(v101, 1, 1, v90);
    sub_19A20();
    sub_846C(v101, v90, v103);
    sub_19BDC(v101);
    sub_19CE0(v103, v105);
  }

  v53 = v237;
  v51 = v183;
  sub_10488(v237, v183);
  v49 = v184;
  v184[0] = v51;
  v52 = v212;
  v50 = v182;
  sub_10488(v212, v182);
  v184[1] = v50;
  sub_19F04(v105, v103);
  v184[2] = v103;
  v47 = v181;
  v181[0] = &type metadata for Text;
  v181[1] = &type metadata for Text;
  v181[2] = v99;
  v48 = v180;
  v180[0] = &protocol witness table for Text;
  v180[1] = &protocol witness table for Text;
  v180[2] = sub_1A128();
  sub_84B8(v49, 3uLL, v47, v73);
  sub_19BDC(v103);
  sub_10440(v50);
  sub_10440(v51);
  sub_19BDC(v105);
  sub_10440(v52);
  return sub_10440(v53);
}

unint64_t sub_16564()
{
  v2 = qword_B4EE0;
  if (!qword_B4EE0)
  {
    sub_87B4(&qword_B4ED8, &qword_9ADB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_165EC()
{
  v2 = qword_B4EE8;
  if (!qword_B4EE8)
  {
    sub_87B4(&qword_B4ED0, &qword_9ADA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4EE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_16674(uint64_t a1)
{
  v6 = *(sub_22FC(&qword_B4E88, &qword_9AD60) + 44);
  sub_88E0(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16) & 1);

  sub_88E0(*(a1 + v6 + 32), *(a1 + v6 + 40), *(a1 + v6 + 48) & 1);

  v7 = *(sub_22FC(&qword_B4E90, &qword_9AD68) + 64);
  v1 = sub_22FC(&qword_B4E98, &qword_9AD70);
  if (!(*(*(v1 - 8) + 48))(a1 + v6 + v7, 1))
  {
    v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    if (!(*(*(v2 - 8) + 48))(a1 + v6 + v7, 1))
    {
      v3 = sub_99350();
      (*(*(v3 - 8) + 8))(a1 + v6 + v7);
    }
  }

  return a1;
}

uint64_t sub_16834(uint64_t a1)
{
  v41 = a1;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v33 = 0;
  v26 = sub_99230();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v30 = &v9 - v29;
  v31 = (*(*(sub_99250() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v9 - v31;
  v34 = (*(*(sub_99B10() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v35 = &v9 - v34;
  v36 = sub_99290();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v41);
  v40 = &v9 - v39;
  v51 = &v9 - v39;
  v50 = v1;
  v49 = v2;
  sub_99280();
  if (sub_99260())
  {
    *&v20[1] = 1;
    sub_99B90("Today", 5uLL, 1);
    sub_99B00();
    v21 = *sub_98A68();
    _objc_retain(v21);
    sub_B928();
    v42 = 0;
    v43 = 0;
    v44 = *v20 & 0x100;
    v22 = sub_99B40();
    v23 = v3;
    (*(v37 + 8))(v40, v36);
    v24 = v22;
    v25 = v23;
  }

  else if (sub_99270())
  {
    *&v16[1] = 1;
    sub_99B90("Yesterday", 9uLL, 1);
    sub_99B00();
    v17 = *sub_98A68();
    _objc_retain(v17);
    sub_B928();
    v45 = 0;
    v46 = 0;
    v47 = *v16 & 0x100;
    v18 = sub_99B40();
    v19 = v4;
    (*(v37 + 8))(v40, v36);
    v24 = v18;
    v25 = v19;
  }

  else
  {
    v10 = 0;
    sub_188F0();
    v5 = sub_18B80();
    v6 = v30;
    v13 = v5;
    v48 = v5;
    [v5 setDateStyle:2];
    [v13 setTimeStyle:v10];
    (*(v27 + 16))(v6, v41, v26);
    isa = sub_991F0().super.isa;
    (*(v27 + 8))(v30, v26);
    v12 = [v13 stringFromDate:isa];
    _objc_release(isa);
    v14 = sub_99B30();
    v15 = v7;
    _objc_release(v12);
    _objc_release(v13);
    (*(v37 + 8))(v40, v36);
    v24 = v14;
    v25 = v15;
  }

  return v24;
}

uint64_t sub_16DD0(uint64_t a1)
{
  v54 = a1;
  v64 = 0;
  v80 = 0;
  v53 = 0;
  v55 = sub_993B0();
  v56 = *(v55 - 8);
  v57 = v56;
  v58 = *(v56 + 64);
  v1 = __chkstk_darwin(v54);
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = &v9 - v60;
  v2 = __chkstk_darwin(v1);
  v61 = &v9 - v60;
  v80 = v2;
  sub_99380();
  v67 = sub_99390();
  v62 = v67;
  v66 = sub_99D60();
  v63 = v66;
  v65 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v68 = sub_99F80();
  if (os_log_type_enabled(v67, v66))
  {
    v3 = v53;
    v44 = sub_99E40();
    v40 = v44;
    v41 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v42 = 0;
    v45 = sub_F444(0, v41, v41);
    v43 = v45;
    v46 = sub_F444(v42, &type metadata for Any + 8, &type metadata for Any + 8);
    v72 = v44;
    v71 = v45;
    v70 = v46;
    v47 = 0;
    v48 = &v72;
    sub_F498(0, &v72);
    sub_F498(v47, v48);
    v69 = v68;
    v49 = &v9;
    __chkstk_darwin(&v9);
    v50 = &v9 - 6;
    *(&v9 - 4) = v4;
    *(&v9 - 3) = &v71;
    *(&v9 - 2) = &v70;
    v51 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v52 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v62, v63, "User Action: Clicked 'Remove' Action in UpdateHistoryView", v40, 2u);
      v38 = 0;
      sub_F5B0(v43, 0, v41);
      sub_F5B0(v46, v38, &type metadata for Any + 8);
      sub_99E20();

      v39 = v52;
    }
  }

  else
  {

    v39 = v53;
  }

  v35 = v39;

  v36 = *(v57 + 8);
  v37 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v61, v55);
  if (sub_13010())
  {
    v5 = (v54 + *(type metadata accessor for UpdateHistoryView(0) + 28));
    v31 = *v5;
    v33 = *(v5 + 1);

    v74 = v31;
    v75 = v33;
    v73 = 1;
    sub_22FC(&qword_B4B60, &qword_9A8D0);
    v32 = &v74;
    sub_998F0();
    sub_352C(v32);

    return v35;
  }

  else
  {
    sub_99380();
    v29 = sub_99390();
    v26 = v29;
    v28 = sub_99D60();
    v27 = v28;
    v30 = sub_99F80();
    if (os_log_type_enabled(v29, v28))
    {
      v6 = v35;
      v17 = sub_99E40();
      v13 = v17;
      v14 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v15 = 0;
      v18 = sub_F444(0, v14, v14);
      v16 = v18;
      v19 = sub_F444(v15, &type metadata for Any + 8, &type metadata for Any + 8);
      v79 = v17;
      v78 = v18;
      v77 = v19;
      v20 = 0;
      v21 = &v79;
      sub_F498(0, &v79);
      sub_F498(v20, v21);
      v76 = v30;
      v22 = &v9;
      __chkstk_darwin(&v9);
      v23 = &v9 - 6;
      *(&v9 - 4) = v7;
      *(&v9 - 3) = &v78;
      *(&v9 - 2) = &v77;
      v24 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v25 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v26, v27, "Clicked 'Remove' Action in UpdateHistoryView but Rollback not Allowed", v13, 2u);
        v11 = 0;
        sub_F5B0(v16, 0, v14);
        sub_F5B0(v19, v11, &type metadata for Any + 8);
        sub_99E20();

        v12 = v25;
      }
    }

    else
    {

      v12 = v35;
    }

    v10 = v12;

    v36(v59, v55);
    return v10;
  }
}

char *sub_17618(char *a1, char *a2)
{
  *a2 = *a1;
  updated = type metadata accessor for UpdateHistoryData(0);
  v9 = updated[5];
  v2 = sub_99230();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v3 = &a1[updated[6]];
  v10 = &a2[updated[6]];
  *v10 = *v3;
  v11 = *(v3 + 1);

  *(v10 + 1) = v11;
  v4 = updated[7];
  v13 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v14 = *&a1[v4 + 8];

  *(v13 + 1) = v14;
  v22 = type metadata accessor for UpdateHistoryView(0);
  v15 = v22[5];
  v16 = *&a1[v15];
  v17 = a1[v15 + 8];
  sub_2B30(v16, v17 & 1);
  v5 = &a2[v15];
  *v5 = v16;
  v5[8] = v17 & 1;
  v19 = v22[6];
  v20 = *&a1[v19];
  v21 = a1[v19 + 8];

  v6 = &a2[v19];
  *v6 = v20;
  v6[8] = v21 & 1;
  v7 = v22[7];
  v24 = &a2[v7];
  a2[v7] = a1[v7];
  v25 = *&a1[v7 + 8];

  result = a2;
  *(v24 + 1) = v25;
  return result;
}

uint64_t sub_17834()
{
  updated = type metadata accessor for UpdateHistoryView(0);
  v1 = *(*(updated - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = *(type metadata accessor for UpdateHistoryData(0) + 20);
  v2 = sub_99230();
  (*(*(v2 - 8) + 8))(v0 + v4 + v5);

  sub_2B78(*(v0 + v4 + *(updated + 20)), *(v0 + v4 + *(updated + 20) + 8) & 1);

  return swift_deallocObject();
}

__n128 sub_179C0(char *a1, char *a2)
{
  *a2 = *a1;
  updated = type metadata accessor for UpdateHistoryData(0);
  v9 = updated[5];
  v2 = sub_99230();
  (*(*(v2 - 8) + 32))(&a2[v9], &a1[v9]);
  *&a2[updated[6]] = *&a1[updated[6]];
  *&a2[updated[7]] = *&a1[updated[7]];
  v3 = type metadata accessor for UpdateHistoryView(0);
  v4 = &a1[v3[5]];
  v5 = &a2[v3[5]];
  *v5 = *v4;
  v5[8] = v4[8];
  v6 = &a1[v3[6]];
  v7 = &a2[v3[6]];
  *v7 = *v6;
  v7[8] = v6[8];
  result = *&a1[v3[7]];
  *&a2[v3[7]] = result;
  return result;
}

uint64_t sub_17AFC()
{
  v1 = *(type metadata accessor for UpdateHistoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_16DD0(v2);
}

void *sub_17B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = &opaque type descriptor for <<opaque return type of View.progressViewStyle<A>(_:)>>;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v64 = 0;
  v29 = 0;
  v24 = sub_99490();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v28 = &v15 - v27;
  v30 = sub_22FC(&qword_B4F30, &qword_9ADD0);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v29);
  v32 = &v15 - v31;
  v33 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v34 = &v15 - v33;
  v35 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v36 = &v15 - v35;
  v74 = &v15 - v35;
  v37 = sub_99600();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v41 = &v15 - v40;
  v42 = sub_22FC(&qword_B4F10, &qword_9ADC8);
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v46 = &v15 - v45;
  v47 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v51 = &v15 - v50;
  v52 = sub_22FC(&qword_B4F08, &qword_9ADC0);
  v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v54 = &v15 - v53;
  v55 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v53);
  v56 = &v15 - v55;
  v57 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v55);
  v58 = &v15 - v57;
  v73 = &v15 - v57;
  v59 = sub_22FC(&qword_B4EF0, &qword_9ADB8);
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v61 = (&v15 - v60);
  v62 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v60);
  v63 = (&v15 - v62);
  v72 = &v15 - v62;
  v71 = a1;
  if (sub_12F28())
  {
    sub_99430();
    sub_998A0();
    sub_995F0();
    v17 = sub_18634();
    v18 = sub_186BC();
    sub_99750();
    (*(v38 + 8))(v41, v37);
    (*(v43 + 8))(v46, v42);
    v65 = v42;
    v66 = v37;
    v67 = v17;
    v68 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_18954();
    v20 = v10;
    sub_99790();
    (*(v48 + 8))(v51, v47);
    v21 = sub_18518();
    sub_71A0(v56, v52, v58);
    sub_198AC(v56);
    v64 = v56;
    sub_19914(v58, v54);
    sub_8408(v54, v52, v56);
    sub_198AC(v54);
    sub_19914(v56, v54);
    v11 = sub_1873C();
    sub_18978(v54, v52, v30, v21, v11, v61);
    sub_198AC(v54);
    sub_1948C(v61, v63);
    sub_198AC(v56);
    sub_198AC(v58);
  }

  else
  {
    sub_99B90("ellipsis.circle", 0xFuLL, 1);
    v12 = sub_998C0();
    v15 = &v70;
    v70 = v12;
    sub_18A70();
    sub_997C0();
    (*(v25 + 8))(v28, v24);
    sub_19328(v15);
    v16 = sub_1873C();
    sub_71A0(v34, v30, v36);
    sub_19354(v34);
    v69 = v34;
    sub_193DC(v36, v32);
    sub_8408(v32, v30, v34);
    sub_19354(v32);
    sub_193DC(v34, v32);
    v13 = sub_18518();
    sub_18A88(v32, v52, v30, v13, v16, v61);
    sub_19354(v32);
    sub_1948C(v61, v63);
    sub_19354(v34);
    sub_19354(v36);
  }

  sub_19614(v63, v61);
  sub_18470();
  sub_8408(v61, v59, v22);
  sub_197A8(v61);
  return sub_197A8(v63);
}

unint64_t sub_18470()
{
  v2 = qword_B4EF8;
  if (!qword_B4EF8)
  {
    sub_87B4(&qword_B4EF0, &qword_9ADB8);
    sub_18518();
    sub_1873C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_18518()
{
  v2 = qword_B4F00;
  if (!qword_B4F00)
  {
    sub_87B4(&qword_B4F08, &qword_9ADC0);
    sub_87B4(&qword_B4F10, &qword_9ADC8);
    sub_99600();
    sub_18634();
    sub_186BC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_18634()
{
  v2 = qword_B4F18;
  if (!qword_B4F18)
  {
    sub_87B4(&qword_B4F10, &qword_9ADC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_186BC()
{
  v2 = qword_B4F20;
  if (!qword_B4F20)
  {
    sub_99600();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1873C()
{
  v2 = qword_B4F28;
  if (!qword_B4F28)
  {
    sub_87B4(&qword_B4F30, &qword_9ADD0);
    sub_187E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_187E0()
{
  v2 = qword_B4F38;
  if (!qword_B4F38)
  {
    sub_87B4(&qword_B4F40, &qword_9ADD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_18868()
{
  v2 = qword_B4F48;
  if (!qword_B4F48)
  {
    sub_87B4(&qword_B4EC0, &qword_9AD98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4F48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_188F0()
{
  v2 = qword_B4F50;
  if (!qword_B4F50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B4F50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_18978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_995B0();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_995C0();
}

uint64_t sub_18A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_995B0();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_995C0();
}

uint64_t sub_18BB0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  sub_D5A0(a1, a2);
  updated = type metadata accessor for UpdateHistoryView(0);
  swift_getKeyPath();
  sub_99420();
  swift_getKeyPath();
  sub_99420();
  v6 = *(updated + 28);
  result = sub_12C3C(0);
  v3 = &a2[v6];
  *v3 = result & 1;
  *(v3 + 1) = v4;
  return result;
}

uint64_t sub_18D34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateHistoryData(0);
  if (a2 == *(*(updated - 8) + 84))
  {
    return (*(*(updated - 8) + 48))(a1, a2, updated);
  }

  else if (a2 == 2147483646)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 28) + 8) < 0x100000000uLL)
    {
      v5 = *(a1 + *(a3 + 28) + 8);
    }

    v3 = v5 - 1;
    if (v5 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_18E84(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UpdateHistoryData(0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18F7C(uint64_t a1)
{
  updated = type metadata accessor for UpdateHistoryData(319);
  if (v1 <= 0x3F)
  {
    updated = sub_FE14(319);
    if (v2 <= 0x3F)
    {
      updated = sub_FEB0(319);
      if (v3 <= 0x3F)
      {
        updated = sub_100E8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_190B4()
{
  sub_87B4(&qword_B4E58, &qword_9AD38);
  sub_87B4(&qword_B4E28, &qword_9AD50);
  sub_150C4();
  sub_CE00();
  sub_11928();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_191A0()
{
  v2 = qword_B4FE0;
  if (!qword_B4FE0)
  {
    sub_87B4(&qword_B4FE8, "L*");
    sub_165EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4FE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1925C()
{
  v2 = qword_B4FF0;
  if (!qword_B4FF0)
  {
    sub_87B4(&qword_B4EC8, &qword_9ADA0);
    sub_18868();
    sub_C0B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B4FF0);
    return WitnessTable;
  }

  return v2;
}

char *sub_19354(char *a1)
{

  v3 = *(sub_22FC(&qword_B4F30, &qword_9ADD0) + 36);
  v1 = sub_99490();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

char *sub_193DC(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(sub_22FC(&qword_B4F30, &qword_9ADD0) + 36);
  v2 = sub_99490();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

void *sub_1948C(void *a1, void *a2)
{
  sub_22FC(&qword_B5000, &unk_9AFB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v6 = sub_22FC(&qword_B4F30, &qword_9ADD0);
    v10 = a2 + *(v6 + 36);
    v9 = a1 + *(v6 + 36);
    v7 = sub_99490();
    (*(*(v7 - 8) + 32))(v10, v9);
  }

  else
  {
    v2 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_22FC(&qword_B4F08, &qword_9ADC0);
    v4 = (a2 + *(v3 + 36));
    v5 = (a1 + *(v3 + 36));
    *v4 = *v5;
    v4[1] = v5[1];
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_19614(uint64_t *a1, void *a2)
{
  sub_22FC(&qword_B5000, &unk_9AFB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *a1;

    *a2 = v9;
    v6 = sub_22FC(&qword_B4F30, &qword_9ADD0);
    v11 = a2 + *(v6 + 36);
    v10 = a1 + *(v6 + 36);
    v7 = sub_99490();
    (*(*(v7 - 8) + 16))(v11, v10);
  }

  else
  {
    v2 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = sub_22FC(&qword_B4F08, &qword_9ADC0);
    v4 = (a2 + *(v3 + 36));
    v5 = (a1 + *(v3 + 36));
    *v4 = *v5;
    v4[1] = v5[1];
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_197A8(void *a1)
{
  sub_22FC(&qword_B5000, &unk_9AFB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(sub_22FC(&qword_B4F30, &qword_9ADD0) + 36);
    v2 = sub_99490();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
    v1 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_198AC(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

__n128 sub_19914(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FC(&qword_B4FF8, &qword_9AFA8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_22FC(&qword_B4F08, &qword_9ADC0);
  v4 = a1 + *(v3 + 36);
  v5 = a2 + *(v3 + 36);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

unint64_t sub_19A20()
{
  v2 = qword_B5010;
  if (!qword_B5010)
  {
    sub_87B4(&qword_B4E98, &qword_9AD70);
    sub_19AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_19AB8()
{
  v2 = qword_B5018;
  if (!qword_B5018)
  {
    sub_87B4(&qword_B4EA0, &qword_9AD78);
    sub_19B5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_19B5C()
{
  v2 = qword_B5020;
  if (!qword_B5020)
  {
    sub_99350();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5020);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19BDC(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4E98, &qword_9AD70);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    if (!(*(*(v2 - 8) + 48))(a1, 1))
    {
      v3 = sub_99350();
      (*(*(v3 - 8) + 8))(a1);
    }
  }

  return a1;
}

char *sub_19CE0(char *a1, char *a2)
{
  v9 = sub_22FC(&qword_B4E98, &qword_9AD70);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_22FC(&qword_B5008, &unk_9AFD0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(a1, 1))
    {
      memcpy(a2, a1, *(v10 + 64));
    }

    else
    {
      v2 = sub_99350();
      (*(*(v2 - 8) + 32))(a2, a1);
      memcpy(&a2[*(v5 + 36)], &a1[*(v5 + 36)], 0x29uLL);
      (*(v6 + 56))(a2, 0, 1, v5);
    }

    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

char *sub_19F04(char *a1, char *a2)
{
  v9 = sub_22FC(&qword_B4E98, &qword_9AD70);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_22FC(&qword_B5008, &unk_9AFD0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(a1, 1))
    {
      memcpy(a2, a1, *(v10 + 64));
    }

    else
    {
      v2 = sub_99350();
      (*(*(v2 - 8) + 16))(a2, a1);
      memcpy(&a2[*(v5 + 36)], &a1[*(v5 + 36)], 0x29uLL);
      (*(v6 + 56))(a2, 0, 1, v5);
    }

    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

unint64_t sub_1A128()
{
  v2 = qword_B5028;
  if (!qword_B5028)
  {
    sub_87B4(&qword_B5008, &unk_9AFD0);
    sub_19A20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1A1C0(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_99350();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1A270(char *a1, char *a2)
{
  v7 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = sub_22FC(&qword_B4E98, &qword_9AD70);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_99350();
    (*(*(v2 - 8) + 32))(a2, a1);
    memcpy(&a2[*(v7 + 36)], &a1[*(v7 + 36)], 0x29uLL);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

char *sub_1A3D4(char *a1, char *a2)
{
  v7 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = sub_22FC(&qword_B4E98, &qword_9AD70);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_99350();
    (*(*(v2 - 8) + 16))(a2, a1);
    memcpy(&a2[*(v7 + 36)], &a1[*(v7 + 36)], 0x29uLL);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1A538(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1A5B4(uint64_t a1)
{
  v1 = sub_99350();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1A610(uint64_t a1, uint64_t a2)
{
  v2 = sub_99350();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_22FC(&qword_B4EA0, &qword_9AD78);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1A6B0(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1A72C()
{
  updated = type metadata accessor for UpdateHistoryView(0);
  v1 = *(*(updated - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = *(type metadata accessor for UpdateHistoryData(0) + 20);
  v2 = sub_99230();
  (*(*(v2 - 8) + 8))(v0 + v4 + v5);

  sub_2B78(*(v0 + v4 + *(updated + 20)), *(v0 + v4 + *(updated + 20) + 8) & 1);

  return swift_deallocObject();
}

void sub_1A8B8()
{
  v1 = *(type metadata accessor for UpdateHistoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_149AC(v2);
}

uint64_t sub_1A94C(uint64_t a1)
{
  v6 = *(sub_22FC(&qword_B4E88, &qword_9AD60) + 44);
  sub_88E0(*(a1 + v6), *(a1 + v6 + 8), *(a1 + v6 + 16) & 1);

  sub_88E0(*(a1 + v6 + 32), *(a1 + v6 + 40), *(a1 + v6 + 48) & 1);

  v7 = *(sub_22FC(&qword_B4E90, &qword_9AD68) + 64);
  v1 = sub_22FC(&qword_B4E98, &qword_9AD70);
  if (!(*(*(v1 - 8) + 48))(a1 + v6 + v7, 1))
  {
    v2 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    if (!(*(*(v2 - 8) + 48))(a1 + v6 + v7, 1))
    {
      v3 = sub_99350();
      (*(*(v3 - 8) + 8))(a1 + v6 + v7);
    }
  }

  return a1;
}

unint64_t sub_1AB0C()
{
  v2 = qword_B5038;
  if (!qword_B5038)
  {
    sub_87B4(&qword_B4EB0, &qword_9AD88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AB94(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4EB0, &qword_9AD88);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v4 = a1 + *(sub_22FC(&qword_B4EB8, &qword_9AD90) + 48);
    v2 = sub_22FC(&qword_B4EC0, &qword_9AD98);
    (*(*(v2 - 8) + 8))(v4);
    sub_22FC(&qword_B4EC8, &qword_9ADA0);
  }

  return a1;
}

_BYTE *sub_1ACAC(_BYTE *a1, _BYTE *a2)
{
  v13 = sub_22FC(&qword_B4EB0, &qword_9AD88);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v7 = sub_22FC(&qword_B5030, &unk_9AFE0);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[8] = a1[8];
    v2 = sub_22FC(&qword_B4EB8, &qword_9AD90);
    v9 = &a2[*(v2 + 48)];
    v10 = &a1[*(v2 + 48)];
    v3 = sub_22FC(&qword_B4EC0, &qword_9AD98);
    (*(*(v3 - 8) + 32))(v9, v10);
    v4 = sub_22FC(&qword_B4EC8, &qword_9ADA0);
    v5 = &v9[*(v4 + 36)];
    v6 = &v10[*(v4 + 36)];
    *v5 = *v6;
    *(v5 + 2) = *(v6 + 2);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1AE80(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v12 = *(sub_22FC(&qword_B4E88, &qword_9AD60) + 44);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = *(a1 + v12 + 16);
  sub_F84C(v13, v14, v15 & 1);
  v2 = a2 + v12;
  v20 = a2 + v12;
  *v2 = v13;
  *(v2 + 8) = v14;
  *(v2 + 16) = v15 & 1;
  v16 = *(a1 + v12 + 24);

  *(v20 + 24) = v16;
  v17 = *(a1 + v12 + 32);
  v18 = *(a1 + v12 + 40);
  v19 = *(a1 + v12 + 48);
  sub_F84C(v17, v18, v19 & 1);
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = v19 & 1;
  v21 = *(a1 + v12 + 56);

  *(v20 + 56) = v21;
  v22 = *(sub_22FC(&qword_B4E90, &qword_9AD68) + 64);
  v23 = sub_22FC(&qword_B4E98, &qword_9AD70);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(a1 + v12 + v22, 1))
  {
    v4 = sub_22FC(&qword_B5008, &unk_9AFD0);
    memcpy((a2 + v12 + v22), (a1 + v12 + v22), *(*(v4 - 8) + 64));
  }

  else
  {
    v8 = sub_22FC(&qword_B4EA0, &qword_9AD78);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a1 + v12 + v22, 1))
    {
      memcpy((a2 + v12 + v22), (a1 + v12 + v22), *(v24 + 64));
    }

    else
    {
      v3 = sub_99350();
      v7 = a2 + v12 + v22;
      (*(*(v3 - 8) + 16))();
      memcpy((v7 + *(v8 + 36)), (a1 + v12 + v22 + *(v8 + 36)), 0x29uLL);
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    (*(v24 + 56))(a2 + v12 + v22, 0, 1, v23);
  }

  v5 = sub_22FC(&qword_B4FE8, "L*");
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

_BYTE *sub_1B2B4(_BYTE *a1, _BYTE *a2)
{
  v16 = sub_22FC(&qword_B4EB0, &qword_9AD88);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    v5 = sub_22FC(&qword_B5030, &unk_9AFE0);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[8] = a1[8];
    v2 = sub_22FC(&qword_B4EB8, &qword_9AD90);
    v7 = &a2[*(v2 + 48)];
    v8 = &a1[*(v2 + 48)];
    v3 = sub_22FC(&qword_B4EC0, &qword_9AD98);
    (*(*(v3 - 8) + 16))(v7, v8);
    v4 = sub_22FC(&qword_B4EC8, &qword_9ADA0);
    v12 = &v7[*(v4 + 36)];
    v10 = &v8[*(v4 + 36)];
    v9 = *v10;

    *v12 = v9;
    v11 = v10[1];
    v13 = v10[2];

    v12[1] = v11;
    v12[2] = v13;
    (*(v17 + 56))(a2, 0, 1, v16);
  }

  return a2;
}

unint64_t sub_1B4C0()
{
  v2 = qword_B5040;
  if (!qword_B5040)
  {
    sub_87B4(&qword_B5030, &unk_9AFE0);
    sub_1AB0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B558(uint64_t a1)
{
  v1 = sub_22FC(&qword_B4EC0, &qword_9AD98);
  (*(*(v1 - 8) + 8))(a1);
  sub_22FC(&qword_B4EC8, &qword_9ADA0);

  return a1;
}

uint64_t sub_1B5FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FC(&qword_B4EC0, &qword_9AD98);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(sub_22FC(&qword_B4EC8, &qword_9ADA0) + 36);
  v6 = *(a1 + v5);

  v9 = a2 + v5;
  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);

  result = a2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  return result;
}

uint64_t sub_1B6EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(sub_22FC(&qword_B4EB8, &qword_9AD90) + 48);
  v2 = sub_22FC(&qword_B4EC0, &qword_9AD98);
  (*(*(v2 - 8) + 16))();
  v6 = *(sub_22FC(&qword_B4EC8, &qword_9ADA0) + 36);
  v8 = (a1 + v4 + v6);
  v7 = *v8;

  v11 = (a2 + v4 + v6);
  *v11 = v7;
  v10 = v8[1];
  v12 = v8[2];

  result = a2;
  v11[1] = v10;
  v11[2] = v12;
  return result;
}

uint64_t sub_1B824(uint64_t a1)
{
  sub_22FC(&qword_B4EB8, &qword_9AD90);
  v1 = sub_22FC(&qword_B4EC0, &qword_9AD98);
  (*(*(v1 - 8) + 8))();
  sub_22FC(&qword_B4EC8, &qword_9ADA0);

  return a1;
}

uint64_t sub_1B9B0(void *a1)
{
  swift_getObjectType();
  _objc_retain(a1);
  sub_998D0();
  _objc_release(a1);
  return v3;
}

uint64_t sub_1BA38()
{
  v2 = *v0;
  _objc_retain(*v0);

  sub_22FC(&qword_B5048, &qword_9AFF0);
  sub_998E0();
  _objc_release(v2);

  return v3;
}

void sub_1BADC(void *a1)
{
  v5[2] = 0;
  v5[3] = a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  _objc_retain(*v1);

  _objc_retain(v2);

  v5[0] = v2;
  v5[1] = v3;
  _objc_retain(a1);
  sub_22FC(&qword_B5048, &qword_9AFF0);
  sub_998F0();
  sub_1BBD8(v5);
  _objc_release(v2);

  _objc_release(a1);
}

uint64_t sub_1BC18()
{
  v2 = *v0;
  _objc_retain(*v0);

  sub_22FC(&qword_B5048, &qword_9AFF0);
  sub_99900();
  _objc_release(v2);

  return v3;
}

id sub_1BCD4()
{
  v2 = *v0;
  _objc_retain(*v0);

  return v2;
}

uint64_t sub_1BD24(void *a1, uint64_t a2)
{
  _objc_retain(a1);

  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2;
  _objc_release(v3);

  _objc_release(a1);
}

uint64_t sub_1BDC4(uint64_t a1)
{

  type metadata accessor for PreferencesManager(0);
  sub_998D0();

  return v2;
}

uint64_t sub_1BE3C()
{

  sub_22FC(&qword_B5050, &qword_9AFF8);
  sub_998E0();

  return v1;
}

uint64_t sub_1BED0(uint64_t a1)
{
  v5[2] = 0;
  v5[3] = a1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5[0] = v3;
  v5[1] = v4;

  sub_22FC(&qword_B5050, &qword_9AFF8);
  sub_998F0();
  sub_1BFA4(v5);
}

uint64_t sub_1BFDC()
{

  sub_22FC(&qword_B5050, &qword_9AFF8);
  sub_99900();

  return v1;
}

uint64_t sub_1C088()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1C0D0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double BackgroundSecurityImprovementSettings.init()@<D0>(_OWORD *a1@<X8>)
{
  v10 = 0u;
  v11 = 0u;
  v2 = type metadata accessor for PreferencesManager(0);
  v4 = PreferencesManager.__allocating_init()();
  v9 = v4;

  v7 = v4;
  sub_1C244(v2, &v8);
  v11 = v8;
  v3 = type metadata accessor for StatefulManager(0);

  sub_4F364(v4);
  sub_1C244(v3, &v6);
  v10 = v6;

  *a1 = v10;
  result = *&v11;
  a1[1] = v11;
  return result;
}

uint64_t BackgroundSecurityImprovementSettings.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v13 = sub_1CABC;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v20 = sub_22FC(&qword_B5058, &qword_9B000);
  v14 = *(v20 - 8);
  v15 = v20 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v18 = &v7 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v7);
  v19 = &v7 - v8;
  v25 = &v7 - v8;
  v9 = *v1;
  v10 = v1[1];
  v23 = v9;
  v24 = v10;
  _objc_retain(v9);

  v3 = swift_allocObject();
  v4 = *(&v9 + 1);
  v5 = v10;
  v11 = v3;
  *(v3 + 16) = v9;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  v12 = sub_22FC(&qword_B5060, &qword_9B008);
  sub_1CAD0();
  sub_99A90();
  v17 = sub_1CE14();
  sub_1CDB0(v18, v20, v19);
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v18, v20);
  (*(v14 + 16))(v18, v19, v20);
  sub_1CE9C(v18, v20, v16);
  v22(v18, v20);
  return (v22)(v19, v20);
}

uint64_t sub_1C54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v32 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v5 = sub_22FC(&qword_B4B58, &qword_9B1A0);
  v16 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v24 = (&v15 - v16);
  v25 = type metadata accessor for MainView(0);
  v17 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v28 = &v15 - v17;
  v33 = sub_22FC(&qword_B5078, &qword_9B010);
  v18 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v36 = &v15 - v18;
  v38 = sub_22FC(&qword_B5060, &qword_9B008);
  v19 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v32);
  v40 = &v15 - v19;
  v20 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v41 = &v15 - v20;
  v46 = &v15 - v20;
  *&v44 = v8;
  *(&v44 + 1) = v9;
  *&v45 = v10;
  *(&v45 + 1) = v11;
  v43[9] = v8;
  v43[10] = v9;
  v43[11] = v10;
  v43[12] = v11;
  v21 = sub_1BA38();
  v23 = sub_4CE5C();
  _objc_release(v21);
  v43[5] = v32;
  v43[6] = v29;
  v43[7] = v30;
  v43[8] = v31;
  v22 = sub_1BA38();
  sub_4B1C8(v24);
  _objc_release(v22);
  sub_36E0(v23, v24, v28);
  KeyPath = swift_getKeyPath();
  v43[1] = v32;
  v43[2] = v29;
  v43[3] = v30;
  v43[4] = v31;
  v12 = sub_1BA38();
  v26 = v43;
  v43[0] = v12;
  sub_1CC20();
  sub_99780();
  sub_1D370(v26);

  sub_4240(v28);
  v35 = swift_getKeyPath();
  v42[1] = v32;
  v42[2] = v29;
  v42[3] = v30;
  v42[4] = v31;
  v13 = sub_1BE3C();
  v34 = v42;
  v42[0] = v13;
  sub_1CB78();
  sub_99780();
  sub_1D3A4(v34);

  sub_1D3D0(v36);
  v39 = sub_1CAD0();
  sub_71A0(v40, v38, v41);
  sub_1D5D4(v40);
  sub_1D810(v41, v40);
  sub_8408(v40, v38, v37);
  sub_1D5D4(v40);
  return sub_1D5D4(v41);
}

uint64_t sub_1CA5C()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_1CAD0()
{
  v2 = qword_B5068;
  if (!qword_B5068)
  {
    sub_87B4(&qword_B5060, &qword_9B008);
    sub_1CB78();
    sub_1CD28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CB78()
{
  v2 = qword_B5070;
  if (!qword_B5070)
  {
    sub_87B4(&qword_B5078, &qword_9B010);
    sub_1CC20();
    sub_1CCA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CC20()
{
  v2 = qword_B5080;
  if (!qword_B5080)
  {
    type metadata accessor for MainView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CCA0()
{
  v2 = qword_B5088;
  if (!qword_B5088)
  {
    sub_87B4(&qword_B5090, &qword_9B018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CD28()
{
  v2 = qword_B5098;
  if (!qword_B5098)
  {
    sub_87B4(&qword_B50A0, qword_9B020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CE14()
{
  v2 = qword_B50A8;
  if (!qword_B50A8)
  {
    sub_87B4(&qword_B5058, &qword_9B000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B50A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CF48()
{
  v2 = qword_B50B0;
  if (!qword_B50B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B50B0);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1D020(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D034(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1D3D0(uint64_t a1)
{
  v1 = sub_99180();
  (*(*(v1 - 8) + 8))(a1);
  v6 = type metadata accessor for MainView(0);
  sub_2B78(*(a1 + v6[5]), *(a1 + v6[5] + 8) & 1);

  _objc_release(*(a1 + v6[7]));
  v7 = v6[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(a1 + v7, 1))
  {
    v5 = a1 + v7 + *(updated + 20);
    v2 = sub_99230();
    (*(*(v2 - 8) + 8))(v5);
  }

  v4 = a1 + *(sub_22FC(&qword_B5078, &qword_9B010) + 36);

  _objc_release(*(v4 + 8));
  return a1;
}

uint64_t sub_1D5D4(uint64_t a1)
{
  v1 = sub_99180();
  (*(*(v1 - 8) + 8))(a1);
  v6 = type metadata accessor for MainView(0);
  sub_2B78(*(a1 + v6[5]), *(a1 + v6[5] + 8) & 1);

  _objc_release(*(a1 + v6[7]));
  v7 = v6[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  if (!(*(*(updated - 8) + 48))(a1 + v7, 1))
  {
    v5 = a1 + v7 + *(updated + 20);
    v2 = sub_99230();
    (*(*(v2 - 8) + 8))(v5);
  }

  v4 = a1 + *(sub_22FC(&qword_B5078, &qword_9B010) + 36);

  _objc_release(*(v4 + 8));
  sub_22FC(&qword_B5060, &qword_9B008);

  return a1;
}

uint64_t sub_1D810(uint64_t a1, uint64_t a2)
{
  v2 = sub_99180();
  (*(*(v2 - 8) + 16))(a2, a1);
  v39 = type metadata accessor for MainView(0);
  v30 = v39[5];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  sub_2B30(v31, v32 & 1);
  v3 = a2 + v30;
  *v3 = v31;
  *(v3 + 8) = v32 & 1;
  v33 = v39[6];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);

  v4 = a2 + v33;
  *v4 = v34;
  *(v4 + 8) = v35 & 1;
  v36 = v39[7];
  v38 = *(a1 + v36);
  _objc_retain(v38);
  *(a2 + v36) = v38;
  v40 = v39[8];
  updated = type metadata accessor for UpdateHistoryData(0);
  v43 = *(updated - 1);
  if ((*(v43 + 48))(a1 + v40, 1))
  {
    v8 = sub_22FC(&qword_B4B58, &qword_9B1A0);
    memcpy((a2 + v40), (a1 + v40), *(*(v8 - 8) + 64));
  }

  else
  {
    v27 = a2 + v40;
    *(a2 + v40) = *(a1 + v40);
    v24 = a2 + v40 + updated[5];
    v23 = a1 + v40 + updated[5];
    v5 = sub_99230();
    (*(*(v5 - 8) + 16))(v24, v23);
    v6 = updated[6];
    v25 = a2 + v40 + v6;
    *(v27 + v6) = *(a1 + v40 + v6);
    v26 = *(a1 + v40 + v6 + 8);

    *(v25 + 8) = v26;
    v7 = updated[7];
    v28 = a2 + v40 + v7;
    *(v27 + v7) = *(a1 + v40 + v7);
    v29 = *(a1 + v40 + v7 + 8);

    *(v28 + 8) = v29;
    (*(v43 + 56))(a2 + v40, 0, 1, updated);
  }

  v9 = v39[9];
  v13 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v14 = *(a1 + v9 + 8);

  *(v13 + 8) = v14;
  v10 = sub_22FC(&qword_B5078, &qword_9B010);
  v17 = (a2 + *(v10 + 36));
  v16 = (a1 + *(v10 + 36));
  v15 = *v16;

  *v17 = v15;
  v18 = v16[1];
  _objc_retain(v18);
  v17[1] = v18;
  v11 = sub_22FC(&qword_B5060, &qword_9B008);
  v21 = (a2 + *(v11 + 36));
  v20 = (a1 + *(v11 + 36));
  v19 = *v20;

  *v21 = v19;
  v22 = v20[1];

  result = a2;
  v21[1] = v22;
  return result;
}

void *sub_1DC84()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  _objc_retain(v2);
  swift_endAccess();
  return v2;
}

void sub_1DCE8(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_1DE1C(void *a1@<X0>, void *a2@<X8>)
{
  _objc_retain(a1);
  *a2 = a1;
  _objc_release(a1);
}

void *sub_1DE74()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  return sub_1DC84();
}

uint64_t sub_1DEF8@<X0>(void **a2@<X8>)
{

  *a2 = sub_1DE74();
}

uint64_t sub_1DF54(id *a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);

  sub_1DFD0(v3);
}

void sub_1DFD0(void *a1)
{
  v16 = a1;
  v15 = 0;
  v20 = 0;
  v13 = 0;
  v21 = a1;
  v18 = sub_1DC84();
  v17 = sub_208C0();
  v1 = sub_20924();
  v19 = sub_2084C(v18, v16, v17, v1);

  if (v19)
  {
    v2 = v14;
    v3 = v13;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    v4 = v16;
    v11 = &v7;
    v5 = __chkstk_darwin(KeyPath);
    (*(*v2 + 264))(v5, sub_209A4);
    v12 = v3;

    v8 = v12;
  }

  else
  {
    v6 = v16;
    sub_1DCE8(v16);
    v8 = v13;
  }
}

void (*sub_1E214(void *a1))(uint64_t *a1, char a2)
{
  v7 = sub_209D0(0x40uLL, 15478);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_99310();
  v4 = *(v6 - 8);
  v5 = sub_209D0(*(v4 + 64), 15478);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 256))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_20A24();
  sub_992F0();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1DD78();
  return sub_1E3F4;
}

void sub_1E3F4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1E4B0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1E4B0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1E4B0(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_99310();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_20A24();
  sub_992E0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1E604@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar;
  v2 = sub_99310();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E678()
{
  sub_99140();
  sub_99F80();
  sub_20B18();
  return sub_99D20();
}

uint64_t sub_1E6C8()
{
  v2 = (v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_observations);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1E730(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_observations);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1E860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 184))(v2) & 1;
}

uint64_t sub_1E8E4(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 192))(v4 & 1);
}

uint64_t sub_1E964()
{
  v13 = 0;
  v9 = sub_99310();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v1 - v2;
  v13 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar);
  v3 = &v12;
  v12 = v4;
  KeyPath = swift_getKeyPath();
  sub_20A24();
  sub_992D0();

  (*(v6 + 8))(v8, v9);
  v10 = sub_1DE74();
  v11 = [v10 autoInstallSecurityResponse];
  _objc_release(v10);
  return v11;
}

uint64_t sub_1EAD4(unsigned int a1)
{
  v6 = a1;
  v9 = sub_20B98;
  v17 = 0;
  v16 = 0;
  v2[0] = sub_99310();
  v4 = *(v2[0] - 8);
  v2[1] = v2[0] - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v2 - v3;
  v17 = __chkstk_darwin(v6) & 1;
  v16 = v7;
  (*(v4 + 16))(v2 - v3, v7 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar);
  v11 = &v15;
  v15 = v7;
  KeyPath = swift_getKeyPath();

  v10 = &v12;
  v13 = v7;
  v14 = v6;
  sub_20A24();
  sub_992C0();

  return (*(v4 + 8))(v5, v2[0]);
}

void sub_1ECA0(uint64_t a1, char a2)
{
  v3 = sub_1DE74();
  [v3 enableAutoInstallSecurityResponse:a2 & 1];
  _objc_release(v3);
}

uint64_t (*sub_1ED1C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E964() & 1;
  return sub_1ED80;
}

uint64_t sub_1EDE0()
{
  v13 = 0;
  v9 = sub_99310();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v1 - v2;
  v13 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar);
  v3 = &v12;
  v12 = v4;
  KeyPath = swift_getKeyPath();
  sub_20A24();
  sub_992D0();

  (*(v6 + 8))(v8, v9);
  v10 = sub_1DE74();
  v11 = [v10 disableRollback];
  _objc_release(v10);
  return v11;
}

uint64_t sub_1EF50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 208))(v2) & 1;
}

uint64_t sub_1EFD4()
{
  v13 = 0;
  v9 = sub_99310();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v1 - v2;
  v13 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar);
  v3 = &v12;
  v12 = v4;
  KeyPath = swift_getKeyPath();
  sub_20A24();
  sub_992D0();

  (*(v6 + 8))(v8, v9);
  v10 = sub_1DE74();
  v11 = [v10 autoInstallSecurityResponseForceOff];
  _objc_release(v10);
  return v11;
}

uint64_t sub_1F144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 216))(v2) & 1;
}

uint64_t sub_1F1C8()
{
  v13 = 0;
  v9 = sub_99310();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v1 - v2;
  v13 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar);
  v3 = &v12;
  v12 = v4;
  KeyPath = swift_getKeyPath();
  sub_20A24();
  sub_992D0();

  (*(v6 + 8))(v8, v9);
  v10 = sub_1DE74();
  v11 = [v10 autoInstallSecurityResponseForceOn];
  _objc_release(v10);
  return v11;
}

uint64_t sub_1F338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 224))(v2) & 1;
}

uint64_t PreferencesManager.init()()
{
  v46 = "Fatal error";
  v47 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v48 = "BackgroundSecurityImprovement/PreferencesManager.swift";
  v71 = 0;
  v54 = 0;
  v49 = sub_99310();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (v50[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v53 = v6 - v52;
  v71 = v0;
  sub_99300();
  v57 = OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_observations;
  v55 = sub_99140();
  v56 = sub_99F80();
  sub_20B18();
  *(v0 + v57) = sub_99D20();
  sub_99300();
  v58 = [objc_opt_self() sharedInstance];
  if (v58)
  {
    v44 = v58;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v1 = v45;
  sub_1DE1C(v44, (v45 + 16));
  v6[0] = v70;
  v70[0] = v1;
  KeyPath = swift_getKeyPath();
  v7 = sub_1DE74();
  v6[1] = swift_getKeyPath();
  v27 = &qword_B5000;
  v29 = v50[2];
  v28 = v50 + 2;
  v29(v53, v45 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar, v49);
  v31 = sub_20A24();
  v30 = 0;
  v9 = sub_99320();
  v33 = v50[1];
  v32 = v50 + 1;
  v33(v53, v49);

  _objc_release(v7);

  v10 = &v69;
  v69 = v9;
  v38 = &qword_B5000;
  v11 = &v68;
  v39 = 33;
  v40 = 0;
  swift_beginAccess();
  v42 = sub_22FC(&qword_B5170, qword_9B318);
  sub_99D30();
  v2 = v45;
  swift_endAccess();
  _objc_release(v70[1]);
  v12 = v67;
  v67[0] = v2;
  v15 = swift_getKeyPath();
  v14 = sub_1DE74();
  v13 = swift_getKeyPath();
  v29(v53, v45 + v27[440], v49);
  v16 = sub_99320();
  v33(v53, v49);

  _objc_release(v14);

  v17 = &v66;
  v66 = v16;
  v18 = &v65;
  swift_beginAccess();
  sub_99D30();
  v3 = v45;
  swift_endAccess();
  _objc_release(v67[1]);
  v19 = v64;
  v64[0] = v3;
  v22 = swift_getKeyPath();
  v21 = sub_1DE74();
  v20 = swift_getKeyPath();
  v29(v53, v45 + v27[440], v49);
  v23 = sub_99320();
  v33(v53, v49);

  _objc_release(v21);

  v24 = &v63;
  v63 = v23;
  v25 = &v62;
  swift_beginAccess();
  sub_99D30();
  v4 = v45;
  swift_endAccess();
  _objc_release(v64[1]);
  v26 = v61;
  v61[0] = v4;
  v36 = swift_getKeyPath();
  v35 = sub_1DE74();
  v34 = swift_getKeyPath();
  v29(v53, v45 + v27[440], v49);
  v37 = sub_99320();
  v33(v53, v49);

  _objc_release(v35);

  v41 = &v60;
  v60 = v37;
  v43 = &v59;
  swift_beginAccess();
  sub_99D30();
  swift_endAccess();
  _objc_release(v61[1]);
  return v45;
}

void sub_1FE08(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 autoInstallSecurityResponse];
  _objc_release(v2);
}

void sub_1FE74(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  [v2 enableAutoInstallSecurityResponse:v3 & 1];
  _objc_release(v2);
}

void sub_1FEE0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 disableRollback];
  _objc_release(v2);
}

void sub_1FF4C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 autoInstallSecurityResponseForceOff];
  _objc_release(v2);
}

void sub_1FFB8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 autoInstallSecurityResponseForceOn];
  _objc_release(v2);
}

uint64_t PreferencesManager.deinit()
{
  v9 = v0;
  v6 = (v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_observations);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  v8 = v7;
  sub_22FC(&qword_B5170, qword_9B318);
  sub_20BF8();
  sub_99C20();
  sub_20C80(&v8);
  _objc_release(*(v5 + 16));
  v2 = v5 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_registrar;
  v3 = sub_99310();
  v4 = *(*(v3 - 8) + 8);
  (v4)(v2);
  sub_20C80((v5 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager_observations));
  v4(v5 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager___observationRegistrar, v3);
  return v5;
}

uint64_t sub_2034C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager___observationRegistrar;
  v2 = sub_99310();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_203C0(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_99310();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = __chkstk_darwin(v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + class metadata base offset for KeyPath + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_20A24();
  sub_992D0();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_20530@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_99310();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = __chkstk_darwin(v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + class metadata base offset for KeyPath + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC29BackgroundSecurityImprovement18PreferencesManager___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_20A24();
  v8 = v22;
  sub_992C0();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_207D4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_99FB0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

unint64_t sub_208C0()
{
  v2 = qword_B5150;
  if (!qword_B5150)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5150);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_20924()
{
  v2 = qword_B5158;
  if (!qword_B5158)
  {
    sub_208C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5158);
    return WitnessTable;
  }

  return v2;
}

void *sub_209D0(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_20A24()
{
  v2 = qword_B5160;
  if (!qword_B5160)
  {
    type metadata accessor for PreferencesManager(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5160);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for PreferencesManager(uint64_t a1)
{
  v2 = qword_B5E90;
  if (!qword_B5E90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_20B18()
{
  v2 = qword_B5168;
  if (!qword_B5168)
  {
    sub_99140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20BF8()
{
  v2 = qword_B5178;
  if (!qword_B5178)
  {
    sub_87B4(&qword_B5170, qword_9B318);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5178);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_20CC8(uint64_t a1)
{
  updated = sub_99310();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_21160(unint64_t a1, unint64_t a2)
{
  sub_2183C(a1);
  sub_2183C(a2);
  v15 = a1 >> 62;
  switch(v15)
  {
    case 0:
      if (!(a2 >> 62))
      {
        swift_errorRetain();
        swift_errorRetain();
        sub_218BC();
        swift_errorRetain();
        v10 = sub_99150();
        swift_errorRetain();
        v9 = sub_99150();
        v11 = sub_99E10();
        _objc_release(v9);

        _objc_release(v10);

        sub_109F4(a1);
        sub_109F4(a2);
        v12 = v11;
        return v12 & 1;
      }

      goto LABEL_56;
    case 1:
      if (((a2 >> 62) & 3) == 1)
      {
        swift_errorRetain();
        swift_errorRetain();
        sub_218BC();
        swift_errorRetain();
        v7 = sub_99150();
        swift_errorRetain();
        v6 = sub_99150();
        v8 = sub_99E10();
        _objc_release(v6);

        _objc_release(v7);

        sub_109F4(a1);
        sub_109F4(a2);
        v12 = v8;
        return v12 & 1;
      }

      goto LABEL_56;
    case 2:
      if (((a2 >> 62) & 3) == 2)
      {
        swift_errorRetain();
        swift_errorRetain();
        sub_218BC();
        swift_errorRetain();
        v4 = sub_99150();
        swift_errorRetain();
        v3 = sub_99150();
        v5 = sub_99E10();
        _objc_release(v3);

        _objc_release(v4);

        sub_109F4(a1);
        sub_109F4(a2);
        v12 = v5;
        return v12 & 1;
      }

      goto LABEL_56;
  }

  switch(a1)
  {
    case 0xC000000000000000:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000000)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000000);
      sub_109F4(0xC000000000000000);
      break;
    case 0xC000000000000008:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000008)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000008);
      sub_109F4(0xC000000000000008);
      break;
    case 0xC000000000000010:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000010)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000010);
      sub_109F4(0xC000000000000010);
      break;
    case 0xC000000000000018:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000018)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000018);
      sub_109F4(0xC000000000000018);
      break;
    case 0xC000000000000020:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000020)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000020);
      sub_109F4(0xC000000000000020);
      break;
    case 0xC000000000000028:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000028)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000028);
      sub_109F4(0xC000000000000028);
      break;
    case 0xC000000000000030:
      if (((a2 >> 62) & 3) != 3 || a2 != 0xC000000000000030)
      {
        goto LABEL_56;
      }

      sub_109F4(0xC000000000000030);
      sub_109F4(0xC000000000000030);
      break;
    default:
      if (((a2 >> 62) & 3) == 3 && a2 == 0xC000000000000038)
      {
        sub_109F4(a1);
        sub_109F4(0xC000000000000038);
        break;
      }

LABEL_56:
      sub_109F4(a1);
      sub_109F4(a2);
      v12 = 0;
      return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

unint64_t sub_2183C(unint64_t result)
{
  v1 = result >> 62;
  if (v1 <= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_218BC()
{
  v2 = qword_B52F0;
  if (!qword_B52F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B52F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_21944(void *a1)
{
  if ((HIBYTE(*a1) >> 6) < 3u)
  {
    return HIBYTE(*a1) >> 6;
  }

  else
  {
    return (*a1 >> 3) + 3;
  }
}

uint64_t sub_21974(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7C && *(a1 + 8))
    {
      v5 = *a1 + 124;
    }

    else
    {
      v2 = *a1 & 7 | (*a1 >> 57) & 0x78;
      v3 = 127 - (((4 * v2) | (v2 >> 5)) & 0x7F);
      if (v3 >= 0x7C)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 > 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 - 1) & 0x7F) >> 2) | (32 * (~(a2 - 1) & 0x7F));
      *result = v3 & 7 | (v3 << 57) & 0xF000000000000000;
    }
  }

  return result;
}

unint64_t *sub_21C98(unint64_t *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = ((a2 & 3) << 62) | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

void *sub_21D1C@<X0>(void *a1@<X8>)
{
  v5 = a1;
  v6 = sub_22FC(&qword_B52F8, &unk_9B560);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3[1]);
  v7 = (v3 - v4);
  sub_21DD0(v1, (v3 - v4));
  sub_99400();
  return sub_21EA4(v7);
}

void *sub_21DD0(uint64_t *a1, void *a2)
{
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_99450();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_21EA4(void *a1)
{
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_99450();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_21F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_99450();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = sub_994F0();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_994D0();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_22104(uint64_t a1)
{
  v3 = a1;
  v1 = sub_99450();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_994E0();
}

void *sub_221DC(void *a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_22FC(&qword_B52F8, &unk_9B560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = (v3 - v3[0]);
  sub_21DD0(v1, (v3 - v3[0]));
  sub_22280(v4, v3[1]);
  return sub_21EA4(v5);
}

void *sub_22280(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_2236C(a2);
    v4 = sub_22FC(&qword_B4E00, &unk_9AC70);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_99450();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_2236C(void *a1)
{
  sub_22FC(&qword_B4E00, &unk_9AC70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_99450();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22408()
{
  v1 = v0 + *(type metadata accessor for UpdateAvailableView(0) + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_2B30(*v1, v4 & 1);
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  sub_2B78(v3, v4 & 1);
  return v5;
}

uint64_t type metadata accessor for UpdateAvailableView(uint64_t a1)
{
  v2 = qword_B5FC0;
  if (!qword_B5FC0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_2251C()
{
  swift_getKeyPath();
  sub_99420();
  return v1;
}

void *sub_22558()
{
  v1 = v0 + *(type metadata accessor for UpdateAvailableView(0) + 20);
  v3 = *v1;
  sub_2B30(*v1, *(v1 + 8) & 1);
  return v3;
}

void sub_225A8(void *a1, char a2)
{
  sub_2B30(a1, a2 & 1);
  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_2B78(v4, v5 & 1);
  sub_2B78(a1, a2 & 1);
}

uint64_t sub_2261C()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B50, &qword_9A890);
  sub_99400();

  return v1;
}

uint64_t sub_226B0()
{
  swift_getKeyPath();
  sub_99420();
  return v1;
}

uint64_t sub_226EC()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 24));

  return v2;
}

uint64_t sub_22738(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

uint64_t sub_227EC()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_2287C(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateAvailableView(0) + 28));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_22934()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_229DC()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 28));

  return v2 & 1;
}

uint64_t sub_22A28(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 28);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_22AD8()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_22B68(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateAvailableView(0) + 32));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_22C20()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_22CC8()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 32));

  return v2 & 1;
}

uint64_t sub_22D14(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_22D70(uint64_t a1, uint64_t a2)
{
  sub_22EB0(a1, a2);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_22FC(&qword_B5300, &qword_9B618);
  sub_998D0();
  sub_22EE4(a1, a2);
  return v6;
}

uint64_t sub_22EB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22EE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*sub_22F94())(char a1)
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView(0) + 36));
  v5 = *v1;
  v6 = v1[1];
  sub_230F8(*v1, v6);

  sub_22FC(&qword_B5308, &unk_9B620);
  sub_998E0();
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_231DC;
  }

  else
  {
    v4 = 0;
  }

  sub_2312C(v5, v6);

  return v4;
}

uint64_t sub_230F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2312C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231EC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(type metadata accessor for UpdateAvailableView(0) + 36));
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  sub_230F8(*v3, v7);

  sub_230F8(v6, v7);

  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  sub_22EB0(a1, a2);
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_22FC(&qword_B5308, &unk_9B620);
  sub_998F0();
  sub_23388(v11);
  sub_2312C(v6, v7);

  return sub_22EE4(a1, a2);
}

void *sub_23388(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_2342C()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView(0) + 36));
  v3 = *v1;
  v4 = v1[1];
  sub_230F8(*v1, v4);

  sub_22FC(&qword_B5308, &unk_9B620);
  sub_99900();
  sub_2312C(v3, v4);

  return v5;
}

uint64_t sub_23500()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView(0) + 36));
  v3 = *v1;
  sub_230F8(*v1, v1[1]);

  return v3;
}

uint64_t sub_2355C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230F8(a1, a2);

  v4 = (v3 + *(type metadata accessor for UpdateAvailableView(0) + 36));
  v5 = *v4;
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  sub_2312C(v5, v6);

  sub_2312C(a1, a2);
}

uint64_t sub_235E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3[1] = a2;
  v6 = a1;
  v7 = 0;
  v4 = sub_22FC(&qword_B4E18, &qword_9AC88);
  v3[0] = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v3 - v3[0];
  v7 = __chkstk_darwin(v6);
  sub_236A0(v7, v3 - v3[0]);
  sub_998D0();
  return sub_237D4(v6);
}

void *sub_236A0(const void *a1, void *a2)
{
  v6 = sub_22FC(&qword_B4E08, &unk_9B630);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4E18, &qword_9AC88);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_237D4(uint64_t a1)
{
  v3 = sub_22FC(&qword_B4E08, &unk_9B630);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_23888@<X0>(void *a1@<X8>)
{
  v7 = a1;
  v8 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = &v4 - v5;
  v9 = &v4 - v5;
  updated = type metadata accessor for UpdateAvailableView(0);
  sub_23948((v6 + *(updated + 40)), v1);
  sub_998E0();
  return sub_23AB8(v9);
}

char *sub_23948(char *a1, char *a2)
{
  v8 = sub_22FC(&qword_B4E08, &unk_9B630);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v2 = sub_22FC(&qword_B4E18, &qword_9AC88);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, v8);
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  v4 = *(sub_22FC(&qword_B4E10, &qword_9AC80) + 28);
  v5 = *&a1[v4];

  result = a2;
  *&a2[v4] = v5;
  return result;
}

uint64_t sub_23AB8(uint64_t a1)
{
  v3 = sub_22FC(&qword_B4E08, &unk_9B630);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  sub_22FC(&qword_B4E10, &qword_9AC80);

  return a1;
}

uint64_t sub_23B90(const void *a1)
{
  v12 = a1;
  v1 = sub_22FC(&qword_B4E18, &qword_9AC88);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v10 = &v5 - v6;
  v9 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v2 = &v5 - v7;
  v11 = &v5 - v7;
  updated = type metadata accessor for UpdateAvailableView(0);
  sub_23948((v8 + *(updated + 40)), v2);
  sub_236A0(v12, v10);
  sub_998F0();
  sub_23AB8(v11);
  return sub_237D4(v12);
}

uint64_t sub_23D30@<X0>(void *a1@<X8>)
{
  v7 = a1;
  v8 = sub_22FC(&qword_B4E10, &qword_9AC80);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = &v4 - v5;
  v9 = &v4 - v5;
  updated = type metadata accessor for UpdateAvailableView(0);
  sub_23948((v6 + *(updated + 40)), v1);
  sub_99900();
  return sub_23AB8(v9);
}

uint64_t sub_23E28(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_22FC(&qword_B4E10, &qword_9AC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_23948(v2, &v5 - v6);
  updated = type metadata accessor for UpdateAvailableView(0);
  sub_23ED8(v7, (v1 + *(updated + 40)));
  return sub_23AB8(v8);
}

char *sub_23ED8(char *a1, char *a2)
{
  v8 = sub_22FC(&qword_B4E08, &unk_9B630);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if ((v10)(a2, 1))
  {
    if (v10(a1, 1, v8))
    {
      v3 = sub_22FC(&qword_B4E18, &qword_9AC88);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, v8);
      (*(v9 + 56))(a2, 0, 1, v8);
    }
  }

  else if (v10(a1, 1, v8))
  {
    (*(v9 + 8))(a2, v8);
    v2 = sub_22FC(&qword_B4E18, &qword_9AC88);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, v8);
  }

  v4 = sub_22FC(&qword_B4E10, &qword_9AC80);
  *&a2[*(v4 + 28)] = *&a1[*(v4 + 28)];

  return a2;
}

uint64_t sub_24198()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_24228(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateAvailableView(0) + 44));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_242E0()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_24388()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 44));

  return v2 & 1;
}

uint64_t sub_243D4(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 44);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_24484()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_24514(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateAvailableView(0) + 48));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_245CC()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_24674()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 48));

  return v2 & 1;
}

uint64_t sub_246C0(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 48);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_24770()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_24800(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateAvailableView(0) + 52));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_248B8()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_24960()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 52));

  return v2 & 1;
}

uint64_t sub_249AC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_24A5C()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998E0();

  return v1 & 1;
}

uint64_t sub_24AEC(char a1)
{
  v2 = (v1 + *(type metadata accessor for UpdateAvailableView(0) + 56));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_998F0();
  sub_352C(v6);
}

uint64_t sub_24BA4()
{
  type metadata accessor for UpdateAvailableView(0);

  sub_22FC(&qword_B4B60, &qword_9A8D0);
  sub_99900();

  return v1;
}

uint64_t sub_24C4C()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 56));

  return v2 & 1;
}

uint64_t sub_24C98(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for UpdateAvailableView(0) + 56);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_24CF4(uint64_t a1, uint64_t a2)
{
  sub_24E34(a1, a2);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_22FC(&qword_B5310, &qword_9B640);
  sub_998D0();
  sub_8F94(a1, a2);
  return v6;
}

uint64_t sub_24E34(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*sub_24EDC())()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView(0) + 60));
  v5 = *v1;
  v6 = v1[1];
  sub_25040(*v1, v6);

  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998E0();
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_25110;
  }

  else
  {
    v4 = 0;
  }

  sub_25074(v5, v6);

  return v4;
}

uint64_t sub_25040(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25074(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2511C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(type metadata accessor for UpdateAvailableView(0) + 60));
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  sub_25040(*v3, v7);

  sub_25040(v6, v7);

  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  sub_24E34(a1, a2);
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_22FC(&qword_B5318, &qword_9B648);
  sub_998F0();
  sub_252B8(v11);
  sub_25074(v6, v7);

  return sub_8F94(a1, a2);
}

void *sub_252B8(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_2535C()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView(0) + 60));
  v3 = *v1;
  v4 = v1[1];
  sub_25040(*v1, v4);

  sub_22FC(&qword_B5318, &qword_9B648);
  sub_99900();
  sub_25074(v3, v4);

  return v5;
}

uint64_t sub_25430()
{
  v1 = (v0 + *(type metadata accessor for UpdateAvailableView(0) + 60));
  v3 = *v1;
  sub_25040(*v1, v1[1]);

  return v3;
}

uint64_t sub_2548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25040(a1, a2);

  v4 = (v3 + *(type metadata accessor for UpdateAvailableView(0) + 60));
  v5 = *v4;
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  sub_25074(v5, v6);

  sub_25074(a1, a2);
}

void *sub_25518()
{
  v2 = *(v0 + *(type metadata accessor for UpdateAvailableView(0) + 64));
  _objc_retain(v2);
  return v2;
}

uint64_t sub_25584@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v12 = sub_26AF0;
  v23 = sub_28248;
  v31 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v50 = 0;
  v49 = 0;
  updated = type metadata accessor for UpdateAvailableView(0);
  v5 = *(updated - 8);
  v19 = v5;
  v20 = *(v5 + 64);
  v6 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(updated);
  v22 = &v5 - v6;
  v27 = sub_22FC(&qword_B5320, &qword_9B650);
  v7 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v26 = &v5 - v7;
  v38 = sub_22FC(&qword_B5328, &qword_9B658);
  v32 = *(v38 - 8);
  v33 = v38 - 8;
  v8 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v36 = &v5 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v8);
  v37 = &v5 - v9;
  v50 = &v5 - v9;
  v49 = v1;
  v10 = &v41;
  v42 = v1;
  v11 = sub_22FC(&qword_B5330, &qword_9B660);
  sub_26AF8();
  sub_998B0();
  v3 = v1 + *(updated + 20);
  v14 = *v3;
  v15 = *(v3 + 8);
  sub_2B30(v14, v15 & 1);
  v47[2] = v14;
  v48 = v15 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v16 = v47[1];
  sub_2B78(v14, v15 & 1);
  v17 = sub_4E140();
  _objc_release(v16);
  v25 = v47;
  v47[0] = v17;
  sub_10D38(v18, v22);
  v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = swift_allocObject();
  sub_27ED8(v22, (v24 + v21));
  v29 = sub_28878();
  v30 = sub_28910();
  v28 = &unk_AD520;
  sub_2885C();
  sub_99860();

  sub_28988(v25);
  sub_289B4(v26);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_71A0(v36, v38, v37);
  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v40(v36, v38);
  (*(v32 + 16))(v36, v37, v38);
  sub_8408(v36, v38, v34);
  v40(v36, v38);
  return (v40)(v37, v38);
}

uint64_t sub_25AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v94 = a1;
  v51 = &opaque type descriptor for <<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>;
  v52 = &opaque type descriptor for <<opaque return type of View.alert<A, B, C>(_:isPresented:actions:message:)>>;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v102 = 0;
  v100 = 0;
  v53 = sub_22FC(&qword_B5410, &qword_9B6F0);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v57 = &v19 - v56;
  v58 = sub_22FC(&qword_B53C8, &qword_9B6A8);
  v59 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v60 = &v19 - v59;
  v61 = sub_22FC(&qword_B53B8, &qword_9B6A0);
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v63 = &v19 - v62;
  v64 = sub_22FC(&qword_B53A8, &qword_9B698);
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v66 = &v19 - v65;
  v67 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v65);
  v68 = &v19 - v67;
  v69 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v67);
  v70 = &v19 - v69;
  v109 = &v19 - v69;
  v71 = sub_22FC(&qword_B5388, &qword_9B688);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v73 = &v19 - v72;
  v74 = sub_22FC(&qword_B5378, &qword_9B680);
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v76 = &v19 - v75;
  v77 = sub_22FC(&qword_B5368, &qword_9B678);
  v78 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v79 = &v19 - v78;
  v80 = sub_22FC(&qword_B5358, &qword_9B670);
  v81 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v82 = &v19 - v81;
  v83 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v81);
  v84 = &v19 - v83;
  v85 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v19 - v83);
  v86 = &v19 - v85;
  v108 = &v19 - v85;
  v87 = sub_22FC(&qword_B5330, &qword_9B660);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v94);
  v89 = &v19 - v88;
  v90 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v91 = &v19 - v90;
  v92 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v93 = &v19 - v92;
  v107 = &v19 - v92;
  v106 = v10;
  updated = type metadata accessor for UpdateAvailableView(0);
  v11 = v94 + *(updated + 20);
  v96 = *v11;
  v97 = *(v11 + 8);
  sub_2B30(v96, v97 & 1);
  v104[2] = v96;
  v105 = v97 & 1;
  sub_22FC(&qword_B4B48, &qword_9ACC0);
  sub_99400();
  v98 = v104[1];
  sub_2B78(v96, v97 & 1);
  v99 = sub_4D884();
  _objc_release(v98);
  if (v99)
  {
    sub_272FC(v99);
    v42 = sub_99660();
    sub_26E28();
    v43 = 0;
    sub_99830();
    sub_4A0D4(v73);
    v44 = sub_99620();
    sub_26D84();
    sub_99830();
    sub_4A21C(v76);
    v12 = sub_99890();
    v48 = &v101;
    v101 = v12;
    v46 = sub_26CE0();
    v45 = &type metadata for Color;
    v47 = &protocol witness table for Color;
    sub_27390(v77, &type metadata for Color);
    sub_99760();
    sub_49E70(v48);
    sub_4A364(v79);
    v49 = sub_26C38();
    sub_71A0(v84, v80, v86);
    sub_4A4AC(v84);
    v100 = v84;
    sub_4A61C(v86, v82);
    sub_8408(v82, v80, v84);
    sub_4A4AC(v82);
    sub_4A61C(v84, v82);
    v13 = sub_26F38();
    sub_18978(v82, v80, v64, v49, v13, v89);
    sub_4A4AC(v82);
    v41 = sub_22FC(&qword_B5348, &qword_9B668);
    (*(*(v41 - 8) + 56))(v89, 0, 1);
    sub_26B90();
    sub_846C(v89, v41, v91);
    sub_49210(v89);
    sub_49468(v91, v93);
    sub_4A4AC(v84);
    sub_4A4AC(v86);
  }

  else
  {
    v40 = *(v94 + *(updated + 64));
    _objc_retain(v40);
    v104[0] = v40;
    v39 = v40 != 0;
    v38 = v39;
    sub_127E0(v104);
    if (v38)
    {
      sub_273B8(v57);
      v30 = sub_99660();
      v25 = sub_87B4(&qword_B53D0, &unk_9B6B0);
      v26 = sub_87B4(&qword_B4C38, &qword_9A950);
      v22 = sub_87B4(&qword_B53D8, &unk_9B6C0);
      v23 = sub_87B4(&qword_B4CB0, &qword_9A998);
      v24 = sub_27274();
      v28 = sub_CE78();
      v14 = sub_DCAC();
      v103[9] = v22;
      v103[10] = v26;
      v103[11] = v23;
      v103[12] = v24;
      v103[13] = v28;
      v103[14] = v14;
      v29 = 1;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v15 = sub_CE00();
      v103[1] = v25;
      v103[2] = &type metadata for String;
      v103[3] = v26;
      v103[4] = &type metadata for Text;
      v103[5] = OpaqueTypeConformance2;
      v103[6] = v15;
      v103[7] = v28;
      v103[8] = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v31 = 0;
      sub_99830();
      (*(v54 + 8))(v57, v53);
      v32 = sub_99620();
      sub_27084();
      sub_99830();
      sub_49E08(v60);
      v16 = sub_99890();
      v36 = v103;
      v103[0] = v16;
      v34 = sub_26FE0();
      v33 = &type metadata for Color;
      v35 = &protocol witness table for Color;
      sub_27390(v61, &type metadata for Color);
      sub_99760();
      sub_49E70(v36);
      sub_49E9C(v63);
      v37 = sub_26F38();
      sub_71A0(v68, v64, v70);
      sub_49F04(v68);
      v102 = v68;
      sub_49F94(v70, v66);
      sub_8408(v66, v64, v68);
      sub_49F04(v66);
      sub_49F94(v68, v66);
      v17 = sub_26C38();
      sub_18A88(v66, v80, v64, v17, v37, v89);
      sub_49F04(v66);
      v21 = sub_22FC(&qword_B5348, &qword_9B668);
      (*(*(v21 - 8) + 56))(v89, 0, 1);
      sub_26B90();
      sub_846C(v89, v21, v91);
      sub_49210(v89);
      sub_49468(v91, v93);
      sub_49F04(v68);
      sub_49F04(v70);
    }

    else
    {
      v20 = sub_22FC(&qword_B5348, &qword_9B668);
      (*(*(v20 - 8) + 56))(v89, 1);
      sub_26B90();
      sub_846C(v89, v20, v91);
      sub_49210(v89);
      sub_49468(v91, v93);
    }
  }

  sub_498B4(v93, v91);
  sub_26AF8();
  sub_8408(v91, v87, v50);
  sub_49210(v91);
  return sub_49210(v93);
}