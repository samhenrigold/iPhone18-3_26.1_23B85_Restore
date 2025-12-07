uint64_t sub_6AE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(__chkstk_darwin(v4 - 8) + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v8 = v23[0];
  v9 = v23[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v10 = v23[0];
  sub_2A5C4(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v23);
  sub_68C84(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_68CF8(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = sub_38BFC(v23, v23[3]);
  __chkstk_darwin(v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v21 = type metadata accessor for MSRepositoryDefault();
  v22 = &off_1188F0;
  *&v20 = v17;
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v10;
  sub_38BDC(&v20, (v18 + 5));
  v18[10] = sub_72694;
  v18[11] = v12;
  result = sub_67D4(v23);
  *a2 = sub_72764;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_6B0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v8 == a1 && v9 == a2)
  {
  }

  v6 = sub_D6C20();

  if ((v6 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_D5580();
    return sub_60618();
  }

  return result;
}

uint64_t sub_6B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = sub_66D4(&qword_126660, &qword_DEE18);
  sub_6B904(a2 + *(v7 + 44));
  sub_68C84(a1, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_68CF8(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = sub_66D4(&qword_126648, &qword_DEDB8);
  v11 = (a2 + *(result + 36));
  *v11 = sub_72EB0;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_6B35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(__chkstk_darwin(v4 - 8) + 32) + 8);
  v8 = *(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_account);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_D5570();

  v9 = v19[0];
  sub_2A5C4(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v19);
  v10 = *(v7 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxAliasCountAllowed);
  sub_68C84(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_68CF8(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v18 = 0;
  sub_D6200();
  v13 = *(&v17[0] + 1);
  *(a2 + 24) = v17[0];
  *(a2 + 32) = v13;
  sub_2A5C4(v19, a2 + 56);
  *(a2 + 40) = sub_72EC4;
  *(a2 + 48) = v12;
  sub_38BDC(v19, v17);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  result = sub_38BDC(v17, v14 + 40);
  *(v14 + 80) = v10;
  *a2 = sub_729B8;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  return result;
}

double sub_6B584@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_6B64C(&v7);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v12 = v7;
  v13 = v8;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v11;
  v17[0] = v7;
  v17[1] = v8;
  sub_FBD4(&v12, &v6, &qword_1265E0, &qword_DEC58);
  sub_FC3C(v17, &qword_1265E0, &qword_DEC58);
  v3 = v12;
  *(a2 + 40) = v13;
  v4 = v15;
  *(a2 + 56) = v14;
  *(a2 + 72) = v4;
  result = *&v16;
  *(a2 + 88) = v16;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_6B64C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v28._countAndFlagsBits = 0x4553534552444441;
  v28._object = 0xE900000000000053;
  sub_D66D0(v28);
  v29._countAndFlagsBits = 2777980912;
  v29._object = 0xA400000000000000;
  sub_D66D0(v29);
  v32._countAndFlagsBits = 2777980912;
  v23._countAndFlagsBits = 0xE000000000000000;
  v30._countAndFlagsBits = 0x4553534552444441;
  v30._object = 0xE900000000000053;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v5.super.isa = v4;
  v32._object = 0xA400000000000000;
  v6 = sub_D4E80(v30, v31, v5, v32, 0, v23);

  sub_DFAC();
  v7 = sub_D5F50();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  sub_2A2C8(v6);
  v11 = sub_D5F50();
  v13 = v12;
  v15 = v14;
  sub_D61B0();
  v16 = sub_D5F00();
  v18 = v17;
  LOBYTE(v6) = v19;
  v21 = v20;

  sub_F16C(v11, v13, v15 & 1);

  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v16;
  *(a2 + 56) = v18;
  *(a2 + 64) = v6 & 1;
  *(a2 + 72) = v21;
  sub_166E0(v26, v25, v24 & 1);

  sub_166E0(v16, v18, v6 & 1);

  sub_F16C(v16, v18, v6 & 1);

  sub_F16C(v26, v25, v24 & 1);
}

uint64_t sub_6B904@<X0>(uint64_t a2@<X8>)
{
  v45 = sub_66D4(&qword_126698, &qword_DEFA0) - 8;
  v3 = __chkstk_darwin(v45);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  v49._countAndFlagsBits = 0x5F544C5541464544;
  v49._object = 0xED00004C49414D45;
  sub_D66D0(v49);
  v50._countAndFlagsBits = 2777980912;
  v50._object = 0xA400000000000000;
  sub_D66D0(v50);
  v37._countAndFlagsBits = 0xE000000000000000;
  v51._countAndFlagsBits = 0x5F544C5541464544;
  v51._object = 0xED00004C49414D45;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v9.super.isa = v8;
  v10 = sub_D4E80(v51, v52, v9, v48, 0, v37);
  v12 = v11;

  v48._countAndFlagsBits = v10;
  v48._object = v12;
  sub_DFAC();
  v13 = sub_D5F50();
  v40 = v14;
  v41 = v13;
  v42 = v15;
  v43 = v16;
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v17 = sub_D5F50();
  v19 = v18;
  LOBYTE(ObjCClassFromMetadata) = v20;
  v39 = v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = ObjCClassFromMetadata & 1;
  v47 = ObjCClassFromMetadata & 1;
  v46 = 0;
  v25 = &v6[*(sub_66D4(&qword_1266A0, &qword_E32E0) + 36)];
  v26 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v27 = enum case for Text.TruncationMode.tail(_:);
  v28 = sub_D5EF0();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  *v6 = v17;
  *(v6 + 1) = v19;
  v6[16] = v24;
  *(v6 + 17) = v48._countAndFlagsBits;
  *(v6 + 5) = *(&v48._countAndFlagsBits + 3);
  *(v6 + 3) = v39;
  *(v6 + 4) = KeyPath;
  *(v6 + 5) = 0x3FE6666666666666;
  *(v6 + 6) = v23;
  *(v6 + 7) = 1;
  v6[64] = 0;
  v29 = sub_D61B0();
  v30 = swift_getKeyPath();
  v31 = v44;
  v32 = &v6[*(v45 + 44)];
  *v32 = v30;
  v32[1] = v29;
  sub_FBD4(v6, v31, &qword_126698, &qword_DEFA0);
  v34 = v40;
  v33 = v41;
  *a2 = v41;
  *(a2 + 8) = v34;
  LOBYTE(v29) = v42 & 1;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v35 = sub_66D4(&qword_1266A8, &qword_DF068);
  sub_FBD4(v31, a2 + *(v35 + 64), &qword_126698, &qword_DEFA0);
  sub_166E0(v33, v34, v29);

  sub_FC3C(v6, &qword_126698, &qword_DEFA0);
  sub_FC3C(v31, &qword_126698, &qword_DEFA0);
  sub_F16C(v33, v34, v29);
}

uint64_t sub_6BD18(uint64_t a1)
{
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v2 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_D5580();
  }

  return result;
}

uint64_t sub_6BE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v107 = sub_66D4(&qword_126458, &qword_DE9F8);
  v103 = *(v107 - 8);
  __chkstk_darwin(v107);
  v89 = &v86 - v3;
  v4 = sub_D51D0();
  v101 = *(v4 - 8);
  v102 = v4;
  __chkstk_darwin(v4);
  v100 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_126530, &qword_DEB80);
  v7 = __chkstk_darwin(v6 - 8);
  v112 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v115 = &v86 - v9;
  v10 = sub_66D4(&qword_126538, &qword_DEB88);
  v98 = *(v10 - 8);
  v99 = v10;
  __chkstk_darwin(v10);
  v88 = &v86 - v11;
  v12 = sub_66D4(&qword_126540, &qword_DEB90);
  v13 = __chkstk_darwin(v12 - 8);
  v111 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v86 - v15;
  v16 = type metadata accessor for MAPreferencesView(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_66D4(&qword_126548, &qword_DEB98);
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  v96 = sub_66D4(&qword_126550, &qword_DEBA0);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v86 - v24;
  v25 = sub_66D4(&qword_126558, &qword_DEBA8);
  v26 = __chkstk_darwin(v25 - 8);
  v109 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v86 - v28;
  v30 = a1 + *(v17 + 32);
  v31 = sub_61364(&off_113908);
  v113 = v20;
  v114 = v29;
  v108 = v19;
  v97 = v18;
  v90 = v30;
  v105 = a1;
  v87 = v21;
  if (v31)
  {
    sub_68C84(a1, &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v106 = v23;
    v32 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v33 = swift_allocObject();
    v34 = sub_68CF8(&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    __chkstk_darwin(v34);
    sub_66D4(&qword_126588, &qword_DEBC8);
    sub_71ACC();
    sub_D6260();
    *(v106 + *(v21 + 36)) = sub_D5CA0();
    _s9ViewModelCMa_3(0);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    sub_68C84(a1, v113);
    v35 = swift_allocObject();
    sub_68CF8(v113, v35 + v32);
    type metadata accessor for MSAutoReplyView(0);
    sub_71BEC();
    sub_72C3C(&qword_1265C8, type metadata accessor for MSAutoReplyView, &unk_E0E00);
    v36 = v114;
    v37 = v94;
    sub_D60F0();
    v18 = v97;

    v23 = v106;

    v20 = v113;

    sub_FC3C(v23, &qword_126548, &qword_DEB98);
    v38 = v95;
    v39 = v37;
    v40 = v96;
    (*(v95 + 32))(v36, v39, v96);
    (*(v38 + 56))(v36, 0, 1, v40);
  }

  else
  {
    (*(v95 + 56))(v29, 1, 1, v96);
  }

  if (sub_61364(&off_113930))
  {
    if (sub_61364(&off_113958))
    {
      v96 = 0;
      v106 = 0;
      v95 = 0;
      v91 = 0;
      v94 = 0;
      v92 = 0;
      v93 = 0;
    }

    else
    {
      _s9ViewModelCMa_3(0);
      sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
      sub_D5870();
      swift_getKeyPath();
      sub_D5880();

      v41 = v116;
      v106 = v117;
      v95 = v118;
      v42 = v18;
      v43 = v105;
      sub_68C84(v105, v20);
      v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v45 = swift_allocObject();
      sub_68CF8(v20, v45 + v44);
      v46 = v43;
      v18 = v42;
      sub_68C84(v46, v20);
      v47 = swift_allocObject();
      sub_68CF8(v20, v47 + v44);
      v96 = v41;

      v94 = v45;

      v93 = v47;

      v92 = sub_72EC0;
      v91 = sub_72EBC;
    }
  }

  else
  {
    v96 = 0;
    v95 = 0;
    v91 = 0;
    v94 = 0;
    v92 = 0;
    v93 = 0;
    v106 = 1;
  }

  if (sub_61364(&off_113980))
  {
    v48 = v18;
    v49 = v105;
    sub_68C84(v105, v20);
    v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v51 = swift_allocObject();
    v52 = sub_68CF8(v20, v51 + v50);
    __chkstk_darwin(v52);
    sub_66D4(&qword_126588, &qword_DEBC8);
    sub_71ACC();
    sub_D6260();
    *&v23[*(v87 + 36)] = sub_D5CA0();
    _s9ViewModelCMa_3(0);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v53 = v49;
    v54 = v113;
    sub_68C84(v53, v113);
    v55 = swift_allocObject();
    sub_68CF8(v54, v55 + v50);
    type metadata accessor for MailForwadingView(0);
    sub_71BEC();
    sub_72C3C(&qword_1265C0, type metadata accessor for MailForwadingView, &unk_E2B88);
    v56 = v88;
    sub_D60F0();

    sub_FC3C(v23, &qword_126548, &qword_DEB98);
    v57 = v98;
    v58 = v110;
    v59 = v56;
    v60 = v99;
    (*(v98 + 32))(v110, v59, v99);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v58 = v110;
    v57 = v98;
    v60 = v99;
  }

  v62 = 1;
  (*(v57 + 56))(v58, v61, 1, v60);
  v64 = v100;
  v63 = v101;
  v65 = v102;
  (*(v101 + 104))(v100, enum case for iCloudMailSettingsFeatureFlag.mailboxBehavior(_:), v102);
  v66 = sub_D51C0();
  (*(v63 + 8))(v64, v65);
  if (v66)
  {
    v67 = v113;
    sub_68C84(v105, v113);
    v68 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v69 = swift_allocObject();
    sub_68CF8(v67, v69 + v68);
    sub_66D4(&qword_126568, &qword_DEBB8);
    sub_719D0();
    v70 = v89;
    sub_D6260();
    *(v70 + *(v107 + 36)) = sub_D5CA0();
    sub_FEA4(v70, v115, &qword_126458, &qword_DE9F8);
    v62 = 0;
  }

  v71 = v115;
  (*(v103 + 56))(v115, v62, 1, v107);
  v72 = v109;
  sub_FBD4(v114, v109, &qword_126558, &qword_DEBA8);
  v73 = v111;
  sub_FBD4(v58, v111, &qword_126540, &qword_DEB90);
  sub_FBD4(v71, v112, &qword_126530, &qword_DEB80);
  v74 = v104;
  sub_FBD4(v72, v104, &qword_126558, &qword_DEBA8);
  v75 = sub_66D4(&qword_126560, &qword_DEBB0);
  v76 = (v74 + v75[12]);
  v77 = v96;
  v78 = v106;
  *v76 = v96;
  v76[1] = v78;
  v79 = v95;
  v80 = v91;
  v76[2] = v95;
  v76[3] = v80;
  v81 = v94;
  v82 = v92;
  v76[4] = v94;
  v76[5] = v82;
  v83 = v93;
  v76[6] = v93;
  sub_FBD4(v73, v74 + v75[16], &qword_126540, &qword_DEB90);
  v84 = v112;
  sub_FBD4(v112, v74 + v75[20], &qword_126530, &qword_DEB80);
  sub_71970(v77, v78, v79, v80, v81, v82, v83);
  sub_71994(v77, v78, v79, v80, v81, v82, v83);
  sub_FC3C(v115, &qword_126530, &qword_DEB80);
  sub_FC3C(v110, &qword_126540, &qword_DEB90);
  sub_FC3C(v114, &qword_126558, &qword_DEBA8);
  sub_FC3C(v84, &qword_126530, &qword_DEB80);
  sub_FC3C(v111, &qword_126540, &qword_DEB90);
  sub_71994(v77, v78, v79, v80, v81, v82, v83);
  return sub_FC3C(v109, &qword_126558, &qword_DEBA8);
}

uint64_t sub_6CE90@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v39._countAndFlagsBits = 0x5045522D4F545541;
  v39._object = 0xEA0000000000594CLL;
  sub_D66D0(v39);
  v40._countAndFlagsBits = 2777980912;
  v40._object = 0xA400000000000000;
  sub_D66D0(v40);
  v47._countAndFlagsBits = 2777980912;
  v26._countAndFlagsBits = 0xE000000000000000;
  v41._countAndFlagsBits = 0x5045522D4F545541;
  v41._object = 0xEA0000000000594CLL;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v6.super.isa = v5;
  v47._object = 0xA400000000000000;
  sub_D4E80(v41, v45, v6, v47, 0, v26);

  sub_DFAC();
  v7 = sub_D5F50();
  v29 = v8;
  v30 = v7;
  v28 = v9;
  v31 = v10;
  type metadata accessor for MAPreferencesView(0);

  sub_D54F0();

  if (v34 == 1)
  {
    sub_31650(v32, v33, 1, v35, v36, v37, v38);
    v11 = [v4 bundleForClass:ObjCClassFromMetadata];
    v42._object = 0x80000000000E7700;
    v42._countAndFlagsBits = 0xD000000000000018;
    sub_D66D0(v42);
    v43._countAndFlagsBits = 2777980912;
    v43._object = 0xA400000000000000;
    sub_D66D0(v43);
    v48._countAndFlagsBits = 2777980912;
    v27._countAndFlagsBits = 0xE000000000000000;
    v44._object = 0x80000000000E7700;
    v44._countAndFlagsBits = 0xD000000000000018;
    v46.value._countAndFlagsBits = 0;
    v46.value._object = 0;
    v12.super.isa = v11;
    v48._object = 0xA400000000000000;
    sub_D4E80(v44, v46, v12, v48, 0, v27);
  }

  else
  {

    sub_31650(v32, v33, v34, v35, v36, v37, v38);
    sub_2DE30();
    sub_31650(v32, v33, v34, v35, v36, v37, v38);
  }

  v13 = sub_D5F50();
  v15 = v14;
  v17 = v16;
  sub_D61B0();
  v18 = sub_D5F00();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_F16C(v13, v15, v17 & 1);

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v22 & 1;
  *(a2 + 72) = v24;
  sub_166E0(v30, v29, v28 & 1);

  sub_166E0(v18, v20, v22 & 1);

  sub_F16C(v18, v20, v22 & 1);

  sub_F16C(v30, v29, v28 & 1);
}

uint64_t sub_6D2A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_D5220();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAPreferencesView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = *(a1 + *(__chkstk_darwin(v8 - 8) + 32) + 8);
  v12 = *(v11 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply);
  sub_2A5C4(v11 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v22);
  sub_68C84(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_68CF8(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *a2 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for MSAutoReplyView(0);
  v16 = v15[7];
  (*(v5 + 104))(v7, enum case for Solarium.main(_:), v4);

  LOBYTE(v10) = sub_D5210();
  (*(v5 + 8))(v7, v4);
  *(a2 + v16) = v10 & 1;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  result = sub_38BDC(v22, v17 + 24);
  v19 = a2 + v15[5];
  *v19 = sub_71EA4;
  *(v19 + 1) = v17;
  v19[16] = 0;
  v20 = (a2 + v15[6]);
  *v20 = sub_71E60;
  v20[1] = v14;
  return result;
}

uint64_t sub_6D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_6D5D4@<X0>(uint64_t a3@<X8>)
{
  sub_66D4(&qword_1265D0, &qword_DEC50);
  sub_109A8(&qword_1265D8, &qword_1265D0, &qword_DEC50, &protocol conformance descriptor for HStack<A>);
  sub_D5810();
  result = sub_66D4(&qword_126588, &qword_DEBC8);
  *(a3 + *(result + 36)) = 0;
  return result;
}

double sub_6D6A0@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D5B40();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_FBD4(&v19, &v11, &qword_1265E0, &qword_DEC58);
  sub_FC3C(v24, &qword_1265E0, &qword_DEC58);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_6D7B0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v52._countAndFlagsBits = 0x524F465F4C49414DLL;
  v52._object = 0xEF474E4944524157;
  sub_D66D0(v52);
  v53._countAndFlagsBits = 2777980912;
  v53._object = 0xA400000000000000;
  sub_D66D0(v53);
  v61._countAndFlagsBits = 2777980912;
  v35._countAndFlagsBits = 0xE000000000000000;
  v54._countAndFlagsBits = 0x524F465F4C49414DLL;
  v54._object = 0xEF474E4944524157;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v6.super.isa = v5;
  v61._object = 0xA400000000000000;
  v7 = sub_D4E80(v54, v59, v6, v61, 0, v35);
  v9 = v8;

  *&v41 = v7;
  *(&v41 + 1) = v9;
  sub_DFAC();
  v10 = sub_D5F50();
  v38 = v11;
  v39 = v10;
  v37 = v12;
  v40 = v13;
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v51[0] = *(&v41 + 1);
  *(v51 + 7) = v9;
  v47 = v43;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  if (v42 == 1)
  {
    v43 = v47;
    v44 = v48;
    v45 = v49;
    v46 = v50;
    LOBYTE(v41) = v7;
    *(&v41 + 1) = v51[0];
    *(&v41 + 1) = *(v51 + 7);
    v42 = 1;
    sub_FC3C(&v41, &qword_125930, &unk_DFB90);
LABEL_6:
    v14 = [v4 bundleForClass:ObjCClassFromMetadata];
    *&v41 = 2777980912;
    *(&v41 + 1) = 0xA400000000000000;
    v57._countAndFlagsBits = 4605519;
    v57._object = 0xE300000000000000;
    sub_D66D0(v57);
    v58._countAndFlagsBits = 2777980912;
    v58._object = 0xA400000000000000;
    sub_D66D0(v58);
    v16 = *(&v41 + 1);
    v15._countAndFlagsBits = v41;
    v36._countAndFlagsBits = 0xE000000000000000;
    v17._countAndFlagsBits = 4605519;
    v17._object = 0xE300000000000000;
    goto LABEL_7;
  }

  LOBYTE(v41) = v7;
  *(&v41 + 1) = v51[0];
  *(&v41 + 1) = *(v51 + 7);
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  sub_FC3C(&v41, &qword_125930, &unk_DFB90);
  if (v7 == 2 || (v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = [v4 bundleForClass:ObjCClassFromMetadata];
  v55._countAndFlagsBits = 20047;
  v55._object = 0xE200000000000000;
  sub_D66D0(v55);
  v56._countAndFlagsBits = 2777980912;
  v56._object = 0xA400000000000000;
  sub_D66D0(v56);
  v15._countAndFlagsBits = 2777980912;
  v16 = 0xA400000000000000;
  v36._countAndFlagsBits = 0xE000000000000000;
  v17._countAndFlagsBits = 20047;
  v17._object = 0xE200000000000000;
LABEL_7:
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v18.super.isa = v14;
  v15._object = v16;
  v19 = sub_D4E80(v17, v60, v18, v15, 0, v36);
  v21 = v20;

  *&v41 = v19;
  *(&v41 + 1) = v21;
  v22 = sub_D5F50();
  v24 = v23;
  v26 = v25;
  sub_D61B0();
  v27 = sub_D5F00();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_F16C(v22, v24, v26 & 1);

  LOBYTE(v41) = v37 & 1;
  LOBYTE(v47) = v37 & 1;
  LOBYTE(v51[0]) = v31 & 1;
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v27;
  *(a2 + 56) = v29;
  *(a2 + 64) = v31 & 1;
  *(a2 + 72) = v33;
  sub_166E0(v39, v38, v37 & 1);

  sub_166E0(v27, v29, v31 & 1);

  sub_F16C(v27, v29, v31 & 1);

  sub_F16C(v39, v38, v41);
}

uint64_t sub_6DC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D5220();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAPreferencesView(0);
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  v10 = *(a1 + *(__chkstk_darwin(v8 - 8) + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v28 = v23[3];
  v29 = v23[4];
  v30 = v24;
  v25 = v23[0];
  v26 = v23[1];
  v27 = v23[2];
  sub_2A5C4(v10 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v23);
  sub_68C84(a1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v12 = swift_allocObject();
  sub_68CF8(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = type metadata accessor for MailForwadingView(0);
  v14 = v13[5];
  *(a2 + v14) = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v15 = v13[7];
  (*(v5 + 104))(v7, enum case for Solarium.main(_:), v4);
  LOBYTE(v14) = sub_D5210();
  (*(v5 + 8))(v7, v4);
  *(a2 + v15) = v14 & 1;
  v16 = (a2 + v13[6]);
  *v16 = sub_72EC4;
  v16[1] = v12;
  v17 = swift_allocObject();
  v18 = v28;
  v19 = v29;
  *(v17 + 48) = v27;
  *(v17 + 64) = v18;
  *(v17 + 80) = v19;
  *(v17 + 96) = v30;
  v20 = v26;
  *(v17 + 16) = v25;
  *(v17 + 32) = v20;
  result = sub_38BDC(v23, v17 + 104);
  *a2 = sub_71F50;
  *(a2 + 8) = v17;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_6DF9C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E6C80;
  v10._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E6C80;
  v12._countAndFlagsBits = 0xD000000000000011;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, 0, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_6E0C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for MAPreferencesView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  v6 = sub_66D4(&qword_126518, &qword_DEAA0);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = __chkstk_darwin(v6);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;

  v11 = v10;
  sub_D52A0();

  v12 = sub_61364(&off_1139A8);
  v43 = 0;
  v44 = 0;
  v13 = 0;
  v14 = 0;
  v42 = 0;
  v15 = 0;
  v16 = 0;
  if (v12)
  {
    _s9ViewModelCMa_3(0);
    sub_72C3C(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);
    sub_D5870();
    swift_getKeyPath();
    sub_D5880();

    v17 = v4;
    v18 = v46;
    v19 = v47;
    v13 = v48;
    v20 = v36;
    sub_68C84(a1, v36);
    v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v22 = swift_allocObject();
    sub_68CF8(v20, v22 + v21);
    sub_68C84(a1, v20);
    v16 = swift_allocObject();
    sub_68CF8(v20, v16 + v21);
    v44 = v18;

    v43 = v19;

    v42 = v22;

    v15 = sub_71824;
    v14 = sub_7180C;
  }

  v23 = v39;
  v24 = *(v39 + 16);
  v25 = v45;
  v38 = v11;
  v26 = v11;
  v27 = v40;
  v24(v45, v26, v40);
  v28 = v41;
  v24(v41, v25, v27);
  v29 = &v28[*(sub_66D4(&qword_126520, &qword_DEAA8) + 48)];
  v31 = v43;
  v30 = v44;
  v32 = v42;
  sub_7233C(v44, v43, v13, v14, v42, v15, v16);
  sub_7239C(v30, v31, v13, v14, v32, v15, v16);
  *v29 = v30;
  v29[1] = v31;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v32;
  v29[5] = v15;
  v29[6] = v16;
  v33 = *(v23 + 8);
  v33(v38, v27);
  sub_7239C(v30, v31, v13, v14, v32, v15, v16);
  return (v33)(v45, v27);
}

uint64_t sub_6E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v27 = a2;
  v2 = type metadata accessor for MAPreferencesView(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v26 = sub_66D4(&qword_126458, &qword_DE9F8);
  __chkstk_darwin(v26);
  v5 = &v21 - v4;
  v24 = sub_66D4(&qword_126638, &qword_DED68);
  __chkstk_darwin(v24);
  v7 = &v21 - v6;
  v25 = sub_66D4(&qword_126448, &qword_DE9F0);
  v21 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v21 - v8;
  v10 = sub_D51D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for iCloudMailSettingsFeatureFlag.endToEndEncryption(_:), v10);
  v14 = sub_D51C0();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) != 0 && (v15 = *(*(v23 + *(v2 + 24) + 8) + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionViewModel)) != 0)
  {
    *(&v21 - 2) = __chkstk_darwin(v23);
    v28 = v15;
    swift_retain_n();
    sub_66D4(&qword_1265D0, &qword_DEC50);
    sub_109A8(&qword_1265D8, &qword_1265D0, &qword_DEC50, &protocol conformance descriptor for HStack<A>);
    sub_72174();
    sub_D5810();
    v16 = v21;
    v17 = v25;
    (*(v21 + 16))(v7, v9, v25);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_126440, &qword_126448, &qword_DE9F0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_71304();
    sub_D5BF0();

    return (*(v16 + 8))(v9, v17);
  }

  else
  {
    sub_68C84(v23, &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v20 = swift_allocObject();
    sub_68CF8(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    sub_66D4(&qword_126568, &qword_DEBB8);
    sub_719D0();
    sub_D6260();
    *&v5[*(v26 + 36)] = sub_D5CA0();
    sub_FBD4(v5, v7, &qword_126458, &qword_DE9F8);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_126440, &qword_126448, &qword_DE9F0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_71304();
    sub_D5BF0();
    return sub_FC3C(v5, &qword_126458, &qword_DE9F8);
  }
}

uint64_t sub_6EA88@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v35._object = 0x80000000000E6CA0;
  v35._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v35);
  v36._countAndFlagsBits = 2777980912;
  v36._object = 0xA400000000000000;
  sub_D66D0(v36);
  v44._countAndFlagsBits = 2777980912;
  v29._countAndFlagsBits = 0xE000000000000000;
  v37._object = 0x80000000000E6CA0;
  v37._countAndFlagsBits = 0xD000000000000015;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v6.super.isa = v5;
  v44._object = 0xA400000000000000;
  v7 = sub_D4E80(v37, v42, v6, v44, 0, v29);

  sub_DFAC();
  v8 = sub_D5F50();
  v32 = v9;
  v33 = v8;
  v31 = v10;
  v34 = v11;
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v12 = [v4 bundleForClass:ObjCClassFromMetadata];
  if (v7 == 1)
  {
    v38._countAndFlagsBits = 20047;
    v38._object = 0xE200000000000000;
    sub_D66D0(v38);
    v39._countAndFlagsBits = 2777980912;
    v39._object = 0xA400000000000000;
    sub_D66D0(v39);
    v13._countAndFlagsBits = 2777980912;
    v30._countAndFlagsBits = 0xE000000000000000;
    v14._countAndFlagsBits = 20047;
    v14._object = 0xE200000000000000;
  }

  else
  {
    v40._countAndFlagsBits = 4605519;
    v40._object = 0xE300000000000000;
    sub_D66D0(v40);
    v41._countAndFlagsBits = 2777980912;
    v41._object = 0xA400000000000000;
    sub_D66D0(v41);
    v13._countAndFlagsBits = 2777980912;
    v30._countAndFlagsBits = 0xE000000000000000;
    v14._countAndFlagsBits = 4605519;
    v14._object = 0xE300000000000000;
  }

  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v15.super.isa = v12;
  v13._object = 0xA400000000000000;
  sub_D4E80(v14, v43, v15, v13, 0, v30);

  v16 = sub_D5F50();
  v18 = v17;
  v20 = v19;
  sub_D61B0();
  v21 = sub_D5F00();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_F16C(v16, v18, v20 & 1);

  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25 & 1;
  *(a2 + 72) = v27;
  sub_166E0(v33, v32, v31 & 1);

  sub_166E0(v21, v23, v25 & 1);

  sub_F16C(v21, v23, v25 & 1);

  sub_F16C(v33, v32, v31 & 1);
}

uint64_t sub_6EE44@<X0>(uint64_t a2@<X8>)
{
  sub_D5810();
  result = sub_66D4(&qword_126568, &qword_DEBB8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_6EEAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E6CA0;
  v10._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E6CA0;
  v12._countAndFlagsBits = 0xD000000000000015;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, 0, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_6EFD0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesView(0);
  sub_5FEAC();
  _s11descr1123A1O9ViewModelCMa(0);
  sub_72C3C(&qword_1265E8, _s11descr1123A1O9ViewModelCMa, &unk_DA2D0);
  result = sub_D5860();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

id sub_6F070()
{
  v0 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  result = [v0 setDrawBorder:1];
  qword_126258 = v0;
  return result;
}

uint64_t sub_6F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAPreferencesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_68C84(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_68CF8(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11 = a1;
  sub_66D4(&qword_1265F0, &qword_DECD8);
  sub_71FAC();
  sub_D6260();
  LODWORD(a1) = sub_D5CA0();
  result = sub_66D4(&qword_1264C8, &unk_DEA70);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_6F244@<X0>(uint64_t a2@<X8>)
{
  sub_66D4(&qword_126610, &qword_DECE8);
  sub_109A8(&qword_126618, &qword_126610, &qword_DECE8, &protocol conformance descriptor for HStack<A>);
  sub_D5810();
  result = sub_66D4(&qword_1265F0, &qword_DECD8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_6F314@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_66D4(&qword_126620, &unk_DECF0);
  return sub_6F36C((a2 + *(v3 + 44)));
}

uint64_t sub_6F36C@<X0>(char *a2@<X8>)
{
  v65 = a2;
  v2 = sub_66D4(&qword_1226F8, &qword_DA778);
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  __chkstk_darwin(v2);
  v57 = (&v55 - v4);
  v5 = sub_66D4(&qword_121238, &unk_D8E20);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v55 - v9;
  v11 = sub_66D4(&qword_122700, &qword_DED00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v66 = &v55 - v15;
  v16 = sub_66D4(&qword_126628, &qword_DED08);
  v62 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v68 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v55 - v19;
  v21 = objc_allocWithZone(ISIcon);
  v22 = sub_D65C0();
  [v21 initWithType:v22];

  if (qword_120E68 != -1)
  {
    swift_once();
  }

  v23 = qword_126258;
  v67 = v20;
  sub_D5300();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v69._countAndFlagsBits = 2777980912;
  v69._object = 0xA400000000000000;
  v70._object = 0x80000000000E8C00;
  v70._countAndFlagsBits = 0xD000000000000013;
  sub_D66D0(v70);
  v71._countAndFlagsBits = 2777980912;
  v71._object = 0xA400000000000000;
  sub_D66D0(v71);
  v54._countAndFlagsBits = 0xE000000000000000;
  v72._object = 0x80000000000E8C00;
  v72._countAndFlagsBits = 0xD000000000000013;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v26.super.isa = v25;
  v27 = sub_D4E80(v72, v73, v26, v69, 0, v54);
  v29 = v28;

  v69._countAndFlagsBits = v27;
  v69._object = v29;
  sub_DFAC();
  v30 = sub_D5F50();
  v59 = v31;
  v60 = v30;
  v58 = v32;
  v61 = v33;
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v34 = 1;
  if (LOBYTE(v69._countAndFlagsBits) == 1)
  {
    sub_D5780();
    v36 = v55;
    v35 = v56;
    v37 = *(v55 + 16);
    v37(v8, v10, v56);
    v38 = v57;
    *v57 = 0;
    *(v38 + 8) = 1;
    v39 = sub_66D4(&qword_122740, &qword_DED60);
    v37((v38 + *(v39 + 48)), v8, v35);
    v40 = *(v36 + 8);
    v40(v10, v35);
    v40(v8, v35);
    sub_FEA4(v38, v66, &qword_1226F8, &qword_DA778);
    v34 = 0;
  }

  v41 = v66;
  (*(v64 + 56))(v66, v34, 1, v63);
  v42 = v62;
  v43 = *(v62 + 16);
  v44 = v68;
  v43(v68, v67, v16);
  sub_FBD4(v41, v14, &qword_122700, &qword_DED00);
  v45 = v14;
  v46 = v65;
  v43(v65, v44, v16);
  v47 = sub_66D4(&qword_126630, &qword_DED58);
  v48 = &v46[*(v47 + 48)];
  v49 = v59;
  v50 = v60;
  *v48 = v60;
  *(v48 + 1) = v49;
  v51 = v58 & 1;
  v48[16] = v58 & 1;
  *(v48 + 3) = v61;
  sub_FBD4(v45, &v46[*(v47 + 64)], &qword_122700, &qword_DED00);
  sub_166E0(v50, v49, v51);

  sub_FC3C(v41, &qword_122700, &qword_DED00);
  v52 = *(v42 + 8);
  v52(v67, v16);
  sub_FC3C(v45, &qword_122700, &qword_DED00);
  sub_F16C(v50, v49, v51);

  return (v52)(v68, v16);
}

uint64_t sub_6FA00()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x80000000000E8B80;
  sub_D66D0(v20);
  v21._countAndFlagsBits = 2777980912;
  v21._object = 0xA400000000000000;
  sub_D66D0(v21);
  v36._countAndFlagsBits = 2777980912;
  v17._countAndFlagsBits = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000017;
  v22._object = 0x80000000000E8B80;
  v33.value._countAndFlagsBits = 0;
  v33.value._object = 0;
  v3.super.isa = v2;
  v36._object = 0xA400000000000000;
  v4 = sub_D4E80(v22, v33, v3, v36, 0, v17);
  v6 = v5;

  v7 = [v1 bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v23._object = 0xEA00000000004552;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v37._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v25._object = 0xEA00000000004552;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v8.super.isa = v7;
  v37._object = 0xA400000000000000;
  v9 = sub_D4E80(v25, v34, v8, v37, 0, v18);
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_D66D0(v26);

  v27._countAndFlagsBits = 10333;
  v27._object = 0xE200000000000000;
  sub_D66D0(v27);
  v28._countAndFlagsBits = v4;
  v28._object = v6;
  sub_D66D0(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_D66D0(v29);
  v12 = [v1 bundleForClass:ObjCClassFromMetadata];
  v30._object = 0x80000000000E8BA0;
  v30._countAndFlagsBits = 0xD000000000000012;
  sub_D66D0(v30);
  v31._countAndFlagsBits = 2777980912;
  v31._object = 0xA400000000000000;
  sub_D66D0(v31);
  v38._countAndFlagsBits = 2777980912;
  v19._countAndFlagsBits = 0xE000000000000000;
  v32._object = 0x80000000000E8BA0;
  v32._countAndFlagsBits = 0xD000000000000012;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v13.super.isa = v12;
  v38._object = 0xA400000000000000;
  sub_D4E80(v32, v35, v13, v38, 0, v19);

  sub_66D4(&qword_121390, &qword_D9050);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_D8CB0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_F7DC();
  *(v14 + 32) = 91;
  *(v14 + 40) = 0xE100000000000000;
  v15 = sub_D6610();

  return v15;
}

uint64_t sub_6FD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_D63D0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for MAPreferencesView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + *(__chkstk_darwin(v9 - 8) + 32) + 8);
  sub_2A5C4(v12 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v41);
  v38 = *(v12 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxRuleCountAllowed);
  v13 = *(v12 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_sharedPreference);
  v14 = *(v12 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_folderList);
  sub_68C84(a1, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_68CF8(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  KeyPath = swift_getKeyPath();
  v18 = v36;
  *v36 = KeyPath;
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for MSRulesView(0);
  v20 = v18 + v19[6];
  v39 = 0;
  v21 = v13;

  v22 = v14;

  sub_D6200();
  object = v40._object;
  *v20 = v40._countAndFlagsBits;
  *(v20 + 1) = object;
  (*(v4 + 104))(v8, enum case for EditMode.inactive(_:), v3);
  (*(v4 + 16))(v37, v8, v3);
  sub_D6200();
  (*(v4 + 8))(v8, v3);
  v24 = (v18 + v19[8]);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v40._countAndFlagsBits = 2777980912;
  v40._object = 0xA400000000000000;
  v42._countAndFlagsBits = 0x49542E53454C5552;
  v42._object = 0xEB00000000454C54;
  sub_D66D0(v42);
  v43._countAndFlagsBits = 2777980912;
  v43._object = 0xA400000000000000;
  sub_D66D0(v43);
  v34._countAndFlagsBits = 0xE000000000000000;
  v44._countAndFlagsBits = 0x49542E53454C5552;
  v44._object = 0xEB00000000454C54;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v27.super.isa = v26;
  v28 = sub_D4E80(v44, v45, v27, v40, 0, v34);
  v30 = v29;

  *v24 = v28;
  v24[1] = v30;
  v31 = swift_allocObject();
  result = sub_38BDC(v41, (v31 + 2));
  v31[7] = v38;
  v31[8] = v21;
  v31[9] = v22;
  v31[10] = sub_718F0;
  v31[11] = v16;
  v33 = v18 + v19[5];
  *v33 = sub_7195C;
  *(v33 + 1) = v31;
  v33[16] = 0;
  return result;
}

double sub_70184@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_70268(&v7);
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v13 = v7;
  v14 = v8;
  v20 = v12;
  v19[2] = v9;
  v19[3] = v10;
  v19[4] = v11;
  v19[0] = v7;
  v19[1] = v8;
  sub_FBD4(&v13, &v6, &qword_126528, &qword_DEAD8);
  sub_FC3C(v19, &qword_126528, &qword_DEAD8);
  v3 = v16;
  *(a2 + 56) = v15;
  *(a2 + 72) = v3;
  *(a2 + 88) = v17;
  *(a2 + 104) = v18;
  result = *&v13;
  v5 = v14;
  *(a2 + 24) = v13;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_70268@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v38._object = 0x80000000000E8B60;
  v38._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v38);
  v39._countAndFlagsBits = 2777980912;
  v39._object = 0xA400000000000000;
  sub_D66D0(v39);
  v46._countAndFlagsBits = 2777980912;
  v29._countAndFlagsBits = 0xE000000000000000;
  v40._object = 0x80000000000E8B60;
  v40._countAndFlagsBits = 0xD000000000000011;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v6.super.isa = v5;
  v46._object = 0xA400000000000000;
  v7 = sub_D4E80(v40, v44, v6, v46, 0, v29);

  sub_DFAC();
  v8 = sub_D5F50();
  v32 = v9;
  v33 = v8;
  v31 = v10;
  v34 = v11;
  type metadata accessor for MAPreferencesView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v7 <= 0)
  {
    v18 = [v4 bundleForClass:ObjCClassFromMetadata];
    v41._countAndFlagsBits = 4605519;
    v41._object = 0xE300000000000000;
    sub_D66D0(v41);
    v42._countAndFlagsBits = 2777980912;
    v42._object = 0xA400000000000000;
    sub_D66D0(v42);
    v47._countAndFlagsBits = 2777980912;
    v30._countAndFlagsBits = 0xE000000000000000;
    v43._countAndFlagsBits = 4605519;
    v43._object = 0xE300000000000000;
    v45.value._countAndFlagsBits = 0;
    v45.value._object = 0;
    v19.super.isa = v18;
    v47._object = 0xA400000000000000;
    v20 = sub_D4E80(v43, v45, v19, v47, 0, v30);
    v22 = v21;

    *&v35 = v20;
    *(&v35 + 1) = v22;
    v23 = sub_D5F50();
    v25 = v24;
    v27 = v26;
    sub_D61B0();
    sub_D5F00();

    sub_F16C(v23, v25, v27 & 1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    *&v35 = sub_2A2C8(v7);
    *(&v35 + 1) = v12;
    v13 = sub_D5F50();
    v15 = v14;
    v17 = v16;
    sub_D61B0();
    sub_D5F00();

    sub_F16C(v13, v15, v17 & 1);
  }

  sub_D5BF0();
  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v35;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  sub_166E0(v33, v32, v31 & 1);

  sub_71878(v35, *(&v35 + 1), v36, *(&v36 + 1));
  sub_718B4(v35, *(&v35 + 1), v36, *(&v36 + 1));
  sub_F16C(v33, v32, v31 & 1);
}

double sub_7070C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_7078C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_72BD8(v2, v3);

  return sub_D5580();
}

uint64_t sub_70814@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  return result;
}

uint64_t sub_70894(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_70910@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_70990(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_70A64(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

__n128 sub_70AD4@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_70B90(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v16[2] = a1[2];
  v16[3] = v3;
  v16[4] = a1[4];
  v17 = *(a1 + 10);
  v4 = a1[1];
  v16[0] = *a1;
  v16[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  v6 = a1[4];
  v13 = a1[3];
  v14 = v6;
  v15 = *(a1 + 10);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  v12 = v5;
  sub_FBD4(v16, v9, &qword_125930, &unk_DFB90);

  return sub_D5580();
}

uint64_t sub_70D30()
{
  v1 = type metadata accessor for MAPreferencesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_D5910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  sub_66D4(&qword_1235A0, &qword_DB238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_D5710();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;
  sub_68CEC(*(v9 + *(v1 + 20)), *(v9 + *(v1 + 20) + 8));

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v8, v2 | v7 | 7);
}

void sub_70EF4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_D5910();

  sub_68ACC(a1, a2, v2 + v6);
}

unint64_t sub_70FD8()
{
  result = qword_126340;
  if (!qword_126340)
  {
    sub_6110(&qword_126320, &qword_DE880);
    sub_6110(&qword_126318, &qword_DE878);
    sub_6110(&qword_126310, &qword_DE870);
    sub_109A8(&qword_126338, &qword_126310, &qword_DE870, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_DFAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126340);
  }

  return result;
}

unint64_t sub_7112C()
{
  result = qword_126348;
  if (!qword_126348)
  {
    sub_6110(&unk_125940, &qword_DDCE8);
    sub_635C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126348);
  }

  return result;
}

unint64_t sub_711B0()
{
  result = qword_126350;
  if (!qword_126350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126350);
  }

  return result;
}

unint64_t sub_7124C()
{
  result = qword_126438;
  if (!qword_126438)
  {
    sub_6110(&qword_126430, &qword_DE9E8);
    sub_109A8(&qword_126440, &qword_126448, &qword_DE9F0, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_71304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126438);
  }

  return result;
}

unint64_t sub_71304()
{
  result = qword_126450;
  if (!qword_126450)
  {
    sub_6110(&qword_126458, &qword_DE9F8);
    sub_109A8(&qword_126460, &qword_126468, &unk_DEA00, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126450);
  }

  return result;
}

unint64_t sub_713E8()
{
  result = qword_126490;
  if (!qword_126490)
  {
    sub_6110(&qword_1263F0, &unk_DE970);
    sub_71474();
    sub_71504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126490);
  }

  return result;
}

unint64_t sub_71474()
{
  result = qword_126498;
  if (!qword_126498)
  {
    sub_6110(&qword_1263F8, &unk_E3D20);
    sub_F5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126498);
  }

  return result;
}

unint64_t sub_71504()
{
  result = qword_1264A0;
  if (!qword_1264A0)
  {
    sub_6110(&qword_1263D8, &qword_DE958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1264A0);
  }

  return result;
}

unint64_t sub_7158C()
{
  result = qword_1264A8;
  if (!qword_1264A8)
  {
    sub_6110(&qword_1263D0, &qword_DE950);
    sub_109A8(&qword_126488, &qword_126360, &qword_DE8E0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1264A8);
  }

  return result;
}

unint64_t sub_716A4()
{
  result = qword_1264D0;
  if (!qword_1264D0)
  {
    sub_6110(&qword_1264C8, &unk_DEA70);
    sub_109A8(&qword_1264D8, &qword_1264E0, &qword_DEA80, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1264D0);
  }

  return result;
}

uint64_t sub_717A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_71878(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_166E0(a1, a2, a3 & 1);
}

uint64_t sub_718B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_F16C(a1, a2, a3 & 1);
}

uint64_t sub_7190C()
{
  sub_67D4((v0 + 16));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_71970(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
    return sub_7233C(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_71994(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
    return sub_7239C(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

unint64_t sub_719D0()
{
  result = qword_126570;
  if (!qword_126570)
  {
    sub_6110(&qword_126568, &qword_DEBB8);
    sub_109A8(&qword_126578, &qword_126580, &qword_DEBC0, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126570);
  }

  return result;
}

unint64_t sub_71ACC()
{
  result = qword_126590;
  if (!qword_126590)
  {
    sub_6110(&qword_126588, &qword_DEBC8);
    sub_109A8(&qword_126598, &qword_1265A0, &qword_DEBD0, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126590);
  }

  return result;
}

unint64_t sub_71BEC()
{
  result = qword_1265A8;
  if (!qword_1265A8)
  {
    sub_6110(&qword_126548, &qword_DEB98);
    sub_109A8(&qword_1265B0, &qword_1265B8, &qword_DEC00, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_126470, &qword_126478, &unk_E3390, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1265A8);
  }

  return result;
}

double sub_71CD0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesView(0);

  return sub_70184(a1);
}

uint64_t sub_71E64()
{

  sub_67D4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_71EE8()
{
  if (v0[4] != 1)
  {

    if (v0[8] != 1)
    {
    }
  }

  sub_67D4(v0 + 13);

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_71FAC()
{
  result = qword_1265F8;
  if (!qword_1265F8)
  {
    sub_6110(&qword_1265F0, &qword_DECD8);
    sub_109A8(&qword_126600, &qword_126608, &qword_DECE0, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1265F8);
  }

  return result;
}

unint64_t sub_72174()
{
  result = qword_126640;
  if (!qword_126640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126640);
  }

  return result;
}

uint64_t sub_72224()
{
  v1 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_6BD18(v2);
}

unint64_t sub_72284()
{
  result = qword_126678;
  if (!qword_126678)
  {
    sub_6110(&qword_126648, &qword_DEDB8);
    sub_109A8(&qword_126680, &qword_126688, &qword_DEE28, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126678);
  }

  return result;
}

uint64_t sub_7233C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return v7;
}

uint64_t sub_7239C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return v7;
}

uint64_t sub_72450@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6B35C(v4, a1);
}

double sub_724C0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesView(0);

  return sub_6B584(a1);
}

uint64_t sub_72580@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6AE04(v4, a1);
}

uint64_t sub_72608(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_72694(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MAPreferencesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6B0C4(a1, a2, v6);
}

uint64_t sub_72714()
{

  sub_67D4((v0 + 40));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_727C8()
{
  v1 = type metadata accessor for MAPreferencesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_66D4(&qword_1235A0, &qword_DB238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D5710();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_68CEC(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_72900(char a1)
{
  result = type metadata accessor for MAPreferencesView(0);
  if (a1)
  {
    return sub_60618();
  }

  return result;
}

uint64_t sub_72970()
{

  sub_67D4((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_72AD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5A40();
  *a1 = result;
  return result;
}

uint64_t sub_72B28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D59C0();
  *a1 = result;
  return result;
}

uint64_t sub_72B54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D59C0();
  *a1 = result;
  return result;
}

uint64_t sub_72BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_72C3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_72C84()
{
  result = qword_1266F0;
  if (!qword_1266F0)
  {
    sub_6110(&qword_1266D0, &qword_DF0E0);
    sub_72D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1266F0);
  }

  return result;
}

unint64_t sub_72D10()
{
  result = qword_1266F8;
  if (!qword_1266F8)
  {
    sub_6110(&qword_1266C8, &qword_DF0D8);
    sub_109A8(&qword_126700, &qword_1266C0, &qword_DF0D0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1266F8);
  }

  return result;
}

uint64_t sub_72DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5A40();
  *a1 = result;
  return result;
}

uint64_t sub_72F54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = qword_126738;
  swift_beginAccess();
  type metadata accessor for MSRequest.RequestBody(255, *(&stru_20.filesize + (v4 & v3)), *(&stru_20.maxprot + (v4 & v3)), v6);
  v7 = sub_D6930();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

id sub_73028()
{
  v1 = *(v0 + qword_126728);
  if (v1)
  {
    v2 = *(v0 + qword_126728);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = *(v0 + qword_126728);
  *(v0 + qword_126728) = v4;

  result = [v3 defaultStore];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_730C4()
{
  v1 = qword_126758;
  v2 = *(v0 + qword_126758);
  if (v2)
  {
    v3 = *(v0 + qword_126758);
  }

  else
  {
    sub_73718(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_73128(unsigned __int8 a1)
{
  v1 = 5522759;
  v2 = 5526864;
  if (a1 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (a1)
  {
    v1 = 1414745936;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_73188()
{
  v1 = sub_D5340();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(&stru_B8.reloff + (swift_isaMask & *v0)))(v3);
  v8 = v7;
  v10 = v9;
  v11 = [*(v0 + qword_126730) propertiesForDataclass:v6];
  if (v11)
  {
    v12 = v11;
    v13 = sub_D6530();

    v29 = v8;
    v30 = v10;

    sub_D69D0();
    if (*(v13 + 16) && (v14 = sub_4BA90(v31), (v15 & 1) != 0))
    {
      sub_263D4(*(v13 + 56) + 32 * v14, v32);
      sub_4C868(v31);

      if (swift_dynamicCast())
      {

        return v29;
      }
    }

    else
    {

      sub_4C868(v31);
    }
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v17 = sub_6610(v1, qword_137988);
  (*(v2 + 16))(v5, v17, v1);
  v18 = v6;

  v19 = sub_D5320();
  v20 = sub_D68B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = v1;
    v22 = v2;
    v23 = v21;
    v31[0] = swift_slowAlloc();
    *v23 = 136315394;

    v24 = sub_558F0(v8, v10, v31);

    *(v23 + 4) = v24;
    *(v23 + 12) = 2080;
    v25 = sub_D65F0();
    v27 = sub_558F0(v25, v26, v31);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_0, v19, v20, "Account bag has no value for key: %s in %s", v23, 0x16u);
    swift_arrayDestroy();

    (*(v22 + 8))(v5, v28);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

id sub_73550(void *a1)
{
  v1 = a1;
  sub_73188();

  v2 = sub_D65C0();

  return v2;
}

uint64_t sub_73620(uint64_t a1)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_73614(ObjCClassMetadata, v2, v3, v4);

  return swift_getObjCClassFromMetadata();
}

void sub_73718(uint64_t a1)
{
  v2 = sub_73028();
  v3 = sub_73028();
  v4 = [v3 aida_accountForiCloudAccount:*(a1 + qword_126730)];

  v5 = objc_allocWithZone(AAGrandSlamSigner);
  v6 = sub_D65C0();
  v7 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:v6];

  if (!v7)
  {
    __break(1u);
  }
}

Class sub_737E0(void *a1)
{
  v2 = sub_D4D40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_738D8(v5);

  v7 = sub_D4D20();
  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_738D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = sub_D5340();
  v65 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v64 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v63[-v9];
  v11 = *(&stru_20.filesize + (v4 & v3));
  v12 = *(&stru_20.maxprot + (v4 & v3));
  v14 = type metadata accessor for MSRequest(0, v11, v12, v13);
  v67.receiver = v2;
  v67.super_class = v14;
  v15 = objc_msgSendSuper2(&v67, "urlRequest");
  if (!v15)
  {
    __break(1u);
  }

  v16 = v15;
  [v15 mutableCopy];

  sub_D6980();
  swift_unknownObjectRelease();
  sub_5411C(0, &qword_1269E8, NSMutableURLRequest_ptr);
  v17 = swift_dynamicCast();
  v18 = v71;
  if ((*(&stru_B8.reserved2 + (swift_isaMask & *v2)))(v17))
  {
    v19 = sub_730C4();
    [v19 setUseAltDSID:1];

    if (([*(v2 + qword_126758) signURLRequest:v18 isUserInitiated:1] & 1) == 0)
    {
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v20 = sub_6610(v5, qword_137988);
      (*(v65 + 16))(v10, v20, v5);
      v21 = sub_D5320();
      v22 = sub_D68B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "Unable to sign grandslam request", v23, 2u);
      }

      (*(v65 + 8))(v10, v5);
    }

    v24 = [v18 aa_addBasicAuthorizationHeaderWithAccount:*(v2 + qword_126730) preferUsingPassword:0];
  }

  else
  {
    v24 = [v18 aa_addAuthTokenOrBasicAuthHeaderWithAccount:*(v2 + qword_126730) preferUsingPassword:0];
  }

  (*(&stru_B8.flags + (swift_isaMask & *v2)))(v24);
  v25 = sub_D65C0();

  [v18 setHTTPMethod:v25];

  sub_72F54(&v71);
  if (v72[24] == 255)
  {
    v29 = v5;
    type metadata accessor for MSRequest.RequestBody(255, v11, v12, v26);
    v32 = sub_D6930();
    (*(*(v32 - 8) + 8))(&v71, v32);
  }

  else
  {
    v73 = v71;
    v74[0] = *v72;
    *(v74 + 9) = *&v72[9];
    v27 = type metadata accessor for MSRequest.RequestBody(0, v11, v12, v26);
    v28 = *(v27 - 8);
    (*(v28 + 16))(&v71, &v73, v27);
    if (v72[24])
    {
      v29 = v5;
      v30 = v71;
      isa = sub_D4F30().super.isa;
      [v18 setHTTPBody:isa];
      sub_26628(v30, *(&v30 + 1));

      (*(v28 + 8))(&v73, v27);
    }

    else
    {
      sub_38BDC(&v71, v68);
      v33 = v69;
      v34 = v70;
      sub_6648(v68, v69);
      v29 = v5;
      v35 = sub_74578(v33, v34);
      v37 = v36;
      v38 = sub_D4F30().super.isa;
      sub_26628(v35, v37);
      [v18 setHTTPBody:v38];

      (*(v28 + 8))(&v73, v27);
      sub_67D4(v68);
    }
  }

  v39 = sub_D65C0();
  v40 = sub_D65C0();
  [v18 setValue:v39 forHTTPHeaderField:v40];

  v41 = [objc_allocWithZone(AADeviceInfo) init];
  v42 = [v41 udid];

  v43 = sub_D65C0();
  [v18 setValue:v42 forHTTPHeaderField:v43];

  v44 = sub_D65C0();

  v45 = sub_D65C0();
  [v18 setValue:v44 forHTTPHeaderField:v45];

  if ((*&stru_108.sectname[swift_isaMask & *v2])())
  {
    v46 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    *&v73 = 0;
    v47 = [v46 anisetteDataWithError:&v73];
    if (v47)
    {
      v48 = v47;
      v49 = v73;
      v50 = [v48 machineID];
      v51 = sub_D65C0();
      [v18 setValue:v50 forHTTPHeaderField:v51];

      v52 = [v48 oneTimePassword];
      v53 = sub_D65C0();
      [v18 setValue:v52 forHTTPHeaderField:v53];

      *&v73 = [v48 routingInfo];
      sub_D6C10();
      v54 = sub_D65C0();

      v55 = sub_D65C0();
      [v18 setValue:v54 forHTTPHeaderField:v55];
    }

    else
    {
      v56 = v73;
      sub_D4EA0();

      swift_willThrow();
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v57 = sub_6610(v29, qword_137988);
      v58 = v65;
      v59 = v64;
      (*(v65 + 16))(v64, v57, v29);
      v60 = sub_D5320();
      v61 = sub_D68B0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v60, v61, "Can't get anisette data", v62, 2u);
      }

      (*(v58 + 8))(v59, v29);
    }
  }

  sub_D4D30();
}

uint64_t sub_74578(uint64_t a1, uint64_t a2)
{
  sub_D4DA0();
  swift_allocObject();
  sub_D4D90();
  v2 = sub_D4D80();

  return v2;
}

uint64_t sub_74678(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = qword_126738;
  type metadata accessor for MSRequest.RequestBody(255, *(&stru_20.filesize + (v3 & v2)), *(&stru_20.maxprot + (v3 & v2)), v5);
  v6 = sub_D6930();
  (*(*(v6 - 8) + 8))(&a1[v4], v6);
}

uint64_t sub_74790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MSResult(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_74824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v94 = a3;
  v84 = sub_D4F20();
  v83 = *(v84 - 8);
  v8 = __chkstk_darwin(v84);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4;
  v95 = v4[10];
  v81 = *(v95 - 8);
  __chkstk_darwin(v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_D5340();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v86 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v80 = &v80 - v18;
  v19 = __chkstk_darwin(v17);
  v82 = &v80 - v20;
  __chkstk_darwin(v19);
  v22 = &v80 - v21;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v88 = v12;
  v23 = sub_6610(v13, qword_137988);
  v24 = *(v14 + 2);
  v90 = v23;
  v91 = v24;
  v92 = v14 + 16;
  (v24)(v22);
  v25 = sub_D5320();
  v26 = sub_D68D0();
  v27 = os_log_type_enabled(v25, v26);
  v93 = a4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v85 = v10;
    v30 = v29;
    v96[0]._countAndFlagsBits = v29;
    *v28 = 136315138;
    v31 = sub_D6D30();
    v89 = a2;
    v33 = v13;
    v34 = sub_558F0(v31, v32, &v96[0]._countAndFlagsBits);
    a2 = v89;

    *(v28 + 4) = v34;
    v13 = v33;
    _os_log_impl(&dword_0, v25, v26, "Parsing response %s", v28, 0xCu);
    sub_67D4(v30);
    a4 = v93;
    v10 = v85;
  }

  v35 = *(v14 + 1);
  v35(v22, v13);
  if (!swift_conformsToProtocol2())
  {
    v85 = a1;
    sub_D4D70();
    swift_allocObject();
    sub_D4D60();
    v42 = v10[11];
    v43 = v88;
    v44 = a2;
    v45 = v94;
    sub_D4D50();
    v89 = 0;

    v73 = v95;
    v74 = (v93 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v81 + 4))(v93, v43, v73);
    *v74 = v44;
    v74[1] = v45;
    type metadata accessor for MSResult(0, v73, v42, v75);
    swift_storeEnumTagMultiPayload();
    v40 = v44;
    v41 = v45;
    return sub_26558(v40, v41);
  }

  if ([a1 statusCode] - 200 <= &stru_20.nsects + 3)
  {
    v36 = v95;
    v37 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    swift_dynamicCast();
    v38 = v94;
    *v37 = a2;
    v37[1] = v38;
    type metadata accessor for MSResult(0, v36, v10[11], v39);
    swift_storeEnumTagMultiPayload();
    v40 = a2;
    v41 = v38;
    return sub_26558(v40, v41);
  }

  v81 = v35;
  v88 = v14;
  v46 = v13;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v96[0]._countAndFlagsBits = 2777980912;
  v96[0]._object = 0xA400000000000000;
  v97._object = 0x80000000000E8950;
  v97._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v97);
  v98._countAndFlagsBits = 2777980912;
  v98._object = 0xA400000000000000;
  sub_D66D0(v98);
  v79._countAndFlagsBits = 0xE000000000000000;
  v99._object = 0x80000000000E8950;
  v99._countAndFlagsBits = 0xD000000000000015;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v49.super.isa = v48;
  v50 = sub_D4E80(v99, v100, v49, v96[0], 0, v79);
  v52 = v51;

  sub_6780();
  v53 = swift_allocError();
  *v54 = v50;
  *(v54 + 8) = v52;
  *(v54 + 16) = 0;
  *(v54 + 24) = 1;
  *(v54 + 32) = 0;
  *(v54 + 40) = 1;
  v89 = v53;
  swift_willThrow();
  v55 = [a1 allHeaderFields];
  v56 = sub_D6530();

  sub_75908(v56);

  sub_D4D70();
  swift_allocObject();
  sub_D4D60();
  sub_7858C();
  sub_D4D50();

  countAndFlagsBits = v96[0]._countAndFlagsBits;
  object = v96[0]._object;
  v59 = v82;
  v60 = v46;
  v91(v82, v90, v46);
  v61 = a1;

  v62 = sub_D5320();
  v63 = sub_D68B0();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v85 = v10;
    v65 = a4;
    v66 = v64;
    v67 = swift_slowAlloc();
    v96[0]._countAndFlagsBits = v67;
    *v66 = 134218242;
    *(v66 + 4) = [v61 statusCode];

    *(v66 + 12) = 2080;

    v68 = sub_558F0(countAndFlagsBits, object, &v96[0]._countAndFlagsBits);
    *&v94 = countAndFlagsBits;
    v69 = v60;
    v70 = v68;

    *(v66 + 14) = v70;
    _os_log_impl(&dword_0, v62, v63, "[%ld] %s", v66, 0x16u);
    sub_67D4(v67);

    a4 = v65;
    v10 = v85;

    v71 = v59;
    v72 = v69;
    countAndFlagsBits = v94;
  }

  else
  {

    v71 = v59;
    v72 = v60;
  }

  v81(v71, v72);
  v77 = [v61 statusCode];

  *a4 = countAndFlagsBits;
  *(a4 + 8) = object;
  *(a4 + 16) = v77;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  type metadata accessor for MSResult(0, v95, v10[11], v78);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_75908(uint64_t a1)
{
  v35 = sub_D5340();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v9 = &unk_DF4E0;
  while (1)
  {
    v10 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_4C80C(*(a1 + 48) + 40 * v11, v43);
    sub_263D4(*(a1 + 56) + 32 * v11, v44);
    sub_4C80C(v43, &v36);
    if (swift_dynamicCast())
    {
      v40 = v39;
      sub_263D4(v44, &v41);
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
    }

    v5 &= v5 - 1;
    sub_FC3C(v43, &qword_1269C8, &qword_DF4D8);
    if (*(&v40 + 1))
    {
      v36 = v40;
      v37 = v41;
      v38 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_A57FC(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v32 = v13 + 1;
        v18 = sub_A57FC((v12 > 1), v13 + 1, 1, v8);
        v14 = v32;
        v8 = v18;
      }

      v8[2] = v14;
      v15 = &v8[6 * v13];
      v16 = v36;
      v17 = v38;
      v15[3] = v37;
      v15[4] = v17;
      v15[2] = v16;
    }

    else
    {
      sub_FC3C(&v40, &qword_1269D0, &unk_DF4E0);
    }
  }

  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_66D4(&qword_1223F8, &qword_DA4F0);
    v19 = sub_D6AE0();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  a1 = v35;
  v6 = v34;
  v9 = v33;
  v43[0] = v19;

  sub_773B8(v20, 1, v43);

  sub_77774(v43[0]);

  if (qword_120E38 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = sub_6610(a1, qword_137988);
  (*(v6 + 16))(v9, v21, a1);

  v22 = sub_D5320();
  v23 = sub_D68B0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43[0] = v25;
    *v24 = 136380675;
    v26 = sub_D6540();
    v28 = v27;

    v29 = sub_558F0(v26, v28, v43);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "Response headers: %{private}s", v24, 0xCu);
    sub_67D4(v25);
  }

  else
  {
  }

  return (*(v6 + 8))(v9, a1);
}

uint64_t sub_75E10(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = sub_D4F40();
  v11 = v10;

  sub_77E08(v7, v9, v11, v5);
  v13 = v12;
  sub_26628(v9, v11);

  return v13;
}

uint64_t sub_75EA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_D4F40();
  v9 = v8;

  sub_77FD8(v5, v7, v9);
  v11 = v10;
  sub_26628(v7, v9);

  return v11;
}

uint64_t sub_75F24(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_D4F40();
  v12 = v11;

  v13 = sub_D65F0();
  v15 = v14;

  sub_7819C(v7, v10, v12, v13, v15);
  v17 = v16;

  sub_26628(v10, v12);

  return v17;
}

uint64_t sub_75FE0(void *a1, void *a2)
{
  v2 = sub_D6650();
  v4 = v3;
  if (v2 == sub_D6650() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_D6C20();
  }

  return v7 & 1;
}

uint64_t sub_76074(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_76194(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *(&stru_20.filesize + (swift_isaMask & *v1)), *(&stru_20.maxprot + (swift_isaMask & *v1)));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_7620C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(&stru_20.nsects + (swift_isaMask & *a1));
  v6 = type metadata accessor for MSResult(0, *(&stru_20.filesize + (swift_isaMask & *a1)), *(&stru_20.maxprot + (swift_isaMask & *a1)), a4);
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t sub_762F4(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = sub_76668();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_76380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 41;
  if (((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x29)
  {
    v4 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_764A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 0x29)
  {
    v5 = 41;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

ValueMetadata *sub_76668()
{
  result = qword_1268E8[0];
  if (!qword_1268E8[0])
  {
    result = &type metadata for MSError;
    atomic_store(&type metadata for MSError, qword_1268E8);
  }

  return result;
}

uint64_t sub_76698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_766D4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_766FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_76710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7674C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_76798(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_767E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_76830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7688C(uint64_t a1)
{
  v2 = sub_76E2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_768C8(uint64_t a1)
{
  v2 = sub_76E2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_76970()
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

Swift::Int sub_769E4(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_76A80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_113A88;
  v8._object = a2;
  v6 = sub_D6AF0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_76AD8(uint64_t a1)
{
  v2 = sub_78538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_76B14(uint64_t a1)
{
  v2 = sub_78538();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_76B50@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_783A8(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_76B94(void *a1)
{
  v2 = sub_66D4(&qword_126990, &unk_DF4C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_6648(a1, a1[3]);
  sub_78538();
  sub_D6D00();
  sub_D6BC0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_76CD0()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8._object = 0x80000000000E8950;
  v8._countAndFlagsBits = 0xD000000000000015;
  sub_D66D0(v8);
  v9._countAndFlagsBits = 2777980912;
  v9._object = 0xA400000000000000;
  sub_D66D0(v9);
  v12._countAndFlagsBits = 2777980912;
  v7._countAndFlagsBits = 0xE000000000000000;
  v10._object = 0x80000000000E8950;
  v10._countAndFlagsBits = 0xD000000000000015;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v2.super.isa = v1;
  v12._object = 0xA400000000000000;
  v3 = sub_D4E80(v10, v11, v2, v12, 0, v7);
  v5 = v4;

  *&xmmword_137A18 = v3;
  *(&xmmword_137A18 + 1) = v5;
  unk_137A28 = 0;
  byte_137A30 = 1;
  qword_137A38 = 0;
  byte_137A40 = 1;
  return result;
}

uint64_t sub_76DDC()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_76E2C()
{
  result = qword_126978;
  if (!qword_126978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126978);
  }

  return result;
}

Swift::Int sub_76E80()
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

Swift::Int sub_76EF4(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();
  return sub_D6CE0();
}

uint64_t sub_76F54@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_D6AF0(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_76FE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_113AF8;
  v8._object = a2;
  v6 = sub_D6AF0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_77038(uint64_t a1)
{
  v2 = sub_78A54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_77074(uint64_t a1)
{
  v2 = sub_78A54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_770F4@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = sub_66D4(a2, a3);
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_6648(a1, a1[3]);
  a4();
  sub_D6CF0();
  if (v6)
  {
    return sub_67D4(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_D6B40();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = sub_67D4(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_7727C(void *a1)
{
  v2 = sub_66D4(&qword_126A30, &qword_DF820);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_6648(a1, a1[3]);
  sub_78A54();
  sub_D6D00();
  sub_D6BC0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_773B8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_78764(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_26430(v46, v41);
  v9 = *a3;
  v10 = sub_4BAD4(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_4C22C(v15, a2 & 1);
    v10 = sub_4BAD4(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_D6C50();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_4CA24();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    swift_errorRetain();
    sub_66D4(&qword_1269E0, &unk_DF500);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_67D4(v41);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_26430(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_78764(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_26430(v46, v41);
      v29 = *a3;
      v30 = sub_4BAD4(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_4C22C(v34, 1);
        v30 = sub_4BAD4(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_26430(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_D6A10(30);
  v48._object = 0x80000000000E8F50;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  sub_D66D0(v48);
  sub_D6A90();
  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  sub_D66D0(v49);
  result = sub_D6AA0();
  __break(1u);
  return result;
}

unint64_t *sub_77774(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_778D4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_77AE0(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_778D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v31 = v4;
    v11 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;
    sub_263D4(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v19 = sub_263D4(v30, &v29);
    __chkstk_darwin(v19);
    v22[2] = v28;
    swift_bridgeObjectRetain_n();
    v20 = v31;
    LOBYTE(v17) = sub_76074(sub_78744, v22, &off_1139D0);
    v4 = v20;
    swift_arrayDestroy();
    sub_FC3C(v28, &qword_1269D8, &unk_DF4F0);
    sub_67D4(v30);

    v9 = v27;
    if (v17)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_77B58(v24, v23, v25, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_77B58(v24, v23, v25, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v31 = v4;
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_77AE0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_778D4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_77B58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_66D4(&qword_1223F8, &qword_DA4F0);
  result = sub_D6AE0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_263D4(v17 + 32 * v16, v33);
    sub_26430(v33, v32);
    sub_D6CB0();

    sub_D6680();
    result = sub_D6CE0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_26430(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_77E08(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v22 = a4;
  swift_getObjectType();
  v9 = *(&stru_20.filesize + (swift_isaMask & *v4));
  v10 = *(&stru_20.maxprot + (swift_isaMask & *v4));
  v12 = type metadata accessor for MSResult(0, *(&stru_20.filesize + (swift_isaMask & *v5)), *(&stru_20.maxprot + (swift_isaMask & *v5)), v11);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21[-v14];
  sub_74824(a1, a2, a3, &v21[-v14]);
  (*(v13 + 32))(&v5[*(&stru_20.nsects + (swift_isaMask & *v5))], v15, v12);
  v16 = a1;
  isa = sub_D4F30().super.isa;
  v19 = type metadata accessor for MSAPIResponse(0, v9, v10, v18);
  v23.receiver = v5;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, "initWithHTTPResponse:data:bodyIsPlist:", v16, isa, v22 & 1);

  if (!v20)
  {
    __break(1u);
  }
}

void sub_77FD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *(&stru_20.filesize + (swift_isaMask & *v3));
  v9 = *(&stru_20.maxprot + (swift_isaMask & *v3));
  v11 = type metadata accessor for MSResult(0, *(&stru_20.filesize + (swift_isaMask & *v4)), *(&stru_20.maxprot + (swift_isaMask & *v4)), v10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_74824(a1, a2, a3, &v20 - v13);
  (*(v12 + 32))(&v4[*(&stru_20.nsects + (swift_isaMask & *v4))], v14, v11);
  v15 = a1;
  isa = sub_D4F30().super.isa;
  v18 = type metadata accessor for MSAPIResponse(0, v8, v9, v17);
  v20.receiver = v4;
  v20.super_class = v18;
  v19 = objc_msgSendSuper2(&v20, "initWithHTTPResponse:data:", v15, isa);

  if (!v19)
  {
    __break(1u);
  }
}

void sub_7819C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a5;
  swift_getObjectType();
  v10 = *(&stru_20.filesize + (swift_isaMask & *v5));
  v11 = *(&stru_20.maxprot + (swift_isaMask & *v5));
  v13 = type metadata accessor for MSResult(0, *(&stru_20.filesize + (swift_isaMask & *v6)), *(&stru_20.maxprot + (swift_isaMask & *v6)), v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  sub_74824(a1, a2, a3, &v23 - v15);
  (*(v14 + 32))(&v6[*(&stru_20.nsects + (swift_isaMask & *v6))], v16, v13);
  v17 = a1;
  isa = sub_D4F30().super.isa;
  v19 = sub_D65C0();
  v21 = type metadata accessor for MSAPIResponse(0, v10, v11, v20);
  v25.receiver = v6;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, "initWithHTTPResponse:data:mediaType:", v17, isa, v19, v23, v24);

  if (!v22)
  {
    __break(1u);
  }
}

uint64_t sub_783A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_126980, &qword_DF4C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_6648(a1, a1[3]);
  sub_78538();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v9 = sub_D6B40();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_67D4(a1);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

unint64_t sub_78538()
{
  result = qword_126988;
  if (!qword_126988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126988);
  }

  return result;
}

unint64_t sub_7858C()
{
  result = qword_126998;
  if (!qword_126998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126998);
  }

  return result;
}

unint64_t sub_785E0()
{
  result = qword_1269A8;
  if (!qword_1269A8)
  {
    sub_5411C(255, &qword_1269A0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269A8);
  }

  return result;
}

unint64_t sub_78648()
{
  result = qword_1269B0;
  if (!qword_1269B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269B0);
  }

  return result;
}

unint64_t sub_7869C()
{
  result = qword_1269B8;
  if (!qword_1269B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269B8);
  }

  return result;
}

unint64_t sub_786F0()
{
  result = qword_1269C0;
  if (!qword_1269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269C0);
  }

  return result;
}

uint64_t sub_78764(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1223E0, &unk_E3890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_78848()
{
  result = qword_1269F0;
  if (!qword_1269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269F0);
  }

  return result;
}

unint64_t sub_788A0()
{
  result = qword_1269F8;
  if (!qword_1269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1269F8);
  }

  return result;
}

unint64_t sub_788F8()
{
  result = qword_126A00;
  if (!qword_126A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A00);
  }

  return result;
}

unint64_t sub_78950()
{
  result = qword_126A08;
  if (!qword_126A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A08);
  }

  return result;
}

unint64_t sub_789A8()
{
  result = qword_126A10;
  if (!qword_126A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A10);
  }

  return result;
}

unint64_t sub_78A00()
{
  result = qword_126A18;
  if (!qword_126A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A18);
  }

  return result;
}

unint64_t sub_78A54()
{
  result = qword_126A28;
  if (!qword_126A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A28);
  }

  return result;
}

unint64_t sub_78ABC()
{
  result = qword_126A38;
  if (!qword_126A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A38);
  }

  return result;
}

unint64_t sub_78B14()
{
  result = qword_126A40;
  if (!qword_126A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A40);
  }

  return result;
}

unint64_t sub_78B6C()
{
  result = qword_126A48;
  if (!qword_126A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126A48);
  }

  return result;
}

void (*sub_78BC4(uint64_t a1))()
{
  v1 = a1;
  v55 = sub_D4EC0();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_D64C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_66D4(&qword_123340, qword_DC760);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_D4F20();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59._countAndFlagsBits = sub_795E8(v1);
  v58._countAndFlagsBits = 0xD00000000000005ELL;
  v58._object = 0x80000000000E9120;
  sub_D66D0(v59);

  sub_D4F10();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_7C15C(v9);
  }

  else
  {
    v53 = v10;
    v54 = v11;
    v14 = *(v11 + 32);
    v52 = v13;
    v14(v13, v9, v10);
    sub_D64F0();
    v51 = sub_D64E0();
    v15 = v56;
    *v56 = 0xD00000000000001ELL;
    v15[1] = 0x80000000000E8A50;
    (*(v5 + 104))();
    v16 = sub_79758(v1);
    v47 = v16;
    v50 = v5;
    v18 = v17;
    v45 = v17;
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = v3;
    v20 = ObjCClassFromMetadata;
    v21 = objc_opt_self();
    v22 = [v21 bundleForClass:v20];
    v58._countAndFlagsBits = 2777980912;
    v58._object = 0xA400000000000000;
    v60._countAndFlagsBits = v16;
    v60._object = v18;
    sub_D66D0(v60);
    v61._countAndFlagsBits = 2777980912;
    v61._object = 0xA400000000000000;
    sub_D66D0(v61);
    v39._countAndFlagsBits = 0xE000000000000000;
    v62._countAndFlagsBits = v16;
    v62._object = v18;
    v75.value._countAndFlagsBits = 0;
    v75.value._object = 0;
    v23.super.isa = v22;
    sub_D4E80(v62, v75, v23, v58, 0, v39);
    v49 = v4;

    sub_D4EB0();
    sub_66D4(&qword_126358, &qword_DE8D8);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_DF970;
    v24 = [v21 bundleForClass:v20];
    v58._countAndFlagsBits = 2777980912;
    v58._object = 0xA400000000000000;
    v63._countAndFlagsBits = 0xD000000000000013;
    v63._object = 0x80000000000E8A90;
    sub_D66D0(v63);
    v64._countAndFlagsBits = 2777980912;
    v64._object = 0xA400000000000000;
    sub_D66D0(v64);
    v40._countAndFlagsBits = 0xE000000000000000;
    v65._countAndFlagsBits = 0xD000000000000013;
    v65._object = 0x80000000000E8A90;
    v76.value._countAndFlagsBits = 0;
    v76.value._object = 0;
    v25.super.isa = v24;
    sub_D4E80(v65, v76, v25, v58, 0, v40);

    sub_D4EB0();
    v26 = v20;
    v27 = [v21 bundleForClass:v20];
    v58._countAndFlagsBits = 2777980912;
    v58._object = 0xA400000000000000;
    v66._countAndFlagsBits = 0x4C5F44554F4C4349;
    v66._object = 0xEC0000004C454241;
    sub_D66D0(v66);
    v67._countAndFlagsBits = 2777980912;
    v67._object = 0xA400000000000000;
    sub_D66D0(v67);
    v41._countAndFlagsBits = 0xE000000000000000;
    v68._countAndFlagsBits = 0x4C5F44554F4C4349;
    v68._object = 0xEC0000004C454241;
    v77.value._countAndFlagsBits = 0;
    v77.value._object = 0;
    v28.super.isa = v27;
    sub_D4E80(v68, v77, v28, v58, 0, v41);

    sub_D4EB0();
    v29 = [v21 bundleForClass:v26];
    v58._countAndFlagsBits = 2777980912;
    v58._object = 0xA400000000000000;
    v69._object = 0x80000000000E8A70;
    v69._countAndFlagsBits = 0xD000000000000011;
    sub_D66D0(v69);
    v70._countAndFlagsBits = 2777980912;
    v70._object = 0xA400000000000000;
    sub_D66D0(v70);
    v42._countAndFlagsBits = 0xE000000000000000;
    v71._object = 0x80000000000E8A70;
    v71._countAndFlagsBits = 0xD000000000000011;
    v78.value._countAndFlagsBits = 0;
    v78.value._object = 0;
    v30.super.isa = v29;
    sub_D4E80(v71, v78, v30, v58, 0, v42);

    sub_D4EB0();
    v31 = [v21 bundleForClass:v26];
    v58._countAndFlagsBits = 2777980912;
    v58._object = 0xA400000000000000;
    v32 = v47;
    v72._countAndFlagsBits = v47;
    v33 = v45;
    v72._object = v45;
    sub_D66D0(v72);
    v73._countAndFlagsBits = 2777980912;
    v73._object = 0xA400000000000000;
    sub_D66D0(v73);
    v43._countAndFlagsBits = 0xE000000000000000;
    v74._countAndFlagsBits = v32;
    v74._object = v33;
    v79.value._countAndFlagsBits = 0;
    v79.value._object = 0;
    v34.super.isa = v31;
    sub_D4E80(v74, v79, v34, v58, 0, v43);

    sub_D4EB0();
    v35 = v56;
    v36 = v48;
    v37 = v52;
    sub_D64D0();

    (*(v57 + 8))(v36, v55);
    (*(v50 + 8))(v35, v49);
    (*(v54 + 8))(v37, v53);
  }

  return nullsub_1;
}

uint64_t static MAPreferencesViewProvider.getSwiftUIView(accountStore:appleAccount:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for MAPreferencesController(0));
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a2;
  v9 = sub_7BDE0(v7, v8, a3);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t type metadata accessor for MAPreferencesController(uint64_t a1)
{
  result = qword_126AA8;
  if (!qword_126AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MAPreferencesViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAPreferencesViewProvider.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAPreferencesViewProvider();
  return objc_msgSendSuper2(&v3, "init");
}

id MAPreferencesViewProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAPreferencesViewProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_795E8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x504D495F4C49414DLL;
    v6 = 0xD000000000000013;
    if (a1 == 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x5F544C5541464544;
    v2 = 0x5045525F4F545541;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x524F465F4C49414DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x53455341494C41;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_79758(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4D5F54524F504D49;
    if (a1 != 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000011;
    if (a1 != 5)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x5F544C5541464544;
    v2 = 0x5045522D4F545541;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x524F465F4C49414DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4553534552444441;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_79928(char a1, uint64_t a2)
{
  v3 = sub_D6450();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D6480();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v12 = Strong;
      sub_26338();
      v18 = sub_D6900();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      aBlock[4] = sub_7C368;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_219D0;
      aBlock[3] = &unk_1184B8;
      v16 = _Block_copy(aBlock);
      v17 = v12;

      sub_D6470();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_7C3D0(&qword_122400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_66D4(&qword_122408, &qword_DC730);
      sub_109A8(&qword_122410, &qword_122408, &qword_DC730, &protocol conformance descriptor for [A]);
      sub_D6990();
      v14 = v16;
      v15 = v18;
      sub_D6910();
      _Block_release(v14);

      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
    }
  }
}

uint64_t sub_79C4C(void *a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_126B00, &qword_DFA90);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  sub_D5280();
  (*(v7 + 16))(v10, v12, v6);
  v13 = objc_allocWithZone(sub_66D4(&qword_126B08, &qword_DFA98));
  v14 = sub_D5BD0();
  v15 = [a1 parentViewController];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      [v17 showController:v14];

      return (*(v7 + 8))(v12, v6);
    }
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v5, v18, v2);
  v19 = sub_D5320();
  v20 = sub_D68B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Unable to navigate to Mail Cleanup, parent view controller is not a PSViewController", v21, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_79F68(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_79FE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_D6450();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D6480();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_D64A0();
  v49 = *(v53 - 8);
  v9 = __chkstk_darwin(v53);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v43 - v11;
  v12 = sub_D5340();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v12, qword_137988);
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_D5320();
  v18 = sub_D68D0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v2;
    v20 = v19;
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v20 = 136315138;
    v60 = a1;

    sub_66D4(&qword_126AF8, &qword_DFA88);
    v21 = sub_D6640();
    v43 = v12;
    v23 = v5;
    v24 = v4;
    v25 = sub_558F0(v21, v22, &aBlock);

    *(v20 + 4) = v25;
    v4 = v24;
    v5 = v23;
    _os_log_impl(&dword_0, v17, v18, "handleUniversalLink: %s", v20, 0xCu);
    sub_67D4(v44);

    v2 = v45;

    result = (*(v13 + 8))(v15, v43);
    if (!a1)
    {
      return result;
    }
  }

  else
  {

    result = (*(v13 + 8))(v15, v12);
    if (!a1)
    {
      return result;
    }
  }

  if (*(a1 + 16))
  {

    v27 = sub_4BAD4(1752457584, 0xE400000000000000);
    if (v28)
    {
      sub_263D4(*(a1 + 56) + 32 * v27, &aBlock);
      if (swift_dynamicCast())
      {
        v29 = sub_7C1D4(v60, v61);
        switch(v29)
        {
          case 7:
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(aBlock) = 0;

            v30 = a1;
            sub_D5580();
            sub_26338();
            v45 = sub_D6900();
            v31 = v46;
            sub_D6490();
            v32 = v47;
            sub_D64B0();
            v49 = *(v49 + 8);
            (v49)(v31, v53);
            v33 = swift_allocObject();
            *(v33 + 16) = v2;
            *(v33 + 24) = v30;
            v58 = sub_7C328;
            v59 = v33;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v34 = &unk_118468;
            break;
          case 9:

            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_D5270();

          case 10:

          default:
            v35 = v29;

            sub_26338();
            v45 = sub_D6900();
            v36 = v46;
            sub_D6490();
            v32 = v47;
            sub_D64B0();
            v49 = *(v49 + 8);
            (v49)(v36, v53);
            v37 = swift_allocObject();
            *(v37 + 16) = v2;
            *(v37 + 24) = v35;
            v58 = sub_7C258;
            v59 = v37;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v34 = &unk_1183F0;
            break;
        }

        v56 = sub_219D0;
        v57 = v34;
        v38 = _Block_copy(&aBlock);
        v39 = v2;

        v40 = v48;
        sub_D6470();
        aBlock = _swiftEmptyArrayStorage;
        sub_7C3D0(&qword_122400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_66D4(&qword_122408, &qword_DC730);
        sub_109A8(&qword_122410, &qword_122408, &qword_DC730, &protocol conformance descriptor for [A]);
        v41 = v50;
        sub_D6990();
        v42 = v45;
        sub_D68E0();
        _Block_release(v38);

        (*(v5 + 8))(v41, v4);
        (*(v51 + 8))(v40, v52);
        return (v49)(v32, v53);
      }
    }
  }

  return result;
}

uint64_t sub_7A81C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_4BAD4(0x6574617473, 0xE500000000000000), (v4 & 1) != 0))
  {
    sub_263D4(*(a2 + 56) + 32 * v3, v11);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_5FEAC();
  sub_2111C(v6, v7);
}

uint64_t sub_7A8F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_D6530();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_79FE4(v4);
}

void sub_7A978(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  sub_D5580();
  sub_5FEAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5580();
}

uint64_t sub_7AAA0()
{
}

id sub_7AB00()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7AB38(uint64_t a1)
{
}

uint64_t sub_7ABC8(uint64_t a1)
{
  v2 = sub_D5710();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D5970();
}

uint64_t sub_7AC90(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a4;
  v88 = a2;
  v89 = a1;
  v96 = sub_66D4(&qword_122F80, &qword_DFB50);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v73 - v7;
  v8 = sub_66D4(&qword_126B10, &qword_DFB58);
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = &v73 - v9;
  v93 = sub_D51D0();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_66D4(&qword_125FF0, &unk_DFB60);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v73 - v11;
  v90 = sub_66D4(&qword_125FE8, qword_DE450);
  v83 = *(v90 - 8);
  __chkstk_darwin(v90);
  v82 = &v73 - v12;
  v81 = sub_66D4(&qword_125FD8, &unk_DFB70);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v73 - v13;
  v78 = sub_66D4(&qword_121948, &unk_DC5C0);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v73 - v14;
  v75 = sub_66D4(&qword_125FE0, &unk_DFB80);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v16 = &v73 - v15;
  v73 = sub_66D4(&qword_125FD0, &qword_DE448);
  v17 = *(v73 - 8);
  __chkstk_darwin(v73);
  v19 = &v73 - v18;
  v20 = sub_66D4(&qword_121068, &qword_DBEE0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v73 - v22;
  v103[3] = type metadata accessor for MSRepositoryDefault();
  v103[4] = &off_1188F0;
  v103[0] = a3;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isDefaultEmailPresented;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25 = *(v21 + 32);
  v25(a5 + v24, v23, v20);
  v26 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isMailForwardingPresented;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v26, v23, v20);
  v27 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAutoReplyPresented;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v27, v23, v20);
  v28 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isAliasesPresented;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v28, v23, v20);
  v29 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isRulesPresented;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v29, v23, v20);
  v30 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isUnsubscribePresented;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v30, v23, v20);
  v31 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__state;
  v101 = 0uLL;
  sub_D5530();
  (*(v17 + 32))(a5 + v31, v19, v73);
  v32 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__emails;
  *&v101 = _swiftEmptyArrayStorage;
  sub_66D4(&qword_121498, &qword_D99D0);
  sub_D5530();
  (*(v74 + 32))(a5 + v32, v16, v75);
  v33 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__defaultEmail;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v34 = v76;
  sub_D5530();
  (*(v77 + 32))(a5 + v33, v34, v78);
  v35 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isEndToEndEncryptionEnabled;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v35, v23, v20);
  v36 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__ruleCount;
  *&v101 = 0;
  v37 = v79;
  sub_D5530();
  (*(v80 + 32))(a5 + v36, v37, v81);
  v38 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__serverPreferences;
  v101 = 0uLL;
  *v102 = 1;
  memset(&v102[8], 0, 64);
  sub_66D4(&qword_125930, &unk_DFB90);
  v39 = v82;
  sub_D5530();
  (*(v83 + 32))(a5 + v38, v39, v90);
  v40 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainEnabled;
  LOBYTE(v101) = 0;
  sub_D5530();
  v25(a5 + v40, v23, v20);
  v41 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__isCustomDomainSpinning;
  LOBYTE(v101) = 0;
  sub_D5530();
  v90 = v20;
  v25(a5 + v41, v23, v20);
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel____lazy_storage___mailImportViewModel) = 0;
  v42 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__scrollTarget;
  LOBYTE(v101) = 2;
  sub_66D4(&unk_125940, &qword_DDCE8);
  v43 = v84;
  sub_D5530();
  v44 = *(v85 + 32);
  v45 = v86;
  v44(a5 + v42, v43, v86);
  v46 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel__shouldScrollTo;
  LOBYTE(v101) = 2;
  sub_D5530();
  v44(a5 + v46, v43, v45);
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_refreshPublisher) = 0;
  v47 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_account;
  v101 = 0u;
  memset(v102, 0, 56);
  sub_66D4(&qword_124C70, &qword_DFBA0);
  swift_allocObject();
  v48 = sub_D5510();
  v86 = v47;
  *(a5 + v47) = v48;
  v49 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_autoReply;
  v101 = 0uLL;
  *v102 = 1;
  memset(&v102[8], 0, 32);
  sub_66D4(&qword_126B18, &qword_DFBA8);
  swift_allocObject();
  *(a5 + v49) = sub_D5510();
  v50 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_sharedPreference;
  v101 = xmmword_DBAE0;
  memset(v102, 0, 32);
  sub_66D4(&qword_126B20, &qword_DFBB0);
  swift_allocObject();
  *(a5 + v50) = sub_D5510();
  v51 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_folderList;
  *&v101 = 0;
  sub_66D4(&qword_126B28, qword_DFBB8);
  swift_allocObject();
  *(a5 + v51) = sub_D5510();
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxAliasCountAllowed) = 3;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_maxRuleCountAllowed) = 500;
  swift_unknownObjectWeakAssign();
  v52 = v88;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_appleAccount) = v88;
  v53 = v89;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_accountStore) = v89;
  sub_2A5C4(v103, a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository);
  v54 = ACAccountDataclassMail;
  v55 = v52;
  v56 = v53;
  LOBYTE(v54) = [v55 isEnabledForDataclass:v54];
  swift_beginAccess();
  LOBYTE(v100) = v54;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  v100 = 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v100) = 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v100) = 0;
  sub_D5530();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v100) = 0;
  sub_D5530();
  swift_endAccess();
  LOBYTE(v101) = 0;
  sub_66D4(&qword_124C50, &unk_DC740);
  swift_allocObject();
  v57 = sub_D5510();
  v58 = OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus) = v57;
  v59 = v92;
  v60 = v91;
  v61 = v93;
  (*(v92 + 104))(v91, enum case for iCloudMailSettingsFeatureFlag.endToEndEncryption(_:), v93);
  LOBYTE(v39) = sub_D51C0();
  (*(v59 + 8))(v60, v61);
  v62 = 0;
  if (v39)
  {
    v63 = *(a5 + v86);
    v64 = *(a5 + v58);
    _s27EndToEndEncryptionViewModelCMa(0);
    swift_allocObject();
    v65 = v55;

    v62 = sub_55EA8(v65, v63, v64);
  }

  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionViewModel) = v62;
  sub_D52B0();
  swift_allocObject();
  v66 = v55;
  v67 = v56;
  *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_mailAssistantProvider) = sub_D5290();
  swift_beginAccess();
  v68 = v94;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50, &protocol conformance descriptor for Published<A>.Publisher);
  v69 = v97;
  v70 = v96;
  sub_D5600();
  (*(v95 + 8))(v68, v70);
  swift_allocObject();
  swift_weakInit();
  sub_109A8(&qword_126B30, &qword_126B10, &qword_DFB58, &protocol conformance descriptor for Publishers.Drop<A>);

  v71 = v99;
  sub_D5610();

  (*(v98 + 8))(v69, v71);
  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();

  *&v101 = *(a5 + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_endToEndEncryptionStatus);
  swift_allocObject();
  swift_weakInit();

  sub_109A8(&qword_126B38, &qword_124C50, &unk_DC740, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_D5610();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();

  sub_60618();
  sub_67D4(v103);
  return a5;
}

uint64_t sub_7BDE0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MAPreferencesView(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MSRepositoryDefault();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v33[3] = v12;
  v33[4] = &off_1188F0;
  v33[0] = v13;
  _s9ViewModelCMa_3(0);
  v14 = swift_allocObject();
  v15 = sub_38BFC(v33, v12);
  __chkstk_darwin(v15);
  v17 = (&v33[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = a1;
  v21 = a2;
  v22 = sub_7AC90(v20, v21, v19, a3, v14);
  sub_67D4(v33);
  *(v4 + qword_126A78) = v22;
  *(v4 + qword_126A80) = v20;
  *(v4 + qword_126A88) = v21;
  sub_D52B0();
  swift_allocObject();
  v23 = v20;
  v24 = v21;
  v25 = v23;
  v26 = v24;

  *(v4 + qword_126A90) = sub_D5290();
  *v11 = swift_getKeyPath();
  sub_66D4(&qword_1235A0, &qword_DB238);
  swift_storeEnumTagMultiPayload();
  v27 = v11 + *(v9 + 28);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = (v11 + *(v9 + 32));
  sub_7C3D0(&unk_1262D8, _s9ViewModelCMa_3, &unk_DDE0C);

  *v28 = sub_D5860();
  v28[1] = v29;
  v30 = sub_D5BD0();

  return v30;
}

uint64_t sub_7C15C(uint64_t a1)
{
  v2 = sub_66D4(&qword_123340, qword_DC760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7C1D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113B30;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7C220()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_7C290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7C2A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C2E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7C330()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C3A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D5A90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_7C3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7C418()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7C470@<X0>(void (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v38 = sub_D5060();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_D5480();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_66D4(&qword_126C48, &qword_DFDB8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = &v35 - v7;
  v8 = sub_66D4(&qword_126C50, &unk_DFDC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v35 - v10;
  v11 = sub_66D4(&qword_123340, qword_DC760);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_D4F20();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  sub_7E398(a1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView27EndToEndEncryptionViewModel_signingUIUrl, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_FC3C(v13, &qword_123340, qword_DC760);
    return (*(v9 + 56))(v46, 1, 1, v8);
  }

  else
  {
    v35 = v9;
    v36 = v8;
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    v37 = a1;

    sub_D5050();
    sub_D5040();
    (*(v3 + 8))(v5, v38);
    sub_D5430();
    swift_allocObject();
    sub_D5420();
    sub_D5470();
    if (qword_120E48 != -1)
    {
      swift_once();
    }

    sub_7E408(&qword_126C58, type metadata accessor for EndToEndEncryptionLiftUIDataSource, &unk_DAEE0);
    v22 = sub_7E408(&qword_126C60, &type metadata accessor for RemoteContentView, &protocol conformance descriptor for RemoteContentView);

    v23 = v39;
    v24 = v43;
    v25 = v45;
    sub_D5F60();
    v26 = v24;

    (*(v40 + 8))(v25, v24);
    v27 = v46;
    v28 = v35;
    if (qword_120E50 != -1)
    {
      swift_once();
    }

    v29 = qword_1379B0;
    v47 = v26;
    v48 = v22;
    swift_getOpaqueTypeConformance2();
    v30 = v41;
    v31 = v44;
    sub_D5F70();

    (*(v42 + 8))(v23, v31);
    (*(v15 + 8))(v20, v14);
    v33 = v36;
    v32 = v37;
    v34 = (v30 + *(v36 + 36));
    *v34 = sub_7E450;
    v34[1] = v32;
    v34[2] = 0;
    v34[3] = 0;
    sub_7E454(v30, v27);
    (*(v28 + 56))(v27, 0, 1, v33);
  }
}

uint64_t sub_7CAE8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1734437990;
  }

  else
  {
    v2 = 1850700649;
  }

  if (*a2)
  {
    v3 = 1734437990;
  }

  else
  {
    v3 = 1850700649;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_D6C20();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_7CB60()
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_7CBC8(uint64_t a1)
{
  sub_D6680();
}

Swift::Int sub_7CC14(uint64_t a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_7CC78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_113C40;
  v8._object = v3;
  v5 = sub_D6AF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_7CCD8(uint64_t *a1@<X8>)
{
  v2 = 1850700649;
  if (*v1)
  {
    v2 = 1734437990;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_7CD00()
{
  if (*v0)
  {
    return 1734437990;
  }

  else
  {
    return 1850700649;
  }
}

uint64_t sub_7CD24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_113C40;
  v9._object = a2;
  v6 = sub_D6AF0(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_7CD88(uint64_t a1)
{
  v2 = sub_7E2E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7CDC4(uint64_t a1)
{
  v2 = sub_7E2E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t *sub_7CE00(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v30 = v2;
  v31 = v5;
  v6 = sub_66D4(&qword_126C28, &qword_DFDA8);
  __chkstk_darwin(v6 - 8);
  v29 = &v26 - v7;
  v8 = sub_66D4(&qword_126C20, &qword_DFD98);
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_66D4(&qword_126C30, &qword_DFDB0);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  sub_6648(a1, a1[3]);
  sub_7E2E0();
  v14 = v30;
  sub_D6CF0();
  if (v14)
  {
    swift_deallocPartialClassInstance();
    v21 = a1;
  }

  else
  {
    v30 = a1;
    v15 = v27;
    v33 = 0;
    sub_7E334();
    sub_D6B30();
    v26 = v11;
    v16 = *(v15 + 48);
    if (v16(v29, 1, v8) == 1)
    {
      *v10 = 0;
      (*(v15 + 104))(v10, enum case for Referenceable.value<A>(_:), v8);
      v17 = v10;
      if (v16(v29, 1, v8) != 1)
      {
        sub_FC3C(v29, &qword_126C28, &qword_DFDA8);
      }
    }

    else
    {
      v17 = v10;
      (*(v15 + 32))(v10, v29, v8);
    }

    (*(v15 + 32))(v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_isOn, v17, v8);
    v32 = 1;
    v18 = v26;
    v19 = sub_D6B00();
    if (v20)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    if (v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    (*(v28 + 8))(v13, v18);
    v25 = (v3 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag);
    *v25 = v23;
    v25[1] = v24;
    v21 = v30;
  }

  sub_67D4(v21);
  return v3;
}

uint64_t sub_7D238(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    v4[3] = &type metadata for Bool;
    LOBYTE(v4[0]) = (a3 & 1) == 0;
    sub_7DE18(0x6669746E6F507369, 0xEC0000006E4F7865, v4, a4);
    return sub_67D4(v4);
  }

  return result;
}

uint64_t sub_7D2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_66D4(&qword_124C58, &qword_DFDA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_D53C0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a4, v8);
  (*(v9 + 56))(v7, 0, 1, v8);

  return sub_D5460();
}

uint64_t sub_7D3E8()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_isOn;
  v2 = sub_66D4(&qword_126C20, &qword_DFD98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for EndToEndEncryptionView.ToggleEndToEndEncryption(uint64_t a1)
{
  result = qword_126B78;
  if (!qword_126B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7D4F8(uint64_t a1)
{
  sub_7D590();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7D590()
{
  if (!qword_126B88)
  {
    v0 = sub_D53B0();
    if (!v1)
    {
      atomic_store(v0, &qword_126B88);
    }
  }
}

uint64_t sub_7D614(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7E794;

  return RemoteAction.performAction()(a1, a2);
}

uint64_t sub_7D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7D76C;

  return RemoteAction.performAction(with:)(a1, a2, a3);
}

uint64_t sub_7D76C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_7D860(uint64_t a1)
{
  sub_7DB3C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t *sub_7DA4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_7CE00(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_7DB3C(uint64_t a1)
{
  v4 = sub_66D4(&qword_126C20, &qword_DFD98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6];
  (*(v5 + 16))(&v18[-v6], v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_isOn, v4);
  sub_D53A0();
  if (v2)
  {

    v8 = 0;
  }

  else
  {
    v8 = v18[15];
  }

  (*(v5 + 8))(v7, v4);
  v9 = *(v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag) == 0x78656669746E6F70 && *(v1 + OBJC_IVAR____TtCV18icloudMailSettings22EndToEndEncryptionView24ToggleEndToEndEncryption_flag + 8) == 0xE800000000000000;
  if (v9 || (result = sub_D6C20(), (result & 1) != 0))
  {
    if (qword_120E48 != -1)
    {
      swift_once();
    }

    v11 = *(qword_1379A8 + 16);

    v12 = [v11 aa_primaryEmail];
    if (v12)
    {
      v13 = v12;
      v14 = sub_D65F0();
      v16 = v15;
    }

    else
    {

      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v8;
    *(v17 + 32) = a1;

    sub_5628C(v8, v14, v16, sub_7DE08, v17);
  }

  return result;
}

uint64_t sub_7DDC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_D53C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  sub_263D4(a3, v29);
  sub_66D4(&qword_124C60, &qword_DC750);
  if (swift_dynamicCast())
  {
    sub_38BDC(&aBlock, v30);
    v23 = a1;
    sub_6648(v30, v30[3]);
    sub_D53D0();
    sub_26338();
    v24 = sub_D6900();
    (*(v9 + 16))(v12, v14, v8);
    v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 2) = a4;
    *(v16 + 3) = v17;
    *(v16 + 4) = a2;
    (*(v9 + 32))(&v16[v15], v12, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_7E228;
    *(v18 + 24) = v16;
    v27 = sub_7E2A0;
    v28 = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_7D3C0;
    *(&v26 + 1) = &unk_1185A8;
    v19 = _Block_copy(&aBlock);

    v20 = v24;
    dispatch_sync(v24, v19);
    _Block_release(v19);

    (*(v9 + 8))(v14, v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_67D4(v30);
    }
  }

  else
  {
    v27 = 0;
    aBlock = 0u;
    v26 = 0u;
    return sub_FC3C(&aBlock, &qword_124C68, &qword_DC758);
  }

  return result;
}

uint64_t sub_7E15C()
{
  v1 = sub_D53C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7E228()
{
  v1 = *(sub_D53C0() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_7D2A0(v2, v3, v4, v5);
}

uint64_t sub_7E2C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_7E2E0()
{
  result = qword_126C38;
  if (!qword_126C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C38);
  }

  return result;
}

unint64_t sub_7E334()
{
  result = qword_126C40;
  if (!qword_126C40)
  {
    sub_6110(&qword_126C20, &qword_DFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C40);
  }

  return result;
}

uint64_t sub_7E398(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_123340, qword_DC760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7E454(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_126C50, &unk_DFDC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7E4D8()
{
  result = qword_126C68;
  if (!qword_126C68)
  {
    sub_6110(&qword_126C70, &qword_DFDE0);
    sub_7E55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C68);
  }

  return result;
}

unint64_t sub_7E55C()
{
  result = qword_126C78;
  if (!qword_126C78)
  {
    sub_6110(&qword_126C50, &unk_DFDC0);
    sub_6110(&qword_126C48, &qword_DFDB8);
    sub_D5480();
    sub_7E408(&qword_126C60, &type metadata accessor for RemoteContentView, &protocol conformance descriptor for RemoteContentView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C78);
  }

  return result;
}

unint64_t sub_7E690()
{
  result = qword_126C80;
  if (!qword_126C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C80);
  }

  return result;
}

unint64_t sub_7E6E8()
{
  result = qword_126C88;
  if (!qword_126C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C88);
  }

  return result;
}

unint64_t sub_7E740()
{
  result = qword_126C90;
  if (!qword_126C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126C90);
  }

  return result;
}

uint64_t sub_7E798()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_7E7E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSMailImportProviderListAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSMailImportProviderListAPIRequest(uint64_t a1)
{
  result = qword_126CC0;
  if (!qword_126CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7E898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000000E9380 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_D6C20();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_7E92C(uint64_t a1)
{
  v2 = sub_7EF38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7E968(uint64_t a1)
{
  v2 = sub_7EF38();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_7E9A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_7EA74(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_7E9D0(uint64_t a1)
{
  v2 = sub_7ED68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7EA0C(uint64_t a1)
{
  v2 = sub_7ED68();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_7EA48@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_7EBF8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_7EA74(void *a1)
{
  v3 = sub_66D4(&qword_126EB8, &unk_E0160);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_7EF38();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&unk_120EF8, &qword_D8B18);
    sub_7EF8C();
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_67D4(a1);
  }

  return v7;
}

void *sub_7EBF8(void *a1)
{
  v3 = sub_66D4(&qword_126E88, &qword_DFFF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_7ED68();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_7EDBC();
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_7ED68()
{
  result = qword_126E90;
  if (!qword_126E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126E90);
  }

  return result;
}

unint64_t sub_7EDBC()
{
  result = qword_126E98;
  if (!qword_126E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126E98);
  }

  return result;
}

unint64_t sub_7EE34()
{
  result = qword_126EA0;
  if (!qword_126EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EA0);
  }

  return result;
}

unint64_t sub_7EE8C()
{
  result = qword_126EA8;
  if (!qword_126EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EA8);
  }

  return result;
}

unint64_t sub_7EEE4()
{
  result = qword_126EB0;
  if (!qword_126EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EB0);
  }

  return result;
}

unint64_t sub_7EF38()
{
  result = qword_126EC0;
  if (!qword_126EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EC0);
  }

  return result;
}

unint64_t sub_7EF8C()
{
  result = qword_126EC8;
  if (!qword_126EC8)
  {
    sub_6110(&unk_120EF8, &qword_D8B18);
    sub_7F010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EC8);
  }

  return result;
}

unint64_t sub_7F010()
{
  result = qword_126ED0;
  if (!qword_126ED0)
  {
    type metadata accessor for ImportProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126ED0);
  }

  return result;
}

unint64_t sub_7F07C()
{
  result = qword_126ED8;
  if (!qword_126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126ED8);
  }

  return result;
}

unint64_t sub_7F0D4()
{
  result = qword_126EE0;
  if (!qword_126EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EE0);
  }

  return result;
}

unint64_t sub_7F12C()
{
  result = qword_126EE8;
  if (!qword_126EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_126EE8);
  }

  return result;
}

uint64_t sub_7F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 168) >= 2uLL)
  {
    v11 = *(v8 + 160);
  }

  else
  {
    v9 = sub_B5458();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      sub_B4EAC();
      if (*(v13 + 16))
      {
        v11 = *(v13 + 32);
      }

      else
      {

        return 0;
      }
    }
  }

  return v11;
}

uint64_t sub_7F258()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_7F2A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPreferencesAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSPreferencesAPIRequest(uint64_t a1)
{
  result = qword_126F18;
  if (!qword_126F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7F32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7F350(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_7F374(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_7F3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_7F408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7F498(void *a1)
{
  v2 = v1;
  v4 = sub_66D4(&qword_127108, &qword_E0420);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-v6];
  sub_6648(a1, a1[3]);
  sub_802B4();
  sub_D6D00();
  v8 = *(v2 + 16);
  v9 = *(v2 + 48);
  v43 = *(v2 + 32);
  v44 = v9;
  v10 = *(v2 + 16);
  v42[0] = *v2;
  v42[1] = v10;
  v11 = *(v2 + 48);
  v37 = v43;
  v38 = v11;
  v45 = *(v2 + 64);
  v39 = *(v2 + 64);
  v35 = v42[0];
  v36 = v8;
  v34 = 0;
  sub_63AE8(v42, &v26);
  sub_804C0();
  v12 = v46;
  sub_D6BF0();
  if (v12)
  {
    v28 = v37;
    v29 = v38;
    *&v30 = v39;
    v26 = v35;
    v27 = v36;
    sub_80370(&v26);
  }

  else
  {
    v32[2] = v37;
    v32[3] = v38;
    v33 = v39;
    v32[0] = v35;
    v32[1] = v36;
    sub_80370(v32);
    v13 = *(v2 + 120);
    v40[2] = *(v2 + 104);
    v40[3] = v13;
    v40[4] = *(v2 + 136);
    v41 = *(v2 + 152);
    v14 = *(v2 + 88);
    v40[0] = *(v2 + 72);
    v40[1] = v14;
    v15 = *(v2 + 120);
    v28 = *(v2 + 104);
    v29 = v15;
    v30 = *(v2 + 136);
    v31 = *(v2 + 152);
    v16 = *(v2 + 88);
    v26 = *(v2 + 72);
    v27 = v16;
    v25 = 1;
    sub_80514(v40, v23);
    sub_316F4();
    sub_D6BB0();
    v23[2] = v28;
    v23[3] = v29;
    v23[4] = v30;
    v24 = v31;
    v23[0] = v26;
    v23[1] = v27;
    sub_80308(v23);
    v17 = *(v2 + 176);
    v20 = *(v2 + 160);
    v21 = v17;
    v22 = *(v2 + 192);
    v19[15] = 2;
    sub_467DC();
    sub_D6BB0();
    LOBYTE(v20) = 3;
    sub_D6BE0();
    LOBYTE(v20) = 4;
    sub_D6BA0();
    LOBYTE(v20) = 5;
    sub_D6BA0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_7F82C()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6E756F43656C7572;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_7F8FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_7FA58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_7F930(uint64_t a1)
{
  v2 = sub_802B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F96C(uint64_t a1)
{
  v2 = sub_802B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_7F9A8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_7FC64(a2, v12);
  if (!v2)
  {
    v5 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v5;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v6 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v6;
    v7 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v7;
    v8 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v8;
    v9 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v9;
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v11;
  }

  return result;
}

uint64_t sub_7FA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_D6C20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E9410 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000E7BA0 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F43656C7572 && a2 == 0xE900000000000074 || (sub_D6C20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000000E7C00 == a2 || (sub_D6C20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000000E8790 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_D6C20();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_7FC64(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66D4(&qword_1270E0, &unk_E0410);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v49 = a1;
  sub_6648(a1, v9);
  sub_802B4();
  sub_D6CF0();
  if (v2)
  {
    v123 = v2;
    sub_67D4(v49);
    v66 = 0uLL;
    v67 = 1uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    sub_80308(&v66);
    sub_461BC(0, 1, 0, 0, 0, 0);
  }

  else
  {
    v48 = v6;
    v110 = 0;
    sub_803C4();
    v10 = v5;
    sub_D6B70();
    v120 = v113;
    v121 = v114;
    v122 = v115;
    v118 = v111;
    v119 = v112;
    v98 = 1;
    sub_80418();
    sub_D6B30();
    v36 = v102;
    v37 = v99;
    v33 = v104;
    v34 = v103;
    v46 = v105;
    v47 = v100;
    v44 = v107;
    v45 = v106;
    v43 = v108;
    v41 = v101;
    v42 = v109;
    v93[1] = 0;
    v93[0] = 0;
    v93[2] = 1;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    sub_80308(v93);
    LOBYTE(v50) = 2;
    sub_8046C();
    sub_D6B30();
    v35 = v66;
    v11 = v67;
    v40 = v68;
    v38 = *(&v66 + 1);
    v39 = *(&v68 + 1);
    LOBYTE(v66) = 3;
    v12 = sub_D6B60();
    LOBYTE(v66) = 4;
    v13 = sub_D6B20();
    v117 = v14 & 1;
    v92 = 5;
    v15 = sub_D6B20();
    v123 = 0;
    v17 = v16;
    v18 = *(v48 + 8);
    v48 = v15;
    v18(v8, v10);
    v116 = v17 & 1;
    v52 = v120;
    v53 = v121;
    v50 = v118;
    v51 = v119;
    v19 = v36;
    v20 = v37;
    *&v54 = v122;
    *(&v54 + 1) = v37;
    *&v55 = v47;
    *(&v55 + 1) = v41;
    *&v56 = v36;
    *(&v56 + 1) = v34;
    *&v57 = v33;
    *(&v57 + 1) = v46;
    *&v58 = v45;
    *(&v58 + 1) = v44;
    *&v59 = v43;
    *(&v59 + 1) = v42;
    v21 = v13;
    v32 = v13;
    v22 = v35;
    *&v60 = v35;
    *(&v60 + 1) = v38;
    v61 = v11;
    *&v62 = v40;
    *(&v62 + 1) = v39;
    *&v63 = v12;
    *(&v63 + 1) = v21;
    v31 = v117;
    LOBYTE(v64) = v117;
    *(&v64 + 1) = v48;
    LOBYTE(v10) = v116;
    v65 = v116;
    sub_26D60(&v50, &v66);
    sub_67D4(v49);
    v68 = v120;
    v69 = v121;
    v66 = v118;
    v67 = v119;
    v70 = v122;
    v71 = v20;
    v72 = v47;
    v73 = v41;
    v74 = v19;
    v75 = v34;
    v76 = v33;
    v77 = v46;
    v78 = v45;
    v79 = v44;
    v80 = v43;
    v81 = v42;
    v82 = v22;
    v83 = v38;
    v84 = v11;
    v85 = v40;
    v86 = v39;
    v87 = v12;
    v88 = v32;
    v89 = v31;
    v90 = v48;
    v91 = v10;
    sub_26DBC(&v66);
    v23 = v63;
    *(a2 + 192) = v62;
    *(a2 + 208) = v23;
    *(a2 + 224) = v64;
    *(a2 + 240) = v65;
    v24 = v59;
    *(a2 + 128) = v58;
    *(a2 + 144) = v24;
    v25 = v61;
    *(a2 + 160) = v60;
    *(a2 + 176) = v25;
    v26 = v55;
    *(a2 + 64) = v54;
    *(a2 + 80) = v26;
    v27 = v57;
    *(a2 + 96) = v56;
    *(a2 + 112) = v27;
    v28 = v51;
    *a2 = v50;
    *(a2 + 16) = v28;
    v29 = v53;
    *(a2 + 32) = v52;
    *(a2 + 48) = v29;
  }
}

unint64_t sub_802B4()
{
  result = qword_1270E8;
  if (!qword_1270E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1270E8);
  }

  return result;
}

uint64_t sub_80308(uint64_t a1)
{
  v2 = sub_66D4(&qword_125930, &unk_DFB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_803C4()
{
  result = qword_1270F0;
  if (!qword_1270F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1270F0);
  }

  return result;
}

unint64_t sub_80418()
{
  result = qword_1270F8;
  if (!qword_1270F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1270F8);
  }

  return result;
}

unint64_t sub_8046C()
{
  result = qword_127100;
  if (!qword_127100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127100);
  }

  return result;
}

unint64_t sub_804C0()
{
  result = qword_127110;
  if (!qword_127110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127110);
  }

  return result;
}

uint64_t sub_80514(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_125930, &unk_DFB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_80598()
{
  result = qword_127118;
  if (!qword_127118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127118);
  }

  return result;
}

unint64_t sub_805F0()
{
  result = qword_127120;
  if (!qword_127120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127120);
  }

  return result;
}

unint64_t sub_80648()
{
  result = qword_127128;
  if (!qword_127128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127128);
  }

  return result;
}

uint64_t sub_806A4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_80708@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = sub_D50D0();
  v1 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_D50E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_D50C0();
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_D5030();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_D5110();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_66D4(&qword_122F48, &unk_E0DE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  sub_D5100();
  sub_D5020();
  (*(v8 + 104))(v10, enum case for Calendar.MatchingPolicy.nextTime(_:), v7);
  v18 = v4;
  v19 = *(v4 + 104);
  v20 = v6;
  v21 = v3;
  v19(v6, enum case for Calendar.RepeatedTimePolicy.first(_:), v3);
  v23 = v37;
  v22 = v38;
  (*(v1 + 104))(v37, enum case for Calendar.SearchDirection.forward(_:), v38);
  sub_D50F0();
  v24 = v22;
  v25 = v34;
  (*(v1 + 8))(v23, v24);
  (*(v18 + 8))(v20, v21);
  (*(v32 + 8))(v10, v31);
  v26 = v12;
  v27 = v36;
  (*(v25 + 8))(v26, v36);
  (*(v33 + 8))(v14, v35);
  v28 = *(v25 + 48);
  if (v28(v17, 1, v27) != 1)
  {
    return (*(v25 + 32))(v39, v17, v27);
  }

  sub_D5020();
  result = (v28)(v17, 1, v27);
  if (result != 1)
  {
    return sub_80BBC(v17);
  }

  return result;
}

uint64_t sub_80BBC(uint64_t a1)
{
  v2 = sub_66D4(&qword_122F48, &unk_E0DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_80C24()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_80C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleBatchAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleBatchAPIRequest(uint64_t a1)
{
  result = qword_127298;
  if (!qword_127298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_80D08(void *a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_127488, &qword_E0678);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_6648(a1, a1[3]);
  sub_81108();
  sub_D6D00();
  v9[1] = a2;
  sub_66D4(&qword_127470, &qword_E0670);
  sub_811B0(&qword_127490, sub_81228, &protocol conformance descriptor for <A> [A]);
  sub_D6BF0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_80E94(uint64_t a1)
{
  v2 = sub_81108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80ED0(uint64_t a1)
{
  v2 = sub_81108();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_80F0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_80F54(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_80F54(void *a1)
{
  v3 = sub_66D4(&qword_127460, &qword_E0668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_81108();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_66D4(&qword_127470, &qword_E0670);
    sub_811B0(&qword_127478, sub_8115C, &protocol conformance descriptor for <A> [A]);
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_81108()
{
  result = qword_127468;
  if (!qword_127468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127468);
  }

  return result;
}

unint64_t sub_8115C()
{
  result = qword_127480;
  if (!qword_127480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127480);
  }

  return result;
}

uint64_t sub_811B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(&qword_127470, &qword_E0670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_81228()
{
  result = qword_127498;
  if (!qword_127498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127498);
  }

  return result;
}

unint64_t sub_81290()
{
  result = qword_1274A0;
  if (!qword_1274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1274A0);
  }

  return result;
}

unint64_t sub_812E8()
{
  result = qword_1274A8;
  if (!qword_1274A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1274A8);
  }

  return result;
}

unint64_t sub_81340()
{
  result = qword_1274B0;
  if (!qword_1274B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1274B0);
  }

  return result;
}

uint64_t sub_81394()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_813DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeQSFolderListAPI(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GeQSFolderListAPI(uint64_t a1)
{
  result = qword_1274E0;
  if (!qword_1274E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_81488(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_814B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 29029;
  v4 = 0xE200000000000000;
  v5 = 29799;
  v6 = 0x6374614D74786574;
  v7 = 0xE900000000000068;
  if (a1 != 4)
  {
    v6 = 0x65756C615670616DLL;
    v7 = 0xEA0000000000664FLL;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 25964;
  if (a1 != 1)
  {
    v8 = 29804;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE200000000000000;
      if (v9 != 29799)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000068;
      if (v9 != 0x6374614D74786574)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v11 = 0xEA0000000000664FLL;
      if (v9 != 0x65756C615670616DLL)
      {
LABEL_33:
        v12 = sub_D6C20();
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE200000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 25964)
        {
          goto LABEL_33;
        }
      }

      else if (v9 != 29804)
      {
        goto LABEL_33;
      }
    }

    else if (v9 != 29029)
    {
      goto LABEL_33;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_81650(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1346585938;
  v5 = 1245861203;
  if (a1 != 4)
  {
    v5 = 1414744396;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 20308;
  if (a1 != 1)
  {
    v6 = 17219;
  }

  if (a1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v6 = 1297044038;
  }

  if (a1 <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v9 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v7 != 1346585938)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v7 != 1245861203)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 1414744396)
    {
LABEL_34:
      v10 = sub_D6C20();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    v9 = 0xE200000000000000;
    if (a2 == 1)
    {
      if (v7 != 20308)
      {
        goto LABEL_34;
      }
    }

    else if (v7 != 17219)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    if (v7 != 1297044038)
    {
      goto LABEL_34;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_34;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_817C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x524154535F544F4ELL;
    v10 = 0xEB00000000444554;
    if (a1 != 6)
    {
      v9 = 0x444554454C4544;
      v10 = 0xE700000000000000;
    }

    v11 = 0x4C414E5245544E49;
    v12 = 0xEE00524F5252455FLL;
    if (a1 != 4)
    {
      v11 = 0x524F5252455F4353;
      v12 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x574549564552;
    if (a1 != 2)
    {
      v5 = 0xD000000000000014;
      v4 = 0x80000000000E6E90;
    }

    v6 = 0x4554454C504D4F43;
    if (a1)
    {
      v3 = 0xE900000000000044;
    }

    else
    {
      v6 = 0x44455452415453;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEB00000000444554;
        if (v7 != 0x524154535F544F4ELL)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x444554454C4544)
        {
LABEL_47:
          v14 = sub_D6C20();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00524F5252455FLL;
      if (v7 != 0x4C414E5245544E49)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x524F5252455F4353)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x574549564552)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000000000E6E90;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE900000000000044;
    if (v7 != 0x4554454C504D4F43)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x44455452415453)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_81A6C(char a1, char a2)
{
  if (*&aMove_0[8 * a1] == *&aMove_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_D6C20();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_81AD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 1802401098;
  v5 = 0xE600000000000000;
  if (a1 == 5)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x73726568744FLL;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000000000E6D30;
  if (a1 != 3)
  {
    v6 = 0x65766968637241;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737466617244;
  if (a1 != 1)
  {
    v9 = 0x73654D20746E6553;
    v8 = 0xED00007365676173;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x584F424E49;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x737466617244)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xED00007365676173;
        if (v10 != 0x73654D20746E6553)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x584F424E49)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802401098)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x73726568744FLL)
      {
LABEL_40:
        v13 = sub_D6C20();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x80000000000E6D30;
    if (v10 != 0xD000000000000010)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65766968637241)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

Swift::Int sub_81CF4(unsigned __int8 a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_81DD4(unsigned __int8 a1)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_81EA4(uint64_t a1, unsigned __int8 a2)
{
  sub_D6680();
}

Swift::Int sub_81FEC(uint64_t a1, unsigned __int8 a2)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_8210C(uint64_t a1, char a2)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_82168(uint64_t a1, unsigned __int8 a2)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_822C4(uint64_t a1, unsigned __int8 a2)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

Swift::Int sub_82390(uint64_t a1, unsigned __int8 a2)
{
  sub_D6CB0();
  sub_D6680();

  return sub_D6CE0();
}

uint64_t sub_82480(uint64_t a1)
{
  sub_D6680();
}

unint64_t sub_82540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_82A68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_82570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1297044038;
  v5 = 1346585938;
  v6 = 1245861203;
  if (v2 != 4)
  {
    v6 = 1414744396;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 20308;
  if (v2 != 1)
  {
    v7 = 17219;
  }

  if (*v1)
  {
    v4 = v7;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_82620(uint64_t a1)
{
  sub_D6680();
}

unint64_t sub_82668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_82A1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_826F8()
{
  result = qword_1276B8;
  if (!qword_1276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1276B8);
  }

  return result;
}

unint64_t sub_82780()
{
  result = qword_1276D0;
  if (!qword_1276D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1276D0);
  }

  return result;
}

uint64_t sub_827EC(uint64_t a1)
{
  sub_D6680();
}

unint64_t sub_82900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_82CE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_82930(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x584F424E49;
  v5 = 0xE400000000000000;
  v6 = 1802401098;
  if (v2 != 5)
  {
    v6 = 0x73726568744FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0x80000000000E6D30;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x65766968637241;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737466617244;
  if (v2 != 1)
  {
    v10 = 0x73654D20746E6553;
    v9 = 0xED00007365676173;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_82A1C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113278;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_82A68(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113520;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for MailRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_82C3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_82C94()
{
  result = qword_1276E8;
  if (!qword_1276E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1276E8);
  }

  return result;
}

unint64_t sub_82CE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_113CE0;
  v6._object = a2;
  v4 = sub_D6AF0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_82D3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_82D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_82DF0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_66D4(&qword_1276F0, &qword_E0C38);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_66D4(&qword_1276F8, &qword_E0C40);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = sub_66D4(&qword_127700, &qword_E0C48);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  if (a3)
  {
    sub_830C4(a1, a2, 1, &v20 - v13);
    sub_FBD4(v14, v11, &qword_127700, &qword_E0C48);
    swift_storeEnumTagMultiPayload();
    sub_849C8();
    sub_84A84();
    sub_D5BF0();
    return sub_FC3C(v14, &qword_127700, &qword_E0C48);
  }

  else
  {
    *v8 = sub_D5BA0();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v16 = sub_66D4(&qword_127708, &qword_E0C50);
    sub_83760(a1, a2, 0, &v8[*(v16 + 44)]);
    v17 = sub_D5DD0();
    v18 = &v8[*(sub_66D4(&qword_127710, &qword_E0C58) + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    v19 = &v8[*(v6 + 36)];
    *v19 = sub_84D14;
    *(v19 + 1) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    sub_FBD4(v8, v11, &qword_1276F0, &qword_E0C38);
    swift_storeEnumTagMultiPayload();
    sub_849C8();
    sub_84A84();
    sub_D5BF0();
    return sub_FC3C(v8, &qword_1276F0, &qword_E0C38);
  }
}

uint64_t sub_830C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v54 = a1;
  v55 = a2;
  v57 = a4;
  v4 = sub_66D4(&qword_123508, &qword_DB0E8);
  __chkstk_darwin(v4 - 8);
  v52 = &v44 - v5;
  v6 = sub_66D4(&qword_123510, &qword_DB0F0);
  v7 = __chkstk_darwin(v6 - 8);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v44 - v9;
  v10 = sub_66D4(&qword_123518, &qword_DB0F8);
  __chkstk_darwin(v10 - 8);
  v48 = &v44 - v11;
  v12 = sub_66D4(&qword_123520, &qword_DB100);
  __chkstk_darwin(v12 - 8);
  v46 = &v44 - v13;
  v14 = sub_66D4(&qword_123528, &unk_DB108);
  __chkstk_darwin(v14 - 8);
  v16 = (&v44 - v15);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass:ObjCClassFromMetadata];
  v58._countAndFlagsBits = 2777980912;
  v58._object = 0xA400000000000000;
  v59._object = 0x80000000000E9500;
  v59._countAndFlagsBits = 0xD000000000000019;
  sub_D66D0(v59);
  v60._countAndFlagsBits = 2777980912;
  v60._object = 0xA400000000000000;
  sub_D66D0(v60);
  v41._countAndFlagsBits = 0xE000000000000000;
  v61._object = 0x80000000000E9500;
  v61._countAndFlagsBits = 0xD000000000000019;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v20.super.isa = v19;
  v21 = sub_D4E80(v61, v68, v20, v58, 0, v41);
  v50 = v22;
  v51 = v21;

  v23 = [v18 bundleForClass:ObjCClassFromMetadata];
  v58._countAndFlagsBits = 2777980912;
  v58._object = 0xA400000000000000;
  v62._countAndFlagsBits = 0xD00000000000001FLL;
  v62._object = 0x80000000000E9520;
  sub_D66D0(v62);
  v63._countAndFlagsBits = 2777980912;
  v63._object = 0xA400000000000000;
  sub_D66D0(v63);
  v42._countAndFlagsBits = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD00000000000001FLL;
  v64._object = 0x80000000000E9520;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v24.super.isa = v23;
  v47 = sub_D4E80(v64, v69, v24, v58, 0, v42);
  v49 = v25;

  *v16 = 0xD000000000000015;
  v16[1] = 0x80000000000E9540;
  v26 = enum case for OBKHeaderImage.symbol(_:);
  v27 = sub_D51B0();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v16, v26, v27);
  (*(v28 + 56))(v16, 0, 1, v27);
  v29 = sub_D5180();
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  v30 = sub_D5170();
  (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
  v31 = [v18 bundleForClass:ObjCClassFromMetadata];
  v58._countAndFlagsBits = 2777980912;
  v58._object = 0xA400000000000000;
  v65._countAndFlagsBits = 1162760004;
  v65._object = 0xE400000000000000;
  sub_D66D0(v65);
  v66._countAndFlagsBits = 2777980912;
  v66._object = 0xA400000000000000;
  sub_D66D0(v66);
  v43._countAndFlagsBits = 0xE000000000000000;
  v67._countAndFlagsBits = 1162760004;
  v67._object = 0xE400000000000000;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v32.super.isa = v31;
  sub_D4E80(v67, v70, v32, v58, 0, v43);

  v33 = sub_D51E0();
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v34 = swift_allocObject();
  *(v34 + 16) = v54;
  *(v34 + 24) = v55;
  *(v34 + 32) = v56;

  v35 = v45;
  sub_D5230();
  v36 = sub_D5240();
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 0, 1, v36);
  v37(v53, 1, 1, v36);
  v38 = v57;
  sub_D51F0();
  result = sub_66D4(&qword_127700, &qword_E0C48);
  v40 = (v38 + *(result + 36));
  *v40 = sub_84D14;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

uint64_t sub_83760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v42 = a1;
  v43 = a2;
  v51 = a4;
  v4 = sub_D5D10();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_66D4(&qword_127740, &qword_E0C70);
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v12 = sub_66D4(&qword_127748, &qword_E0C78);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v50 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v18 = sub_66D4(&qword_1235C0, &unk_E0C80);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v47 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v42 - v22;
  sub_D5DC0();
  sub_66D4(&qword_1235C8, &unk_DB260);
  sub_109A8(&qword_1235D0, &qword_1235C8, &unk_DB260, &protocol conformance descriptor for VStack<A>);
  sub_D56F0();
  v24 = sub_D5DD0();
  v25 = &v23[*(v19 + 44)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = v42;
  *(v26 + 24) = v43;
  *(v26 + 32) = v44;

  sub_66D4(&qword_1235D8, &unk_E0C90);
  v27 = sub_6110(&qword_121370, &qword_DB270);
  v28 = sub_3A810();
  v52 = v27;
  v53 = v28;
  swift_getOpaqueTypeConformance2();
  sub_D6260();
  sub_D5D00();
  sub_109A8(&qword_127750, &qword_127740, &qword_E0C70, &protocol conformance descriptor for Button<A>);
  sub_84C20(&qword_1235E8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v29 = v45;
  v30 = v48;
  sub_D5FD0();
  (*(v49 + 8))(v7, v30);
  (*(v46 + 8))(v11, v29);
  v31 = &v17[*(sub_66D4(&qword_127758, &unk_E0CA0) + 36)];
  v32 = *(sub_66D4(&qword_1235F8, &qword_DB280) + 28);
  v33 = enum case for ControlSize.large(_:);
  v34 = sub_D5720();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  v35 = sub_D5DD0();
  v36 = &v17[*(v13 + 44)];
  *v36 = v35;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  v37 = v47;
  sub_FBD4(v23, v47, &qword_1235C0, &unk_E0C80);
  v38 = v50;
  sub_FBD4(v17, v50, &qword_127748, &qword_E0C78);
  v39 = v51;
  sub_FBD4(v37, v51, &qword_1235C0, &unk_E0C80);
  v40 = sub_66D4(&qword_127760, &unk_E0CE0);
  sub_FBD4(v38, v39 + *(v40 + 48), &qword_127748, &qword_E0C78);
  sub_FC3C(v17, &qword_127748, &qword_E0C78);
  sub_FC3C(v23, &qword_1235C0, &unk_E0C80);
  sub_FC3C(v38, &qword_127748, &qword_E0C78);
  return sub_FC3C(v37, &qword_1235C0, &unk_E0C80);
}

uint64_t sub_83D4C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_D5BA0();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v3 = sub_66D4(&qword_123608, &unk_DB2C0);
  return sub_83D9C((a2 + *(v3 + 44)));
}

uint64_t sub_83D9C@<X0>(char *a1@<X8>)
{
  v54 = a1;
  v53 = sub_66D4(&qword_123610, &qword_E0CF0);
  v55 = *(v53 - 8);
  v1 = __chkstk_darwin(v53);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v56 = &v51 - v3;
  v4 = sub_D61D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D61C0();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v59 = sub_D61F0();

  (*(v5 + 8))(v7, v4);
  v58 = sub_D6180();
  sub_D63E0();
  sub_D57C0();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = objc_opt_self();
  v9 = [v52 bundleForClass:ObjCClassFromMetadata];
  v83._countAndFlagsBits = 2777980912;
  v83._object = 0xA400000000000000;
  v88._object = 0x80000000000E9500;
  v88._countAndFlagsBits = 0xD000000000000019;
  sub_D66D0(v88);
  v89._countAndFlagsBits = 2777980912;
  v89._object = 0xA400000000000000;
  sub_D66D0(v89);
  v49._countAndFlagsBits = 0xE000000000000000;
  v90._object = 0x80000000000E9500;
  v90._countAndFlagsBits = 0xD000000000000019;
  v94.value._countAndFlagsBits = 0;
  v94.value._object = 0;
  v10.super.isa = v9;
  v11 = sub_D4E80(v90, v94, v10, v83, 0, v49);
  v13 = v12;

  v83._countAndFlagsBits = v11;
  v83._object = v13;
  sub_DFAC();
  v14 = sub_D5F50();
  v16 = v15;
  LOBYTE(v11) = v17;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = sub_D5DF0();
  v22 = swift_getKeyPath();
  LOBYTE(v69[0]) = v11 & 1;
  v83._countAndFlagsBits = v14;
  v83._object = v16;
  LOBYTE(v84) = v11 & 1;
  *(&v84 + 1) = *v66;
  DWORD1(v84) = *&v66[3];
  *(&v84 + 1) = v19;
  *&v85 = KeyPath;
  BYTE8(v85) = 1;
  *(&v85 + 9) = *v65;
  HIDWORD(v85) = *&v65[3];
  *&v86 = v22;
  *(&v86 + 1) = v21;
  sub_D5E10();
  sub_66D4(&qword_123618, &unk_DB330);
  sub_3A91C();
  v23 = v56;
  sub_D5FC0();
  v67[0] = v83;
  v67[1] = v84;
  v67[2] = v85;
  v67[3] = v86;
  sub_FC3C(v67, &qword_123618, &unk_DB330);
  v24 = [v52 bundleForClass:ObjCClassFromMetadata];
  v83._countAndFlagsBits = 2777980912;
  v83._object = 0xA400000000000000;
  v91._countAndFlagsBits = 0xD00000000000001FLL;
  v91._object = 0x80000000000E9520;
  sub_D66D0(v91);
  v92._countAndFlagsBits = 2777980912;
  v92._object = 0xA400000000000000;
  sub_D66D0(v92);
  v50._countAndFlagsBits = 0xE000000000000000;
  v93._countAndFlagsBits = 0xD00000000000001FLL;
  v93._object = 0x80000000000E9520;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v25.super.isa = v24;
  v26 = sub_D4E80(v93, v95, v25, v83, 0, v50);
  v28 = v27;

  v83._countAndFlagsBits = v26;
  v83._object = v28;
  v29 = sub_D5F50();
  v31 = v30;
  LOBYTE(v24) = v32;
  v52 = v33;
  v51 = swift_getKeyPath();
  LOBYTE(v28) = v24 & 1;
  LOBYTE(v83._countAndFlagsBits) = v24 & 1;
  v34 = *(v55 + 16);
  v35 = v57;
  v36 = v53;
  v34(v57, v23, v53);
  v69[0] = v59;
  v69[1] = 0;
  LOWORD(v70) = 1;
  *(&v70 + 2) = v63;
  WORD3(v70) = v64;
  *(&v70 + 1) = v58;
  v37 = v60;
  v71 = v60;
  v72 = v61;
  v38 = v62;
  v73 = v62;
  v39 = v59;
  v40 = v54;
  *(v54 + 3) = v61;
  *(v40 + 4) = v38;
  *(v40 + 1) = v70;
  *(v40 + 2) = v37;
  *v40 = v39;
  v41 = sub_66D4(&qword_123658, &unk_DB350);
  v34(&v40[*(v41 + 48)], v35, v36);
  v42 = &v40[*(v41 + 64)];
  *&v74 = v29;
  *(&v74 + 1) = v31;
  LOBYTE(v75[0]) = v28;
  *(v75 + 1) = *v68;
  DWORD1(v75[0]) = *&v68[3];
  v43 = v51;
  v44 = v52;
  *(&v75[0] + 1) = v52;
  *&v75[1] = v51;
  WORD4(v75[1]) = 1;
  BYTE10(v75[1]) = 1;
  v45 = v74;
  *(v42 + 27) = *(v75 + 11);
  v46 = v75[0];
  *v42 = v45;
  *(v42 + 1) = v46;
  sub_FBD4(v69, &v83, &qword_123660, &unk_E0D80);
  sub_FBD4(&v74, &v83, &qword_123668, &qword_DB360);
  v47 = *(v55 + 8);
  v47(v56, v36);
  v76[0] = v29;
  v76[1] = v31;
  v77 = v28;
  *v78 = *v68;
  *&v78[3] = *&v68[3];
  v79 = v44;
  v80 = v43;
  v81 = 1;
  v82 = 1;
  sub_FC3C(v76, &qword_123668, &qword_DB360);
  v47(v57, v36);
  v83 = v59;
  LOWORD(v84) = 1;
  *(&v84 + 2) = v63;
  WORD3(v84) = v64;
  *(&v84 + 1) = v58;
  v85 = v60;
  v86 = v61;
  v87 = v62;
  return sub_FC3C(&v83, &qword_123660, &unk_E0D80);
}

uint64_t sub_8448C()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Mail Import All Set] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_84618(uint64_t (*a1)(uint64_t))
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v6 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_D5320();
  v8 = sub_D68A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "[Mail Import All Set] tapped on Done", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return a1(v10);
}

uint64_t sub_847C0()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 1162760004;
  v23._object = 0xE400000000000000;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v27._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 1162760004;
  v25._object = 0xE400000000000000;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v2.super.isa = v1;
  v27._object = 0xA400000000000000;
  sub_D4E80(v25, v26, v2, v27, 0, v11);

  sub_DFAC();
  v3 = sub_D5F50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_D63E0();
  sub_D5930();
  v22 = v7 & 1;
  *&v12 = v3;
  *(&v12 + 1) = v5;
  LOBYTE(v13) = v7 & 1;
  *(&v13 + 1) = v9;
  sub_D5E20();
  sub_66D4(&qword_121370, &qword_DB270);
  sub_3A810();
  sub_D5FC0();
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v20;
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v17;
  v21[0] = v12;
  v21[1] = v13;
  return sub_FC3C(v21, &qword_121370, &qword_DB270);
}

unint64_t sub_849C8()
{
  result = qword_127718;
  if (!qword_127718)
  {
    sub_6110(&qword_127700, &qword_E0C48);
    sub_84C20(&qword_1234A0, &type metadata accessor for OBKView, &protocol conformance descriptor for OBKView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127718);
  }

  return result;
}

unint64_t sub_84A84()
{
  result = qword_127720;
  if (!qword_127720)
  {
    sub_6110(&qword_1276F0, &qword_E0C38);
    sub_84B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127720);
  }

  return result;
}

unint64_t sub_84B10()
{
  result = qword_127728;
  if (!qword_127728)
  {
    sub_6110(&qword_127710, &qword_E0C58);
    sub_109A8(&qword_127730, &qword_127738, &unk_E0C60, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127728);
  }

  return result;
}

uint64_t sub_84BC8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_84C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_84C84()
{
  result = qword_127768;
  if (!qword_127768)
  {
    sub_6110(&qword_127770, qword_E0D90);
    sub_849C8();
    sub_84A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127768);
  }

  return result;
}

uint64_t sub_84D1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = sub_66D4(&qword_1277A0, &unk_E0DF0);
  result = sub_2AEE0(v4, v5, v6, v7, a1 + *(v8 + 80));
  *a2 = result & 1;
  return result;
}

uint64_t sub_84D94(uint64_t a1, uint64_t a2)
{
  sub_2A5C4(a2, v18);
  v2 = sub_38BFC(v18, v18[3]);
  __chkstk_darwin(v2);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v7 = type metadata accessor for MSRepositoryDefault();
  v17[3] = v7;
  v17[4] = &off_1188F0;
  v17[0] = v6;
  _s9ViewModelCMa_1(0);
  v8 = swift_allocObject();
  v9 = sub_38BFC(v17, v7);
  __chkstk_darwin(v9);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;

  v15 = sub_894E0(v14, v13, v8);

  sub_67D4(v17);
  sub_67D4(v18);
  return v15;
}

uint64_t sub_84F70@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_66D4(&qword_127850, &qword_E0E50);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v18 = v1;
  v17[0] = sub_66D4(&qword_127858, &qword_E0E58);
  v6 = sub_6110(&qword_127860, &unk_E0E60);
  v7 = sub_6110(&qword_124770, &qword_DC340);
  v8 = sub_6110(&qword_127868, &qword_E0E70);
  v9 = sub_6110(&qword_127870, &qword_E0E78);
  v10 = sub_109A8(&qword_127878, &qword_127870, &qword_E0E78, &protocol conformance descriptor for List<A, B>);
  v11 = sub_DFAC();
  *&v22 = v9;
  *(&v22 + 1) = &type metadata for String;
  *&v23 = v10;
  *(&v23 + 1) = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v22 = v8;
  *(&v22 + 1) = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v22 = v6;
  *(&v22 + 1) = v7;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_D5850();
  v15 = &v5[*(v3 + 44)];
  *v15 = sub_89334;
  type metadata accessor for MSAutoReplyView(0);
  v15[2] = 0;
  v15[3] = 0;
  v15[1] = 0;
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1, &unk_DAB00);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v22 = v19;
  v23 = v20;
  v24[0] = v21[0];
  *(v24 + 9) = *(v21 + 9);
  sub_A0C80(&v22, 19279, 0xE200000000000000);
  v25 = v22;
  sub_E158(&v25);

  v26 = v23;
  v27[0] = v24[0];
  *(v27 + 9) = *(v24 + 9);
  sub_FC3C(&v26, &qword_120EE8, &qword_D8DD0);
  return sub_FC3C(v5, &qword_127850, &qword_E0E50);
}

uint64_t sub_85310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v39 = a2;
  v36 = sub_D5B20();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_66D4(&qword_127870, &qword_E0E78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_66D4(&qword_127868, &qword_E0E70);
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_66D4(&qword_127860, &unk_E0E60);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  __chkstk_darwin(v11);
  v31 = &v30 - v13;
  v41 = a1;
  sub_66D4(&qword_127880, &qword_E0EA8);
  sub_109A8(&qword_127888, &qword_127880, &qword_E0EA8, &protocol conformance descriptor for TupleView<A>);
  sub_D5E60();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v42._countAndFlagsBits = 2777980912;
  v42._object = 0xA400000000000000;
  v45._countAndFlagsBits = 0x5045522D4F545541;
  v45._object = 0xEA0000000000594CLL;
  sub_D66D0(v45);
  v46._countAndFlagsBits = 2777980912;
  v46._object = 0xA400000000000000;
  sub_D66D0(v46);
  v29._countAndFlagsBits = 0xE000000000000000;
  v47._countAndFlagsBits = 0x5045522D4F545541;
  v47._object = 0xEA0000000000594CLL;
  v48.value._countAndFlagsBits = 0;
  v48.value._object = 0;
  v16.super.isa = v15;
  v17 = sub_D4E80(v47, v48, v16, v42, 0, v29);
  v19 = v18;

  v42._countAndFlagsBits = v17;
  v42._object = v19;
  v20 = sub_109A8(&qword_127878, &qword_127870, &qword_E0E78, &protocol conformance descriptor for List<A, B>);
  v21 = sub_DFAC();
  sub_D6040();

  (*(v5 + 8))(v7, v4);
  v22 = v33;
  v23 = v35;
  v24 = v36;
  (*(v33 + 104))(v35, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v36);
  v42._countAndFlagsBits = v4;
  v42._object = &type metadata for String;
  v43 = v20;
  v44 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_D60D0();
  (*(v22 + 8))(v23, v24);
  (*(v34 + 8))(v10, v8);
  v40 = v32;
  sub_66D4(&qword_124770, &qword_DC340);
  v42._countAndFlagsBits = v8;
  v42._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1247A0, &qword_124770, &qword_DC340, &protocol conformance descriptor for TupleToolbarContent<A>);
  v27 = v37;
  sub_D6120();
  return (*(v38 + 8))(v26, v27);
}

uint64_t sub_85898@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v108 = a2;
  v3 = sub_66D4(&qword_127890, &qword_E0FB0);
  v106 = *(v3 - 8);
  v107 = v3;
  __chkstk_darwin(v3);
  v105 = &v83 - v4;
  v92 = sub_66D4(&qword_127898, &qword_E0FB8);
  v91 = *(v92 - 8);
  v5 = __chkstk_darwin(v92);
  v104 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v83 - v7;
  v102 = sub_66D4(&qword_1278A0, &qword_E0FC0);
  v90 = *(v102 - 8);
  v8 = __chkstk_darwin(v102);
  v110 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v83 - v10;
  v89 = sub_66D4(&qword_1278A8, &qword_E0FC8);
  v97 = *(v89 - 8);
  v11 = __chkstk_darwin(v89);
  v94 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v83 - v13;
  v14 = sub_66D4(&qword_1278B0, &qword_E0FD0);
  v15 = __chkstk_darwin(v14 - 8);
  v103 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v83 - v17;
  v18 = sub_66D4(&qword_1278B8, &qword_E0FD8);
  v100 = *(v18 - 8);
  v101 = v18;
  v19 = __chkstk_darwin(v18);
  v98 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v83 - v21;
  v111 = a1;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = [v24 bundleForClass:ObjCClassFromMetadata];
  v112._countAndFlagsBits = 2777980912;
  v112._object = 0xA400000000000000;
  v116._object = 0x80000000000E9560;
  v116._countAndFlagsBits = 0xD000000000000011;
  sub_D66D0(v116);
  v117._countAndFlagsBits = 2777980912;
  v117._object = 0xA400000000000000;
  sub_D66D0(v117);
  v81._countAndFlagsBits = 0xE000000000000000;
  v118._object = 0x80000000000E9560;
  v118._countAndFlagsBits = 0xD000000000000011;
  v122.value._countAndFlagsBits = 0;
  v122.value._object = 0;
  v26.super.isa = v25;
  v27 = sub_D4E80(v118, v122, v26, v112, 0, v81);
  v29 = v28;

  v112._countAndFlagsBits = v27;
  v112._object = v29;
  v88 = sub_DFAC();
  v112._countAndFlagsBits = sub_D5F50();
  v112._object = v30;
  v113 = v31 & 1;
  v114 = v32;
  v115 = 256;
  sub_66D4(&qword_121338, &qword_DF070);
  v33 = sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_109A8(&qword_121340, &qword_121338, &qword_DF070, &protocol conformance descriptor for Toggle<A>);
  v34 = sub_4ABC8();
  v95 = v22;
  v87 = v33;
  v86 = v34;
  sub_D63A0();
  v35 = *(a1 + *(type metadata accessor for MSAutoReplyView(0) + 20) + 8);
  _s9ViewModelCMa_1(0);
  sub_8B3C8(&unk_127818, _s9ViewModelCMa_1, &unk_DAB00);
  v85 = v35;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v112._countAndFlagsBits) == 1)
  {
    v84 = &v83;
    __chkstk_darwin(v36);
    v83 = a1;
    v37 = [v24 bundleForClass:ObjCClassFromMetadata];
    v112._countAndFlagsBits = 2777980912;
    v112._object = 0xA400000000000000;
    v119._countAndFlagsBits = 0xD000000000000013;
    v119._object = 0x80000000000E9580;
    sub_D66D0(v119);
    v120._countAndFlagsBits = 2777980912;
    v120._object = 0xA400000000000000;
    sub_D66D0(v120);
    v82._countAndFlagsBits = 0xE000000000000000;
    v121._countAndFlagsBits = 0xD000000000000013;
    v121._object = 0x80000000000E9580;
    v123.value._countAndFlagsBits = 0;
    v123.value._object = 0;
    v38.super.isa = v37;
    v39 = sub_D4E80(v121, v123, v38, v112, 0, v82);
    v41 = v40;

    v112._countAndFlagsBits = v39;
    v112._object = v41;
    v112._countAndFlagsBits = sub_D5F50();
    v112._object = v42;
    v113 = v43 & 1;
    v114 = v44;
    sub_66D4(&qword_1278C8, &qword_E1030);
    sub_109A8(&qword_1278D0, &qword_1278C8, &qword_E1030, &protocol conformance descriptor for TupleView<A>);
    v45 = sub_D6370();
    v84 = &v83;
    __chkstk_darwin(v45);
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v112._countAndFlagsBits = sub_D5F50();
    v112._object = v46;
    v113 = v47 & 1;
    v114 = v48;
    v115 = 256;
    v49 = v96;
    v50 = sub_D63A0();
    __chkstk_darwin(v50);
    sub_66D4(&qword_1278D8, &unk_E1080);
    v51 = sub_6110(&qword_121420, &qword_DA840);
    v52 = sub_109A8(&qword_121460, &qword_121420, &qword_DA840, &protocol conformance descriptor for TextField<A>);
    v112._countAndFlagsBits = v51;
    v112._object = v52;
    swift_getOpaqueTypeConformance2();
    v53 = v99;
    sub_D6390();
    v54 = *(v97 + 16);
    v55 = v89;
    (v54)(v94, v109);
    v56 = v90;
    v88 = *(v90 + 16);
    v88(v110, v49, v102);
    v57 = v91;
    v87 = *(v91 + 16);
    v58 = v92;
    v87(v104, v53, v92);
    v59 = v105;
    v60 = v55;
    v54();
    v61 = sub_66D4(&qword_1278E0, &qword_E1090);
    v62 = v59 + *(v61 + 48);
    v63 = v59;
    v64 = v102;
    v88(v62, v110, v102);
    v65 = v104;
    v87((v63 + *(v61 + 64)), v104, v58);
    v66 = *(v57 + 8);
    v66(v99, v58);
    v67 = *(v56 + 8);
    v67(v96, v64);
    v68 = *(v97 + 8);
    v68(v109, v60);
    v66(v65, v58);
    v67(v110, v64);
    v68(v94, v60);
    v69 = v93;
    sub_8B338(v105, v93);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v93;
  }

  (*(v106 + 56))(v69, v70, 1, v107);
  v72 = v100;
  v71 = v101;
  v73 = *(v100 + 16);
  v74 = v98;
  v75 = v95;
  v73(v98, v95, v101);
  v76 = v103;
  sub_8B2A8(v69, v103);
  v77 = v108;
  v73(v108, v74, v71);
  v78 = sub_66D4(&qword_1278C0, &qword_E1028);
  sub_8B2A8(v76, &v77[*(v78 + 48)]);
  sub_FC3C(v69, &qword_1278B0, &qword_E0FD0);
  v79 = *(v72 + 8);
  v79(v75, v71);
  sub_FC3C(v76, &qword_1278B0, &qword_E0FD0);
  return (v79)(v74, v71);
}