id sub_2FB0(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [v3 superview];
    v4 = sub_2FB0(v5, a2);
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_33E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_34AC;
  block[3] = &unk_30EA0;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_34AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 localizedFailureReason];
    v9 = [UIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:1];

    v4 = _CPSLocalizedString();
    v5 = [UIAlertAction actionWithTitle:v4 style:1 handler:&stru_30E78];
    [v9 addAction:v5];

    [*(a1 + 40) presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v6 = [*(a1 + 48) cps_imageWithNormalizedOrientation];
    Copy = CGImageCreateCopy([v6 CGImage]);

    [*(*(a1 + 40) + 136) setHeroImage:Copy];
    CGImageRelease(Copy);
    v8 = *(a1 + 40);

    [v8 updateHeroImageSpecifier];
  }
}

void sub_36A8(id a1)
{
  v3 = objc_opt_self();
  v1 = [NSBundle bundleForClass:v3];
  v2 = qword_35D20;
  qword_35D20 = v1;
}

id *sub_3A94(id *result, int a2)
{
  if (a2)
  {
    return [result[4] reloadSpecifiers];
  }

  return result;
}

uint64_t sub_3AA4(uint64_t a1)
{
  v101 = a1;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v1 = sub_46E8(&qword_35220, &unk_29CC0);
  v100 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v109 = &v32[-v100];
  v111 = sub_246F4();
  v107 = *(v111 - 8);
  v108 = v111 - 8;
  v103 = *(v107 + 64);
  v102 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v101);
  v104 = &v32[-v102];
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v106 = &v32[-v105];
  v125 = &v32[-v105];
  v124 = v3;
  v110 = 1;
  sub_246D4();
  if ((*(v107 + 48))(v109, v110, v111) == 1)
  {
    sub_4754(v109);
LABEL_17:
    v37 = 1;
    v38 = sub_24DB4("Invalid URL.", 0xCuLL, 1);
    v40 = v27;
    v28 = sub_24DB4("Diagnostics message for error case when the entered URL can not be parsed.", 0x4AuLL, v37 & 1);
    v39 = v29;
    v41 = sub_149F4(v38, v40, v28, v29);
    v42 = v30;

    v122 = v41;
    v123 = v42;
    v64 = v41;
    v65 = v42;
    v66 = 0;
    goto LABEL_18;
  }

  (*(v107 + 32))(v106, v109, v111);
  v128[0] = sub_246E4();
  v128[1] = v4;
  v99 = v4 != 0;
  v98 = v99;
  sub_47FC(v128);
  if (!v98)
  {
    (*(v107 + 8))(v106, v111);
    goto LABEL_17;
  }

  v89 = 0;
  v88 = sub_4828();
  v90 = _SWCServiceTypeAppLinks;
  _objc_retain(_SWCServiceTypeAppLinks);
  v5 = sub_246E4();
  v7 = sub_488C(v90, v89, v89, v5, v6);
  v8 = v104;
  v94 = v7;
  v121 = v7;
  v127 = 0;
  v93 = objc_opt_self();
  (*(v107 + 16))(v8, v106, v111);
  isa = sub_246C4().super.isa;
  v91 = *(v107 + 8);
  v92 = v107 + 8;
  v91(v104, v111);
  v120 = v127;
  v97 = [v93 serviceDetailsWithServiceSpecifier:v94 URLComponents:isa limit:1 error:&v120];
  v95 = v120;
  _objc_retain(v120);
  v9 = v127;
  v127 = v95;
  _objc_release(v9);
  _objc_release(isa);
  if (v97)
  {
    v87 = v97;
    v84 = v97;
    sub_49A8();
    v83 = sub_24E24();
    v112 = v83;
    v82 = sub_46E8(&qword_35240, &unk_29CD0);
    sub_4A0C();
    sub_24EB4();
    v85 = v126;

    _objc_release(v84);
    v86 = v85;
  }

  else
  {
    v33 = v127;
    v34 = sub_24714();
    _objc_release(v33);
    swift_willThrow();

    v86 = 0;
  }

  v81 = v86;
  if (!v86)
  {
    goto LABEL_15;
  }

  v80 = v81;
  v77 = v81;
  v117 = v81;
  v78 = [v81 serviceSpecifier];
  v10 = [v78 applicationIdentifier];
  v79 = v10;
  if (v10)
  {
    v76 = v79;
    v71 = v79;
    v72 = sub_24D84();
    v73 = v11;
    _objc_release(v71);
    v74 = v72;
    v75 = v73;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  v69 = v75;
  v70 = v74;
  if (!v75)
  {
    _objc_release(v78);
    _objc_release(v77);
LABEL_15:
    v43 = 1;
    v44 = sub_24DB4("The URL is not a Universal Link for any installed app.", 0x36uLL, 1);
    v46 = v22;
    v23 = sub_24DB4("Diagnostic message for when the entered URL is not associated as a universal link with any installed application.", 0x71uLL, v43 & 1);
    v45 = v24;
    v47 = sub_149F4(v44, v46, v23, v24);
    v48 = v25;

    sub_46E8(&unk_35360, &unk_29DF0);
    sub_24F94();
    v49 = sub_24D94();
    v50 = v26;

    v118 = v49;
    v119 = v50;
    _objc_release(v94);
    v91(v106, v111);
    v64 = v49;
    v65 = v50;
    v66 = 0;
    goto LABEL_18;
  }

  v67 = v70;
  v68 = v69;
  v61 = v69;
  v55 = v70;
  v115 = v70;
  v116 = v69;
  _objc_release(v78);
  v51 = 1;
  v52 = sub_24DB4("The URL is a Universal Link for the app with identifier “%@.", 0x3EuLL, 0);
  v54 = v12;
  v13 = sub_24DB4("Diagnostic message for when the entered URL is able to open an installed application. First parameter is the application identifier", 0x83uLL, v51 & 1);
  v53 = v14;
  v59 = sub_149F4(v52, v54, v13, v14);
  v60 = v15;

  v57 = sub_46E8(&unk_35360, &unk_29DF0);
  v58 = sub_24F94();
  v56 = v16;

  v56[3] = &type metadata for String;
  v17 = sub_48EC();
  v18 = v55;
  v19 = v56;
  v20 = v61;
  v56[4] = v17;
  *v19 = v18;
  v19[1] = v20;
  sub_4964();
  v62 = sub_24D94();
  v63 = v21;

  v113 = v62;
  v114 = v63;

  _objc_release(v77);
  _objc_release(v94);
  v91(v106, v111);
  v64 = v62;
  v65 = v63;
  v66 = 1;
LABEL_18:
  v35 = v66;
  v36 = v65;
  return v64;
}

uint64_t sub_46E8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4754(uint64_t a1)
{
  v3 = sub_246F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_4828()
{
  v2 = qword_35228;
  if (!qword_35228)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35228);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_48EC()
{
  v2 = qword_35230;
  if (!qword_35230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_49A8()
{
  v2 = qword_35238;
  if (!qword_35238)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35238);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_4A0C()
{
  v2 = qword_35248;
  if (!qword_35248)
  {
    sub_4A94(&qword_35240, &unk_29CD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35248);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4A94(uint64_t *a1, uint64_t *a2)
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

id sub_4B20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = sub_24D74();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v7 = sub_24D74();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v13 initWithServiceType:a1 applicationIdentifier:v10 domain:?];
  _objc_release(v8);
  _objc_release(v10);
  _objc_release(a1);
  return v6;
}

void sub_4C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_5194;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v16 = sub_24754();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v12 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v11 - v12;
  v17 = &v11 - v12;
  v33 = __chkstk_darwin(v13);
  v31 = v4;
  v32 = v5;
  v21 = objc_opt_self();
  (*(v14 + 16))(v3, v13, v16);
  sub_24724(v6);
  v23 = v7;
  (*(v14 + 8))(v17, v16);

  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  *(v8 + 16) = v18;
  *(v8 + 24) = v9;
  v29 = v10;
  v30 = v8;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_584C;
  v28 = &unk_31068;
  v22 = _Block_copy(&aBlock);

  [v21 fetchABRMetadataWithURL:v23 completion:v22];
  _Block_release(v22);
  _objc_release(v23);
}

void sub_4E90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v15 = a3;
  v16 = a4;
  v18 = sub_5A4C;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v20 = 0;
  v24 = sub_24D04();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v13 - v13;
  v28 = sub_24D24();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v27 = &v13 - v14;
  v41 = v4;
  v40 = v5;
  v38 = v6;
  v39 = v7;
  sub_5990();
  v30 = sub_24ED4();
  _objc_retain(v19);

  swift_errorRetain();
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v8[2] = v19;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;
  v36 = v12;
  v37 = v8;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_5744;
  v35 = &unk_310D8;
  v29 = _Block_copy(&aBlock);

  sub_5794();
  sub_57AC();
  sub_24EE4();
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  _objc_release(v30);
}

uint64_t sub_51A0(void *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  _objc_retain(a1);
  if (a1)
  {
    v4 = [a1 clipBundleID];
    v42 = v4;
    if (v4)
    {
      v38 = sub_24D84();
      v39 = v5;
      _objc_release(v42);
      v40 = v38;
      v41 = v39;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    _objc_release(a1);
    v43 = v40;
    v44 = v41;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  if (v44)
  {
    v33 = sub_24DB4("An Advanced Experience is registered for this App Clip with bundle ID: %@", 0x49uLL, 1);
    v34 = v6;
    v7 = sub_24DB4("Diagnostics message for success obtaining an advanced experience. Parameter is bundle id of the corresponding app clip.", 0x77uLL, 1);
    sub_149F4(v33, v34, v7, v8);

    sub_46E8(&unk_35360, &unk_29DF0);
    sub_24F94();
    v35 = v9;

    v35[3] = &type metadata for String;
    v35[4] = sub_48EC();
    *v35 = v43;
    v35[1] = v44;
    sub_4964();
    v36 = sub_24D94();
    v37 = v10;

    a2(v36, v37, v43, v44);
  }

  else
  {
    swift_errorRetain();
    if (a4)
    {
      v22 = sub_24DB4("Unable to load App Clip experiences: %@", 0x27uLL, 1);
      v23 = v16;
      v17 = sub_24DB4("Diagnostics message for when an error is encountered when determining if an advanced experience is registered.", 0x6EuLL, 1);
      sub_149F4(v22, v23, v17, v18);

      sub_46E8(&unk_35360, &unk_29DF0);
      sub_24F94();
      v26 = v19;
      swift_getErrorValue();
      v24 = sub_24FA4();
      v25 = v20;
      v26[3] = &type metadata for String;
      v26[4] = sub_48EC();
      *v26 = v24;
      v26[1] = v25;
      sub_4964();
      v27 = sub_24D94();
      v28 = v21;

      (a2)(v27, v28, 0);
    }

    else
    {
      v29 = sub_24DB4("No Advanced Experience is registered for this URL.", 0x32uLL, 1);
      v30 = v12;
      v13 = sub_24DB4("Diagnostics message for failure obtaining an advanced experience.", 0x41uLL, 1);
      v31 = sub_149F4(v29, v30, v13, v14);
      v32 = v15;

      (a2)(v31, v32, 0);
    }
  }
}

uint64_t sub_5744(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_57AC()
{
  sub_5AC4(0);
  sub_24D04();
  sub_5BB4();
  sub_46E8(&qword_35250, qword_29D60);
  sub_5C34();
  return sub_24F54();
}

uint64_t sub_584C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);

  _objc_retain(a2);
  _objc_retain(a3);
  v4(a2);

  _objc_release(a2);
}

uint64_t sub_5918(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_5990()
{
  v2 = qword_35290;
  if (!qword_35290)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35290);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_59F4()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_5A60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_5AC4(uint64_t result)
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

      sub_24D04();
      v1 = sub_24E34();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_24D04();
    return v2;
  }

  return result;
}

unint64_t sub_5BB4()
{
  v2 = qword_35320;
  if (!qword_35320)
  {
    sub_24D04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5C34()
{
  v2 = qword_35330;
  if (!qword_35330)
  {
    sub_4A94(&qword_35250, qword_29D60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35330);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5CBC(void *a1, uint64_t a2)
{
  v74 = a1;
  v67 = a2;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v71 = sub_24754();
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v68 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = &v28 - v68;
  v83 = __chkstk_darwin(v74);
  v82 = v2;
  (*(v69 + 16))(&v28 - v68);
  sub_24724(v3);
  v73 = v4;
  (*(v69 + 8))(v72, v71);
  [v74 setClipURL:v73];
  _objc_release(v73);
  if ([v74 hasValidAssociatedDomainsToLaunchAppClip])
  {
    v58 = 1;
    v59 = sub_24DB4("The URL is from an associated domain for this app clip.", 0x37uLL, 1);
    v61 = v5;
    v6 = sub_24DB4("Diagnostic message for valid associated domain", 0x2EuLL, v58 & 1);
    v60 = v7;
    v62 = sub_149F4(v59, v61, v6, v7);
    v63 = v8;

    v75 = v62;
    v76 = v63;
    v64 = v62;
    v65 = v63;
    v66 = 1;
  }

  else
  {
    v50 = 1;
    v80 = sub_24DB4("", 0, 1);
    v81 = v9;
    v55 = [v74 clipVerifiedAssociatedDomains];
    v10 = sub_24E24();
    v54 = &v79;
    v79 = v10;
    v52 = sub_24DB4(", ", 2uLL, v50 & 1);
    v53 = v11;
    v51 = sub_46E8(&qword_35258, &unk_29D80);
    sub_62F8();
    v56 = sub_24D64();
    v57 = v12;

    sub_6380(v54);
    _objc_release(v55);
    v77 = v56;
    v78 = v57;
    if (sub_24DD4())
    {
      v31 = 1;
      v32 = sub_24DB4("The App Clip has no associated domains.", 0x27uLL, 1);
      v34 = v23;
      v24 = sub_24DB4("Diagnostic message for when there are no valid associated domains found for this App Clip", 0x59uLL, v31 & 1);
      v33 = v25;
      v35 = sub_149F4(v32, v34, v24, v25);
      v36 = v26;

      v80 = v35;
      v81 = v36;

      v48 = v35;
      v49 = v36;
    }

    else
    {
      v37 = 1;
      v38 = sub_24DB4("The URL does not match the associated domains for this App Clip. Valid domains are: %@.", 0x57uLL, 1);
      v40 = v13;
      v14 = sub_24DB4("Diagnostic message for when URL is not a valid associated domain. First parameter is the list of valid associated domains.", 0x7AuLL, v37 & 1);
      v39 = v15;
      v44 = sub_149F4(v38, v40, v14, v15);
      v45 = v16;

      v42 = sub_46E8(&unk_35360, &unk_29DF0);
      v43 = sub_24F94();
      v41 = v17;

      v41[3] = &type metadata for String;
      v18 = sub_48EC();
      v19 = v56;
      v20 = v57;
      v21 = v41;
      v41[4] = v18;
      *v21 = v19;
      v21[1] = v20;
      sub_4964();
      v46 = sub_24D94();
      v47 = v22;

      v80 = v46;
      v81 = v47;

      v48 = v46;
      v49 = v47;
    }

    v30 = v49;
    v29 = v48;

    sub_47FC(&v80);
    v64 = v29;
    v65 = v30;
    v66 = 0;
  }

  return v64;
}

unint64_t sub_62F8()
{
  v2 = qword_35260;
  if (!qword_35260)
  {
    sub_4A94(&qword_35258, &unk_29D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_63C0(uint64_t a1)
{
  v23 = a1;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v2 = sub_46E8(&qword_35268, &qword_2A1F0);
  v22 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v32 = &v17[-v22];
  v33 = type metadata accessor for Requirement(0);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v24 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v23);
  v25 = &v17[-v24];
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v27 = &v17[-v26];
  v39 = &v17[-v26];
  v38 = v5;
  v37 = v1;
  v6 = *(*v1 + 376);
  v29 = 2;
  v6();
  (*(*v28 + 352))(5, v29);
  if ((*(v30 + 48))(v32, 1, v33) == 1)
  {
    return sub_670C(v32);
  }

  v7 = v28;
  v8 = sub_67CC(v32, v27);
  (*(*v7 + 304))(v8);
  v19 = sub_3AA4(v23);
  v20 = v9;
  v21 = v10;
  v35 = v19;
  v36 = v9;
  v34 = v10 & 1;

  v11 = v20;
  v12 = &v27[*(v33 + 24)];
  *v12 = v19;
  v12[1] = v11;

  if (v21)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v13 = v27;
  v14 = v25;
  v15 = v28;
  v27[*(v33 + 28)] = v18;
  sub_6890(v13, v14);
  (*(*v15 + 360))(2, v25);
  sub_697C(v25);

  return sub_697C(v27);
}

uint64_t sub_670C(uint64_t a1)
{
  v4 = type metadata accessor for Requirement(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_24794();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

__n128 sub_67CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for Requirement(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  result = *(a1 + v3[6]);
  *(a2 + v3[6]) = result;
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

uint64_t sub_6890(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = type metadata accessor for Requirement(0);
  *(a2 + v8[5]) = *(a1 + v8[5]);
  v3 = (a1 + v8[6]);
  v6 = (a2 + v8[6]);
  *v6 = *v3;
  v7 = v3[1];

  result = a2;
  v6[1] = v7;
  *(a2 + v8[7]) = *(a1 + v8[7]);
  return result;
}

uint64_t sub_697C(uint64_t a1)
{
  v1 = sub_24794();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for Requirement(0);

  return a1;
}

id sub_69FC()
{
  v2 = (v0 + OBJC_IVAR____TtC24AppClipDeveloperSettings28MetaTagRequirementController_webView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_6A6C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC24AppClipDeveloperSettings28MetaTagRequirementController_webView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_6BB0()
{
  v2 = (v0 + OBJC_IVAR____TtC24AppClipDeveloperSettings28MetaTagRequirementController_completion);
  swift_beginAccess();
  v3 = *v2;
  sub_6C24(*v2, v2[1]);
  swift_endAccess();
  return v3;
}

uint64_t sub_6C24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_6C58(uint64_t a1, uint64_t a2)
{
  sub_6C24(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC24AppClipDeveloperSettings28MetaTagRequirementController_completion);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_6CF4(v3, v4);
  swift_endAccess();
  return sub_6CF4(a1, a2);
}

uint64_t sub_6CF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_6D94(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  (*(&stru_68.offset + (*v3 & swift_isaMask)))(a1, sub_71A4);
}

void sub_6E84(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void), uint64_t a4)
{
  v27 = 0;
  v28 = 0;
  v31 = a1;
  v32 = a2;
  v29 = a3;
  v30 = a4;

  if (a2)
  {
    v13 = sub_24DB4("The Smart App Banner meta tag has the App Clip Bundle ID: %@", 0x3CuLL, 1);
    v14 = v8;
    v9 = sub_24DB4("Diagnostic message for when a bundle ID was obtained from the meta tag corresponding to the developer entered URL.", 0x72uLL, 1);
    sub_149F4(v13, v14, v9, v10);

    sub_46E8(&unk_35360, &unk_29DF0);
    sub_24F94();
    v15 = v11;

    v15[3] = &type metadata for String;
    v15[4] = sub_48EC();
    *v15 = a1;
    v15[1] = a2;
    sub_4964();
    v16 = sub_24D94();
    v17 = v12;

    v27 = v16;
    v28 = v17;

    v22 = v16;
    v23 = v17;
  }

  else
  {
    v18 = sub_24DB4("The Smart App Banner meta tag is missing the Bundle ID for an App Clip.", 0x47uLL, 1);
    v19 = v4;
    v5 = sub_24DB4("Diagnostic message for when there is no valid app clip meta tag parameter", 0x49uLL, 1);
    v20 = sub_149F4(v18, v19, v5, v6);
    v21 = v7;

    v27 = v20;
    v28 = v21;
    v22 = v20;
    v23 = v21;
  }

  a3(v22, v23, a1, a2);

  sub_47FC(&v27);
}

void sub_71B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v38 = a2;
  v37 = a3;
  v28 = "Fatal error";
  v29 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v30 = "AppClipDeveloperSettings/MetaTagRequirementController.swift";
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v51 = 0;
  v31 = sub_24754();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &v16 - v34;
  v39 = sub_246A4();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v43 = *(v40 + 64);
  v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v51);
  v44 = &v16 - v42;
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v46 = &v16 - v45;
  v61 = &v16 - v45;
  v60 = v5;
  v58 = v6;
  v59 = v7;
  v57 = v3;
  sub_7848();
  v52 = sub_78AC();
  v56 = v52;
  v47 = [objc_opt_self() nonPersistentDataStore];
  [v52 setWebsiteDataStore:?];
  _objc_release(v47);
  v49 = _SFApplicationNameForUserAgent();
  sub_24D84();
  v48 = v8;
  v50 = sub_24D74();

  _objc_release(v49);
  [v52 setApplicationNameForUserAgent:v50];
  _objc_release(v50);
  sub_78DC();
  _objc_retain(v52);
  v9 = sub_7940(v52, 0.0, 0.0, 0.0, 0.0);
  v10 = *v53;
  v54 = &swift_isaMask;
  v11 = (*&stru_68.sectname[v10 & swift_isaMask])(v9);
  v55 = (*(&stru_20.nsects + (*v53 & *v54)))(v11);
  if (v55)
  {
    v27 = v55;
  }

  else
  {
    sub_24F84();
    __break(1u);
  }

  v12 = v53;
  v23 = v27;
  _objc_retain(v53);
  v22 = v12;
  [v23 setNavigationDelegate:?];
  swift_unknownObjectRelease();
  _objc_release(v23);

  v13 = *v12;
  v25 = &swift_isaMask;
  (*&stru_68.segname[(v13 & swift_isaMask) + 8])(v38, v37);
  v14 = v53;
  (*(v32 + 16))(v35, v36, v31);
  v24 = sub_79A0();
  sub_79A8();
  v15 = sub_24694();
  v26 = (*(&stru_20.nsects + (*v14 & *v25)))(v15);
  if (v26)
  {
    v21 = v26;
  }

  else
  {
    sub_24F84();
    __break(1u);
  }

  v17 = v21;
  (*(v40 + 16))(v44, v46, v39);
  v16 = sub_24684();
  v20 = *(v40 + 8);
  v19 = v40 + 8;
  v20(v44, v39);
  v18 = [v17 loadRequest:v16];
  _objc_release(v16);
  _objc_release(v17);
  _objc_release(v18);
  v20(v46, v39);
  _objc_release(v52);
}

unint64_t sub_7848()
{
  v2 = qword_35280;
  if (!qword_35280)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35280);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_78DC()
{
  v2 = qword_35288;
  if (!qword_35288)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35288);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_79B4(void *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_24DB4("document.getElementsByName('apple-itunes-app')[0].content", 0x39uLL, 1);
  v6 = sub_24D74();

  _objc_retain(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v12 = sub_8430;
  v13 = v3;
  aBlock = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = 0;
  v10 = sub_8658;
  v11 = &unk_31170;
  v5 = _Block_copy(&aBlock);

  [a1 evaluateJavaScript:v6 completionHandler:v5];
  _Block_release(v5);
  _objc_release(v6);
}

void *sub_7B08(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = a1;
  v78 = a2;
  v77 = a3;
  v68 = sub_8464;
  v69 = sub_9B88;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v111 = 0;
  v112 = 0;
  v70 = 0;
  v104 = 0u;
  v105 = 0u;
  v101 = 0;
  v94 = 0u;
  v95 = 0u;
  v71 = 0;
  v72 = sub_24D04();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v76 = &v21 - v75;
  v80 = sub_24D24();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v79);
  v84 = &v21 - v83;
  v118 = v3;
  v117 = v4;
  v116 = v5;
  sub_98A8(v3, v115);
  if (v115[3])
  {
    v6 = swift_dynamicCast();
    if (v6)
    {
      v64 = v85;
      v65 = v86;
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    v66 = v64;
    v67 = v65;
  }

  else
  {
    v6 = sub_97B0(v115);
    v66 = 0;
    v67 = 0;
  }

  v62 = v67;
  v63 = v66;
  if (v67)
  {
    v60 = v63;
    v61 = v62;
    v8 = v70;
    v52 = v62;
    v111 = v63;
    v112 = v62;
    v108[1] = v63;
    v108[2] = v62;
    v56 = sub_24DB4(",", 1uLL, 1);
    v57 = v9;
    v55 = sub_9938();
    v54 = &type metadata for String;
    v53 = sub_8438();
    sub_844C();
    v58 = sub_24F34();

    v108[0] = v58;
    v59 = sub_46E8(&qword_35340, &qword_29DE8);
    sub_99B0();
    result = sub_24E04();
    if (v8)
    {
      __break(1u);
    }

    else
    {
      sub_6380(v108);
      v50 = v109;
      v51 = v110;
      if (*(&v110 + 1))
      {
        v48 = v50;
        v49 = v51;
        v39 = *(&v51 + 1);
        v104 = v50;
        v105 = v51;
        v102 = v50;
        v103 = v51;
        v43 = sub_24DB4("=", 1uLL, 1);
        v44 = v12;
        v42 = sub_9A38();
        v41 = &type metadata for Substring;
        v40 = sub_8438();
        sub_844C();
        v45 = sub_24F34();

        v101 = v45;
        v100 = v45;
        sub_9AB0();
        v13 = sub_24D54();
        v46 = v98;
        v47 = v99;
        if (*(&v99 + 1))
        {
          v37 = v46;
          v38 = v47;
          v33 = *(&v47 + 1);
          v34 = v47;
          v35 = *(&v46 + 1);
          v36 = v46;
          v94 = v46;
          v95 = v47;
          if (sub_24E44() == 2)
          {
            v30 = 0;
            sub_5990();
            v32 = sub_24ED4();
            _objc_retain(v77);

            v14 = swift_allocObject();
            v15 = v36;
            v16 = v35;
            v17 = v34;
            v18 = v69;
            v19 = v33;
            v14[2] = v77;
            v14[3] = v15;
            v14[4] = v16;
            v14[5] = v17;
            v14[6] = v19;
            v92 = v18;
            v93 = v14;
            v87 = _NSConcreteStackBlock;
            v88 = 1107296256;
            v89 = 0;
            v90 = sub_5744;
            v91 = &unk_312B0;
            v31 = _Block_copy(&v87);

            sub_5794();
            sub_57AC();
            sub_24EE4();
            (*(v73 + 8))(v76, v72);
            (*(v81 + 8))(v84, v80);
            _Block_release(v31);
            _objc_release(v32);
          }
        }

        v96 = (*&stru_68.segname[*v77 & swift_isaMask])(v13);
        v97 = v20;
        if (v96)
        {
          v27 = &v96;
          v28 = v96;
          v29 = v97;

          sub_96DC(v27);
          v28(0);
        }

        else
        {
          sub_96DC(&v96);
        }
      }

      else
      {
        v106 = (*&stru_68.segname[*v77 & swift_isaMask])();
        v107 = v11;
        if (v106)
        {
          v24 = &v106;
          v25 = v106;
          v26 = v107;

          sub_96DC(v24);
          v25(0);
        }

        else
        {
          sub_96DC(&v106);
        }
      }
    }
  }

  else
  {
    v113 = (*&stru_68.segname[*v77 & swift_isaMask])(v6);
    v114 = v7;
    if (v113)
    {
      v21 = &v113;
      v22 = v113;
      v23 = v114;

      sub_96DC(v21);
      v22(0);
    }

    else
    {
      return sub_96DC(&v113);
    }
  }

  return result;
}

uint64_t sub_8464(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v8 = *a1;
  *(&v8 + 1) = v1;
  *&v9 = v2;
  *(&v9 + 1) = v3;
  v7[2] = v8;
  v7[3] = v1;
  v7[4] = v2;
  v7[5] = v3;
  v7[0] = sub_24DB4("app-clip-bundle-id", 0x12uLL, 1);
  v7[1] = v4;
  sub_9A38();
  sub_9938();
  v6 = sub_24F24();
  sub_47FC(v7);
  return v6 & 1;
}

void *sub_8540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[7] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = (*&stru_68.segname[*a1 & swift_isaMask])();
  v9[1] = v5;
  if (!v9[0])
  {
    return sub_96DC(v9);
  }

  v8 = v9[0];

  sub_96DC(v9);
  v7 = sub_24DE4();
  v8(v7);
}

uint64_t sub_8658(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  if (a2)
  {
    v7[3] = swift_getObjectType();
    v7[0] = a2;
    sub_988C(v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  _objc_retain(a3);
  v5();

  sub_97B0(v8);
}

uint64_t sub_8770(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_8874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a1;
  v9[3] = a2;
  v9[2] = a3;
  v12 = sub_8C28;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v13 = 0;
  v17 = sub_24D04();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = v9 - v9[0];
  v21 = sub_24D24();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v10 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v20 = v9 - v10;
  v34 = v4;
  v33 = v5;
  v32 = v6;
  v31 = v3;
  sub_5990();
  v23 = sub_24ED4();
  _objc_retain(v11);
  v7 = swift_allocObject();
  v8 = v12;
  *(v7 + 16) = v11;
  v29 = v8;
  v30 = v7;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_5744;
  v28 = &unk_311C0;
  v22 = _Block_copy(&aBlock);

  sub_5794();
  sub_57AC();
  sub_24EE4();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  _Block_release(v22);
  _objc_release(v23);
}

void *sub_8B0C(void *a1)
{
  v4[2] = a1;
  v4[0] = (*&stru_68.segname[*a1 & swift_isaMask])();
  v4[1] = v1;
  if (!v4[0])
  {
    return sub_96DC(v4);
  }

  v3 = v4[0];

  sub_96DC(v4);
  v3(0);
}

uint64_t sub_8C30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_8D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a1;
  v9[3] = a2;
  v9[2] = a3;
  v12 = sub_8C28;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v13 = 0;
  v17 = sub_24D04();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = v9 - v9[0];
  v21 = sub_24D24();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v10 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v20 = v9 - v10;
  v34 = v4;
  v33 = v5;
  v32 = v6;
  v31 = v3;
  sub_5990();
  v23 = sub_24ED4();
  _objc_retain(v11);
  v7 = swift_allocObject();
  v8 = v12;
  *(v7 + 16) = v11;
  v29 = v8;
  v30 = v7;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_5744;
  v28 = &unk_31210;
  v22 = _Block_copy(&aBlock);

  sub_5794();
  sub_57AC();
  sub_24EE4();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  _Block_release(v22);
  _objc_release(v23);
}

uint64_t sub_9034(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_9158(uint64_t a1)
{
  v5[1] = a1;
  v8 = sub_8C28;
  v28 = 0;
  v27 = 0;
  v9 = 0;
  v13 = sub_24D04();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5[0] = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = v5 - v5[0];
  v17 = sub_24D24();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v16 = v5 - v6;
  v28 = v2;
  v27 = v1;
  sub_5990();
  v19 = sub_24ED4();
  _objc_retain(v7);
  v3 = swift_allocObject();
  v4 = v8;
  *(v3 + 16) = v7;
  v25 = v4;
  v26 = v3;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_5744;
  v24 = &unk_31260;
  v18 = _Block_copy(&aBlock);

  sub_5794();
  sub_57AC();
  sub_24EE4();
  (*(v10 + 8))(v12, v13);
  (*(v14 + 8))(v16, v17);
  _Block_release(v18);
  _objc_release(v19);
}

uint64_t sub_9418(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

char *sub_951C()
{
  v4 = 0;
  *OBJC_IVAR____TtC24AppClipDeveloperSettings28MetaTagRequirementController_webView = 0;
  v0 = &v4[OBJC_IVAR____TtC24AppClipDeveloperSettings28MetaTagRequirementController_completion];
  *v0 = 0;
  *(v0 + 1) = 0;
  v3.receiver = v4;
  v3.super_class = type metadata accessor for MetaTagRequirementController();
  v2 = objc_msgSendSuper2(&v3, "init");
  _objc_retain(v2);
  v4 = v2;
  _objc_release(v2);
  return v2;
}

id sub_9610()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetaTagRequirementController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_96DC(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

id sub_9740(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = [v5 initWithFrame:a2 configuration:{a3, a4, a5}];
  _objc_release(a1);
  return v8;
}

void *sub_97B0(void *a1)
{
  if (a1[3])
  {
    sub_97EC(a1);
  }

  return a1;
}

uint64_t sub_97EC(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

__n128 sub_988C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_98A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t sub_9938()
{
  v2 = qword_35338;
  if (!qword_35338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_99B0()
{
  v2 = qword_35348;
  if (!qword_35348)
  {
    sub_4A94(&qword_35340, &qword_29DE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9A38()
{
  v2 = qword_35350;
  if (!qword_35350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9AB0()
{
  v2 = qword_35358;
  if (!qword_35358)
  {
    sub_4A94(&qword_35340, &qword_29DE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35358);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9B38()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_9BA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_9C04(uint64_t a1)
{
  v73 = a1;
  v60 = sub_AD04;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v61 = 0;
  v62 = sub_24754();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v68 = &v45 - v67;
  v88 = type metadata accessor for Requirement(v2);
  v84 = *(v88 - 8);
  v85 = v88 - 8;
  v69 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v88);
  v70 = &v45 - v69;
  v71 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v45 - v69);
  v72 = &v45 - v71;
  v99 = &v45 - v71;
  v74 = (*(*(sub_46E8(&qword_35268, &qword_2A1F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v73);
  v75 = &v45 - v74;
  v76 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v77 = &v45 - v76;
  v78 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v79 = &v45 - v78;
  v80 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v86 = &v45 - v80;
  v98 = v10;
  v97 = v1;
  v11 = *(*v1 + 376);
  v87 = 1;
  v11();
  v12 = v81;
  v82 = swift_allocBox();
  v83 = v13;
  v96 = v13;
  (*(*v12 + 352))(v87);
  v89 = *(v84 + 48);
  v90 = v84 + 48;
  if (v89(v86, v87, v88) == 1)
  {
    sub_670C(v86);
    return swift_deallocBox();
  }

  else
  {
    v14 = v81;
    sub_67CC(v86, v83);
    v57 = swift_allocBox();
    v58 = v15;
    v95 = v15;
    v16 = *(*v14 + 352);
    v59 = 1;
    v16(2);
    if (v89(v79, v59, v88) == 1)
    {
      sub_670C(v79);
      swift_deallocBox();
    }

    else
    {
      v17 = v81;
      sub_67CC(v79, v58);
      v54 = swift_allocBox();
      v55 = v18;
      v94 = v18;
      v19 = *(*v17 + 352);
      v56 = 1;
      v19(3);
      if (v89(v77, v56, v88) == 1)
      {
        sub_670C(v77);
        swift_deallocBox();
      }

      else
      {
        v20 = v81;
        v21 = sub_67CC(v77, v55);
        v22 = *(*v20 + 352);
        v53 = 1;
        v22(4, v21);
        if (v89(v75, v53, v88) == 1)
        {
          sub_670C(v75);
        }

        else
        {
          v23 = v81;
          v24 = sub_67CC(v75, v72);
          (*(*v23 + 280))(v24);
          v50 = sub_B520(v73);
          v51 = v25;
          v52 = v26;
          v92 = v50;
          v93 = v25;
          v91 = v26 & 1;

          v27 = v51;
          v28 = (v72 + *(v88 + 24));
          *v28 = v50;
          v28[1] = v27;

          if (v52)
          {
            v49 = 2;
          }

          else
          {
            v49 = 3;
          }

          v29 = v72;
          v30 = v81;
          v31 = v70;
          *(v72 + *(v88 + 28)) = v49;
          sub_6890(v29, v31);
          (*(*v30 + 360))(1, v70);
          v32 = v81;
          v33 = sub_697C(v70);
          (*(*v32 + 208))(v33);

          v45 = v65;
          (*(v64 + 16))(v68, v73, v62);

          v46 = (*(v45 + 80) + 40) & ~*(v45 + 80);
          v47 = (v46 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
          v34 = swift_allocObject();
          v35 = v81;
          v36 = v46;
          v37 = v64;
          v38 = v68;
          v39 = v62;
          v40 = v57;
          v48 = v34;
          v34[2] = v82;
          v34[3] = v35;
          v34[4] = v40;
          (*(v37 + 32))(v34 + v36, v38, v39);
          v41 = v60;
          v42 = v48;
          v43 = v73;
          *(v48 + v47) = v54;
          sub_4C70(v43, v41, v42);

          sub_697C(v72);
        }
      }
    }
  }
}

uint64_t sub_A53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a1;
  v78 = a2;
  v64 = a3;
  v80 = a4;
  v65 = a5;
  v68 = a6;
  v69 = a7;
  v70 = a8;
  v71 = a9;
  v74 = 0;
  v55 = sub_B460;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v83 = 0;
  v84 = 0;
  v56 = 0;
  v57 = sub_24754();
  v59 = *(v57 - 8);
  v58 = v57 - 8;
  v60 = v59;
  v61 = *(v59 + 64);
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(0);
  v63 = v35 - v62;
  v75 = type metadata accessor for Requirement(v9);
  v66 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v67 = v35 - v66;
  v99 = v10;
  v100 = v11;
  v97 = v12;
  v98 = v13;
  v76 = swift_projectBox();
  v96 = v76;
  v95 = v68;
  v72 = swift_projectBox();
  v94 = v72;
  v93 = v70;
  v73 = swift_projectBox();
  v92 = v73;

  v79 = &v91;
  swift_beginAccess();
  v14 = v78;
  v15 = (v76 + *(v75 + 24));
  *v15 = v77;
  v15[1] = v14;

  swift_endAccess();

  if (v80)
  {
    v53 = v64;
    v54 = v80;
    v21 = v68;
    v41 = v80;
    v39 = v64;
    v83 = v64;
    v84 = v80;
    v35[0] = &v82;
    v35[1] = 0;
    swift_beginAccess();
    *(v76 + *(v75 + 28)) = 2;
    swift_endAccess();
    v35[2] = &v81;
    swift_beginAccess();
    sub_6890(v76, v67);
    swift_endAccess();
    (*(*v21 + 360))(1, v67);
    v22 = v68;
    v23 = sub_697C(v67);
    (*(*v22 + 232))(v23);

    v36 = v60;
    (*(v59 + 16))(v63, v70, v57);

    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = (v37 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = v68;
    v26 = v37;
    v27 = v59;
    v28 = v63;
    v29 = v57;
    v40 = v24;
    *(v24 + 16) = v69;
    *(v24 + 24) = v25;
    (*(v27 + 32))(v24 + v26, v28, v29);
    v30 = v55;
    v31 = v40;
    v32 = v41;
    v33 = v39;
    *(v40 + v38) = v71;
    sub_F41C(v33, v32, v30, v31);
  }

  else
  {
    v16 = v68;
    v42 = &v90;
    v44 = 33;
    v50 = 0;
    swift_beginAccess();
    *(v76 + *(v75 + 28)) = 3;
    swift_endAccess();
    v43 = &v89;
    swift_beginAccess();
    v17 = (v72 + *(v75 + 28));
    v45 = 4;
    *v17 = 4;
    swift_endAccess();
    v46 = &v88;
    swift_beginAccess();
    *(v73 + *(v75 + 28)) = v45;
    swift_endAccess();
    v47 = &v87;
    v49 = 32;
    swift_beginAccess();
    sub_6890(v76, v67);
    swift_endAccess();
    v18 = *(*v16 + 360);
    v52 = 1;
    v18();
    v19 = v68;
    sub_697C(v67);
    v48 = &v86;
    swift_beginAccess();
    sub_6890(v72, v67);
    swift_endAccess();
    (*(*v19 + 360))(v52, v67);
    v20 = v68;
    sub_697C(v67);
    v51 = &v85;
    swift_beginAccess();
    sub_6890(v73, v67);
    swift_endAccess();
    (*(*v20 + 360))(v52, v67);
    return sub_697C(v67);
  }
}

uint64_t sub_ABE8()
{
  v4 = sub_24754();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(sub_24754() - 8);
  v5 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  return sub_A53C(a1, a2, a3, a4, v4[2], v4[3], v4[4], v4 + v5, *(v4 + ((v5 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_ADCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a1;
  v57 = a2;
  v59 = a3;
  v47 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v68 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v54 = type metadata accessor for Requirement(0);
  v48 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v49 = &v23 - v48;
  v79 = v7;
  v80 = v8;
  v78 = v9;
  v55 = swift_projectBox();
  v77 = v55;
  v76 = v50;
  v75 = v51;
  v53 = swift_projectBox();
  v74 = v53;

  v58 = &v73;
  swift_beginAccess();
  v10 = v57;
  v11 = (v55 + *(v54 + 24));
  *v11 = v56;
  v11[1] = v10;

  swift_endAccess();
  _objc_retain(v59);
  if (v59)
  {
    v46 = v59;
    v15 = v50;
    v31 = v59;
    v68 = v59;
    v29 = &v67;
    v32 = 33;
    v33 = 0;
    swift_beginAccess();
    *(v55 + *(v54 + 28)) = 2;
    swift_endAccess();
    v30 = &v66;
    swift_beginAccess();
    sub_6890(v55, v49);
    swift_endAccess();
    (*(*v15 + 360))(1, v49);
    v16 = v50;
    v17 = sub_697C(v49);
    (*(*v16 + 256))(v17);
    v34 = sub_5CBC(v31, v51);
    v35 = v18;
    v37 = v19;
    v64 = v34;
    v65 = v18;
    v63 = v19 & 1;

    v36 = &v62;
    swift_beginAccess();
    v20 = v35;
    v21 = (v53 + *(v54 + 24));
    *v21 = v34;
    v21[1] = v20;

    swift_endAccess();
    if (v37)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    v22 = v50;
    v24 = v28;
    v25 = &v61;
    v26 = 0;
    swift_beginAccess();
    *(v53 + *(v54 + 28)) = v24;
    swift_endAccess();
    v27 = &v60;
    swift_beginAccess();
    sub_6890(v53, v49);
    swift_endAccess();
    (*(*v22 + 360))(1, v49);
    sub_697C(v49);

    _objc_release(v31);
  }

  else
  {
    v12 = v50;
    v38 = &v72;
    v39 = 33;
    v43 = 0;
    swift_beginAccess();
    *(v55 + *(v54 + 28)) = 3;
    swift_endAccess();
    v40 = &v71;
    swift_beginAccess();
    *(v53 + *(v54 + 28)) = 4;
    swift_endAccess();
    v41 = &v70;
    v42 = 32;
    swift_beginAccess();
    sub_6890(v55, v49);
    swift_endAccess();
    v13 = *(*v12 + 360);
    v45 = 1;
    v13();
    v14 = v50;
    sub_697C(v49);
    v44 = &v69;
    swift_beginAccess();
    sub_6890(v53, v49);
    swift_endAccess();
    (*(*v14 + 360))(v45, v49);
    sub_697C(v49);
  }
}

uint64_t sub_B34C()
{
  v4 = sub_24754();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

void sub_B460(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *(sub_24754() - 8);
  v4 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + ((v4 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_ADCC(a1, a2, a3, v5, v6, v3 + v4, v7);
}

uint64_t sub_B520(uint64_t a1)
{
  v64 = a1;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v80 = 0;
  v81 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v63 = 0;
  v67 = sub_24754();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v62 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v19[-v62];
  v68 = &v19[-v62];
  v79 = __chkstk_darwin(v64);
  v69 = [objc_opt_self() encoderWithVersion:0];
  swift_getObjectType();
  v82 = 0;
  (*(v65 + 16))(v1, v64, v67);
  sub_24724(v2);
  v71 = v3;
  (*(v65 + 8))(v68, v67);
  v78 = v82;
  v72 = [v69 encodeURL:v71 error:&v78];
  v70 = v78;
  _objc_retain(v78);
  v4 = v82;
  v82 = v70;
  _objc_release(v4);
  _objc_release(v71);
  if (v72)
  {
    v61 = v72;
    v56 = v72;
    v57 = sub_24764();
    v58 = v5;
    _objc_release(v56);
    swift_unknownObjectRelease();
    v59 = v57;
    v60 = v58;
  }

  else
  {
    v20 = v82;
    v21 = sub_24714();
    _objc_release(v20);
    swift_willThrow();
    swift_unknownObjectRelease();

    v59 = 0;
    v60 = 0xF000000000000000;
  }

  v54 = v60;
  v55 = v59;
  if ((v60 & 0xF000000000000000) == 0xF000000000000000)
  {
    v24 = 1;
    v25 = sub_24DB4("The URL is unable to be encoded.", 0x20uLL, 1);
    v27 = v14;
    v15 = sub_24DB4("Diagnostics message for URL unable to be encoded as App Clip Code.", 0x42uLL, v24 & 1);
    v26 = v16;
    v28 = sub_149F4(v25, v27, v15, v16);
    v29 = v17;

    v76 = v28;
    v77 = v29;
    v32 = v28;
    v33 = v29;
    v34 = 0;
  }

  else
  {
    v52 = v55;
    v53 = v54;
    v49 = v54;
    v50 = v55;
    v80 = v55;
    v81 = v54;
    v51 = sub_24774() <= 16;
    v75 = v51;
    if (v51)
    {
      v41 = 1;
      v42 = sub_24DB4("The URL fits into an App Clip Code.", 0x23uLL, 1);
      v44 = v6;
      v7 = sub_24DB4("Diagnostics message for URL encodable as App Clip Code.", 0x37uLL, v41 & 1);
      v43 = v8;
      v45 = sub_149F4(v42, v44, v7, v8);
      v46 = v9;

      v47 = v45;
      v48 = v46;
    }

    else
    {
      v35 = 1;
      v36 = sub_24DB4("The URL is too long to fit in an App Clip Code.", 0x2FuLL, 1);
      v38 = v10;
      v11 = sub_24DB4("Diagnostics message for URL to long to be encoded as App Clip Code.", 0x43uLL, v35 & 1);
      v37 = v12;
      v39 = sub_149F4(v36, v38, v11, v12);
      v40 = v13;

      v47 = v39;
      v48 = v40;
    }

    v31 = v48;
    v30 = v47;
    v73 = v47;
    v74 = v48;
    sub_BBA4(v50, v49);
    v32 = v30;
    v33 = v31;
    v34 = v51;
  }

  v22 = v34;
  v23 = v33;
  return v32;
}

uint64_t sub_BBA4(uint64_t result, unint64_t a2)
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

uint64_t sub_BC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_46E8(&qword_353D0, &qword_29E20);
  sub_BCA4(v6, v2, a2);
}

uint64_t sub_BCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  sub_247B4();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_BD94()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_247F4();

  return v1;
}

uint64_t sub_BE30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 136))(v2);
}

uint64_t sub_BEB0(void *a1, uint64_t *a2)
{
  sub_F3E4(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 144))(v4);
}

uint64_t sub_BF3C(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24804();
}

void (*sub_BFE0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_C19C(0x40uLL, 30516);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_247E4();
  return sub_C0C0;
}

void sub_C0C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

void *sub_C19C(size_t a1, uint64_t a2)
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

uint64_t sub_C1F0()
{
  swift_beginAccess();
  sub_46E8(&qword_353D8, &qword_29E70);
  sub_247C4();
  return swift_endAccess();
}

uint64_t sub_C26C(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_46E8(&qword_353E0, &qword_29E78);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_46E8(&qword_353D8, &qword_29E70);
  sub_247D4();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*sub_C3C0(void *a1))()
{
  v6 = sub_C19C(0x28uLL, 38323);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_46E8(&qword_353E0, &qword_29E78);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_C19C(v5, 38323);
  v6[4] = sub_C19C(v5, 38323);
  sub_C1F0();
  return sub_C4E4;
}

void sub_C4E4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_C26C(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_C26C(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_C5E0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel__features;
  swift_beginAccess();
  v2 = sub_46E8(&qword_353D8, &qword_29E70);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_C678(uint64_t a1)
{
  v10 = a1;
  v11 = sub_46E8(&qword_353D8, &qword_29E70);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel__features;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

id sub_C7C4()
{
  v2 = (v0 + OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel_metaTagRequirementController);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_C82C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel_metaTagRequirementController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_C974(uint64_t a1)
{
  v80 = a1;
  v92 = 0;
  v91 = 0;
  v81 = v89;
  v89[0] = 0;
  v89[1] = 0;
  v86 = 0;
  v75 = type metadata accessor for Feature(0);
  v73 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = &v30 - v73;
  v92 = __chkstk_darwin(v80);
  v91 = v1;
  v2 = *(*v1 + 152);
  v78 = &v90;
  v79 = v2();
  v76 = sub_D12C();
  v77 = sub_46E8(&qword_353D0, &qword_29E20);
  sub_24E64(v76 & 1);
  v79();

  v88 = v80;
  v82 = sub_46E8(&qword_353E8, &qword_29E80);
  sub_D144();
  sub_24EC4();
  while (1)
  {
    sub_46E8(&qword_353F8, &qword_29E88);
    sub_24F74();
    v71 = v87;
    if (v87 == 3)
    {
      break;
    }

    v70 = v71;
    v69 = v71;
    v86 = v71;
    if (v71)
    {
      v24 = v72;
      if (v69 == 1)
      {
        v66 = type metadata accessor for Requirement(0);
        v65 = sub_24F94();
        v61 = v3;
        v52 = sub_134C4();
        v53 = v4;
        v5 = sub_134D0();
        sub_134D8(1, v52, v53, v5, v61);
        v60 = *(*(v66 - 8) + 72);
        v54 = v61 + v60;
        v55 = sub_134C4();
        v56 = v6;
        v7 = sub_134D0();
        sub_134D8(2, v55, v56, v7, v54);
        v57 = v61 + 2 * v60;
        v58 = sub_134C4();
        v59 = v8;
        v9 = sub_134D0();
        sub_134D8(3, v58, v59, v9, v57);
        v62 = v61 + 3 * v60;
        v63 = sub_134C4();
        v64 = v10;
        v11 = sub_134D0();
        sub_134D8(4, v63, v64, v11, v62);
        sub_4964();
        sub_1238C(v69, v12, v74);
        v13 = *(*v24 + 152);
        v67 = &v83;
        v68 = v13();
        sub_24E54();
        v68();
      }

      else
      {
        v34 = type metadata accessor for Requirement(0);
        v33 = sub_24F94();
        v30 = v25;
        v31 = sub_134C4();
        v32 = v26;
        v27 = sub_134D0();
        sub_134D8(5, v31, v32, v27, v30);
        sub_4964();
        sub_1238C(v69, v28, v74);
        v29 = *(*v24 + 152);
        v35 = &v85;
        v36 = v29();
        sub_24E54();
        v36();
      }
    }

    else
    {
      v14 = v72;
      v48 = type metadata accessor for Requirement(0);
      v47 = sub_24F94();
      v43 = v15;
      v37 = sub_134C4();
      v38 = v16;
      v17 = sub_134D0();
      v50 = 0;
      sub_134D8(0, v37, v38, v17, v43);
      v42 = *(*(v48 - 8) + 72);
      v39 = v43 + v42;
      v40 = sub_134C4();
      v41 = v18;
      v19 = sub_134D0();
      sub_134D8(2, v40, v41, v19, v39);
      v44 = v43 + 2 * v42;
      v45 = sub_134C4();
      v46 = v20;
      v21 = sub_134D0();
      sub_134D8(3, v45, v46, v21, v44);
      sub_4964();
      sub_1238C(v69, v22, v74);
      v23 = *(*v14 + 152);
      v49 = &v84;
      v51 = v23();
      sub_24E54();
      v51();
    }
  }

  sub_6380(v89);
}

unint64_t sub_D144()
{
  v2 = qword_353F0;
  if (!qword_353F0)
  {
    sub_4A94(&qword_353E8, &qword_29E80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_353F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v19 = a2;
  v15 = a3;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v24 = 0;
  v4 = sub_46E8(&qword_35400, &qword_29E90);
  v14 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v22 = &v9[-v14];
  v23 = sub_24754();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v15);
  v17 = &v9[-v16];
  v32 = &v9[-v16];
  v30 = v6;
  v31 = v7;
  v29 = v5;
  v28 = v3;
  (*(*v3 + 328))();
  sub_24744();
  if ((*(v20 + 48))(v22, 1, v23) == 1)
  {
    return sub_D4F0(v22);
  }

  (*(v20 + 32))(v17, v22, v23);

  v26 = v15;
  v13 = sub_46E8(&qword_353E8, &qword_29E80);
  sub_D144();
  sub_24EC4();
  while (1)
  {
    sub_46E8(&qword_353F8, &qword_29E88);
    sub_24F74();
    v12 = v25;
    if (v25 == 3)
    {
      break;
    }

    v11 = v12;
    v10 = v12;
    v24 = v12;
    if (v12)
    {
      if (v10 == 1)
      {
        sub_9C04(v17);
      }

      else
      {
        sub_63C0(v17);
      }
    }

    else
    {
      sub_FE6C(v17);
    }
  }

  sub_6380(v27);
  return (*(v20 + 8))(v17, v23);
}

uint64_t sub_D4F0(uint64_t a1)
{
  v3 = sub_24754();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void sub_D598(char a1)
{
  v5 = a1;
  v4 = v2;
  v3 = (*(*v2 + 136))();
  sub_46E8(&qword_353D0, &qword_29E20);
  sub_D710();
  sub_24E04();
  sub_6380(&v3);
}

unint64_t sub_D710()
{
  v2 = qword_35408;
  if (!qword_35408)
  {
    sub_4A94(&qword_353D0, &qword_29E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35408);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_D798@<X0>(unsigned int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  v22 = a2;
  v19 = a1;
  v17 = a3;
  v18 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v20 = (*(*(sub_46E8(&qword_35410, &qword_29E98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v9 - v20;
  v21 = &v9 - v20;
  v31 = __chkstk_darwin(v19);
  v30 = v4;
  v29 = v3;
  v28 = (*(*v3 + 136))();
  v26 = v22;
  v24 = sub_46E8(&qword_353D0, &qword_29E20);
  sub_D710();
  sub_24E04();
  v25 = 0;
  sub_6380(&v28);
  v16 = type metadata accessor for Feature(0);
  if ((*(*(v16 - 8) + 48))(v21, 1) == 1)
  {
    sub_DA78(v21);
    v8 = type metadata accessor for Requirement(0);
    (*(*(v8 - 8) + 56))(v17, 1);
    return v25;
  }

  v5 = v25;
  v11 = *(v21 + *(v16 + 24));

  sub_DB34(v21);
  v27 = v11;
  v12 = &v9;
  __chkstk_darwin(&v9);
  v13 = &v9 - 4;
  *(&v9 - 16) = v6;
  v14 = sub_46E8(&qword_35418, &unk_29EA0);
  sub_DC3C();
  sub_24E04();
  v15 = v5;
  if (!v5)
  {
    sub_6380(&v27);
    return v15;
  }

  result = v12;
  __break(1u);
  return result;
}

uint64_t sub_DA78(uint64_t a1)
{
  v4 = type metadata accessor for Feature(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_24794();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_DB34(uint64_t a1)
{
  v1 = sub_24794();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for Feature(0);

  return a1;
}

unint64_t sub_DC3C()
{
  v2 = qword_35420;
  if (!qword_35420)
  {
    sub_4A94(&qword_35418, &unk_29EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35420);
    return WitnessTable;
  }

  return v2;
}

void *sub_DCC4(unsigned int a1, uint64_t a2)
{
  v38 = a2;
  v41 = a1;
  v57 = 0;
  v36 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v49 = 0;
  type metadata accessor for Requirement(0);
  v3 = __chkstk_darwin(0);
  v37 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Feature(v3);
  v5 = __chkstk_darwin(v41);
  v40 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v5;
  v56 = v7;
  v55 = v2;
  v53[0] = (*(*v2 + 136))();
  v45 = v41;
  v43 = sub_46E8(&qword_353D0, &qword_29E20);
  v42 = v43;
  sub_E230();
  sub_24EA4();
  v44 = 0;
  sub_6380(v53);
  v34 = v53[1];
  if (v54)
  {
    return v44;
  }

  v33 = v34;
  v8 = v44;
  v25 = v34;
  v52 = v34;
  v26 = (*(*v35 + 136))();
  sub_24E94();
  v27 = *(v40 + *(v39 + 24));

  v50[0] = v27;
  v28 = v14;
  __chkstk_darwin(v14);
  v30 = &v14[-4];
  v14[-2] = v9;
  v31 = sub_46E8(&qword_35418, &unk_29EA0);
  v29 = v31;
  sub_E34C();
  sub_24EA4();
  v32 = v8;
  if (!v8)
  {
    sub_6380(v50);
    sub_DB34(v40);

    v24 = v50[1];
    if ((v51 & 1) == 0)
    {
      v23 = v24;
      v10 = v35;
      v14[1] = v24;
      v49 = v24;
      sub_6890(v38, v37);
      v11 = *(*v10 + 152);
      v20 = &v48;
      v21 = v11();
      v17 = &v47;
      v18 = sub_24E84();
      v15 = &v46;
      v16 = sub_24E84();
      sub_E3D4(v37, v12);
      v19 = 0;
      v16(v15);
      v18(v17, v19);
      v21(v20, v19);
    }

    return v32;
  }

  result = v28;
  __break(1u);
  return result;
}

unint64_t sub_E230()
{
  v2 = qword_35428;
  if (!qword_35428)
  {
    sub_4A94(&qword_353D0, &qword_29E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E34C()
{
  v2 = qword_35430;
  if (!qword_35430)
  {
    sub_4A94(&qword_35418, &unk_29EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35430);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_E3D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 40))(a2, a1);
  v6 = type metadata accessor for Requirement(0);
  *(a2 + v6[5]) = *(a1 + v6[5]);
  v3 = (a1 + v6[6]);
  v4 = (a2 + v6[6]);
  *v4 = *v3;
  v4[1] = v3[1];

  result = a2;
  *(a2 + v6[7]) = *(a1 + v6[7]);
  return result;
}

void sub_E4B4(uint64_t a1)
{
  v16 = a1;
  v19 = sub_E774;
  v28 = 0;
  v27 = 0;
  v24 = 0;
  v14 = (*(*(type metadata accessor for Feature(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = v5 - v14;
  v28 = __chkstk_darwin(v16);
  v27 = v1;
  v25[0] = (*(*v1 + 136))();
  v17 = &v20;
  v21 = v16;
  v18 = sub_46E8(&qword_353D0, &qword_29E20);
  sub_E230();
  sub_24EA4();
  sub_6380(v25);
  v12 = v25[1];
  if ((v26 & 1) == 0)
  {
    v11 = v12;
    v2 = v13;
    v5[1] = v12;
    v24 = v12;
    sub_E7A0(v16, v15);
    v3 = *(*v2 + 152);
    v8 = &v23;
    v10 = v3();
    v7 = &v22;
    v6 = sub_24E84();
    sub_E85C(v15, v4);
    v9 = 0;
    v6();
    v10();
  }
}

uint64_t sub_E7A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = type metadata accessor for Feature(0);
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  v7 = *(v3 + 24);
  v8 = *(a1 + v7);

  result = a2;
  *(a2 + v7) = v8;
  return result;
}

uint64_t sub_E85C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 40))(a2, a1);
  v3 = type metadata accessor for Feature(0);
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));

  return a2;
}

uint64_t sub_E910(unsigned int a1)
{
  v32 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43[0] = 0;
  v43[1] = 0;
  v30 = 0;
  v19 = type metadata accessor for Requirement(0);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v23 = &v13 - v22;
  v24 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(&v13 - v22);
  v25 = &v13 - v24;
  v49 = &v13 - v24;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v27 = &v13 - v26;
  v48 = &v13 - v26;
  v5 = sub_46E8(&qword_35268, &qword_2A1F0);
  v28 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v29 = &v13 - v28;
  v31 = (*(*(sub_46E8(&qword_35410, &qword_29E98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v30);
  v40 = &v13 - v31;
  v41 = type metadata accessor for Feature(v6);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v34 = *(v38 + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v32);
  v35 = &v13 - v33;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v37 = &v13 - v36;
  v47 = &v13 - v36;
  v46 = v8;
  v45 = v1;
  (*(*v1 + 344))();
  if ((*(v38 + 48))(v40, 1, v41) == 1)
  {
    return sub_DA78(v40);
  }

  sub_EE30(v40, v37);
  v44 = sub_24D34();
  v16 = *(v37 + *(v41 + 24));

  v42 = v16;
  v17 = sub_46E8(&qword_35418, &unk_29EA0);
  sub_E34C();
  sub_24EC4();
  while (1)
  {
    sub_46E8(&qword_35438, &qword_29EB0);
    sub_24F74();
    if ((*(v20 + 48))(v29, 1, v19) == 1)
    {
      break;
    }

    sub_67CC(v29, v27);
    sub_6890(v27, v25);
    v9 = v23;
    v10 = v25;
    *(v25 + *(v19 + 28)) = 1;
    sub_6890(v10, v9);
    sub_24E54();
    sub_697C(v25);
    sub_697C(v27);
  }

  v11 = v18;
  sub_6380(v43);
  v15 = &v44;
  v14 = v44;

  *(v37 + *(v41 + 24)) = v14;

  sub_E7A0(v37, v35);
  (*(*v11 + 368))(v35);
  sub_DB34(v35);
  sub_6380(v15);
  return sub_DB34(v37);
}

uint64_t sub_EE30(uint64_t a1, uint64_t a2)
{
  v2 = sub_24794();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for Feature(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));
  return result;
}

uint64_t sub_EED8()
{
  v3 = OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel__features;
  v1 = sub_46E8(&qword_353D8, &qword_29E70);
  (*(*(v1 - 8) + 8))(v0 + v3);
  _objc_release(*(v0 + OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel_metaTagRequirementController));
  return v4;
}

uint64_t sub_F018()
{
  v12 = 0;
  v8 = sub_46E8(&qword_353D8, &qword_29E70);
  v4 = *(v8 - 8);
  v5 = v8 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v3 - v3;
  v12 = v0;
  v6 = OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel__features;
  v9 = 0;
  type metadata accessor for Feature(0);
  v1 = sub_24D34();
  sub_BC34(v1, v7);
  (*(v4 + 32))(v0 + v6, v7, v8);
  v10 = OBJC_IVAR____TtC24AppClipDeveloperSettings29DeveloperDiagnosticsViewModel_metaTagRequirementController;
  type metadata accessor for MetaTagRequirementController();
  *(v11 + v10) = DeveloperDiagnosticsViewControllerFactory.__allocating_init()();
  nullsub_2();
  nullsub_2();
  nullsub_2();
  nullsub_2();
  nullsub_2();
  return v11;
}

uint64_t sub_F154@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  result = sub_247A4();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for DeveloperDiagnosticsViewModel(uint64_t a1)
{
  v2 = qword_35DD0;
  if (!qword_35DD0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_F22C(uint64_t a1)
{
  updated = sub_F340(319);
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

unint64_t sub_F340(uint64_t a1)
{
  v5 = qword_35468;
  if (!qword_35468)
  {
    sub_4A94(&qword_353D0, &qword_29E20);
    v4 = sub_24814();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_35468);
      return v2;
    }
  }

  return v5;
}

void *sub_F3E4(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void sub_F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a2;
  v17 = a3;
  v18 = a4;
  v7 = objc_opt_self();

  v9 = sub_24D74();

  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  v15 = sub_F88C;
  v16 = v4;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_584C;
  v14 = &unk_31370;
  v8 = _Block_copy(&aBlock);

  [v7 fetchAMPMetadataWithBundleID:v9 completion:v8];
  _Block_release(v8);
  _objc_release(v9);
}

void sub_F588(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v15 = a3;
  v16 = a4;
  v18 = sub_FDF4;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v20 = 0;
  v24 = sub_24D04();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v13 - v13;
  v28 = sub_24D24();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v27 = &v13 - v14;
  v41 = v4;
  v40 = v5;
  v38 = v6;
  v39 = v7;
  sub_5990();
  v30 = sub_24ED4();
  _objc_retain(v19);

  swift_errorRetain();
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v8[2] = v19;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;
  v36 = v12;
  v37 = v8;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_5744;
  v35 = &unk_313E0;
  v29 = _Block_copy(&aBlock);

  sub_5794();
  sub_57AC();
  sub_24EE4();
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  _objc_release(v30);
}

uint64_t sub_F898(void *a1, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  _objc_retain(a1);
  if (a1)
  {
    v4 = [a1 clipBundleID];
    v38 = v4;
    if (v4)
    {
      sub_24D84();
      v36 = v5;
      _objc_release(v38);
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    _objc_release(a1);
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {

    v32 = sub_24DB4("The App Clip is available on the App Store.", 0x2BuLL, 1);
    v33 = v6;
    v7 = sub_24DB4("diagnostics message for when an app clip exists in app store.", 0x3DuLL, 1);
    v34 = sub_149F4(v32, v33, v7, v8);
    v35 = v9;

    a2(v34, v35, a1);
  }

  else
  {
    swift_errorRetain();
    if (a4)
    {
      v21 = sub_24DB4("Unable to load App Store metadata: %@", 0x25uLL, 1);
      v22 = v15;
      v16 = sub_24DB4("diagnostics message for when an error is encountered while fetching App Store metadata.", 0x57uLL, 1);
      sub_149F4(v21, v22, v16, v17);

      sub_46E8(&unk_35360, &unk_29DF0);
      sub_24F94();
      v25 = v18;
      swift_getErrorValue();
      v23 = sub_24FA4();
      v24 = v19;
      v25[3] = &type metadata for String;
      v25[4] = sub_48EC();
      *v25 = v23;
      v25[1] = v24;
      sub_4964();
      v26 = sub_24D94();
      v27 = v20;

      a2(v26, v27, 0);
    }

    else
    {
      v28 = sub_24DB4("The App Clip is not available on the App Store.", 0x2FuLL, 1);
      v29 = v11;
      v12 = sub_24DB4("diagnostics message for when an app clip does not exist in app store", 0x44uLL, 1);
      v30 = sub_149F4(v28, v29, v12, v13);
      v31 = v14;

      a2(v30, v31, 0);
    }
  }
}

uint64_t sub_FD24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_FD9C()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_FE08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_FE6C(uint64_t a1)
{
  v46 = a1;
  v38 = sub_10C68;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v53 = 0;
  v39 = sub_24754();
  v41 = *(v39 - 8);
  v40 = v39 - 8;
  v42 = v41;
  v43 = *(v41 + 64);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v45 = &v28 - v44;
  v47 = (*(*(sub_46E8(&qword_35268, &qword_2A1F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v46);
  v48 = &v28 - v47;
  v49 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v50 = &v28 - v49;
  v51 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v57 = &v28 - v51;
  v65 = v6;
  v64 = v1;
  v7 = *(*v1 + 376);
  v55 = 0;
  v7();
  v8 = v52;
  v58 = type metadata accessor for Requirement(v53);
  v54 = swift_allocBox();
  v56 = v9;
  v63 = v9;
  (*(*v8 + 352))(v55);
  v10 = *(v58 - 8);
  v59 = *(v10 + 48);
  v60 = v10 + 48;
  if ((v59)(v57, 1) == 1)
  {
    sub_670C(v57);
    return swift_deallocBox();
  }

  else
  {
    v11 = v52;
    sub_67CC(v57, v56);
    v36 = swift_allocBox();
    v37 = v12;
    v62 = v12;
    (*(*v11 + 352))(2, 0);
    if (v59(v50, 1, v58) == 1)
    {
      sub_670C(v50);
      swift_deallocBox();
    }

    else
    {
      v13 = v52;
      sub_67CC(v50, v37);
      v34 = swift_allocBox();
      v35 = v14;
      v61 = v14;
      (*(*v13 + 352))(3, 0);
      if (v59(v48, 1, v58) == 1)
      {
        sub_670C(v48);
        swift_deallocBox();
      }

      else
      {
        v15 = v52;
        v16 = sub_67CC(v48, v35);
        v17 = (*(*v15 + 184))(v16);
        v33 = v17;

        v29 = v42;
        (*(v41 + 16))(v45, v46, v39);

        v30 = (*(v29 + 80) + 40) & ~*(v29 + 80);
        v31 = (v30 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        v18 = swift_allocObject();
        v19 = v52;
        v20 = v30;
        v21 = v41;
        v22 = v45;
        v23 = v39;
        v24 = v36;
        v32 = v18;
        v18[2] = v54;
        v18[3] = v19;
        v18[4] = v24;
        (*(v21 + 32))(v18 + v20, v22, v23);
        v25 = v38;
        v26 = v46;
        *(v32 + v31) = v34;
        (*(&stru_68.size + (*v17 & swift_isaMask)))(v26, v25);

        _objc_release(v33);
      }
    }
  }
}

uint64_t sub_10484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v78 = a1;
  v79 = a2;
  v65 = a3;
  v81 = a4;
  v66 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v72 = a9;
  v75 = 0;
  v56 = sub_112EC;
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v84 = 0;
  v85 = 0;
  v57 = 0;
  v58 = sub_24754();
  v60 = *(v58 - 8);
  v59 = v58 - 8;
  v61 = v60;
  v62 = *(v60 + 64);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(0);
  v64 = v36 - v63;
  v76 = type metadata accessor for Requirement(v9);
  v67 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v68 = v36 - v67;
  v100 = v10;
  v101 = v11;
  v98 = v12;
  v99 = v13;
  v77 = swift_projectBox();
  v97 = v77;
  v96 = v69;
  v73 = swift_projectBox();
  v95 = v73;
  v94 = v71;
  v74 = swift_projectBox();
  v93 = v74;

  v80 = &v92;
  swift_beginAccess();
  v14 = v79;
  v15 = (v77 + *(v76 + 24));
  *v15 = v78;
  v15[1] = v14;

  swift_endAccess();

  if (v81)
  {
    v54 = v65;
    v55 = v81;
    v52 = v81;
    v53 = v65;
    v84 = v65;
    v85 = v81;
    v16 = sub_24DD4();
    if ((v16 & 1) == 0)
    {
      v17 = v69;
      v45 = &v83;
      v46 = 0;
      swift_beginAccess();
      *(v77 + *(v76 + 28)) = 2;
      swift_endAccess();
      v47 = &v82;
      swift_beginAccess();
      sub_6890(v77, v68);
      swift_endAccess();
      (*(*v17 + 360))(0, v68);
      v18 = v69;
      v19 = sub_697C(v68);
      (*(*v18 + 232))(v19);

      v48 = v61;
      (*(v60 + 16))(v64, v71, v58);

      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v50 = (v49 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      v21 = v69;
      v22 = v49;
      v23 = v60;
      v24 = v64;
      v25 = v58;
      v51 = v20;
      *(v20 + 16) = v70;
      *(v20 + 24) = v21;
      (*(v23 + 32))(v20 + v22, v24, v25);
      v26 = v56;
      v27 = v51;
      v28 = v52;
      v29 = v53;
      *(v51 + v50) = v72;
      sub_F41C(v29, v28, v26, v27);
    }
  }

  v31 = v69;
  v36[0] = &v91;
  v36[2] = 33;
  v42 = 0;
  swift_beginAccess();
  *(v77 + *(v76 + 28)) = 3;
  swift_endAccess();
  v36[1] = &v90;
  swift_beginAccess();
  v32 = (v73 + *(v76 + 28));
  v37 = 4;
  *v32 = 4;
  swift_endAccess();
  v38 = &v89;
  swift_beginAccess();
  *(v74 + *(v76 + 28)) = v37;
  swift_endAccess();
  v39 = &v88;
  v41 = 32;
  swift_beginAccess();
  sub_6890(v77, v68);
  swift_endAccess();
  v33 = *(*v31 + 360);
  v44 = 0;
  v33();
  v34 = v69;
  sub_697C(v68);
  v40 = &v87;
  swift_beginAccess();
  sub_6890(v73, v68);
  swift_endAccess();
  (*(*v34 + 360))(v44, v68);
  v35 = v69;
  sub_697C(v68);
  v43 = &v86;
  swift_beginAccess();
  sub_6890(v74, v68);
  swift_endAccess();
  (*(*v35 + 360))(v44, v68);
  return sub_697C(v68);
}

uint64_t sub_10B4C()
{
  v4 = sub_24754();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(sub_24754() - 8);
  v5 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  return sub_10484(a1, a2, a3, a4, v4[2], v4[3], v4[4], v4 + v5, *(v4 + ((v5 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10D30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a1;
  v47 = a2;
  v49 = a3;
  v37 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v44 = type metadata accessor for Requirement(0);
  v38 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v39 = &v20 - v38;
  v67 = v7;
  v68 = v8;
  v66 = v9;
  v45 = swift_projectBox();
  v65 = v45;
  v64 = v40;
  v63 = v41;
  v43 = swift_projectBox();
  v62 = v43;

  v48 = &v61;
  swift_beginAccess();
  v10 = v47;
  v11 = (v45 + *(v44 + 24));
  *v11 = v46;
  v11[1] = v10;

  swift_endAccess();
  v60 = v49;
  v36 = v49 != 0;
  if (v49)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  v12 = v40;
  v31 = v35;
  v32 = &v59;
  v33 = 0;
  swift_beginAccess();
  *(v45 + *(v44 + 28)) = v31;
  swift_endAccess();
  v34 = &v58;
  swift_beginAccess();
  sub_6890(v45, v39);
  swift_endAccess();
  (*(*v12 + 360))(0, v39);
  sub_697C(v39);
  v13 = _objc_retain(v49);
  if (v49)
  {
    v30 = v49;
    v24 = v49;
    v55 = v49;
    (*(*v40 + 256))(v13);
    v25 = sub_5CBC(v24, v41);
    v26 = v14;
    v28 = v15;
    v53 = v25;
    v54 = v14;
    v52 = v15 & 1;

    v27 = &v51;
    swift_beginAccess();
    v16 = v26;
    v17 = (v43 + *(v44 + 24));
    *v17 = v25;
    v17[1] = v16;

    swift_endAccess();
    if (v28)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    v21 = v23;
    v22 = &v50;
    swift_beginAccess();
    *(v43 + *(v44 + 28)) = v21;
    swift_endAccess();

    _objc_release(v24);
  }

  else
  {
    v29 = &v57;
    swift_beginAccess();
    *(v43 + *(v44 + 28)) = 4;
    swift_endAccess();
  }

  v18 = v40;
  v20 = &v56;
  swift_beginAccess();
  sub_6890(v43, v39);
  swift_endAccess();
  (*(*v18 + 360))(0, v39);
  return sub_697C(v39);
}

uint64_t sub_111D8()
{
  v4 = sub_24754();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_112EC(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *(sub_24754() - 8);
  v4 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + ((v4 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10D30(a1, a2, a3, v5, v6, v3 + v4, v7);
}

id sub_113AC()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for BundleClass();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id sub_11450()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1149C()
{
  sub_114E4();
  type metadata accessor for BundleClass();
  return sub_11570();
}

unint64_t sub_114E4()
{
  v2 = qword_35610;
  if (!qword_35610)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35610);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_11570()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

BOOL sub_115C8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_117B0()
{
  v2 = qword_35640;
  if (!qword_35640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35640);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Feature(uint64_t a1)
{
  v2 = qword_361E0;
  if (!qword_361E0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_11998(unsigned int a1)
{
  v2 = type metadata accessor for Feature(0);
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t sub_119D0()
{
  v1 = type metadata accessor for Feature(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v15 = sub_24DB4("Codes and Tags", 0xEuLL, 1);
      v16 = v5;
      v6 = sub_24DB4("Title for diagnostics feature section relating to App Clip invocation via physical code or NFC.", 0x5FuLL, 1);
      v17 = sub_149F4(v15, v16, v6, v7);

      return v17;
    }

    else
    {
      v12 = sub_24DB4("Universal Links", 0xFuLL, 1);
      v13 = v8;
      v9 = sub_24DB4("Title for diagnostics feature section relating to Universal Links.", 0x42uLL, 1);
      v14 = sub_149F4(v12, v13, v9, v10);

      return v14;
    }
  }

  else
  {
    v18 = sub_24DB4("From Your Website", 0x11uLL, 1);
    v19 = v2;
    v3 = sub_24DB4("Title for diagnostics feature section relating to App Clip presentation on web pages.", 0x55uLL, 1);
    v20 = sub_149F4(v18, v19, v3, v4);

    return v20;
  }
}

uint64_t sub_11BD4()
{
  v1 = type metadata accessor for Feature(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v15 = sub_24DB4("App Clip codes, QR codes, and NFC Tags", 0x26uLL, 1);
      v16 = v5;
      v6 = sub_24DB4("Description of diagnostics feture relating to App Clip invocation from physical tags", 0x54uLL, 1);
      v17 = sub_149F4(v15, v16, v6, v7);

      return v17;
    }

    else
    {
      v12 = sub_24DB4("Deep links into your app", 0x18uLL, 1);
      v13 = v8;
      v9 = sub_24DB4("Description of diagnostics feture relating to Universal Links", 0x3DuLL, 1);
      v14 = sub_149F4(v12, v13, v9, v10);

      return v14;
    }
  }

  else
  {
    v18 = sub_24DB4("Smart App Banner and App Clip Card in Safari", 0x2CuLL, 1);
    v19 = v2;
    v3 = sub_24DB4("Description of diagnostics feture relating to App Clip presentation on web pages", 0x50uLL, 1);
    v20 = sub_149F4(v18, v19, v3, v4);

    return v20;
  }
}

uint64_t sub_11DD8()
{
  v14 = v0;
  v9 = type metadata accessor for Feature(0);
  v10 = *(v0 + *(v9 + 24));

  v13 = v10;
  sub_46E8(&qword_35418, &unk_29EA0);
  sub_DC3C();
  v7 = sub_24DF4();
  sub_6380(&v13);
  if (v7)
  {
    return 0;
  }

  else
  {
    v4 = *(v8 + *(v9 + 24));

    v12 = v4;
    v5 = sub_24E14();
    sub_6380(&v12);
    if (v5)
    {
      return 1;
    }

    else
    {
      v2 = *(v8 + *(v9 + 24));

      v11 = v2;
      v3 = sub_24DF4();
      sub_6380(&v11);
      if (v3)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

BOOL sub_12040(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t type metadata accessor for Requirement(uint64_t a1)
{
  v2 = qword_361F0;
  if (!qword_361F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_122D4()
{
  v2 = *(v0 + *(type metadata accessor for Feature(0) + 24));

  return v2;
}

uint64_t sub_1230C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for Feature(0) + 24)) = a1;
}

uint64_t sub_1238C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24784();
  result = type metadata accessor for Feature(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

unint64_t sub_1253C()
{
  v2 = qword_35648;
  if (!qword_35648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35648);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_12614(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      default:
        v4 = 5;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      default:
        v3 = 5;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_12940()
{
  v2 = qword_35650;
  if (!qword_35650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35650);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_12A3C()
{
  v2 = *(v0 + *(type metadata accessor for Requirement(0) + 24));

  return v2;
}

uint64_t sub_12A84(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for Requirement(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_12B04(unsigned int a1)
{
  v2 = type metadata accessor for Requirement(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_12B3C()
{
  v1 = type metadata accessor for Requirement(0);
  v40 = *(v0 + *(v1 + 20));
  if (*(v0 + *(v1 + 20)))
  {
    switch(v40)
    {
      case 1:
        v33 = sub_24DB4("Register Advanced Experience", 0x1CuLL, 1);
        v34 = v5;
        v6 = sub_24DB4("Title for diagnostics requirement section related to Advanced Experience registration.", 0x56uLL, 1);
        v35 = sub_149F4(v33, v34, v6, v7);

        return v35;
      case 2:
        v30 = sub_24DB4("App Clip Published on App Store", 0x1FuLL, 1);
        v31 = v8;
        v9 = sub_24DB4("Title for diagnostics requirement section related to App Clip published in App Store.", 0x55uLL, 1);
        v32 = sub_149F4(v30, v31, v9, v10);

        return v32;
      case 3:
        v27 = sub_24DB4("Associated Domains", 0x12uLL, 1);
        v28 = v11;
        v12 = sub_24DB4("Title for diagnostics requirement section related to App Clip having a valid associated domain with the entered URL.", 0x74uLL, 1);
        v29 = sub_149F4(v27, v28, v12, v13);

        return v29;
      case 4:
        v24 = sub_24DB4("App Clip Code", 0xDuLL, 1);
        v25 = v14;
        v15 = sub_24DB4("Title for diagnostics requirement section related to URL being able to be encoded into App Clip Code payload.", 0x6DuLL, 1);
        v26 = sub_149F4(v24, v25, v15, v16);

        return v26;
      default:
        v21 = sub_24DB4("Opens Installed Application", 0x1BuLL, 1);
        v22 = v17;
        v18 = sub_24DB4("Title for diagnostics requirement section related to entered URL being able to open an installed application via Universal Link.", 0x80uLL, 1);
        v23 = sub_149F4(v21, v22, v18, v19);

        return v23;
    }
  }

  else
  {
    v36 = sub_24DB4("Smart App Banner", 0x10uLL, 1);
    v37 = v2;
    v3 = sub_24DB4("Title for diagnostics requirement section related to smart app banner meta tag on web page.", 0x5BuLL, 1);
    v38 = sub_149F4(v36, v37, v3, v4);

    return v38;
  }
}

uint64_t sub_12F1C()
{
  v1 = type metadata accessor for Requirement(0);
  v40 = *(v0 + *(v1 + 20));
  if (*(v0 + *(v1 + 20)))
  {
    switch(v40)
    {
      case 1:
        v33 = sub_24DB4("To support additional invocations (for example, from scanning an App Clip Code or an NFC tag), create an Advanced Experience in App Store Connect.", 0x92uLL, 1);
        v34 = v5;
        v6 = sub_24DB4("Description of the advanced experience registration requirement.", 0x40uLL, 1);
        v35 = sub_149F4(v33, v34, v6, v7);

        return v35;
      case 2:
        v30 = sub_24DB4("App Clips must be published on the App Store for invocation.", 0x3CuLL, 1);
        v31 = v8;
        v9 = sub_24DB4("Description of the app published requirement.", 0x2DuLL, 1);
        v32 = sub_149F4(v30, v31, v9, v10);

        return v32;
      case 3:
        v27 = sub_24DB4("Before launching the App Clip, the system ensures that the App Clip includes in its code signature, an Associated Domains Entitlement, which cites the invocation URL’s domain. The system also verifies that the server of the domain agrees to launch the App Clip, by citing the App Clip's application identifier within an Apple App Site Association File that it hosts.", 0x170uLL, 0);
        v28 = v11;
        v12 = sub_24DB4("Description of validated associated domain requirement.", 0x37uLL, 1);
        v29 = sub_149F4(v27, v28, v12, v13);

        return v29;
      case 4:
        v24 = sub_24DB4("App Clip Codes have a limited capacity to store information.", 0x3CuLL, 1);
        v25 = v14;
        v15 = sub_24DB4("Description of App Clip code requirement.", 0x29uLL, 1);
        v26 = sub_149F4(v24, v25, v15, v16);

        return v26;
      default:
        v21 = sub_24DB4("You can connect to content deep inside your app with universal links. Users open your app in a specified context, allowing them to accomplish their goals efficiently.", 0xA6uLL, 1);
        v22 = v17;
        v18 = sub_24DB4("Description of Universal Link requirement.", 0x2AuLL, 1);
        v23 = sub_149F4(v21, v22, v18, v19);

        return v23;
    }
  }

  else
  {
    v36 = sub_24DB4("If you already display a Smart App Banner on your site, add the app-clip-bundle-id=appClipBundleID attribute to the existing meta tag for the Smart App Banner, and use the bundle identifier of your App Clip for its value.", 0xDDuLL, 1);
    v37 = v2;
    v3 = sub_24DB4("Decription of the meta tag requirement.", 0x27uLL, 1);
    v38 = sub_149F4(v36, v37, v3, v4);

    return v38;
  }
}

uint64_t sub_13300()
{
  v1 = type metadata accessor for Requirement(0);
  v3 = *(v0 + *(v1 + 20));
  if (*(v0 + *(v1 + 20)))
  {
    if (v3 == 1)
    {
      sub_24DB4("https://developer.apple.com/documentation/app_clips/configuring_the_launch_experience_of_your_app_clip", 0x66uLL, 1);
      sub_24744();
    }

    else if (v3 == 2)
    {
      sub_24DB4("https://developer.apple.com/documentation/app_clips/distributing_your_app_clip", 0x4EuLL, 1);
      sub_24744();
    }

    else if (v3 == 3)
    {
      sub_24DB4("https://developer.apple.com/documentation/app_clips/associating_your_app_clip_with_your_website", 0x5FuLL, 1);
      sub_24744();
    }

    else
    {
      if (v3 == 4)
      {
        sub_24DB4("https://developer.apple.com/documentation/app_clips/creating_app_clip_codes/encoding_a_url_in_an_app_clip_code", 0x6EuLL, 1);
      }

      else
      {
        sub_24DB4("https://developer.apple.com/documentation/xcode/allowing-apps-and-websites-to-link-to-your-content", 0x62uLL, 1);
      }

      sub_24744();
    }
  }

  else
  {
    sub_24DB4("https://developer.apple.com/documentation/app_clips/supporting_invocations_from_your_website_and_the_messages_app", 0x71uLL, 1);
    sub_24744();
  }
}

int *sub_134D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24784();
  result = type metadata accessor for Requirement(0);
  *(a5 + result[5]) = a1;
  v6 = (a5 + result[6]);
  *v6 = a2;
  v6[1] = a3;
  *(a5 + result[7]) = a4;
  return result;
}

unint64_t sub_13564()
{
  v2 = qword_35658;
  if (!qword_35658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_135F8()
{
  v2 = qword_35660;
  if (!qword_35660)
  {
    sub_24794();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13690()
{
  v2 = qword_35668;
  if (!qword_35668)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13724()
{
  v2 = qword_35670;
  if (!qword_35670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_137C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_24794();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_13908(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_24794();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_139F8(uint64_t a1)
{
  v4 = sub_24794();
  if (v1 <= 0x3F)
  {
    v4 = sub_13AD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_13AD8(uint64_t a1)
{
  v5 = qword_356D0;
  if (!qword_356D0)
  {
    type metadata accessor for Requirement(255);
    v4 = sub_24E74();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_356D0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_13B84(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
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

_BYTE *sub_13CEC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_13F0C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
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

_BYTE *sub_14074(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_14284(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
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

_BYTE *sub_143EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_14624(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_24794();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 2147483646)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v5 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_14774(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_24794();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1486C(uint64_t a1)
{
  v4 = sub_24794();
  if (v1 <= 0x3F)
  {
    v4 = sub_14960(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_14960(uint64_t a1)
{
  v5 = qword_35760;
  if (!qword_35760)
  {
    v4 = sub_24F14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_35760);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_149F4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v8._object = a4;
  sub_114E4();
  v11 = sub_1149C();
  v4 = sub_14AC4();
  v13.value._object = 0;
  v5.super.isa = v11;
  v14._countAndFlagsBits = v4;
  v14._object = v6;
  v8._countAndFlagsBits = v8._object;
  v13.value._countAndFlagsBits = 0;
  v12 = sub_24704(v10, v13, v5, v14, a3, v8);

  _objc_release(v11);
  return v12;
}

uint64_t sub_14B10@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v17 = sub_1530C;
  v31 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v54 = 0;
  v53 = 0;
  v1 = type metadata accessor for Requirement(0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v2 = &v9 - v10;
  v19 = &v9 - v10;
  v29 = sub_46E8(&qword_35798, &qword_2A1D0);
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v11 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v9 - v11;
  v38 = sub_46E8(&qword_357A0, &qword_2A1D8);
  v32 = *(v38 - 8);
  v33 = v38 - 8;
  v13 = *(v32 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v36 = &v9 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v37 = &v9 - v14;
  v54 = &v9 - v14;
  v53 = v3;
  v15 = &v41;
  v42 = v3;
  v16 = sub_46E8(&qword_357A8, &qword_2A1E0);
  sub_15314();
  sub_24A24();
  sub_6890(v18, v2);
  v21 = sub_12B3C();
  v20 = v4;
  sub_697C(v19);
  v49 = sub_24A74();
  v50 = v5;
  v51 = v6;
  v52 = v7;
  v22 = v49;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v30 = sub_1544C();
  v45 = v22;
  v46 = v23;
  v47 = v24 & 1;
  v48 = v25;
  sub_24B14();
  sub_154D4(v22, v23, v24 & 1);

  (*(v26 + 8))(v28, v29);
  v43 = v29;
  v44 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_15ED8(v36, v38, v37);
  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v40(v36, v38);
  (*(v32 + 16))(v36, v37, v38);
  sub_15ED8(v36, v38, v34);
  v40(v36, v38);
  return (v40)(v37, v38);
}

uint64_t sub_14FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v20 = a1;
  v21 = sub_17794;
  v47 = 0;
  v46 = 0;
  v31 = sub_46E8(&qword_357A8, &qword_2A1E0);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v20);
  v29 = &v12 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v30 = &v12 - v13;
  v47 = &v12 - v13;
  v46 = v4;
  *&v19[1] = 1;
  sub_24DB4("Description", 0xBuLL, 1);
  v18 = sub_24944();
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = 0;
  sub_114E4();
  sub_1149C();
  v43 = 0;
  v44 = 0;
  v45 = *v19 & 0x100;
  v39 = sub_24A84();
  v40 = v8;
  v41 = v9;
  v42 = v10;
  v24 = v36;
  v36[0] = v39;
  v36[1] = v8;
  v37 = v9 & 1 & v19[1];
  v38 = v10;
  v22 = &v34;
  v35 = v20;
  v23 = sub_46E8(&qword_357C0, &qword_2A1E8);
  sub_153C4();
  sub_24CA4();
  v28 = sub_15314();
  sub_15ED8(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_15ED8(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

unint64_t sub_15314()
{
  v2 = qword_357B0;
  if (!qword_357B0)
  {
    sub_4A94(&qword_357A8, &qword_2A1E0);
    sub_153C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_153C4()
{
  v2 = qword_357B8;
  if (!qword_357B8)
  {
    sub_4A94(&qword_357C0, &qword_2A1E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1544C()
{
  v2 = qword_357C8;
  if (!qword_357C8)
  {
    sub_4A94(&qword_35798, &qword_2A1D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_154D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_15518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v86 = a1;
  v37 = sub_15F3C;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v92 = 0;
  v38 = sub_46E8(&qword_35880, &unk_2A398);
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v25 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v41);
  v44 = &v25 - v43;
  v45 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v43);
  v46 = &v25 - v45;
  v119 = &v25 - v45;
  v4 = sub_46E8(&qword_35400, &qword_29E90);
  v47 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v89 = &v25 - v47;
  v52 = 0;
  v91 = sub_24754();
  v87 = *(v91 - 8);
  v88 = v91 - 8;
  v48 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v49 = &v25 - v48;
  v50 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v48);
  v51 = &v25 - v50;
  v118 = &v25 - v50;
  v53 = sub_46E8(&qword_35888, &qword_2A3A8);
  v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v52);
  v55 = &v25 - v54;
  v56 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v57 = &v25 - v56;
  v58 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v8);
  v59 = &v25 - v58;
  v117 = &v25 - v58;
  v60 = (*(*(type metadata accessor for Requirement(v10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v86);
  v78 = &v25 - v60;
  v61 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v62 = &v25 - v61;
  v116 = v13;
  sub_6890(v13, &v25 - v61);
  v64 = sub_12F1C();
  v63 = v14;
  sub_697C(v62);
  v65 = v113;
  v113[0] = v64;
  v113[1] = v63;
  sub_9938();
  v109 = sub_24A94();
  v110 = v15;
  v111 = v16;
  v112 = v17;
  v67 = v109;
  v68 = v15;
  v69 = v16;
  v70 = v17;
  v66 = sub_249D4();
  v105 = v67;
  v106 = v68;
  v90 = 1;
  v107 = v69 & 1;
  v108 = v70;
  v101 = sub_24A64();
  v102 = v18;
  v103 = v19;
  v104 = v20;
  v71 = v101;
  v72 = v18;
  v73 = v19;
  v74 = v20;

  sub_154D4(v67, v68, v69 & 1);

  v79 = v98;
  v98[0] = v71;
  v98[1] = v72;
  v99 = v73 & 1 & v90;
  v100 = v74;
  v76 = sub_24F94();
  v75 = v21;
  *v21 = sub_249B4();
  v75[1] = sub_249C4();
  sub_4964();
  v77 = v22;
  sub_1779C();
  sub_24F44();
  v80 = &v114;
  sub_24B64();
  v23 = v78;
  sub_16BD8(v79);
  v81 = __dst;
  v82 = 73;
  memcpy(__dst, v80, 0x49uLL);
  v85 = v97;
  memcpy(v97, __dst, 0x49uLL);
  v83 = sub_46E8(&qword_35898, &unk_2A3B0);
  v84 = sub_17814();
  sub_15ED8(v85, v83, v115);
  sub_16BD8(v85);
  sub_6890(v86, v23);
  sub_13300();
  if ((*(v87 + 48))(v89, v90, v91) == 1)
  {
    sub_D4F0(v89);
    sub_697C(v78);
    (*(v39 + 56))(v55, 1, 1, v38);
    sub_178B4();
    sub_16108(v55, v38, v57);
    sub_1793C(v55);
    sub_179F0(v57, v59);
  }

  else
  {
    (*(v87 + 32))(v51, v89, v91);
    sub_697C(v78);
    (*(v87 + 16))(v49, v51, v91);
    sub_24A34();
    v33 = sub_178B4();
    sub_15ED8(v44, v38, v46);
    v34 = *(v39 + 8);
    v35 = v39 + 8;
    v34(v44, v38);
    v92 = v44;
    v32 = *(v39 + 16);
    v31 = v39 + 16;
    v32(v42, v46, v38);
    sub_15ED8(v42, v38, v44);
    v34(v42, v38);
    v32(v55, v44, v38);
    (*(v39 + 56))(v55, 0, 1, v38);
    sub_16108(v55, v38, v57);
    sub_1793C(v55);
    sub_179F0(v57, v59);
    v34(v44, v38);
    v34(v46, v38);
    (*(v87 + 8))(v51, v91);
  }

  v30 = v115;
  v29 = v95;
  sub_17B24(v115, v95);
  v28 = v96;
  v96[0] = v29;
  sub_17BC8(v59, v57);
  v96[1] = v57;
  v26 = v94;
  v94[0] = v83;
  v94[1] = v53;
  v27 = v93;
  v93[0] = v84;
  v93[1] = sub_17CFC();
  sub_16154(v28, 2uLL, v26, v36);
  sub_1793C(v57);
  sub_16BD8(v29);
  sub_1793C(v59);
  return sub_16BD8(v30);
}

uint64_t sub_15F3C@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  sub_24DB4("Show Documentation", 0x12uLL, 1);
  sub_24944();
  sub_114E4();
  sub_1149C();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = sub_24A84();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_15ED8(v13, &type metadata for Text, &v23);
  sub_16BD8(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_16C20(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_15ED8(&v10, &type metadata for Text, a1);
  sub_16BD8(&v10);
  return sub_16BD8(&v23);
}

uint64_t *sub_16154@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

  sub_24CF4();
  return v15;
}

uint64_t sub_16430()
{
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  v2 = sub_EFDC();
  sub_24F94();
  *v0 = 0;
  sub_4964();
  (*(*v2 + 328))();

  return v2;
}

uint64_t sub_164E0@<X0>(uint64_t a1@<X8>)
{
  v25 = &v69;
  v26 = a1;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v57 = 0u;
  v58 = 0u;
  v50 = 0;
  v34 = 0;
  v27 = type metadata accessor for RequirementDetail(0);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v29 = &v11 - v28;
  v30 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v28);
  v31 = &v11 - v30;
  v32 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v30);
  v33 = &v11 - v32;
  v73 = &v11 - v32;
  v35 = (*(*(sub_46E8(&qword_35268, &qword_2A1F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v34);
  v48 = &v11 - v35;
  v49 = type metadata accessor for Requirement(v3);
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v36 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v37 = &v11 - v36;
  v38 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v36);
  v39 = &v11 - v38;
  v72 = &v11 - v38;
  v40 = sub_46E8(&qword_357D0, &qword_2A1F8);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v42 = &v11 - v41;
  v43 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v41);
  v44 = &v11 - v43;
  v71 = &v11 - v43;
  v45 = sub_16430();
  (*(*v45 + 352))(0);

  if ((*(v46 + 48))(v48, 1, v49) == 1)
  {
    sub_670C(v48);
    HIDWORD(v17) = 1;
    sub_24DB4("Unavailable", 0xBuLL, 1);
    sub_24944();
    v66 = 0;
    v67 = 0;
    v68 = *(&v17 + 3) & 0x100;
    v62 = sub_24A84();
    v63 = v6;
    v64 = v7;
    v65 = v8;
    v11 = v59;
    v59[0] = v62;
    v59[1] = v6;
    v60 = v7 & 1 & BYTE4(v17);
    v61 = v8;
    v23 = &v69;
    v19 = &type metadata for Text;
    v20 = &protocol witness table for Text;
    sub_15ED8(v59, &type metadata for Text, &v69);
    sub_16BD8(v11);
    v12 = v69;
    v13 = v70;
    v14 = *(&v70 + 1);
    sub_16C20(v69, *(&v69 + 1), v70 & 1);

    v15 = &v54;
    v54 = v12;
    v55 = v13 & 1 & BYTE4(v17);
    v56 = v14;
    v22 = &v57;
    sub_15ED8(&v54, v19, &v57);
    sub_16BD8(v15);
    v16 = v57;
    LODWORD(v17) = v58;
    v18 = *(&v58 + 1);
    sub_16C20(v57, *(&v57 + 1), v58 & 1);

    v21 = &v51;
    v51 = v16;
    v52 = v17 & 1 & BYTE4(v17);
    v53 = v18;
    v9 = sub_16E54();
    sub_16D5C(v21, v27, v19, v9, v20, v42);
    sub_16BD8(v21);
    sub_16ED4(v42, v44);
    sub_16BD8(v22);
    sub_16BD8(v23);
  }

  else
  {
    sub_67CC(v48, v39);
    sub_6890(v39, v37);
    sub_163B0(v37, v31);
    v24 = sub_16E54();
    sub_15ED8(v31, v27, v33);
    sub_697C(v31);
    v50 = v31;
    sub_6890(v33, v29);
    sub_15ED8(v29, v27, v31);
    sub_697C(v29);
    sub_6890(v31, v29);
    sub_16C64(v29, v27, &type metadata for Text, v24, &protocol witness table for Text, v42);
    sub_697C(v29);
    sub_16ED4(v42, v44);
    sub_697C(v31);
    sub_697C(v33);
    sub_697C(v39);
  }

  sub_17004(v44, v42);
  sub_171BC();
  sub_15ED8(v42, v40, v26);
  sub_17260(v42);
  return sub_17260(v44);
}

uint64_t type metadata accessor for RequirementDetail(uint64_t a1)
{
  v2 = qword_36380;
  if (!qword_36380)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_16BD8(uint64_t a1)
{
  sub_154D4(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_16C20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_16C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_24974();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_24984();
}

uint64_t sub_16D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_24974();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_24984();
}

unint64_t sub_16E54()
{
  v2 = qword_357D8;
  if (!qword_357D8)
  {
    type metadata accessor for RequirementDetail(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357D8);
    return WitnessTable;
  }

  return v2;
}

char *sub_16ED4(char *a1, char *a2)
{
  v7 = sub_46E8(&qword_357E0, &qword_2A200);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = sub_24794();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = type metadata accessor for Requirement(0);
    a2[v3[5]] = a1[v3[5]];
    *&a2[v3[6]] = *&a1[v3[6]];
    a2[v3[7]] = a1[v3[7]];
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_17004(uint64_t a1, uint64_t a2)
{
  sub_46E8(&qword_357E0, &qword_2A200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    sub_16C20(*a1, v6, v7 & 1);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
    v8 = *(a1 + 24);

    *(a2 + 24) = v8;
  }

  else
  {
    v2 = sub_24794();
    (*(*(v2 - 8) + 16))(a2, a1);
    v11 = type metadata accessor for Requirement(0);
    *(a2 + v11[5]) = *(a1 + v11[5]);
    v9 = (a2 + v11[6]);
    v3 = (a1 + v11[6]);
    *v9 = *v3;
    v10 = v3[1];

    v9[1] = v10;
    *(a2 + v11[7]) = *(a1 + v11[7]);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_171BC()
{
  v2 = qword_357E8;
  if (!qword_357E8)
  {
    sub_4A94(&qword_357D0, &qword_2A1F8);
    sub_16E54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_17260(uint64_t a1)
{
  sub_46E8(&qword_357E0, &qword_2A200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_154D4(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  else
  {
    v1 = sub_24794();
    (*(*(v1 - 8) + 8))(a1);
    type metadata accessor for Requirement(0);
  }

  return a1;
}

unint64_t sub_1739C()
{
  v2 = qword_357F0;
  if (!qword_357F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1749C()
{
  v2 = qword_357F8;
  if (!qword_357F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_357F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_17660(uint64_t a1)
{
  v3 = type metadata accessor for Requirement(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1770C()
{
  sub_4A94(&qword_35798, &qword_2A1D0);
  sub_1544C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1779C()
{
  v2 = qword_35890;
  if (!qword_35890)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_17814()
{
  v2 = qword_358A0;
  if (!qword_358A0)
  {
    sub_4A94(&qword_35898, &unk_2A3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_178B4()
{
  v2 = qword_358A8;
  if (!qword_358A8)
  {
    sub_4A94(&qword_35880, &unk_2A398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1793C(uint64_t a1)
{
  v3 = sub_46E8(&qword_35880, &unk_2A398);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_179F0(const void *a1, void *a2)
{
  v6 = sub_46E8(&qword_35880, &unk_2A398);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_46E8(&qword_35888, &qword_2A3A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_17B24(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_16C20(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v7 = *(a1 + 24);

  *(a2 + 24) = v7;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  return a2;
}

void *sub_17BC8(const void *a1, void *a2)
{
  v6 = sub_46E8(&qword_35880, &unk_2A398);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_46E8(&qword_35888, &qword_2A3A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_17CFC()
{
  v2 = qword_358B0;
  if (!qword_358B0)
  {
    sub_4A94(&qword_35888, &qword_2A3A8);
    sub_178B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358B0);
    return WitnessTable;
  }

  return v2;
}

void *sub_17D94(const void *a1, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t static DeveloperDiagnosticsViewControllerFactory.appClipsDeveloperDiagnosticsViewController()()
{
  v4 = 0;
  sub_17F38(0, v5);
  sub_46E8(&qword_358B8, &qword_2A3C0);
  sub_18064(v5, v3);
  memcpy(__dst, v5, sizeof(__dst));
  v1 = sub_24964();
  sub_1819C(v5);
  return v1;
}

void *sub_17F38@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v2 = sub_24DB4("", 0, 1);
  LOBYTE(__src[0]) = a1 & 1;
  __src[1] = sub_18974(v2, v3);
  __src[2] = v4;
  __src[3] = v5;
  LOBYTE(__src[4]) = sub_18CD4(0) & 1;
  __src[5] = v6;
  LOBYTE(__src[6]) = sub_18CD4(0) & 1;
  __src[7] = v7;
  __src[8] = sub_19190(sub_192A8, 0);
  __src[9] = v8;
  LOBYTE(__src[10]) = v9 & 1;
  return memcpy(a2, __src, 0x51uLL);
}

uint64_t sub_18064(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 16);

  *(a2 + 16) = v3;
  v4 = *(a1 + 24);

  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 40);

  *(a2 + 40) = v5;
  *(a2 + 48) = *(a1 + 48);
  v6 = *(a1 + 56);

  *(a2 + 56) = v6;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  sub_1815C();
  result = a2;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10 & 1;
  return result;
}

uint64_t sub_1819C(uint64_t a1)
{

  sub_18204(*(a1 + 64), *(a1 + 72));
  return a1;
}

uint64_t static DeveloperDiagnosticsViewControllerFactory.universalLinksDeveloperDiagnosticsViewController()()
{
  v4 = 0;
  sub_17F38(1, v5);
  sub_46E8(&qword_358B8, &qword_2A3C0);
  sub_18064(v5, v3);
  memcpy(__dst, v5, sizeof(__dst));
  v1 = sub_24964();
  sub_1819C(v5);
  return v1;
}

id DeveloperDiagnosticsViewControllerFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for DeveloperDiagnosticsViewControllerFactory();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id DeveloperDiagnosticsViewControllerFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeveloperDiagnosticsViewControllerFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1866C()
{
  if (*v0)
  {
    sub_24F94();
    *v3 = 2;
  }

  else
  {
    sub_24F94();
    *v1 = 1;
    v1[1] = 0;
  }

  sub_4964();
  return result;
}

uint64_t sub_18734()
{
  if (*v0)
  {
    sub_24DB4("The URL entered will be analyzed for compatibility with Universal Links invocation features.", 0x5CuLL, 1);
  }

  else
  {
    sub_24DB4("The URL entered will be analyzed for compatibility with App Clips invocation features.", 0x56uLL, 1);
  }

  sub_24944();
  sub_114E4();
  sub_1149C();
  return sub_24A84();
}

uint64_t sub_18974(uint64_t a1, uint64_t a2)
{

  sub_24C14();

  return v3;
}

uint64_t sub_18A08()
{
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  sub_19378(&v4, v3);
  sub_46E8(&qword_358C8, &qword_2A3C8);
  sub_24C24();
  sub_193D8(&v4);
  return v2;
}

uint64_t sub_18A9C(uint64_t a1, uint64_t a2)
{
  v8 = *(v2 + 8);
  v9 = *(v2 + 24);
  sub_19378(&v8, v7);
  sub_19378(&v8, v6);
  v4 = v8;
  v5 = v9;

  sub_46E8(&qword_358C8, &qword_2A3C8);
  sub_24C34();
  sub_193D8(&v4);
  sub_193D8(&v8);
}

uint64_t sub_18B64()
{
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  sub_19378(&v4, v3);
  sub_46E8(&qword_358C8, &qword_2A3C8);
  sub_24C44();
  sub_193D8(&v4);
  return v2;
}

uint64_t sub_18C10()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_18C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

uint64_t sub_18D28()
{
  v4 = *(v0 + 32);
  sub_19410(&v4, v3);
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C24();
  sub_19450(&v4);
  return v2 & 1;
}

void sub_18DA4(char a1)
{
  v5 = *(v1 + 32);
  sub_19410(&v5, v4);
  sub_19410(&v5, v3);
  v2 = v5;
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C34();
  sub_19450(&v2);
  sub_19450(&v5);
}

uint64_t sub_18E40()
{
  v4 = *(v0 + 32);
  sub_19410(&v4, v3);
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C44();
  sub_19450(&v4);
  return v2;
}

uint64_t sub_18ED4()
{
  v2 = *(v0 + 32);

  return v2 & 1;
}

uint64_t sub_18F10(char a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_18F5C()
{
  v4 = *(v0 + 48);
  sub_19410(&v4, v3);
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C24();
  sub_19450(&v4);
  return v2 & 1;
}

void sub_18FD8(char a1)
{
  v5 = *(v1 + 48);
  sub_19410(&v5, v4);
  sub_19410(&v5, v3);
  v2 = v5;
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C34();
  sub_19450(&v2);
  sub_19450(&v5);
}

uint64_t sub_19074()
{
  v4 = *(v0 + 48);
  sub_19410(&v4, v3);
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C44();
  sub_19450(&v4);
  return v2;
}

uint64_t sub_19108()
{
  v2 = *(v0 + 48);

  return v2 & 1;
}

uint64_t sub_19144(char a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_19190(uint64_t a1, uint64_t a2)
{

  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  sub_1947C();
  v3 = sub_24824();

  return v3;
}

uint64_t sub_19220()
{
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1815C();
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  sub_1947C();
  v4 = sub_24834();
  sub_18204(v3, v2);
  return v4;
}

unint64_t sub_192FC()
{
  v2 = qword_358C0;
  if (!qword_358C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_19378(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  v6 = a1[2];

  result = a2;
  a2[2] = v6;
  return result;
}

uint64_t sub_19410(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

unint64_t sub_1947C()
{
  v2 = qword_358D8;
  if (!qword_358D8)
  {
    type metadata accessor for DeveloperDiagnosticsViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_194FC()
{
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1815C();
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  sub_1947C();
  v4 = sub_24844();
  sub_18204(v3, v2);
  return v4;
}

uint64_t sub_19584()
{
  v2 = *(v0 + 64);
  sub_1815C();
  return v2;
}

uint64_t sub_195D0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1815C();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3 & 1;
  sub_18204(v4, v5);
  return sub_18204(a1, a2);
}

uint64_t sub_19648@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v11 = sub_19C44;
  v25 = 0;
  __src = __dst;
  __n = 81;
  memcpy(__dst, v1, 0x51uLL);
  memcpy(v27, __dst, sizeof(v27));
  v19 = sub_46E8(&qword_358E0, &qword_2A3D8);
  v13 = *(v19 - 8);
  v14 = v19 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v17 = &v4 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v7);
  v18 = &v4 - v8;
  v25 = &v4 - v8;
  sub_18064(v1, &v24);
  v9 = &v22;
  v23 = v1;
  v10 = sub_46E8(&qword_358E8, &qword_2A3E0);
  sub_19C4C();
  sub_24A24();
  sub_1819C(v12);
  v16 = sub_1B914();
  sub_15ED8(v17, v19, v18);
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v17, v19);
  (*(v13 + 16))(v17, v18, v19);
  sub_15ED8(v17, v19, v15);
  v21(v17, v19);
  return (v21)(v18, v19);
}

uint64_t sub_19888@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = __src;
  v25 = sub_1CAF8;
  v58 = 0;
  __srca = __dst;
  __n = 81;
  memcpy(__dst, __src, 0x51uLL);
  memcpy(v60, __dst, sizeof(v60));
  v36 = sub_46E8(&qword_358E8, &qword_2A3E0);
  v30 = *(v36 - 8);
  v31 = v36 - 8;
  v16 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v34 = &v13 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v16);
  v35 = &v13 - v17;
  v58 = &v13 - v17;
  *&v23[1] = 1;
  sub_24DB4("URL", 3uLL, 1);
  v22 = sub_24944();
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = 0;
  sub_114E4();
  sub_1149C();
  v55 = 0;
  v56 = 0;
  v57 = *v23 & 0x100;
  v51 = sub_24A84();
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v28 = v48;
  v48[0] = v51;
  v48[1] = v6;
  v49 = v7 & 1 & v23[1];
  v50 = v8;
  v44 = sub_18734();
  v45 = v9;
  v46 = v10;
  v47 = v11;
  v24 = v41;
  v41[0] = v44;
  v41[1] = v9;
  v42 = v10 & 1 & v23[1];
  v43 = v11;
  sub_18064(v29, &v40);
  v26 = v39;
  v39[2] = v29;
  v27 = sub_46E8(&qword_35900, &qword_2A3E8);
  sub_19CF8();
  sub_24CB4();
  sub_1819C(v29);
  v33 = sub_19C4C();
  sub_15ED8(v34, v36, v35);
  v38 = *(v30 + 8);
  v37 = v30 + 8;
  v38(v34, v36);
  (*(v30 + 16))(v34, v35, v36);
  sub_15ED8(v34, v36, v32);
  v38(v34, v36);
  return (v38)(v35, v36);
}

unint64_t sub_19C4C()
{
  v2 = qword_358F0;
  if (!qword_358F0)
  {
    sub_4A94(&qword_358E8, &qword_2A3E0);
    sub_19CF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_19CF8()
{
  v2 = qword_358F8;
  if (!qword_358F8)
  {
    sub_4A94(&qword_35900, &qword_2A3E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_358F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19D80@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v13 = __src;
  v9 = sub_1CB00;
  v21 = 0;
  __srca[0] = __dst;
  __srca[1] = &stru_20 + 49;
  memcpy(__dst, __src, 0x51uLL);
  memcpy(v23, __dst, sizeof(v23));
  v15 = sub_46E8(&qword_35900, &qword_2A3E8);
  v7 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v17 = __srca - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v18 = __srca - v8;
  v21 = __srca - v8;
  sub_18064(v4, &v20);
  v10 = v19;
  v19[2] = v13;
  v11 = sub_46E8(&qword_35970, ".\v");
  v12 = sub_1CB08();
  sub_1B9B4();
  sub_24C74();
  sub_1819C(v13);
  v16 = sub_19CF8();
  sub_15ED8(v17, v15, v18);
  sub_1CB90(v17);
  sub_1CC88(v18, v17);
  sub_15ED8(v17, v15, v14);
  sub_1CB90(v17);
  return sub_1CB90(v18);
}

uint64_t sub_19F50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = v155;
  v138 = a2;
  v120 = a1;
  v127 = 0;
  v52 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v58 = &opaque type descriptor for <<opaque return type of View.autocapitalization(_:)>>;
  v68 = &opaque type descriptor for <<opaque return type of View.disableAutocorrection(_:)>>;
  v69 = sub_1CEAC;
  v78 = sub_1B554;
  v89 = sub_1D260;
  v98 = &opaque type descriptor for <<opaque return type of View.onSubmit(of:_:)>>;
  v108 = &opaque type descriptor for <<opaque return type of View.submitLabel(_:)>>;
  v126 = sub_1B99C;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v132 = sub_46E8(&qword_35998, &qword_2A6E8);
  v129 = *(v132 - 8);
  v130 = v132 - 8;
  v23 = (*(v129 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v132);
  v131 = &v22 - v23;
  v135 = sub_46E8(&qword_359A0, &qword_2A6F0);
  v24 = (*(*(v135 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v135);
  v140 = &v22 - v24;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v22 - v24);
  v142 = &v22 - v25;
  v164 = &v22 - v25;
  v110 = 0;
  v102 = sub_24864();
  v99 = *(v102 - 8);
  v100 = v102 - 8;
  v26 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v110);
  v101 = &v22 - v26;
  v93 = sub_248E4();
  v90 = *(v93 - 8);
  v91 = v93 - 8;
  v27 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v110);
  v92 = &v22 - v27;
  v84 = sub_24EF4();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v28 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v83 = &v22 - v28;
  v50 = sub_46E8(&qword_359A8, &qword_2A6F8);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v29 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v49 = &v22 - v29;
  v56 = sub_46E8(&qword_359B0, &qword_2A700);
  v53 = *(v56 - 8);
  v54 = v56 - 8;
  v30 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v55 = &v22 - v30;
  v66 = sub_46E8(&qword_359B8, &qword_2A708);
  v60 = *(v66 - 8);
  v61 = v66 - 8;
  v31 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v62 = &v22 - v31;
  v74 = sub_46E8(&qword_359C0, &qword_2A710);
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v32 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v75 = &v22 - v32;
  v79 = sub_46E8(&qword_359C8, &qword_2A718);
  v33 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v85 = &v22 - v33;
  v96 = sub_46E8(&qword_359D0, &qword_2A720);
  v34 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v96);
  v95 = &v22 - v34;
  v106 = sub_46E8(&qword_359D8, &qword_2A728);
  v103 = *(v106 - 8);
  v104 = v106 - 8;
  v35 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v106);
  v105 = &v22 - v35;
  v143 = sub_46E8(&qword_35988, &qword_2A6D8);
  v133 = *(v143 - 8);
  v134 = v143 - 8;
  v36 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v120);
  v141 = &v22 - v36;
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v146 = &v22 - v37;
  v163 = &v22 - v37;
  v162 = v5;
  v59 = 1;
  sub_24DB4("https://example.com", 0x13uLL, 1);
  v6 = sub_24944();
  v7 = v120;
  v46 = v6;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v11 = *(v120 + 8);
  v38 = v170;
  v121[36] = v11;
  v171 = *(v7 + 3);
  sub_19378(v170, v161);
  v121[26] = v121[36];
  v160[13] = v171;
  v115 = sub_46E8(&qword_358C8, &qword_2A3C8);
  sub_24C44();
  v42 = v160[7];
  v43 = v160[8];
  v44 = v160[9];
  v45 = v160[10];
  sub_193D8(v38);
  sub_1AF44(v46, v39, v40 & 1);
  v51 = sub_1CDB8();
  sub_24AD4();
  (*(v47 + 8))(v49, v50);
  v160[5] = v50;
  v160[6] = v51;
  v109 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B24();
  (*(v53 + 8))(v55, v56);
  v160[3] = v56;
  v160[4] = OpaqueTypeConformance2;
  v67 = swift_getOpaqueTypeConformance2();
  sub_24B34();
  (*(v60 + 8))(v62, v66);
  v12 = v120;
  v13 = *(v120 + 8);
  v63 = v168;
  v121[34] = v13;
  v169 = *(v12 + 3);
  sub_19378(v168, v160);
  v121[19] = v121[34];
  v159[6] = v169;
  sub_24C24();
  v64 = v159[2];
  v65 = v159[3];
  sub_193D8(v63);
  v71 = v159;
  v159[0] = v64;
  v159[1] = v65;
  sub_18064(v120, &v158);
  v86 = 97;
  v87 = 7;
  v70 = swift_allocObject();
  v88 = 81;
  memcpy((v70 + 16), v120, 0x51uLL);
  v157[11] = v66;
  v157[12] = v67;
  swift_getOpaqueTypeConformance2();
  sub_24B74();

  sub_47FC(v71);
  (*(v72 + 8))(v75, v74);
  v77 = [objc_opt_self() defaultCenter];
  v76 = UITextFieldTextDidBeginEditingNotification;
  _objc_retain(UITextFieldTextDidBeginEditingNotification);
  sub_24F04();
  _objc_release(v76);
  _objc_release(v77);
  v80 = sub_1CEB4();
  sub_1D0D0();
  sub_24B94();
  (*(v81 + 8))(v83, v84);
  sub_1D150(v85);
  sub_18064(v120, v157);
  v94 = swift_allocObject();
  memcpy((v94 + 16), v120, v88);
  v97 = sub_1D268();
  sub_1B8F0();
  sub_24B84();
  (*(v90 + 8))(v92, v93);

  sub_1D2F0(v95);
  sub_24854();
  v156[5] = v96;
  v156[6] = v97;
  v107 = swift_getOpaqueTypeConformance2();
  sub_24AC4();
  (*(v99 + 8))(v101, v102);
  (*(v103 + 8))(v105, v106);
  v156[3] = v106;
  v156[4] = v107;
  v136 = swift_getOpaqueTypeConformance2();
  sub_15ED8(v141, v143, v146);
  v145 = *(v133 + 8);
  v144 = v133 + 8;
  v145(v141, v143);
  v114 = *(v120 + 8);
  v112 = *(v120 + 9);
  v113 = v120[80];
  sub_1815C();
  v111 = type metadata accessor for DeveloperDiagnosticsViewModel(v110);
  sub_1947C();
  v119 = sub_24834();
  sub_18204(v114, v112);
  v14 = v120;
  v15 = *(v120 + 8);
  v116 = v166;
  v121[32] = v15;
  v167 = *(v14 + 3);
  sub_19378(v166, v156);
  *v121 = v121[32];
  v155[2] = v167;
  sub_24C24();
  v117 = v154[4];
  v118 = v154[5];
  sub_193D8(v116);
  v16 = sub_1EF80(v119);
  v128 = v154;
  v154[0] = v16;
  v154[1] = v17;
  v154[2] = v18;
  v154[3] = v19;
  v20 = *(v120 + 3);
  v122 = v165;
  v121[31] = v20;
  sub_19410(v165, &v153);
  v152 = v121[31];
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C44();
  v123 = v150[2];
  v124 = v150[3];
  v125 = v151;
  sub_19450(v122);
  sub_1D40C();
  sub_248A4();
  sub_1D484();
  sub_24B54();
  (*(v129 + 8))(v131, v132);
  v137 = sub_1D50C();
  sub_15ED8(v140, v135, v142);
  sub_1D62C(v140);
  (*(v133 + 16))(v141, v146, v143);
  v139 = v150;
  v150[0] = v141;
  sub_1D694(v142, v140);
  v150[1] = v140;
  v149[0] = v143;
  v149[1] = v135;
  v147 = v136;
  v148 = v137;
  sub_16154(v139, 2uLL, v149, v138);
  sub_1D62C(v140);
  v145(v141, v143);
  sub_1D62C(v142);
  return (v145)(v146, v143);
}

void sub_1AFA0(uint64_t *a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v2 = sub_46E8(&qword_35400, &qword_29E90);
  v34 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v35 = &v8[-v34];
  v36 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8[-v34]);
  v41 = &v8[-v36];
  v39 = *v37;
  v40 = v37[1];
  v57 = v39;
  v58 = v40;
  v56 = v38;
  sub_24744();
  v42 = sub_24754();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = *(v43 + 48);
  v46 = v43 + 48;
  v33 = v45(v41, 1) != 1;
  v32 = v33;
  sub_D4F0(v41);

  if (!v32)
  {
    v14 = 0;
    goto LABEL_18;
  }

  sub_24744();
  if ((v45)(v35, 1, v42) == 1)
  {
    sub_D4F0(v35);
  }

  else
  {
    v30 = sub_24734();
    v31 = v4;
    (*(v43 + 8))(v35, v42);
    if (v31)
    {
      v28 = v30;
      v29 = v31;
      v23 = v31;
      v24 = sub_24DA4();
      v25 = v5;

      v26 = v24;
      v27 = v25;
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = 0;
LABEL_7:
  v21 = v27;
  v20 = v26;

  v19 = sub_24DB4("https", 5uLL, 1);
  v22 = v6;

  v50[0] = v20;
  v50[1] = v21;
  *&v51 = v19;
  *(&v51 + 1) = v22;
  if (!v21)
  {
    if (!*(&v51 + 1))
    {
      sub_47FC(v50);
      v18 = 1;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_1D7A0(v50, &v49);
  if (!*(&v51 + 1))
  {
    sub_47FC(&v49);
LABEL_14:
    sub_1D768(v50);
    v18 = 0;
    goto LABEL_13;
  }

  v16 = &v48;
  v48 = v49;
  v15 = &v47;
  v47 = v51;
  v17 = sub_24DC4();
  sub_47FC(v15);
  sub_47FC(v16);
  sub_47FC(v50);
  v18 = v17;
LABEL_13:
  v13 = v18;

  v14 = v13;
LABEL_18:
  v9 = v14;

  v7 = *(v38 + 32);
  v12 = &v59;
  v59 = v7;
  sub_19410(&v59, v55);
  sub_19410(v12, v54);
  v11 = &v53;
  v53 = v59;
  v10 = &v52;
  v52 = v9 & 1;
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C34();
  sub_19450(v11);
  sub_19450(v12);
}

void sub_1B554(uint64_t a1)
{
  v7[4] = a1;
  sub_246B4();
  if (v7[3])
  {
    sub_1D704();
    if (swift_dynamicCast())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    sub_97B0(v7);
    v5 = 0;
  }

  if (v5)
  {
    v2 = [v5 beginningOfDocument];
    v1 = [v5 endOfDocument];
    v3 = [v5 textRangeFromPosition:v2 toPosition:?];
    _objc_release(v1);
    _objc_release(v2);
    [v5 setSelectedTextRange:v3];
    _objc_release(v3);
    _objc_release(v5);
  }
}

void sub_1B6F0(uint64_t a1)
{
  v12[3] = a1;
  v2 = *(a1 + 64);
  v1 = *(a1 + 72);
  sub_1815C();
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  sub_1947C();
  v3 = sub_24834();
  sub_18204(v2, v1);
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  sub_19378(&v14, v12);
  v10 = v14;
  v11 = v15;
  sub_46E8(&qword_358C8, &qword_2A3C8);
  sub_24C24();
  sub_193D8(&v14);
  sub_1866C();
  (*(*v3 + 336))(v8, v9);

  v13 = *(a1 + 48);
  sub_19410(&v13, v7);
  sub_19410(&v13, v6);
  v5 = v13;
  sub_46E8(&qword_358D0, &qword_2A3D0);
  sub_24C34();
  sub_19450(&v5);
  sub_19450(&v13);
}

unint64_t sub_1B914()
{
  v2 = qword_35908;
  if (!qword_35908)
  {
    sub_4A94(&qword_358E0, &qword_2A3D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BA20@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v7 = 0;
  v6 = &opaque type descriptor for <<opaque return type of View.previewInterfaceOrientation(_:)>>;
  v9 = sub_1BBC4;
  v17 = 0;
  v11 = sub_46E8(&qword_35910, &qword_2A3F0);
  v4 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v4 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v4);
  v14 = &v4 - v5;
  v17 = &v4 - v5;
  v8 = sub_46E8(&qword_35918, &qword_2A3F8);
  v2 = sub_1BF20();
  v15 = &unk_31690;
  v16 = v2;
  swift_getOpaqueTypeConformance2();
  sub_24BF4();
  v12 = sub_1BF9C();
  sub_15ED8(v13, v11, v14);
  sub_1C074(v13);
  sub_1C0DC(v14, v13);
  sub_15ED8(v13, v11, v10);
  sub_1C074(v13);
  return sub_1C074(v14);
}

uint64_t sub_1BBC4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v14 = &opaque type descriptor for <<opaque return type of View.previewInterfaceOrientation(_:)>>;
  v27 = 0;
  v10 = sub_249A4();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v3 - v3;
  v21 = sub_46E8(&qword_35918, &qword_2A3F8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v4 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v19 = &v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v4);
  v20 = &v3 - v5;
  v27 = &v3 - v5;
  v6 = v28;
  sub_17F38(0, v28);
  v11 = __dst;
  memcpy(__dst, v6, 0x51uLL);
  sub_24994();
  v13 = sub_1BF20();
  v12 = &unk_31690;
  sub_24B44();
  (*(v7 + 8))(v9, v10);
  sub_1819C(v11);
  v24 = v12;
  v25 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_15ED8(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_15ED8(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

unint64_t sub_1BF20()
{
  v2 = qword_35920;
  if (!qword_35920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BF9C()
{
  v2 = qword_35928;
  if (!qword_35928)
  {
    sub_4A94(&qword_35910, &qword_2A3F0);
    sub_1BF20();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35928);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C074(uint64_t a1)
{
  v1 = sub_46E8(&qword_35918, &qword_2A3F8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C0DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_46E8(&qword_35918, &qword_2A3F8);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C19C()
{
  v2 = qword_35930;
  if (!qword_35930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C268()
{
  v2 = qword_35938;
  if (!qword_35938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35938);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C330()
{
  v2 = qword_35940;
  if (!qword_35940)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35940);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C41C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
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

uint64_t sub_1C534(uint64_t result, int a2, int a3)
{
  v3 = (result + 81);
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 80) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C720(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
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

_BYTE *sub_1C888(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1CB08()
{
  v2 = qword_35978;
  if (!qword_35978)
  {
    sub_4A94(&qword_35970, ".\v");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35978);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1CB90(uint64_t a1)
{
  v4 = *(sub_46E8(&qword_35980, &qword_2A6D0) + 44);
  v1 = sub_46E8(&qword_35988, &qword_2A6D8);
  (*(*(v1 - 8) + 8))();
  v5 = *(sub_46E8(&qword_35990, &qword_2A6E0) + 48);
  v2 = sub_46E8(&qword_35998, &qword_2A6E8);
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

char *sub_1CC88(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = *(sub_46E8(&qword_35980, &qword_2A6D0) + 44);
  v2 = sub_46E8(&qword_35988, &qword_2A6D8);
  (*(*(v2 - 8) + 16))();
  v7 = *(sub_46E8(&qword_35990, &qword_2A6E0) + 48);
  v3 = sub_46E8(&qword_35998, &qword_2A6E8);
  (*(*(v3 - 8) + 16))(&a2[v5 + v7], &a1[v5 + v7]);
  return a2;
}

unint64_t sub_1CDB8()
{
  v2 = qword_359E0;
  if (!qword_359E0)
  {
    sub_4A94(&qword_359A8, &qword_2A6F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_359E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1CE40()
{

  sub_18204(*(v0 + 80), *(v0 + 88));
  return swift_deallocObject();
}

unint64_t sub_1CEB4()
{
  v2 = qword_359E8;
  if (!qword_359E8)
  {
    sub_4A94(&qword_359C8, &qword_2A718);
    sub_4A94(&qword_359B8, &qword_2A708);
    sub_4A94(&qword_359B0, &qword_2A700);
    sub_4A94(&qword_359A8, &qword_2A6F8);
    sub_1CDB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D048();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_359E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D048()
{
  v2 = qword_359F0;
  if (!qword_359F0)
  {
    sub_4A94(&qword_359F8, &unk_2A730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_359F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D0D0()
{
  v2 = qword_35A00;
  if (!qword_35A00)
  {
    sub_24EF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D150(uint64_t a1)
{
  v1 = sub_46E8(&qword_359C0, &qword_2A710);
  (*(*(v1 - 8) + 8))(a1);
  sub_46E8(&qword_359C8, &qword_2A718);

  return a1;
}

uint64_t sub_1D1F4()
{

  sub_18204(*(v0 + 80), *(v0 + 88));
  return swift_deallocObject();
}

unint64_t sub_1D268()
{
  v2 = qword_35A08;
  if (!qword_35A08)
  {
    sub_4A94(&qword_359D0, &qword_2A720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2F0(uint64_t a1)
{
  v1 = sub_46E8(&qword_359C0, &qword_2A710);
  (*(*(v1 - 8) + 8))(a1);
  sub_46E8(&qword_359C8, &qword_2A718);

  v4 = *(sub_46E8(&qword_359D0, &qword_2A720) + 52);
  v2 = sub_24EF4();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

unint64_t sub_1D40C()
{
  v2 = qword_35A10;
  if (!qword_35A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D484()
{
  v2 = qword_35A18;
  if (!qword_35A18)
  {
    sub_4A94(&qword_35998, &qword_2A6E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D50C()
{
  v2 = qword_35A20;
  if (!qword_35A20)
  {
    sub_4A94(&qword_359A0, &qword_2A6F0);
    sub_1D484();
    sub_1D5B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D5B4()
{
  v2 = qword_35A28;
  if (!qword_35A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D62C(uint64_t a1)
{
  v1 = sub_46E8(&qword_35998, &qword_2A6E8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1D694(uint64_t a1, uint64_t a2)
{
  v2 = sub_46E8(&qword_35998, &qword_2A6E8);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

unint64_t sub_1D704()
{
  v2 = qword_35A30;
  if (!qword_35A30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_35A30);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1D7A0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D7E0(uint64_t a1)
{
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  sub_1947C();
  return sub_248B4();
}

uint64_t sub_1D828(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_1D888(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_1D8DC(uint64_t a1, uint64_t a2)
{

  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  sub_1947C();
  v3 = sub_248C4();

  return v3;
}

uint64_t sub_1D998(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1DA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v15 = a1;
  v20 = a2;
  v16 = a3;
  v21 = a4;
  v19 = sub_1E040;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v28 = sub_46E8(&qword_35A38, &qword_2A740);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v13 = *(v22 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v20);
  v26 = &v11 - v12;
  v14 = v12;
  v6 = __chkstk_darwin(v5);
  v27 = &v11 - v14;
  v38 = &v11 - v14;
  *&v36 = v7;
  *(&v36 + 1) = v6;
  *&v37 = v8;
  *(&v37 + 1) = v9;

  v17 = &v31;
  v32 = v15;
  v33 = v20;
  v34 = v16;
  v35 = v21;
  v18 = sub_46E8(&qword_35A40, &qword_2A748);
  sub_1E054();
  sub_24A24();

  v25 = sub_1EBA4();
  sub_15ED8(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_15ED8(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_1DC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v26 = 0;
  v25 = sub_1E180;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v39 = sub_46E8(&qword_35A58, &qword_2A750);
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v38 = &v15 - v16;
  v41 = sub_46E8(&qword_35A40, &qword_2A748);
  v21 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v20);
  v43 = &v15 - v21;
  v22 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v44 = &v15 - v22;
  v49 = &v15 - v22;
  *&v47 = v7;
  *(&v47 + 1) = v8;
  *&v48 = v9;
  *(&v48 + 1) = v10;
  v23 = sub_1D828(v7, v8);
  v24 = (*(*v23 + 136))(v23);

  v31 = &v46;
  v46 = v24;
  v27 = sub_46E8(&qword_353D0, &qword_29E20);
  v28 = sub_46E8(&qword_35A78, &qword_2A908);
  v29 = sub_1FA20();
  v30 = sub_1FAA8();
  v11 = sub_1FBDC();
  sub_1EDBC(v31, v25, v26, v27, v28, v29, v30, v11);
  v33 = sub_24F94();
  v32 = v12;
  *v12 = sub_249B4();
  v32[1] = sub_249C4();
  sub_4964();
  v34 = v13;
  sub_1779C();
  sub_24F44();
  v35 = v45;
  sub_1E0F8();
  sub_24B64();
  (*(v36 + 8))(v38, v39);
  v42 = sub_1E054();
  sub_15ED8(v43, v41, v44);
  sub_1FC5C(v43);
  sub_1FCC4(v44, v43);
  sub_15ED8(v43, v41, v40);
  sub_1FC5C(v43);
  return sub_1FC5C(v44);
}

unint64_t sub_1E054()
{
  v2 = qword_35A48;
  if (!qword_35A48)
  {
    sub_4A94(&qword_35A40, &qword_2A748);
    sub_1E0F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E0F8()
{
  v2 = qword_35A50;
  if (!qword_35A50)
  {
    sub_4A94(&qword_35A58, &qword_2A750);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v7 = a1;
  v12 = sub_1FF78;
  v25 = 0;
  v24 = 0;
  v19 = sub_46E8(&qword_35A78, &qword_2A908);
  v13 = *(v19 - 8);
  v14 = v19 - 8;
  v8 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v7);
  v17 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v18 = &v6 - v9;
  v25 = &v6 - v9;
  v24 = v4;
  v10 = &v22;
  v23 = v4;
  v11 = sub_46E8(&qword_35A98, &qword_2A910);
  sub_1FB54();
  sub_24CC4();
  v16 = sub_1FAA8();
  sub_15ED8(v17, v19, v18);
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v17, v19);
  (*(v13 + 16))(v17, v18, v19);
  sub_15ED8(v17, v19, v15);
  v21(v17, v19);
  return (v21)(v18, v19);
}

uint64_t sub_1E388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v19 = a1;
  v23 = 0;
  v11 = sub_1FF80;
  v22 = sub_1EC2C;
  v52 = 0;
  v51 = 0;
  v42 = __b;
  v17 = 88;
  v10 = 0;
  memset(__b, 0, sizeof(__b));
  v38 = sub_46E8(&qword_35AA8, &qword_2A918);
  v29 = *(v38 - 8);
  v30 = v38 - 8;
  v8 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v19);
  v36 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v41 = &v7 - v9;
  v52 = &v7 - v9;
  v51 = v4;
  v14 = sub_24954();
  v12 = v43;
  v43[2] = v19;
  v13 = sub_46E8(&qword_35AB0, &qword_2A920);
  sub_1FF88();
  v15 = &v49;
  sub_24C64();
  v16 = __dst;
  memcpy(__dst, v15, v17);
  v18 = v48;
  memcpy(v48, v16, v17);
  v31 = sub_46E8(&qword_35AC0, &qword_2A928);
  v32 = sub_20010();
  sub_15ED8(v18, v31, v42);
  sub_20098(v18);
  v21 = 0;
  v20 = *(v19 + *(type metadata accessor for Feature(0) + 24));

  v28 = &v47;
  v47 = v20;
  v24 = sub_46E8(&qword_35418, &unk_29EA0);
  v25 = type metadata accessor for RequirementRow(v21);
  v26 = sub_20104();
  v27 = sub_2018C();
  v5 = sub_2020C();
  sub_1EDBC(v28, v22, v23, v24, v25, v26, v27, v5);
  v33 = sub_2028C();
  sub_15ED8(v36, v38, v41);
  v40 = *(v29 + 8);
  v39 = v29 + 8;
  v40(v36, v38);
  v37 = v45;
  sub_20314(v42, v45);
  v35 = v46;
  v46[0] = v37;
  (*(v29 + 16))(v36, v41, v38);
  v46[1] = v36;
  v44[0] = v31;
  v44[1] = v38;
  v43[4] = v32;
  v43[5] = v33;
  sub_16154(v35, 2uLL, v44, v34);
  v40(v36, v38);
  sub_20098(v37);
  v40(v41, v38);
  return sub_20098(v42);
}

uint64_t sub_1E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v18 = a1;
  v91 = 0;
  v52 = v90;
  memset(v90, 0, sizeof(v90));
  v51 = v74;
  memset(v74, 0, sizeof(v74));
  v31 = sub_249E4();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v17 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v32 = &v16 - v17;
  v91 = a1;
  sub_119D0();
  v86 = sub_24A74();
  v87 = v3;
  v88 = v4;
  v89 = v5;
  v20 = v86;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v19 = sub_24A14();
  v82 = v20;
  v83 = v21;
  v42 = 1;
  v84 = v22 & 1;
  v85 = v23;
  v78 = sub_24A64();
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v24 = v78;
  v25 = v6;
  v26 = v7;
  v27 = v8;

  sub_154D4(v20, v21, v22 & 1);

  v28 = v75;
  v75[0] = v24;
  v75[1] = v25;
  v76 = v26 & 1 & v42;
  v77 = v27;
  v45 = &type metadata for Text;
  v46 = &protocol witness table for Text;
  sub_15ED8(v75, &type metadata for Text, v52);
  sub_16BD8(v28);
  sub_11BD4();
  v70 = sub_24A74();
  v71 = v9;
  v72 = v10;
  v73 = v11;
  v35 = v70;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v33 = sub_249D4();
  (*(v29 + 104))(v32, enum case for Font.Leading.tight(_:), v31);
  v34 = sub_249F4();
  (*(v29 + 8))(v32, v31);

  v66 = v35;
  v67 = v36;
  v68 = v37 & 1 & v42;
  v69 = v38;
  v62 = sub_24A64();
  v63 = v12;
  v64 = v13;
  v65 = v14;
  v39 = v62;
  v40 = v12;
  v41 = v13;
  v43 = v14;

  sub_154D4(v35, v36, v37 & 1);

  v44 = v59;
  v59[0] = v39;
  v59[1] = v40;
  v60 = v41 & 1 & v42;
  v61 = v43;
  sub_15ED8(v59, v45, v51);
  sub_16BD8(v44);
  v50 = v57;
  sub_2041C(v52, v57);
  v48 = v58;
  v58[0] = v50;
  v49 = v56;
  sub_2041C(v51, v56);
  v58[1] = v49;
  v55[0] = v45;
  v55[1] = v45;
  v53 = v46;
  v54 = v46;
  sub_16154(v48, 2uLL, v55, v47);
  sub_16BD8(v49);
  sub_16BD8(v50);
  sub_16BD8(v51);
  return sub_16BD8(v52);
}

unint64_t sub_1EBA4()
{
  v2 = qword_35A60;
  if (!qword_35A60)
  {
    sub_4A94(&qword_35A38, &qword_2A740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1EC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v10 = a1;
  v20 = 0;
  v19 = 0;
  v8[1] = 0;
  v9 = (*(*(type metadata accessor for Requirement(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v13 = v8 - v9;
  v15 = type metadata accessor for RequirementRow(v2);
  v11 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v10);
  v17 = v8 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v18 = v8 - v12;
  v20 = v8 - v12;
  v19 = v5;
  sub_6890(v5, v6);
  sub_163B0(v13, v17);
  v16 = sub_2018C();
  sub_15ED8(v17, v15, v18);
  sub_697C(v17);
  sub_6890(v18, v17);
  sub_15ED8(v17, v15, v14);
  sub_697C(v17);
  return sub_697C(v18);
}

uint64_t sub_1EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24C94();
  swift_getWitnessTable();
  sub_24A44();

  return (*(*(a4 - 8) + 8))(a1);
}

uint64_t sub_1EFD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DeveloperDiagnosticsViewModel(0);
  v7 = sub_EFDC();
  sub_24F94();
  *v1 = 0;
  v1[1] = 1;
  sub_4964();
  (*(*v7 + 328))();

  sub_24DB4("https://example.com", 0x13uLL, 1);
  *a1 = sub_1EF80(v7);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

unint64_t sub_1F13C()
{
  v2 = qword_35A68;
  if (!qword_35A68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1F23C()
{
  v2 = qword_35A70;
  if (!qword_35A70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A70);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1F2EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1F300(uint64_t a1, unsigned int a2)
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
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1F440(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a9;
  v20[5] = a1;
  v25 = a2;
  v26 = a3;
  v29 = a4;
  v31 = a5;
  v32 = a6;
  v34 = a7;
  v27 = a8;
  v28 = sub_1FF48;
  v35 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v52 = a4;
  v51 = a5;
  v24 = *(a4 - 8);
  v20[4] = a4 - 8;
  v20[0] = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v33 = v20 - v20[0];
  v20[1] = 255;
  v20[3] = swift_getAssociatedTypeWitness();
  v20[2] = &protocol requirements base descriptor for Identifiable;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = v29;
  v47 = AssociatedTypeWitness;
  v48 = v31;
  v49 = v32;
  v50 = AssociatedConformanceWitness;
  v42 = sub_24C94();
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v22 = *(v36 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v33);
  v38 = v20 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v10);
  v41 = v20 - v23;
  (*(v24 + 16))(v11);

  v12 = swift_allocObject();
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v31;
  v17 = v32;
  v18 = v34;
  v12[2] = v29;
  v12[3] = v16;
  v12[4] = v17;
  v12[5] = v18;
  v12[6] = v15;
  v12[7] = v13;
  v12[8] = v14;
  sub_24C84();
  v45 = v34;
  WitnessTable = swift_getWitnessTable();
  sub_15ED8(v38, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v38, v42);
  sub_15ED8(v41, v42, v39);
  return (v44)(v41, v42);
}

unint64_t sub_1FA20()
{
  v2 = qword_35A80;
  if (!qword_35A80)
  {
    sub_4A94(&qword_353D0, &qword_29E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1FAA8()
{
  v2 = qword_35A88;
  if (!qword_35A88)
  {
    sub_4A94(&qword_35A78, &qword_2A908);
    sub_1FB54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1FB54()
{
  v2 = qword_35A90;
  if (!qword_35A90)
  {
    sub_4A94(&qword_35A98, &qword_2A910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35A90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1FBDC()
{
  v2 = qword_35AA0;
  if (!qword_35AA0)
  {
    type metadata accessor for Feature(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1FC5C(uint64_t a1)
{
  v1 = sub_46E8(&qword_35A58, &qword_2A750);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1FCC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_46E8(&qword_35A58, &qword_2A750);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_46E8(&qword_35A40, &qword_2A748);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v15 = a5;
  v18 = a3;
  v16 = a4;
  v22 = a2;
  v21 = a3;
  v12 = *(a3 - 8);
  v13 = a3 - 8;
  v10 = *(v12 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(a1);
  v14 = &v9 - v9;
  v11 = v9;
  v6 = __chkstk_darwin(v5);
  v17 = &v9 - v11;
  v7(v6);
  sub_15ED8(v14, v18, v17);
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v14, v18);
  sub_15ED8(v17, v18, v15);
  return (v20)(v17, v18);
}

unint64_t sub_1FF88()
{
  v2 = qword_35AB8;
  if (!qword_35AB8)
  {
    sub_4A94(&qword_35AB0, &qword_2A920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20010()
{
  v2 = qword_35AC8;
  if (!qword_35AC8)
  {
    sub_4A94(&qword_35AC0, &qword_2A928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_20098(uint64_t a1)
{
  sub_154D4(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_154D4(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

unint64_t sub_20104()
{
  v2 = qword_35AD0;
  if (!qword_35AD0)
  {
    sub_4A94(&qword_35418, &unk_29EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2018C()
{
  v2 = qword_35AD8;
  if (!qword_35AD8)
  {
    type metadata accessor for RequirementRow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2020C()
{
  v2 = qword_35AE0;
  if (!qword_35AE0)
  {
    type metadata accessor for Requirement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2028C()
{
  v2 = qword_35AE8;
  if (!qword_35AE8)
  {
    sub_4A94(&qword_35AA8, &qword_2A918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35AE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_20314(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_16C20(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_16C20(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v12 = *(a1 + 80);

  result = a2;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_2041C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_16C20(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t *sub_204A4@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v132 = 0;
  v101 = sub_46E8(&qword_35AF0, &qword_2A930);
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (v102[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v101);
  v105 = v23 - v104;
  v106 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23 - v104);
  v107 = v23 - v106;
  v108 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23 - v106);
  v109 = v23 - v108;
  v161 = v23 - v108;
  v110 = sub_46E8(&qword_35AF8, &qword_2A938);
  v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v110);
  v112 = (v23 - v111);
  v113 = sub_46E8(&qword_35B00, &qword_2A940);
  v114 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v115 = (v23 - v114);
  v123 = type metadata accessor for Requirement(0);
  v116 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123);
  v124 = v23 - v116;
  v118 = sub_46E8(&qword_35B08, &qword_2A948);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v117);
  v120 = (v23 - v119);
  v121 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v122 = v23 - v121;
  v160 = v23 - v121;
  v159 = v5;
  sub_6890(v5, v6);
  v125 = *(v124 + *(v123 + 28));
  sub_697C(v124);
  if (v125)
  {
    switch(v125)
    {
      case 1:
        sub_24874();
        v80 = sub_215B8();
        sub_15ED8(v107, v101, v109);
        v81 = v102[1];
        v82 = v102 + 1;
        v81(v107, v101);
        v132 = v107;
        v75 = v102[2];
        v74 = v102 + 2;
        v75(v105, v109, v101);
        sub_15ED8(v105, v101, v107);
        v81(v105, v101);
        v75(v105, v107, v101);
        v78 = sub_46E8(&qword_35B10, &qword_2A950);
        v79 = sub_212F8();
        sub_16D5C(v105, v78, v101, v79, v80, v112);
        v81(v105, v101);
        v76 = sub_46E8(&qword_35B50, &qword_2A960);
        v77 = sub_21510();
        v12 = sub_21640();
        sub_16C64(v112, v110, v76, v77, v12, v115);
        sub_21F3C(v112);
        v13 = sub_21468();
        sub_16C64(v115, v113, v78, v13, v79, v120);
        sub_21E2C(v115);
        sub_216E0(v120, v122);
        v81(v107, v101);
        v81(v109, v101);
        break;
      case 2:
        sub_24DB4("checkmark.circle.fill", 0x15uLL, 1);
        v14 = sub_24C04();
        v57 = v141;
        v141[0] = v14;
        v56 = sub_24BB4();
        sub_24B04();

        sub_212CC(v57);
        v58 = v140;
        v140[0] = v141[1];
        v140[1] = v141[2];
        v140[2] = v141[3];
        v70 = sub_46E8(&qword_35B10, &qword_2A950);
        v71 = sub_212F8();
        v73 = v142;
        sub_15ED8(v58, v70, v142);
        sub_21424(v58);
        v59 = v142[0];
        v60 = v142[1];
        v61 = v142[2];

        v62 = v138;
        v138[0] = v59;
        v138[1] = v60;
        v138[2] = v61;
        v72 = v139;
        sub_15ED8(v138, v70, v139);
        sub_21424(v62);
        v63 = v139[0];
        v64 = v139[1];
        v65 = v139[2];

        v66 = v135;
        v135[0] = v63;
        v135[1] = v64;
        v135[2] = v65;
        sub_16C64(v135, v70, v70, v71, v71, v136);
        sub_21424(v66);
        v69 = v133;
        v133[0] = v136[0];
        v133[1] = v136[1];
        v133[2] = v136[2];
        v134 = v137 & 1;
        v67 = sub_46E8(&qword_35B50, &qword_2A960);
        v68 = sub_21510();
        v15 = sub_21640();
        sub_16D5C(v69, v110, v67, v68, v15, v115);
        sub_21DEC(v69);
        v16 = sub_21468();
        sub_16C64(v115, v113, v70, v16, v71, v120);
        sub_21E2C(v115);
        sub_216E0(v120, v122);
        sub_21424(v72);
        sub_21424(v73);
        break;
      case 3:
        sub_24DB4("exclamationmark.triangle.fill", 0x1DuLL, 1);
        v17 = sub_24C04();
        v39 = v151;
        v151[0] = v17;
        v38 = sub_24BD4();
        sub_24B04();

        sub_212CC(v39);
        v40 = v150;
        v150[0] = v151[1];
        v150[1] = v151[2];
        v150[2] = v151[3];
        v52 = sub_46E8(&qword_35B10, &qword_2A950);
        v53 = sub_212F8();
        v55 = v152;
        sub_15ED8(v40, v52, v152);
        sub_21424(v40);
        v41 = v152[0];
        v42 = v152[1];
        v43 = v152[2];

        v44 = v148;
        v148[0] = v41;
        v148[1] = v42;
        v148[2] = v43;
        v54 = v149;
        sub_15ED8(v148, v52, v149);
        sub_21424(v44);
        v45 = v149[0];
        v46 = v149[1];
        v47 = v149[2];

        v48 = v145;
        v145[0] = v45;
        v145[1] = v46;
        v145[2] = v47;
        sub_16D5C(v145, v52, v52, v53, v53, v146);
        sub_21424(v48);
        v51 = v143;
        v143[0] = v146[0];
        v143[1] = v146[1];
        v143[2] = v146[2];
        v144 = v147 & 1;
        v49 = sub_46E8(&qword_35B50, &qword_2A960);
        v50 = sub_21510();
        v18 = sub_21640();
        sub_16D5C(v51, v110, v49, v50, v18, v115);
        sub_21DEC(v51);
        v19 = sub_21468();
        sub_16C64(v115, v113, v52, v19, v53, v120);
        sub_21E2C(v115);
        sub_216E0(v120, v122);
        sub_21424(v54);
        sub_21424(v55);
        break;
      default:
        sub_24DB4("circle", 6uLL, 1);
        v20 = sub_24C04();
        v24 = v157;
        v157[0] = v20;
        v23[1] = sub_24BC4();
        sub_24B04();

        sub_212CC(v24);
        v25 = v156;
        v156[0] = v157[1];
        v156[1] = v157[2];
        v156[2] = v157[3];
        v33 = sub_46E8(&qword_35B10, &qword_2A950);
        v34 = sub_212F8();
        v37 = v158;
        sub_15ED8(v25, v33, v158);
        sub_21424(v25);
        v26 = v158[0];
        v27 = v158[1];
        v28 = v158[2];

        v29 = v154;
        v154[0] = v26;
        v154[1] = v27;
        v154[2] = v28;
        v36 = v155;
        sub_15ED8(v154, v33, v155);
        sub_21424(v29);
        v30 = v155[0];
        v31 = v155[1];
        v32 = v155[2];

        v35 = v153;
        v153[0] = v30;
        v153[1] = v31;
        v153[2] = v32;
        v21 = sub_21468();
        sub_16D5C(v35, v113, v33, v21, v34, v120);
        sub_21424(v35);
        sub_216E0(v120, v122);
        sub_21424(v36);
        sub_21424(v37);
        break;
    }
  }

  else
  {
    sub_24DB4("circle", 6uLL, 1);
    v7 = sub_24C04();
    v84 = v130;
    v130[0] = v7;
    v8 = [objc_opt_self() systemFillColor];
    v83 = sub_24BA4();
    sub_24B04();

    sub_212CC(v84);
    v85 = v129;
    v129[0] = v130[1];
    v129[1] = v130[2];
    v129[2] = v130[3];
    v96 = sub_46E8(&qword_35B10, &qword_2A950);
    v97 = sub_212F8();
    v99 = v131;
    sub_15ED8(v85, v96, v131);
    sub_21424(v85);
    v86 = v131[0];
    v87 = v131[1];
    v88 = v131[2];

    v89 = v127;
    v127[0] = v86;
    v127[1] = v87;
    v127[2] = v88;
    v98 = v128;
    sub_15ED8(v127, v96, v128);
    sub_21424(v89);
    v90 = v128[0];
    v91 = v128[1];
    v92 = v128[2];

    v93 = v126;
    v126[0] = v90;
    v126[1] = v91;
    v126[2] = v92;
    v9 = sub_215B8();
    sub_16C64(v93, v96, v101, v97, v9, v112);
    sub_21424(v93);
    v94 = sub_46E8(&qword_35B50, &qword_2A960);
    v95 = sub_21510();
    v10 = sub_21640();
    sub_16C64(v112, v110, v94, v95, v10, v115);
    sub_21F3C(v112);
    v11 = sub_21468();
    sub_16C64(v115, v113, v96, v11, v97, v120);
    sub_21E2C(v115);
    sub_216E0(v120, v122);
    sub_21424(v98);
    sub_21424(v99);
  }

  sub_21898(v122, v120);
  sub_21B74();
  sub_15ED8(v120, v118, v100);
  sub_21C1C(v120);
  return sub_21C1C(v122);
}

unint64_t sub_212F8()
{
  v2 = qword_35B18;
  if (!qword_35B18)
  {
    sub_4A94(&qword_35B10, &qword_2A950);
    sub_2139C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2139C()
{
  v2 = qword_35B20;
  if (!qword_35B20)
  {
    sub_4A94(&qword_35B28, &qword_2A958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B20);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_21424(void *a1)
{
}

unint64_t sub_21468()
{
  v2 = qword_35B30;
  if (!qword_35B30)
  {
    sub_4A94(&qword_35B00, &qword_2A940);
    sub_21510();
    sub_21640();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21510()
{
  v2 = qword_35B38;
  if (!qword_35B38)
  {
    sub_4A94(&qword_35AF8, &qword_2A938);
    sub_212F8();
    sub_215B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_215B8()
{
  v2 = qword_35B40;
  if (!qword_35B40)
  {
    sub_4A94(&qword_35AF0, &qword_2A930);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21640()
{
  v2 = qword_35B48;
  if (!qword_35B48)
  {
    sub_4A94(&qword_35B50, &qword_2A960);
    sub_212F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B48);
    return WitnessTable;
  }

  return v2;
}

void *sub_216E0(const void *a1, void *a2)
{
  v8 = sub_46E8(&qword_35B58, &qword_2A968);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  else
  {
    v5 = sub_46E8(&qword_35B60, &qword_2A970);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      v4 = sub_46E8(&qword_35B68, &qword_2A978);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = sub_46E8(&qword_35AF0, &qword_2A930);
        (*(*(v2 - 8) + 32))(a2, a1);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a2, a1, *(*(v4 - 8) + 64));
      }

      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_21898(uint64_t *a1, uint64_t a2)
{
  sub_46E8(&qword_35B58, &qword_2A968);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;

    *a2 = v4;
    v5 = a1[1];

    *(a2 + 8) = v5;
    v6 = a1[2];

    *(a2 + 16) = v6;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_46E8(&qword_35B60, &qword_2A970);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = a1[2];
      v10 = *(a1 + 24);
      sub_21B0C();
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      *(a2 + 24) = v10 & 1;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_46E8(&qword_35B68, &qword_2A978);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = sub_46E8(&qword_35AF0, &qword_2A930);
        (*(*(v2 - 8) + 16))(a2, a1);
      }

      else
      {
        v11 = *a1;

        *a2 = v11;
        v12 = a1[1];

        *(a2 + 8) = v12;
        v13 = a1[2];

        *(a2 + 16) = v13;
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_21B0C()
{
}

unint64_t sub_21B74()
{
  v2 = qword_35B70;
  if (!qword_35B70)
  {
    sub_4A94(&qword_35B08, &qword_2A948);
    sub_21468();
    sub_212F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B70);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_21C1C(uint64_t *a1)
{
  sub_46E8(&qword_35B58, &qword_2A968);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  sub_46E8(&qword_35B60, &qword_2A970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D84(*a1, a1[1], a1[2]);
    return a1;
  }

  sub_46E8(&qword_35B68, &qword_2A978);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    return a1;
  }

  v1 = sub_46E8(&qword_35AF0, &qword_2A930);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_21D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t *sub_21E2C(uint64_t *a1)
{
  sub_46E8(&qword_35B60, &qword_2A970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D84(*a1, a1[1], a1[2]);
  }

  else
  {
    sub_46E8(&qword_35B68, &qword_2A978);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = sub_46E8(&qword_35AF0, &qword_2A930);
      (*(*(v1 - 8) + 8))(a1);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_21F3C(void *a1)
{
  sub_46E8(&qword_35B68, &qword_2A978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_46E8(&qword_35AF0, &qword_2A930);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22014@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v11 = sub_46E8(&qword_35B78, &qword_2A980);
  v12 = *(*(v11 - 8) + 64);
  v1 = __chkstk_darwin(0);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v7 - v14;
  v2 = __chkstk_darwin(v1);
  v15 = v7 - v14;
  v22 = v7 - v14;
  v17 = type metadata accessor for Requirement(v2) - 8;
  v3 = __chkstk_darwin(v16);
  v18 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3;
  sub_6890(v3, v18);
  v19 = *(v18 + *(v17 + 36));
  sub_697C(v18);
  if (sub_12040(v19, 1))
  {
    v8 = sub_24934();
  }

  else
  {
    v8 = sub_24924();
  }

  v7[2] = v8;
  v20 = v8;
  v7[3] = v7;
  __chkstk_darwin(v7);
  v7[0] = &v7[-4];
  v7[-2] = v5;
  v7[1] = sub_46E8(&qword_35B80, &qword_2A988);
  sub_22704();
  sub_24C54();
  v7[4] = sub_2278C();
  sub_15ED8(v13, v11, v15);
  sub_22814(v13);
  sub_22920(v15, v13);
  sub_15ED8(v13, v11, v9);
  sub_22814(v13);
  return sub_22814(v15);
}

uint64_t sub_2226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v20 = a1;
  v21 = sub_24158;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v15 = 0;
  v24 = type metadata accessor for RequirementDetail(0);
  v12 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v26 = &v11 - v12;
  v36 = sub_46E8(&qword_35BA8, &qword_2A9A0);
  v27 = *(v36 - 8);
  v28 = v36 - 8;
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v34 = &v11 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v39 = &v11 - v14;
  v49 = &v11 - v14;
  v16 = (*(*(type metadata accessor for Requirement(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v15);
  v19 = &v11 - v16;
  v29 = type metadata accessor for StateGlyph(v5);
  v17 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v20);
  v35 = &v11 - v17;
  v18 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v40 = &v11 - v18;
  v48 = &v11 - v18;
  v47 = v8;
  sub_6890(v8, v9);
  sub_163B0(v19, v35);
  v30 = sub_240D8();
  sub_15ED8(v35, v29, v40);
  sub_697C(v35);
  sub_6890(v20, v19);
  sub_163B0(v19, v26);
  v22 = &v41;
  v42 = v20;
  v23 = sub_46E8(&qword_35CE8, &qword_2ABE8);
  v25 = sub_24160();
  sub_16E54();
  sub_24894();
  v31 = sub_241E8();
  sub_15ED8(v34, v36, v39);
  v38 = *(v27 + 8);
  v37 = v27 + 8;
  v38(v34, v36);
  sub_6890(v40, v35);
  v33 = v46;
  v46[0] = v35;
  (*(v27 + 16))(v34, v39, v36);
  v46[1] = v34;
  v45[0] = v29;
  v45[1] = v36;
  v43 = v30;
  v44 = v31;
  sub_16154(v33, 2uLL, v45, v32);
  v38(v34, v36);
  sub_697C(v35);
  v38(v39, v36);
  return sub_697C(v40);
}

unint64_t sub_22704()
{
  v2 = qword_35B88;
  if (!qword_35B88)
  {
    sub_4A94(&qword_35B80, &qword_2A988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2278C()
{
  v2 = qword_35B90;
  if (!qword_35B90)
  {
    sub_4A94(&qword_35B78, &qword_2A980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_35B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22814(uint64_t a1)
{
  v4 = *(sub_46E8(&qword_35B98, &qword_2A990) + 44);
  v1 = sub_24794();
  (*(*(v1 - 8) + 8))();
  type metadata accessor for Requirement(0);

  v5 = *(sub_46E8(&qword_35BA0, &qword_2A998) + 48);
  v2 = sub_46E8(&qword_35BA8, &qword_2A9A0);
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_22920(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_46E8(&qword_35B98, &qword_2A990) + 44);
  v2 = sub_24794();
  v12 = a2 + v6;
  (*(*(v2 - 8) + 16))();
  v8 = type metadata accessor for Requirement(0);
  *(v12 + v8[5]) = *(a1 + v6 + v8[5]);
  v3 = (a1 + v6 + v8[6]);
  v9 = (a2 + v6 + v8[6]);
  *v9 = *v3;
  v10 = v3[1];

  v9[1] = v10;
  *(v12 + v8[7]) = *(a1 + v6 + v8[7]);
  v11 = *(sub_46E8(&qword_35BA0, &qword_2A998) + 48);
  v4 = sub_46E8(&qword_35BA8, &qword_2A9A0);
  (*(*(v4 - 8) + 16))(a2 + v6 + v11, a1 + v6 + v11);
  return a2;
}

uint64_t sub_22AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  sub_24954();
  sub_46E8(&qword_35D00, &qword_2ABF0);
  sub_24278();
  sub_24C64();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = sub_46E8(&qword_35CE8, &qword_2ABE8);
  sub_24160();
  sub_15ED8(v8, v5, __b);
  sub_24300(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_24380(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_15ED8(v6, v5, a2);
  sub_24300(v6);
  return sub_24300(__b);
}

uint64_t sub_22C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v91 = a1;
  v157 = 0;
  v89 = v156;
  memset(v156, 0, sizeof(v156));
  v133 = 0;
  v134 = 0;
  v131 = 0u;
  v132 = 0u;
  v106 = 0u;
  v107 = 0u;
  v78 = 0;
  v79 = sub_249E4();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v83 = &v21 - v82;
  v92 = type metadata accessor for Requirement(v2);
  v84 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v91);
  v94 = &v21 - v84;
  v85 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v86 = &v21 - v85;
  v157 = v5;
  sub_6890(v5, &v21 - v85);
  v88 = sub_12B3C();
  v87 = v6;
  sub_697C(v86);
  v152 = sub_24A74();
  v153 = v7;
  v154 = v8;
  v155 = v9;
  v90 = v149;
  v149[0] = v152;
  v149[1] = v7;
  v150 = v8 & 1;
  v151 = v9;
  sub_15ED8(v149, &type metadata for Text, v89);
  sub_16BD8(v90);
  sub_6890(v91, v94);
  v10 = (v94 + *(v92 + 24));
  v93 = *v10;
  v95 = v10[1];

  sub_697C(v94);
  if (v95)
  {
    v75 = v93;
    v76 = v95;
    v62 = v95;
    v32 = v93;
    v133 = v93;
    v134 = v95;

    v127 = sub_24A74();
    v128 = v11;
    v129 = v12;
    v130 = v13;
    v34 = v127;
    v35 = v11;
    v36 = v12;
    v37 = v13;
    v33 = sub_24BE4();
    v123 = v34;
    v124 = v35;
    v51 = 1;
    v125 = v36 & 1;
    v126 = v37;
    v119 = sub_24A54();
    v120 = v14;
    v121 = v15;
    v122 = v16;
    v40 = v119;
    v41 = v14;
    v42 = v15;
    v43 = v16;

    sub_154D4(v34, v35, v36 & 1);

    v38 = sub_24A04();
    (*(v80 + 104))(v83, enum case for Font.Leading.tight(_:), v79);
    v39 = sub_249F4();
    (*(v80 + 8))(v83, v79);

    v115 = v40;
    v116 = v41;
    v117 = v42 & 1 & v51;
    v118 = v43;
    v111 = sub_24A64();
    v112 = v17;
    v113 = v18;
    v114 = v19;
    v44 = v111;
    v45 = v17;
    v46 = v18;
    v47 = v19;

    sub_154D4(v40, v41, v42 & 1);

    v48 = v108;
    v108[0] = v44;
    v108[1] = v45;
    v109 = v46 & 1 & v51;
    v110 = v47;
    v61 = &v131;
    v57 = &type metadata for Text;
    v58 = &protocol witness table for Text;
    sub_15ED8(v108, &type metadata for Text, &v131);
    sub_16BD8(v48);
    v49 = v131;
    v50 = v132;
    v52 = *(&v132 + 1);
    sub_16C20(v131, *(&v131 + 1), v132 & 1);

    v53 = &v103;
    v103 = v49;
    v104 = v50 & 1 & v51;
    v105 = v52;
    v60 = &v106;
    sub_15ED8(&v103, v57, &v106);
    sub_16BD8(v53);
    v55 = v106;
    v54 = v107;
    v56 = *(&v107 + 1);
    sub_16C20(v106, *(&v106 + 1), v107 & 1);

    v59 = &v96;
    v96 = v55;
    v97 = v54 & 1;
    v98 = v56;
    sub_16108(&v96, v57, &v99);
    sub_245A0(v59);
    v63 = v99;
    v64 = v100;
    v65 = v101;
    v66 = v102;
    sub_244B0(v99, v100, v101, v102);
    v145 = v63;
    v146 = v64;
    v147 = v65;
    v148 = v66;
    sub_16BD8(v60);
    sub_16BD8(v61);

    v71 = v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
  }

  else
  {
    memset(v140, 0, sizeof(v140));
    sub_16108(v140, &type metadata for Text, &v141);
    v67 = v141;
    v68 = v142;
    v69 = v143;
    v70 = v144;
    sub_244B0(v141, v142, v143, v144);
    v145 = v67;
    v146 = v68;
    v147 = v69;
    v148 = v70;
    v71 = v67;
    v72 = v68;
    v73 = v69;
    v74 = v70;
  }

  v25 = v74;
  v24 = v73;
  v23 = v72;
  v22 = v71;
  v31 = v156;
  v30 = v138;
  sub_2041C(v156, v138);
  v28 = v139;
  v139[0] = v30;
  v29 = v137;
  v137[0] = v22;
  v137[1] = v23;
  v137[2] = v24;
  v137[3] = v25;
  v139[1] = v137;
  v26 = v136;
  v136[0] = &type metadata for Text;
  v136[1] = sub_46E8(&qword_35D10, &qword_2ABF8);
  v27 = v135;
  v135[0] = &protocol witness table for Text;
  v135[1] = sub_2450C();
  sub_16154(v28, 2uLL, v26, v77);
  sub_245A0(v29);
  sub_16BD8(v30);
  sub_245A0(&v145);
  return sub_16BD8(v31);
}