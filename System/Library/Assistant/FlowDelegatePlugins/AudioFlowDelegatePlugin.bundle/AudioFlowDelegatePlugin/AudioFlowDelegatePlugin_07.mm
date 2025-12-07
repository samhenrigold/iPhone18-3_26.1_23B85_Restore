uint64_t sub_CF718(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_112C0(_swiftEmptyArrayStorage);
  v12[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v12[4] = &off_338D38;
  v12[0] = a2;
  v10 = a2;
  sub_126D20(v9, a1, v12, a4, a5);

  return sub_30B8(v12, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_CF7D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v13 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v16[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v16[4] = &off_338D38;
  v16[0] = a4;
  v14 = a4;
  sub_1280AC(v13, a1, v16, a5, a6);

  return sub_30B8(v16, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_CF92C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_2D1010;
  *(inited + 40) = 0x80000000002D9DE0;
  sub_1E9824();
  v8 = INMediaDestinationTypeGetName();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2CE270();
    v12 = v11;

    v13 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    if (v12)
    {
      *v13 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = (inited + 48);
    *(inited + 72) = &type metadata for String;
  }

  *v13 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  *(inited + 56) = v12;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000000002DB710;
  v14 = [a4 mediaDestination];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 mediaDestinationType];

    v17 = v16 == &dword_0 + 2;
  }

  else
  {
    v17 = 0;
  }

  *(inited + 96) = v17;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000000002DC470;
  v18 = [a4 mediaDestination];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 mediaDestinationType];

    v21 = v20 == &dword_0 + 1;
  }

  else
  {
    v21 = 0;
  }

  *(inited + 144) = v21;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x6574656D61726170;
  *(inited + 216) = &type metadata for String;
  *(inited + 184) = 0xE900000000000072;
  *(inited + 192) = v28;
  *(inited + 200) = v26;

  v22 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v32[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v32[4] = &off_338D38;
  v32[0] = a4;
  v23 = a4;
  sub_128730(v22, a1, v32, a5, a6);

  return sub_30B8(v32, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_CFBCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v58 = a6;
  v12 = sub_20410(&qword_34CC98, &unk_2D3120);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;
  v57 = a1;

  v19 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v65 = v19;
  if ((a2 != 0xD000000000000010 || 0x80000000002D9DE0 != a3) && (sub_2CEEA0() & 1) == 0)
  {

    return sub_12D2A0(v57, a2, a3, a4, a5, v58, v59);
  }

  v20 = [a4 itemToConfirm];
  sub_2CEC00();
  swift_unknownObjectRelease();
  v21 = sub_2CE0A0();
  v22 = swift_dynamicCast();
  v23 = *(v21 - 8);
  (*(v23 + 56))(v17, v22 ^ 1u, 1, v21);
  v24 = sub_1E9600();
  v26 = v25;
  v27 = sub_1E9A74();
  v56 = v17;
  if (v24 == v27 && v26 == v28)
  {

LABEL_8:
    v30 = 0;
    v31 = 0;
    goto LABEL_11;
  }

  v29 = sub_2CEEA0();

  if (v29)
  {
    goto LABEL_8;
  }

  v30 = sub_1E9A74();
  v31 = v33;
LABEL_11:
  v34 = INUpdateMediaAffinityIntent.firstMediaItemType()();
  if (v34 == &dword_0 + 2)
  {
    v35 = 0xE500000000000000;
    v36 = 0x6D75626C61;
  }

  else if (v34 == &dword_4 + 2)
  {
    v35 = 0xE700000000000000;
    v36 = 0x74736163646F70;
  }

  else
  {
    v36 = 0;
    v35 = 0xE000000000000000;
  }

  v61 = &type metadata for String;
  *&v60 = v36;
  *(&v60 + 1) = v35;
  sub_E2DC(&v60, v64);
  v37 = v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v37;
  sub_237690(v64, 0x707954616964656DLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v39 = v63;
  v61 = &type metadata for String;
  *&v60 = v24;
  *(&v60 + 1) = v26;
  sub_E2DC(&v60, v64);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v39;
  sub_237690(v64, 0x656C746974, 0xE500000000000000, v40);
  v41 = v63;
  v65 = v63;
  if (v31)
  {
    v61 = &type metadata for String;
    *&v60 = v30;
    *(&v60 + 1) = v31;
    sub_E2DC(&v60, v64);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v41;
    sub_237690(v64, 0x747369747261, 0xE600000000000000, v42);
    v65 = v63;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v60);
    sub_30B8(&v60, &qword_34CEA0, &qword_2D0FC0);
  }

  v43 = v56;
  v44 = [a5 mediaItems];
  if (v44)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v45 = sub_2CE410();

    if (v45 >> 62)
    {
      v44 = sub_2CEDA0();
    }

    else
    {
      v44 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
    }
  }

  v61 = &type metadata for Int;
  *&v60 = v44;
  sub_E2DC(&v60, v64);
  v46 = v65;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v46;
  sub_237690(v64, 0x657449616964656DLL, 0xEE00746E756F436DLL, v47);
  v65 = v63;
  sub_73000(v43, v15);
  if ((*(v23 + 48))(v15, 1, v21) == 1)
  {
    sub_30B8(v15, &qword_34CC98, &unk_2D3120);
    v48 = 0;
    v61 = &type metadata for String;
LABEL_27:
    v50 = 0xE000000000000000;
    goto LABEL_28;
  }

  v48 = sub_2CE060();
  v50 = v49;
  (*(v23 + 8))(v15, v21);
  v61 = &type metadata for String;
  if (!v50)
  {
    v48 = 0;
    goto LABEL_27;
  }

LABEL_28:
  *&v60 = v48;
  *(&v60 + 1) = v50;
  sub_E2DC(&v60, v64);
  v51 = v65;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v51;
  sub_237690(v64, 0x7473696C79616C70, 0xED0000656C746954, v52);
  v53 = v63;
  v61 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v62 = &off_338D38;
  *&v60 = a5;
  v54 = a5;
  sub_128DB4(v53, v57, &v60, v58, v59);

  sub_30B8(&v60, &qword_34C6C0, &qword_2D0710);
  return sub_30B8(v43, &qword_34CC98, &unk_2D3120);
}

id sub_D02B4(uint64_t a1, int *a2, void *a3, char *a4, char *a5)
{
  v107 = a5;
  v106 = a4;
  v104 = a1;
  v7 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v7 - 8);
  v102 = &v92 - v8;
  v9 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v9 - 8);
  v100 = &v92 - v10;
  v11 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v11 - 8);
  v99 = &v92 - v12;
  v13 = sub_2CCB30();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v97 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2CCAC0();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = [a3 unsupportedReason];
  v109 = v101;
  v110 = 0;
  sub_20410(&qword_34F5F0, &unk_2D3130);
  v94 = sub_2CE2A0();
  v22 = v21;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v103 = a2;
  v23 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  (*(v18 + 16))(v20, v23, v17);

  v24 = sub_2CDFE0();
  v25 = sub_2CE690();

  v26 = os_log_type_enabled(v24, v25);
  v105 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v92 = v14;
    v93 = v13;
    v28 = a3;
    v29 = v22;
    v30 = v27;
    v31 = swift_slowAlloc();
    v109 = v31;
    *v30 = 136315138;
    v32 = v29;
    a3 = v28;
    v13 = v93;
    *(v30 + 4) = sub_3F08(v94, v32, &v109);
    _os_log_impl(&dword_0, v24, v25, "AddMediaDialogProvider#makeUnsupportedMediaItemsDialog, reasonCode: %s", v30, 0xCu);
    sub_306C(v31);

    v14 = v92;
  }

  (*(v18 + 8))(v20, v17);
  v34 = v95;
  v33 = v96;
  v35 = v98;
  (*(v96 + 104))(v95, enum case for AdditionalMetricsDescription.ModuleName.amdp(_:), v98);
  v36 = v97;
  (*(v14 + 104))(v97, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedMediaItemsDlg(_:), v13);
  v109 = [a3 unsupportedReason];
  sub_2CEE70();
  [a3 resolutionResultCode];
  v94 = sub_2CCAE0();

  (*(v14 + 8))(v36, v13);
  (*(v33 + 8))(v34, v35);
  v98 = sub_35E0((v108 + 168), *(v108 + 192));
  v37 = enum case for ActivityType.failed(_:);
  v38 = sub_2C9C20();
  v39 = *(v38 - 8);
  v40 = v99;
  (*(v39 + 104))(v99, v37, v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = sub_2CA130();
  v42 = v100;
  (*(*(v41 - 8) + 56))(v100, 1, 1, v41);
  v43 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v44 = sub_2C98F0();
  v45 = *(v44 - 8);
  v46 = v102;
  (*(v45 + 104))(v102, v43, v44);
  (*(v45 + 56))(v46, 0, 1, v44);

  v48 = v103;
  v47 = v104;
  sub_2CB4E0();

  sub_30B8(v46, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v42, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v40, &qword_34CB88, &unk_2D0D90);
  sub_112C0(_swiftEmptyArrayStorage);
  v49 = v101;
  if (v101 <= 4)
  {
    if (v101 <= 2)
    {
      if (v101 == (&dword_0 + 1))
      {

        v58 = sub_112C0(_swiftEmptyArrayStorage);
        v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
        v112 = &off_338D38;
        v109 = v48;
        v59 = v48;
        sub_38FC0(v58, v47, &v109, v106, v107);
        goto LABEL_36;
      }

      if (v101 == (&dword_0 + 2))
      {

        v50 = sub_112C0(_swiftEmptyArrayStorage);
        v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
        v112 = &off_338D38;
        v109 = v48;
        v51 = v48;
        sub_39630(v50, v47, &v109, v106, v107);
LABEL_36:

        return sub_30B8(&v109, &qword_34C6C0, &qword_2D0710);
      }

      goto LABEL_23;
    }

    if (v101 != (&dword_0 + 3))
    {

      v54 = sub_112C0(_swiftEmptyArrayStorage);
      v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
      v112 = &off_338D38;
      v109 = v48;
      v55 = v48;
      sub_38950(v54, v47, &v109, v106, v107);
      goto LABEL_36;
    }

    INUpdateMediaAffinityIntent.firstMediaItemType()();
    v62 = INMediaItemTypeGetName();
    if (v62)
    {
      v63 = v62;
      v64 = sub_2CE270();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0xE000000000000000;
    }

    if (sub_1E9B98())
    {
      result = INMediaItemTypeGetName();
      if (result)
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    if ((sub_1E9BA8() & 1) == 0)
    {

      goto LABEL_35;
    }

    result = INMediaItemTypeGetName();
    if (!result)
    {
      __break(1u);
      return result;
    }

LABEL_33:
    v76 = result;

    v64 = sub_2CE270();
    v66 = v77;

LABEL_35:
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    *(inited + 32) = 0x707954616964656DLL;
    v79 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = v64;
    *(inited + 56) = v66;
    v80 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(v79, &qword_34CBA0, &unk_2D0FE0);
    v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v112 = &off_338D38;
    v109 = v48;
    v81 = v48;
    sub_12669C(v80, v47, &v109, v106, v107);
    goto LABEL_36;
  }

  if (v101 <= 6)
  {
    if (v101 == (&dword_4 + 1))
    {

      v60 = sub_112C0(_swiftEmptyArrayStorage);
      v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
      v112 = &off_338D38;
      v109 = v48;
      v61 = v48;
      sub_33504(v60, v47, &v109, v106, v107);
    }

    else
    {

      v52 = sub_112C0(_swiftEmptyArrayStorage);
      v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
      v112 = &off_338D38;
      v109 = v48;
      v53 = v48;
      sub_126018(v52, v47, &v109, v106, v107);
    }

    goto LABEL_36;
  }

  if (v101 == (&dword_4 + 3))
  {

    v67 = sub_112C0(_swiftEmptyArrayStorage);
    v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v112 = &off_338D38;
    v109 = v48;
    v68 = v48;
    sub_39CA0(v67, v47, &v109, v106, v107);
    goto LABEL_36;
  }

  if (v101 == &dword_8)
  {

    v56 = sub_112C0(_swiftEmptyArrayStorage);
    v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v112 = &off_338D38;
    v109 = v48;
    v57 = v48;
    sub_3C470(v56, v47, &v109, v106, v107);
    goto LABEL_36;
  }

LABEL_23:

  if (_INAddMediaMediaItemUnsupportedReasonAlreadyInLibrary == v49)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_2D0E40;
    *(v69 + 32) = 0x656C746974;
    *(v69 + 40) = 0xE500000000000000;
    *(v69 + 48) = sub_1E9600();
    *(v69 + 56) = v70;
    *(v69 + 72) = &type metadata for String;
    *(v69 + 80) = 0x736163646F507369;
    *(v69 + 88) = 0xE900000000000074;
    *(v69 + 120) = &type metadata for Bool;
    *(v69 + 96) = 0;
    v71 = sub_112C0(v69);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v112 = &off_338D38;
    v109 = v48;
    v72 = v48;
    sub_1273A4(v71, v47, &v109, v106, v107);
    goto LABEL_36;
  }

  if (_INAddMediaMediaItemUnsupportedReasonCloudSyncOff == v49)
  {
    v73 = sub_112C0(_swiftEmptyArrayStorage);
    v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v112 = &off_338D38;
    v109 = v48;
    v74 = v48;
    sub_127A28(v73, v47, &v109, v106, v107);
    goto LABEL_36;
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppDoesntSupportIntent == v49)
  {
    v82 = sub_112C0(_swiftEmptyArrayStorage);
    v111 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v112 = &off_338D38;
    v109 = v48;
    v83 = v48;
    sub_3A310(v82, v47, &v109, v106, v107);
    goto LABEL_36;
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppNotAvailable == v49)
  {
    v84 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v84, v47, v106, v107);
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppNotConfigured == v49)
  {
    v85 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v85, v47, v106, v107);
  }

  if (_INAddMediaMediaItemUnsupportedReasonAppAccountFailure != v49)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_2D0090;
    *(v87 + 32) = 0x736163646F507369;
    *(v87 + 40) = 0xE900000000000074;
    v109 = v48;
    v88 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    sub_D18A8();
    v89 = sub_2CBFA0() == 6;
    *(v87 + 72) = &type metadata for Bool;
    *(v87 + 48) = v89;
    v90 = sub_112C0(v87);
    swift_setDeallocating();
    sub_30B8(v87 + 32, &qword_34CBA0, &unk_2D0FE0);
    v111 = v88;
    v112 = &off_338D38;
    v109 = v48;
    v91 = v48;
    sub_382E0(v90, v47, &v109, v106, v107);
    goto LABEL_36;
  }

  v86 = sub_112C0(_swiftEmptyArrayStorage);
  sub_3B6F8(v86, v47, v106, v107);
}

uint64_t sub_D1384(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_112C0(_swiftEmptyArrayStorage);

  v10 = [a3 unsupportedReason];
  sub_20410(&unk_353120, &unk_2D0B50);
  if (v10 == &dword_0 + 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    strcpy((inited + 32), "playlistName");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v17 = sub_1E960C();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v18;
    v19 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v36 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v37 = &off_338D38;
    v35[0] = a2;
    v20 = a2;
    sub_125994(v19, a1, v35, a4, a5);
  }

  else if (v10 == &dword_0 + 1)
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_2D0090;
    strcpy((v11 + 32), "playlistName");
    *(v11 + 45) = 0;
    *(v11 + 46) = -5120;
    v12 = sub_1E960C();
    *(v11 + 72) = &type metadata for String;
    *(v11 + 48) = v12;
    *(v11 + 56) = v13;
    v14 = sub_112C0(v11);
    swift_setDeallocating();
    sub_30B8(v11 + 32, &qword_34CBA0, &unk_2D0FE0);
    v36 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v37 = &off_338D38;
    v35[0] = a2;
    v15 = a2;
    sub_125310(v14, a1, v35, a4, a5);
  }

  else
  {
    v21 = swift_initStackObject();
    *(v21 + 32) = 0xD000000000000015;
    *(v21 + 16) = xmmword_2D10E0;
    *(v21 + 40) = 0x80000000002DB710;
    v22 = [a2 mediaDestination];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 mediaDestinationType];

      v25 = v24 == &dword_0 + 2;
    }

    else
    {
      v25 = 0;
    }

    *(v21 + 48) = v25;
    *(v21 + 72) = &type metadata for Bool;
    *(v21 + 80) = 0xD000000000000014;
    *(v21 + 88) = 0x80000000002DC470;
    v26 = [a2 mediaDestination];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 mediaDestinationType];

      v29 = v28 == &dword_0 + 1;
    }

    else
    {
      v29 = 0;
    }

    *(v21 + 96) = v29;
    *(v21 + 120) = &type metadata for Bool;
    *(v21 + 128) = 0x646E756F72477369;
    *(v21 + 136) = 0xEB00000000676E69;
    v30 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    sub_D18A8();
    v31 = sub_2CBFB0();
    *(v21 + 168) = &type metadata for Bool;
    *(v21 + 144) = v31;
    v32 = sub_112C0(v21);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v36 = v30;
    v37 = &off_338D38;
    v35[0] = a2;
    v33 = a2;
    sub_124C8C(v32, a1, v35, a4, a5);
  }

  return sub_30B8(v35, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_D17DC()
{

  sub_306C((v0 + 128));
  return sub_306C((v0 + 168));
}

uint64_t type metadata accessor for AddMediaDialogProvider(uint64_t a1)
{
  result = qword_34F388;
  if (!qword_34F388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_D18A8()
{
  result = qword_34F5E8;
  if (!qword_34F5E8)
  {
    sub_334A0(255, &qword_34DD28, INAddMediaIntent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F5E8);
  }

  return result;
}

id INUpdateMediaAffinityIntent.firstMediaItemType()()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_736BC();
  v3 = sub_2CE410();

  if (v3 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(v3 + 32);
LABEL_7:
    v6 = v5;

    v7 = [v6 type];

    return v7;
  }

  __break(1u);
  return result;
}

BOOL sub_D1A00(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFB0();
}

BOOL sub_D1A54(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFD0();
}

BOOL sub_D1AA8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getWitnessTable();
  v5.value._countAndFlagsBits = a1;
  v5.value._object = a2;

  return sub_2CBFF0(v5);
}

uint64_t sub_D1B14(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFE0();
}

BOOL sub_D1B68(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CC010();
}

uint64_t sub_D1BBC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBF90();
}

uint64_t sub_D1C10(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFC0();
}

id sub_D1CC4()
{
  v1 = [*v0 mediaSearch];

  return v1;
}

double sub_D1D64@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v154 = a2;
  v148 = sub_2CA810();
  v147 = *(v148 - 8);
  v3 = __chkstk_darwin(v148);
  v131 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v153 = &v128 - v6;
  __chkstk_darwin(v5);
  v8 = &v128 - v7;
  v9 = sub_20410(&qword_34CC90, qword_2D40E0);
  v10 = __chkstk_darwin(v9 - 8);
  v140 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v139 = &v128 - v12;
  v135 = sub_2CA970();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2CA8F0();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v15 - 8);
  v151 = &v128 - v16;
  v158 = sub_2CA870();
  v17 = *(v158 - 8);
  v18 = __chkstk_darwin(v158);
  v156 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v155 = &v128 - v21;
  __chkstk_darwin(v20);
  v23 = &v128 - v22;
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v132 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v143 = &v128 - v29;
  v30 = __chkstk_darwin(v28);
  v141 = &v128 - v31;
  __chkstk_darwin(v30);
  v33 = &v128 - v32;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v36 = v25 + 16;
  v35 = *(v25 + 16);
  v145 = v34;
  v144 = v35;
  v35(v33, v34, v24);
  v37 = *(v17 + 16);
  v157 = a1;
  v37(v23, a1, v158);
  v152 = v33;
  v38 = v25;
  v39 = sub_2CDFE0();
  v40 = sub_2CE670();
  v41 = os_log_type_enabled(v39, v40);
  v146 = v8;
  v150 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v142 = v24;
    v43 = v42;
    v129 = swift_slowAlloc();
    *&v163[0] = v129;
    *v43 = 136315138;
    v130 = v36;
    v44 = v158;
    v37(v155, v23, v158);
    v45 = sub_2CE2A0();
    v47 = v46;
    v149 = *(v17 + 8);
    v149(v23, v44);
    v48 = sub_3F08(v45, v47, v163);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v39, v40, "CommonAudioIntent#from parse: %s", v43, 0xCu);
    sub_306C(v129);

    v24 = v142;

    v49 = v152;
    v152 = *(v150 + 8);
    v152(v49, v24);
    v50 = v44;
  }

  else
  {

    v50 = v158;
    v149 = *(v17 + 8);
    v149(v23, v158);
    v51 = v152;
    v152 = *(v38 + 8);
    v152(v51, v24);
  }

  v52 = v156;
  v37(v156, v157, v50);
  v53 = (*(v17 + 88))(v52, v50);
  v54 = v153;
  if (v53 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v149(v52, v50);
LABEL_10:
    v58 = v155;
    v37(v155, v157, v50);
    v59 = v151;
    sub_2B6170(v58, v151);
    v60 = type metadata accessor for AudioNLv3Intent(0);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      v61 = &qword_34D360;
      v62 = &qword_2D11E0;
      v63 = v59;
LABEL_12:
      sub_30B8(v63, v61, v62);
      result = 0.0;
      v65 = v154;
      *v154 = 0u;
      *(v65 + 1) = 0u;
      v65[4] = 0;
      return result;
    }

    v66 = v154;
    v154[3] = v60;
    v66[4] = sub_D422C(&qword_34F618, type metadata accessor for AudioNLv3Intent, &unk_2D9390);
    v67 = sub_F390(v66);
    sub_D416C(v59, v67);
    return result;
  }

  v55 = v17;
  if (v53 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v56 = v156;
    (*(v17 + 96))(v156, v50);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v57 = sub_2CAFE0();
    (*(*(v57 - 8) + 8))(v56, v57);
    goto LABEL_10;
  }

  if (v53 != enum case for Parse.directInvocation(_:))
  {
    v76 = v156;
    if (v53 == enum case for Parse.pommesResponse(_:))
    {
      v77 = v50;
      v78 = v24;
      (*(v55 + 96))(v156, v77);
      v79 = *v76;
      v80 = sub_1B7F14();
      if (v80)
      {
        v81 = v80;
        v82 = sub_2CD700();
        v83 = v140;
        sub_2CDA40();
        v84 = sub_2CAA00();
        (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
        v85 = sub_2CD600();
        if (v85)
        {
          v86 = v85;
          v87 = v154;
          v154[3] = v82;
          v87[4] = &protocol witness table for AudioUsoIntent;

          *v87 = v86;
          return result;
        }
      }

      else
      {
        v144(v141, v145, v78);
        v118 = sub_2CDFE0();
        v119 = sub_2CE680();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_0, v118, v119, "CommonAudioIntent#from pommesResponse contains no AudioExperience", v120, 2u);
        }

        v152(v141, v78);
      }
    }

    else
    {
      if (v53 != enum case for Parse.uso(_:))
      {
        v112 = v132;
        v113 = v24;
        v144(v132, v145, v24);
        v114 = sub_2CDFE0();
        v115 = sub_2CE680();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_0, v114, v115, "CommonAudioIntent#from unsupported parse type", v116, 2u);
        }

        v152(v112, v113);
        v117 = v154;
        v154[4] = 0;
        *v117 = 0u;
        *(v117 + 1) = 0u;
        v149(v76, v50);
        return result;
      }

      (*(v55 + 96))(v156, v50);
      v88 = v137;
      v89 = v136;
      v90 = v138;
      (*(v137 + 32))(v136, v76, v138);
      v91 = v133;
      sub_2CA8E0();
      v92 = sub_2CA960();
      (*(v134 + 8))(v91, v135);
      if (*(v92 + 16))
      {
        v93 = sub_2CAA00();
        v94 = *(v93 - 8);
        v95 = v139;
        (*(v94 + 16))(v139, v92 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v93);

        (*(v94 + 56))(v95, 0, 1, v93);
      }

      else
      {

        v123 = sub_2CAA00();
        (*(*(v123 - 8) + 56))(v139, 1, 1, v123);
      }

      v124 = sub_2CD700();
      v125 = sub_2CD600();
      if (v125)
      {
        v126 = v154;
        v154[3] = v124;
        v126[4] = &protocol witness table for AudioUsoIntent;
        *v126 = v125;
        (*(v88 + 8))(v89, v90);
        return result;
      }

      (*(v88 + 8))(v89, v90);
    }

LABEL_40:
    v127 = v154;
    v154[4] = 0;
    result = 0.0;
    *v127 = 0u;
    *(v127 + 1) = 0u;
    return result;
  }

  v68 = *(v17 + 96);
  v69 = v156;
  v68(v156, v50);
  v70 = v146;
  (*(v147 + 32))(v146, v69, v148);
  sub_238E4C(v70, v160);
  if (v162 == 255)
  {
    v96 = v143;
    v144(v143, v145, v24);
    v97 = v147;
    v98 = *(v147 + 16);
    v98(v54, v70, v148);
    v99 = v54;
    v100 = v24;
    v101 = sub_2CDFE0();
    v102 = sub_2CE680();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v148;
      v142 = v100;
      v106 = v104;
      *&v163[0] = v104;
      *v103 = 136315138;
      v98(v131, v99, v105);
      v107 = sub_2CE2A0();
      v109 = v108;
      v110 = *(v97 + 8);
      v110(v99, v105);
      v111 = sub_3F08(v107, v109, v163);

      *(v103 + 4) = v111;
      _os_log_impl(&dword_0, v101, v102, "CommonAudioIntent#actionForInput received unsupported directInvocation: %s", v103, 0xCu);
      sub_306C(v106);

      v152(v143, v142);
      v110(v146, v105);
    }

    else
    {

      v121 = *(v97 + 8);
      v122 = v148;
      v121(v99, v148);
      v152(v96, v100);
      v121(v70, v122);
    }

    goto LABEL_40;
  }

  v71 = v70;
  v163[0] = v160[0];
  v163[1] = v160[1];
  v163[2] = v160[2];
  v164 = v161;
  v165 = v162;
  v72 = type metadata accessor for DirectInvocationIntent(0);
  swift_allocObject();
  sub_D41D0(v163, v159);
  v73 = sub_132EA8(v163);
  if (!v73)
  {
    (*(v147 + 8))(v71, v148);
    v61 = &qword_34CCB0;
    v62 = &qword_2D5710;
    v63 = v160;
    goto LABEL_12;
  }

  v74 = v73;
  v75 = v154;
  v154[3] = v72;
  v75[4] = sub_D422C(&qword_34F610, type metadata accessor for DirectInvocationIntent, &unk_2D4CD8);
  sub_30B8(v160, &qword_34CCB0, &qword_2D5710);
  *v75 = v74;
  (*(v147 + 8))(v71, v148);
  return result;
}

double sub_D2F98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = sub_2CA810();
  v138 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CC90, qword_2D40E0);
  v7 = __chkstk_darwin(v6 - 8);
  v133 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v119 - v9;
  v128 = sub_2CA970();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2CA8F0();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v12 - 8);
  v140 = &v119 - v13;
  v14 = sub_2CA870();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v143 = (&v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v144 = &v119 - v19;
  __chkstk_darwin(v18);
  v146 = &v119 - v20;
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v125 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v134 = &v119 - v26;
  v27 = __chkstk_darwin(v25);
  v123 = &v119 - v28;
  v29 = __chkstk_darwin(v27);
  v124 = &v119 - v30;
  __chkstk_darwin(v29);
  v32 = &v119 - v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v34 = *(v22 + 16);
  v137 = v33;
  v136 = v22 + 16;
  v135 = v34;
  v34(v32, v33, v21);
  v35 = *(v15 + 16);
  v145 = a1;
  v35(v146, a1, v14);
  v141 = v32;
  v36 = v22;
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  v39 = os_log_type_enabled(v37, v38);
  v139 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v121 = v5;
    v41 = v40;
    v42 = swift_slowAlloc();
    v122 = v3;
    v119 = v42;
    v147 = v42;
    *v41 = 136315138;
    v43 = v14;
    v44 = v21;
    v45 = v146;
    v46 = v43;
    (v35)(v144, v146);
    v47 = sub_2CE2A0();
    v120 = v44;
    v48 = v35;
    v50 = v49;
    v51 = v46;
    v146 = *(v15 + 8);
    (v146)(v45, v46);
    v52 = sub_3F08(v47, v50, &v147);
    v35 = v48;
    v21 = v120;

    *(v41 + 4) = v52;
    _os_log_impl(&dword_0, v37, v38, "CommonAudioIntent#from parse: %s", v41, 0xCu);
    sub_306C(v119);
    v3 = v122;

    v5 = v121;

    v53 = *(v139 + 8);
    v53(v141, v21);
    v14 = v51;
  }

  else
  {

    v54 = v146;
    v146 = *(v15 + 8);
    (v146)(v54, v14);
    v53 = *(v36 + 8);
    v53(v141, v21);
  }

  v55 = v143;
  v35(v143, v145, v14);
  v56 = (*(v15 + 88))(v55, v14);
  if (v56 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (v146)(v55, v14);
    goto LABEL_10;
  }

  if (v56 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v15 + 96))(v55, v14);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v57 = sub_2CAFE0();
    (*(*(v57 - 8) + 8))(v55, v57);
LABEL_10:
    v58 = v144;
    v35(v144, v145, v14);
    v59 = v140;
    sub_2B6170(v58, v140);
    v60 = type metadata accessor for AudioNLv3Intent(0);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      sub_30B8(v59, &qword_34D360, &qword_2D11E0);
      result = 0.0;
      v62 = v142;
      *v142 = 0u;
      *(v62 + 16) = 0u;
      *(v62 + 32) = 0u;
    }

    else
    {
      v63 = v142;
      *(v142 + 24) = v60;
      v63[4] = sub_D422C(&qword_34F600, type metadata accessor for AudioNLv3Intent, &unk_2D9460);
      v63[5] = sub_D422C(&qword_34F608, type metadata accessor for AudioNLv3Intent, &unk_2D93E0);
      v64 = sub_F390(v63);
      sub_D416C(v59, v64);
    }

    return result;
  }

  if (v56 == enum case for Parse.directInvocation(_:))
  {
    (*(v15 + 96))(v55, v14);
    (*(v138 + 32))(v5, v55, v3);
    sub_238E4C(v5, &v147);
    if (v148 == 4)
    {
      v88 = v21;
      v89 = v138;
      v90 = v147;

      if (v90)
      {
        v91 = v5;
        v92 = sub_2CD700();
        v93 = v90;
        v94 = v133;
        sub_2CDA40();
        v95 = sub_2CAA00();
        (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
        v96 = sub_2CD600();
        if (v96)
        {
          v97 = v96;
          v98 = v142;
          *(v142 + 24) = v92;
          v98[4] = &protocol witness table for AudioUsoIntent;
          v98[5] = sub_D422C(&qword_34F5F8, &type metadata accessor for AudioUsoIntent, &protocol conformance descriptor for AudioUsoIntent);

          *v98 = v97;
          (*(v89 + 8))(v91, v3);
          return result;
        }

        (*(v89 + 8))(v91, v3);
      }

      else
      {
        v109 = v123;
        v135(v123, v137, v21);
        v110 = sub_2CDFE0();
        v111 = sub_2CE680();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_0, v110, v111, "CommonAudioIntent#from PlayMediaShim directinvocation is missing audioExperience", v112, 2u);
        }

        v53(v109, v88);
        (*(v89 + 8))(v5, v3);
      }
    }

    else
    {
      if (v148 != 255)
      {
        sub_30B8(&v147, &qword_34CCB0, &qword_2D5710);
      }

      v65 = v134;
      v66 = v21;
      v135(v134, v137, v21);
      v67 = sub_2CDFE0();
      v68 = sub_2CE680();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v67, v68, "CommonAudioIntent#from unsupported directinvocation type", v69, 2u);
      }

      v53(v65, v66);
      (*(v138 + 8))(v5, v3);
    }

    goto LABEL_45;
  }

  if (v56 == enum case for Parse.pommesResponse(_:))
  {
    v70 = v21;
    (*(v15 + 96))(v55, v14);
    v71 = *v55;
    v72 = sub_1B7F14();
    if (v72)
    {
      v73 = v72;
      v74 = sub_2CD700();
      v75 = v133;
      sub_2CDA40();
      v76 = sub_2CAA00();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      v77 = sub_2CD600();
      if (v77)
      {
        v78 = v77;
        v79 = v142;
        *(v142 + 24) = v74;
        v79[4] = &protocol witness table for AudioUsoIntent;
        v79[5] = sub_D422C(&qword_34F5F8, &type metadata accessor for AudioUsoIntent, &protocol conformance descriptor for AudioUsoIntent);

        *v79 = v78;
        return result;
      }
    }

    else
    {
      v105 = v124;
      v135(v124, v137, v70);
      v106 = sub_2CDFE0();
      v107 = sub_2CE680();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_0, v106, v107, "CommonAudioIntent#from pommesResponse contains no AudioExperience", v108, 2u);
      }

      v53(v105, v70);
    }

LABEL_45:
    result = 0.0;
    v118 = v142;
    *(v142 + 16) = 0u;
    v118[2] = 0u;
    *v118 = 0u;
    return result;
  }

  if (v56 == enum case for Parse.uso(_:))
  {
    (*(v15 + 96))(v55, v14);
    v80 = v131;
    v81 = v129;
    v82 = v132;
    (*(v131 + 32))(v129, v55, v132);
    v83 = v126;
    sub_2CA8E0();
    v84 = sub_2CA960();
    (*(v127 + 8))(v83, v128);
    if (*(v84 + 16))
    {
      v85 = sub_2CAA00();
      v86 = *(v85 - 8);
      v87 = v130;
      (*(v86 + 16))(v130, v84 + ((*(v86 + 80) + 32) & ~*(v86 + 80)), v85);

      (*(v86 + 56))(v87, 0, 1, v85);
    }

    else
    {

      v113 = sub_2CAA00();
      (*(*(v113 - 8) + 56))(v130, 1, 1, v113);
    }

    v114 = sub_2CD700();
    v115 = sub_2CD600();
    if (v115)
    {
      v116 = v115;
      v117 = v142;
      *(v142 + 24) = v114;
      v117[4] = &protocol witness table for AudioUsoIntent;
      v117[5] = sub_D422C(&qword_34F5F8, &type metadata accessor for AudioUsoIntent, &protocol conformance descriptor for AudioUsoIntent);
      *v117 = v116;
      (*(v80 + 8))(v81, v82);
      return result;
    }

    (*(v80 + 8))(v81, v82);
    goto LABEL_45;
  }

  v99 = v125;
  v135(v125, v137, v21);
  v100 = sub_2CDFE0();
  v101 = sub_2CE680();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_0, v100, v101, "CommonAudioIntent#from unsupported parse type", v102, 2u);
  }

  v53(v99, v21);
  v104 = v142;
  v103 = v143;
  *(v142 + 16) = 0u;
  v104[2] = 0u;
  *v104 = 0u;
  (v146)(v103, v14);
  return result;
}

uint64_t sub_D416C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioNLv3Intent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D422C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_D4274(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  *(v1 + 2) = _swiftEmptyArrayStorage;
  *(v1 + 3) = _swiftEmptyArrayStorage;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0;
  *(v1 + 6) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
  v53 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
  v7 = sub_2CD570();
  v8 = *(v7 - 8);
  v51 = *(v8 + 56);
  v51(&v2[v6], 1, 1, v7);
  v9 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
  v10 = sub_2CD540();
  v50 = *(*(v10 - 8) + 56);
  v50(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_activities] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookAuthors] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appMusicArtistNames] = _swiftEmptyArrayStorage;
  v11 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appPlaylistTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appShowTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePlaylistTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePodcastTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_apps] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_attributes] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_dateTime] = 0;
  v12 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_confirmationState;
  v13 = sub_2CD490();
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_decade;
  v15 = sub_2CD4D0();
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_entities] = _swiftEmptyArrayStorage;
  v16 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency];
  *v16 = 0;
  v16[8] = 1;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_genres] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_modifiers] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_moods] = _swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_noun;
  v18 = sub_2CD4A0();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_playlistTitles] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_podcastTitles] = _swiftEmptyArrayStorage;
  v19 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_newsPodcastTopicId];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_newsPodcastIdentifier];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames] = _swiftEmptyArrayStorage;
  v21 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType;
  v22 = sub_2CD560();
  (*(*(v22 - 8) + 56))(&v2[v21], 1, 1, v22);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_resolvedReference] = 0;
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_showTitles] = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_sort;
  v24 = sub_2CD4B0();
  (*(*(v24 - 8) + 56))(&v2[v23], 1, 1, v24);
  v50(&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_targetMediaType], 1, 1, v10);
  v25 = v52;
  v26 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
  v27 = sub_2CD4C0();
  (*(*(v27 - 8) + 56))(&v2[v26], 1, 1, v27);
  *&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_audioSettingNames] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appInferred] = 0;
  (*(v8 + 104))(v5, enum case for CommonAudio.Reference.definite(_:), v7);
  v51(v5, 0, 1, v7);
  v28 = v53;
  swift_beginAccess();
  sub_D5564(v5, &v2[v28]);
  swift_endAccess();
  v29 = sub_2CBA40();
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    sub_20410(&unk_356F40, &unk_2D0740);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2D0090;
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    *(v2 + 3) = v33;
  }

  v34 = sub_2CBA90();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    sub_20410(&unk_356F40, &unk_2D0740);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2D0090;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    *(v2 + 2) = v38;
  }

  v39 = sub_2CBAA0();
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    sub_20410(&unk_356F40, &unk_2D0740);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2D0090;
    *(v43 + 32) = v41;
    *(v43 + 40) = v42;
    *(v2 + 6) = v43;
  }

  v44 = sub_2CBAC0();
  v46 = v45;
  v47 = sub_2CBAF0();
  (*(*(v47 - 8) + 8))(v25, v47);
  *(v2 + 4) = v44;
  *(v2 + 5) = v46;

  return v2;
}

void *sub_D48B8()
{

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference, &qword_34D6C0, &qword_2D15B8);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType, &qword_34D6D0, qword_2D34A0);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_confirmationState, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_decade, &qword_34D718, &unk_2D15F0);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_noun, &qword_34D698, &qword_2D1598);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType, &qword_34D6A0, &unk_2D3490);

  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_sort, &qword_34D6C8, &unk_2D15C0);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_targetMediaType, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb, &qword_34D6B8, &qword_2D15B0);

  return v0;
}

uint64_t sub_D4BAC()
{
  sub_D48B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingIntent(uint64_t a1)
{
  result = qword_34F648;
  if (!qword_34F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D4C58(uint64_t a1)
{
  sub_D4FF4(319, &qword_34F658, &type metadata accessor for CommonAudio.Reference);
  if (v1 <= 0x3F)
  {
    sub_D4FF4(319, &qword_34F660, &type metadata accessor for CommonAudio.MediaType);
    if (v2 <= 0x3F)
    {
      sub_D4FF4(319, &qword_34F668, &type metadata accessor for CommonAudio.Confirmation);
      if (v3 <= 0x3F)
      {
        sub_D4FF4(319, &qword_34F670, &type metadata accessor for CommonAudio.Decade);
        if (v4 <= 0x3F)
        {
          sub_D4FF4(319, &qword_34F678, &type metadata accessor for CommonAudio.Noun);
          if (v5 <= 0x3F)
          {
            sub_D4FF4(319, &qword_34F680, &type metadata accessor for CommonAudio.RadioType);
            if (v6 <= 0x3F)
            {
              sub_D4FF4(319, &qword_34F688, &type metadata accessor for CommonAudio.Sort);
              if (v7 <= 0x3F)
              {
                sub_D4FF4(319, &unk_34F690, &type metadata accessor for CommonAudio.Verb);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_D4FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_D51BC()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_D52EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t sub_D5394@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  swift_beginAccess();
  return sub_F3F4(v8 + v9, a4, a2, a3);
}

unint64_t sub_D550C()
{
  result = qword_34FBE8;
  if (!qword_34FBE8)
  {
    type metadata accessor for NowPlayingIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FBE8);
  }

  return result;
}

uint64_t sub_D5564(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static CommonMedia.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2CB450();
  sub_2CBC60();
  sub_35E0(v15, v16);
  sub_2CBE60();
  v10 = sub_2CC3E0();
  swift_allocObject();
  v11 = sub_2CC3D0();
  sub_306C(v15);
  v16 = v10;
  v17 = &protocol witness table for AirPlayRouteProvider;
  v15[0] = v11;
  v14[3] = sub_2CB9E0();
  v14[4] = &protocol witness table for DeviceProvider;
  sub_F390(v14);
  sub_2CB9C0();
  v13[3] = sub_2CC7A0();
  v13[4] = &protocol witness table for MediaRemoteAPIProvider;
  v13[0] = sub_2CC790();
  sub_D5754(a3);
  static CommonMedia.makeSiriKitIntentHandler(_:_:_:_:_:_:)(a1, a2, v15, v14, v13, a3, a5, a4);

  sub_306C(v13);
  sub_306C(v14);
  return sub_306C(v15);
}

uint64_t sub_D5754(uint64_t a1)
{
  sub_2CBC60();
  sub_35E0(v3, v3[3]);
  v1 = sub_2CBE60();
  sub_306C(v3);
  return v1;
}

uint64_t static CommonMedia.makeSiriKitIntentHandler(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v203 = a5;
  v204 = a3;
  v214 = a9;
  v205 = sub_2CC760();
  v212 = *(v205 - 8);
  v14 = __chkstk_darwin(v205);
  v202 = &v189[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v206 = &v189[-v16];
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v216 = v17;
  v217 = v18;
  v19 = __chkstk_darwin(v17);
  v211 = &v189[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v209 = &v189[-v22];
  v23 = __chkstk_darwin(v21);
  v210 = &v189[-v24];
  v25 = __chkstk_darwin(v23);
  v200 = &v189[-v26];
  v27 = __chkstk_darwin(v25);
  v199 = &v189[-v28];
  v29 = __chkstk_darwin(v27);
  v201 = &v189[-v30];
  v31 = __chkstk_darwin(v29);
  v33 = &v189[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v189[-v35];
  __chkstk_darwin(v34);
  v38 = &v189[-v37];
  *&v218 = a2;
  v208 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v215 = a2;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  v213 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    sub_F338(v219, &v221);
    sub_35E0(&v221, v222);
    if (sub_2CC120())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v40 = v216;
      v41 = sub_3ED0(v216, static Logger.default);
      swift_beginAccess();
      v42 = v217;
      (*(v217 + 16))(v38, v41, v40);
      v43 = sub_2CDFE0();
      v44 = sub_2CE690();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v45, 2u);
      }

      (*(v42 + 8))(v38, v40);
      v46 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

      [v46 init];
      v47 = v215;
      v48 = v214;
      sub_2C9870();
      v49 = sub_2C9880();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      return sub_306C(&v221);
    }

    sub_306C(&v221);
  }

  else
  {
    v220 = 0;
    memset(v219, 0, sizeof(v219));
    sub_30B8(v219, &qword_3530A0, &qword_2D1EF8);
  }

  v51 = sub_D7070(a1);
  v207 = a8;
  if (v51)
  {
    sub_35E0(a4, a4[3]);
    if (sub_2CBBC0() & 1) != 0 || (sub_35E0(a4, a4[3]), (sub_2CBBB0()))
    {
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        v53 = v52;
        v54 = sub_2CC8E0();
        v55 = v215;
        v198 = v54;
        v56 = sub_2CC8D0();
        if (v56)
        {
          v57 = v56;
          v196 = v53;
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v58 = v216;
          v59 = sub_3ED0(v216, static Logger.default);
          swift_beginAccess();
          v60 = v217;
          v61 = *(v217 + 16);
          v195 = v59;
          v194 = v217 + 16;
          v193 = v61;
          v61(v36, v59, v58);
          v62 = v55;

          v63 = sub_2CDFE0();
          v64 = sub_2CE670();
          v197 = v62;

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *&v221 = v191;
            *v65 = 136315394;
            *&v219[0] = v57;
            sub_D8BE4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
            v190 = v64;
            v66 = sub_2CEE70();
            v68 = sub_3F08(v66, v67, &v221);
            v192 = v57;
            v69 = v68;

            *(v65 + 4) = v69;
            *(v65 + 12) = 2080;
            v70 = [v196 debugDescription];
            v71 = sub_2CE270();
            v73 = v72;

            v74 = v71;
            v57 = v192;
            v75 = sub_3F08(v74, v73, &v221);
            v60 = v217;

            *(v65 + 14) = v75;
            _os_log_impl(&dword_0, v63, v190, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v65, 0x16u);
            swift_arrayDestroy();
          }

          v76 = *(v60 + 8);
          v76(v36, v58);
          v77 = v205;
          v78 = v206;
          sub_2CC8B0();
          v79 = (*(v212 + 88))(v78, v77);
          v80 = v207;
          if (v79 != enum case for AirPlayRouteSetupState.none(_:))
          {
            if (v79 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
            {
              v141 = v204;
              sub_35E0(v204, v204[3]);
              sub_2CC690();
              sub_35E0(v141, v141[3]);
              sub_2CC670();
            }

            else
            {
              if (v79 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
              {
                v142 = v204;
                sub_35E0(v204, v204[3]);
                sub_2CC690();
                v143 = v142[3];
                v144 = v142;
              }

              else
              {
                if (v79 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
                {
                  if (v79 == enum case for AirPlayRouteSetupState.complete(_:))
                  {
                    v192 = v57;
                    v146 = v201;
                    v147 = v216;
                    v193(v201, v195, v216);
                    v148 = v197;
                    v149 = sub_2CDFE0();
                    v150 = sub_2CE660();

                    if (os_log_type_enabled(v149, v150))
                    {
                      v151 = swift_slowAlloc();
                      v152 = swift_slowAlloc();
                      *&v221 = v152;
                      *v151 = 136315138;
                      v153 = [v148 debugDescription];
                      v154 = v148;
                      v155 = sub_2CE270();
                      v157 = v156;

                      v158 = sub_3F08(v155, v157, &v221);

                      *(v151 + 4) = v158;
                      _os_log_impl(&dword_0, v149, v150, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v151, 0xCu);
                      sub_306C(v152);

                      v76(v201, v216);
                    }

                    else
                    {

                      v76(v146, v147);
                    }
                  }

                  else
                  {
                    v159 = v216;
                    if (v79 == enum case for AirPlayRouteSetupState.error(_:))
                    {
                      v160 = v199;
                      v193(v199, v195, v216);

                      v161 = sub_2CDFE0();
                      v162 = sub_2CE680();

                      if (os_log_type_enabled(v161, v162))
                      {
                        v163 = swift_slowAlloc();
                        v164 = swift_slowAlloc();
                        *&v221 = v164;
                        *v163 = 136315138;
                        *&v219[0] = v57;
                        sub_D8BE4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
                        v165 = sub_2CEE70();
                        v167 = sub_3F08(v165, v166, &v221);

                        *(v163 + 4) = v167;
                        _os_log_impl(&dword_0, v161, v162, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v163, 0xCu);
                        sub_306C(v164);

                        v76(v199, v159);
                      }

                      else
                      {

                        v76(v160, v159);
                      }

                      v185 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

                      [v185 init];
                      v186 = v197;
                      v187 = v214;
                      sub_2C9870();

                      v188 = sub_2C9880();
                      return (*(*(v188 - 8) + 56))(v187, 0, 1, v188);
                    }

                    v168 = v200;
                    v193(v200, v195, v216);
                    v169 = v197;

                    v170 = sub_2CDFE0();
                    v171 = sub_2CE660();

                    if (os_log_type_enabled(v170, v171))
                    {
                      v172 = swift_slowAlloc();
                      v203 = v169;
                      v173 = v172;
                      v204 = swift_slowAlloc();
                      *&v221 = v204;
                      *v173 = 136315394;
                      sub_2CC8B0();
                      v174 = sub_2CE2A0();
                      v176 = sub_3F08(v174, v175, &v221);

                      *(v173 + 4) = v176;
                      *(v173 + 12) = 2080;
                      v177 = v203;
                      v178 = [v203 debugDescription];
                      v179 = sub_2CE270();
                      v181 = v180;

                      v182 = sub_3F08(v179, v181, &v221);
                      v77 = v205;

                      *(v173 + 14) = v182;
                      _os_log_impl(&dword_0, v170, v171, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v173, 0x16u);
                      swift_arrayDestroy();

                      v183 = v216;
                      v184 = v200;
                    }

                    else
                    {

                      v184 = v168;
                      v183 = v159;
                    }

                    v76(v184, v183);
                    (*(v212 + 8))(v206, v77);
                  }

                  goto LABEL_24;
                }

                v144 = v204;
                v143 = v204[3];
              }

              sub_35E0(v144, v143);
              sub_2CC6A0();
            }

            v145 = v197;
            (*(v208 + 32))(a1, v197, v80);
          }

          v193(v33, v195, v216);
          v81 = sub_2CDFE0();
          v82 = sub_2CE670();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&dword_0, v81, v82, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v83, 2u);
          }

          v76(v33, v216);
          sub_2CE700();
          (*(v212 + 104))(v202, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v77);
          sub_2CC8C0();
          v84 = v204;
          sub_35E0(v204, v204[3]);
          sub_EEAC(v84, &v221);
          sub_EEAC(a4, v219);
          sub_EEAC(v203, &v218);
          v85 = swift_allocObject();
          sub_F338(&v221, v85 + 16);
          sub_F338(v219, v85 + 56);
          sub_F338(&v218, v85 + 96);
          sub_2CC660();
        }

        else
        {
        }
      }
    }
  }

LABEL_24:
  v212 = a1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v86 = v216;
  v87 = sub_3ED0(v216, static Logger.default);
  swift_beginAccess();
  v88 = v217;
  v89 = *(v217 + 16);
  v90 = v210;
  v89(v210, v87, v86);
  v91 = v215;
  v92 = sub_2CDFE0();
  v93 = sub_2CE690();

  v94 = os_log_type_enabled(v92, v93);
  v215 = v91;
  if (v94)
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v219[0] = v96;
    *v95 = 136315138;
    *&v218 = v91;
    swift_getWitnessTable();
    v97 = sub_2CEE70();
    v99 = sub_3F08(v97, v98, v219);

    *(v95 + 4) = v99;
    _os_log_impl(&dword_0, v92, v93, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v95, 0xCu);
    sub_306C(v96);
    v86 = v216;

    v100 = *(v217 + 8);
  }

  else
  {

    v100 = *(v88 + 8);
  }

  (v100)(v90, v86);
  if (sub_8FD94(v212))
  {
    v101 = v209;
    v89(v209, v87, v86);
    v102 = sub_2CDFE0();
    v103 = sub_2CE670();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v219[0] = v105;
      *v104 = 136315138;
      v106 = v208;
      v107 = *(v208 + 24);
      v211 = v100;
      v108 = v207;
      v109 = v107(v207, v208);
      ObjectType = swift_getObjectType();

      *&v218 = ObjectType;
      sub_20410(&unk_34FC10, &qword_2D1EE8);
      v111 = sub_2CE2A0();
      v113 = sub_3F08(v111, v112, v219);

      *(v104 + 4) = v113;
      _os_log_impl(&dword_0, v102, v103, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v104, 0xCu);
      sub_306C(v105);

      v114 = v107;

      (v211)(v209, v216);
    }

    else
    {

      (v100)(v101, v86);
      v106 = v208;
      v114 = *(v208 + 24);
      v108 = v207;
    }

    v129 = v215;

    v114(v108, v106);
    v130 = v129;
    v131 = v214;
    sub_2C9870();
    v132 = sub_2C9880();
    return (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  }

  else
  {
    v89(v211, v87, v86);
    v115 = v215;

    v116 = sub_2CDFE0();
    v117 = sub_2CE670();

    v118 = os_log_type_enabled(v116, v117);
    v119 = v214;
    if (v118)
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138412546;
      sub_2CCF90();
      if (v122)
      {
        v123 = sub_2CE2F0();
        v125 = v124;

        sub_10C40();
        swift_allocError();
        *v126 = v123;
        v126[1] = v125;
        v127 = _swift_stdlib_bridgeErrorToNSError();
        v128 = v127;
      }

      else
      {
        v127 = 0;
        v128 = 0;
      }

      *(v120 + 4) = v127;
      *v121 = v128;
      *(v120 + 12) = 2112;
      v133 = [v115 launchId];
      if (v133)
      {
        v134 = v133;
        v135 = sub_2CE270();
        v137 = v136;

        sub_10C40();
        swift_allocError();
        *v138 = v135;
        v138[1] = v137;
        v133 = _swift_stdlib_bridgeErrorToNSError();
        v139 = v133;
      }

      else
      {
        v139 = 0;
      }

      v86 = v216;
      *(v120 + 14) = v133;
      v121[1] = v139;
      _os_log_impl(&dword_0, v116, v117, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v120, 0x16u);
      sub_20410(&unk_34FC00, &unk_2D0150);
      swift_arrayDestroy();
    }

    (v100)(v211, v86);
    v140 = sub_2C9880();
    return (*(*(v140 - 8) + 56))(v119, 1, 1, v140);
  }
}

BOOL sub_D7070(uint64_t a1)
{
  v1 = sub_2CCF90();
  v3 = v2;
  v4 = sub_2CBE10();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      goto LABEL_16;
    }

    v6 = sub_2CEEA0();

    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = sub_2CCF90();
  v9 = v8;
  v10 = sub_2CBE30();
  if (v9)
  {
    if (v7 == v10 && v9 == v11)
    {
      goto LABEL_16;
    }

    v12 = sub_2CEEA0();

    if (v12)
    {
      return 0;
    }
  }

  else
  {
  }

  v13 = sub_2CCF90();
  v15 = v14;
  v16 = sub_2CBD90();
  if (v15)
  {
    if (v13 == v16 && v15 == v17)
    {
LABEL_16:

      return 0;
    }

    v19 = sub_2CEEA0();

    return (v19 & 1) == 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_D71E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  if (a1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v13 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_2CDFE0();
    v15 = sub_2CE670();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "CommonMedia#makeSiriKitIntentHandler Searching for output devices...", v16, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_35E0(a2, a2[3]);
    return sub_2CC680();
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v12, v18, v6);
    v19 = sub_2CDFE0();
    v20 = sub_2CE670();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "CommonMedia#makeSiriKitIntentHandler Routes not found in the intent", v21, 2u);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_D767C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_D7750;

  return sub_D8284(v6);
}

uint64_t sub_D7750(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id sub_D7934(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DialogProducingIntentHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_D7978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24C84;

  return v6();
}

uint64_t sub_D7A60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_E664;

  return v7();
}

uint64_t sub_D7B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34E4B0, &qword_2D3520);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_F3F4(a3, v23 - v10, &qword_34E4B0, &qword_2D3520);
  v12 = sub_2CE4D0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_30B8(v11, &qword_34E4B0, &qword_2D3520);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2CE4C0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2CE490();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2CE2D0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_30B8(a3, &qword_34E4B0, &qword_2D3520);

    return v21;
  }

LABEL_8:
  sub_30B8(a3, &qword_34E4B0, &qword_2D3520);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_D7E94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_E664;

  return sub_D767C(v2, v3, v4);
}

uint64_t sub_D7F48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24C84;

  return sub_D7978(v2, v3, v4);
}

uint64_t sub_D8008()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_D8048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24C84;

  return sub_D7A60(a1, v4, v5, v6);
}

uint64_t sub_D8114(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24C84;

  return sub_AF06C(a1, v4);
}

uint64_t sub_D81CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E664;

  return sub_AF06C(a1, v4);
}

uint64_t sub_D8284(uint64_t a1)
{
  v1[15] = a1;
  v2 = sub_2CC760();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = sub_20410(&qword_34FCB0, &unk_2D8580);
  v1[20] = swift_task_alloc();
  sub_20410(&qword_34FCB8, &unk_2D3580);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_2CE000();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_D8438, 0, 0);
}

uint64_t sub_D8438()
{
  v59 = v0;
  v0[13] = v0[15];
  sub_D8B98();
  if (sub_2CC120())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v1 = v0[27];
    v2 = v0[24];
    v3 = v0[25];
    v4 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_2CDFE0();
    v6 = sub_2CE690();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "DialogProducingIntentHandler#handle User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v7, 2u);
    }

    v8 = v0[27];
    v9 = v0[24];
    v10 = v0[25];

    (*(v10 + 8))(v8, v9);
    v11 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:4 userActivity:0];
    goto LABEL_25;
  }

  sub_2CC8E0();
  sub_2CBC60();
  sub_35E0(v0 + 2, v0[5]);
  sub_2CBE60();
  sub_306C(v0 + 2);
  v12 = sub_2CC8D0();

  if (!v12)
  {
    goto LABEL_18;
  }

  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v17 = v0[17];
  sub_2CC8B0();
  v19 = *(v17 + 56);
  v19(v13, 0, 1, v18);
  (*(v17 + 104))(v14, enum case for AirPlayRouteSetupState.error(_:), v18);
  v19(v14, 0, 1, v18);
  v20 = *(v15 + 48);
  sub_F3F4(v13, v16, &qword_34FCB8, &unk_2D3580);
  sub_F3F4(v14, v16 + v20, &qword_34FCB8, &unk_2D3580);
  v21 = *(v17 + 48);
  if (v21(v16, 1, v18) != 1)
  {
    v24 = v0[16];
    sub_F3F4(v0[20], v0[21], &qword_34FCB8, &unk_2D3580);
    v25 = v21(v16 + v20, 1, v24);
    v27 = v0[22];
    v26 = v0[23];
    v28 = v0[21];
    if (v25 != 1)
    {
      v56 = v0[20];
      v31 = v0[17];
      v32 = v0[18];
      v33 = v0[16];
      (*(v31 + 32))(v32, v16 + v20, v33);
      sub_D8BE4(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState, &protocol conformance descriptor for AirPlayRouteSetupState);
      v55 = sub_2CE250();
      v34 = *(v31 + 8);
      v34(v32, v33);
      sub_30B8(v27, &qword_34FCB8, &unk_2D3580);
      sub_30B8(v26, &qword_34FCB8, &unk_2D3580);
      v34(v28, v33);
      sub_30B8(v56, &qword_34FCB8, &unk_2D3580);
      if (v55)
      {
        goto LABEL_15;
      }

LABEL_18:
      v36 = 6;
      goto LABEL_19;
    }

    v30 = v0[16];
    v29 = v0[17];
    sub_30B8(v0[22], &qword_34FCB8, &unk_2D3580);
    sub_30B8(v26, &qword_34FCB8, &unk_2D3580);
    (*(v29 + 8))(v28, v30);
LABEL_13:
    sub_30B8(v0[20], &qword_34FCB0, &unk_2D8580);
    goto LABEL_18;
  }

  v22 = v0[23];
  v23 = v0[16];
  sub_30B8(v0[22], &qword_34FCB8, &unk_2D3580);
  sub_30B8(v22, &qword_34FCB8, &unk_2D3580);
  if (v21(v16 + v20, 1, v23) != 1)
  {
    goto LABEL_13;
  }

  sub_30B8(v0[20], &qword_34FCB8, &unk_2D3580);
LABEL_15:
  v35 = sub_2CC890();
  if (v35 == 2 || (v35 & 1) == 0)
  {
    goto LABEL_18;
  }

  v36 = 4;
LABEL_19:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = v0[25];
  v38 = v0[26];
  v39 = v0[24];
  v40 = sub_3ED0(v39, static Logger.default);
  swift_beginAccess();
  (*(v37 + 16))(v38, v40, v39);
  v41 = sub_2CDFE0();
  v42 = sub_2CE670();
  v43 = os_log_type_enabled(v41, v42);
  v45 = v0[25];
  v44 = v0[26];
  v46 = v0[24];
  if (v43)
  {
    v47 = v36;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v48 = 136315138;
    v0[14] = v47;
    type metadata accessor for INPlayMediaIntentResponseCode(0);
    v50 = sub_2CE2A0();
    v57 = v44;
    v52 = sub_3F08(v50, v51, &v58);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_0, v41, v42, "AirPlayErrorIntentHandler#handle short circuiting handle because of AirPlay setup error, returning %s", v48, 0xCu);
    sub_306C(v49);

    v36 = v47;

    (*(v45 + 8))(v57, v46);
  }

  else
  {

    (*(v45 + 8))(v44, v46);
  }

  v11 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:v36 userActivity:0];

LABEL_25:

  v53 = v0[1];

  return v53(v11);
}

unint64_t sub_D8B98()
{
  result = qword_34FCC0;
  if (!qword_34FCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34FCC0);
  }

  return result;
}

uint64_t sub_D8BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27NeedsDisambiguationStrategyCMa_1(uint64_t a1)
{
  result = qword_34FCF8;
  if (!qword_34FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D8C78()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_34FE20 = v8;
  return result;
}

uint64_t sub_D8E10()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_34FE28 = v8;
  return result;
}

uint64_t sub_D8FB8(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, qword_35F6A8);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "ShazamKitRecognizer#enableLiveActivity true for iOS", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setEnableLiveActivity:1];
  return a1(1);
}

uint64_t sub_D918C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v27 = a1;
  v4 = sub_2CB6C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CB850();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34FF10, qword_2D3620);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  v26 = sub_2CB700();
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_DB0D4())
  {
    v25 = v4;
    if (qword_34BF40 != -1)
    {
      swift_once();
    }

    v24[1] = qword_34FE20;
    v24[2] = "DeactivateAudioSession";
    if (qword_34BF48 != -1)
    {
      swift_once();
    }

    v24[0] = qword_34FE28;
    v18 = v26;
    (*(v15 + 104))(v17, enum case for Completions.TimeoutMillis.shazamKitRecognizer(_:), v26);
    (*(v9 + 104))(v11, enum case for PlaybackCode.acousticIDTimeout(_:), v8);
    (*(v5 + 104))(v7, enum case for DomainCode.shazamKit(_:), v25);
    sub_2CC930();
    swift_storeEnumTagMultiPayload();
    v19 = swift_allocObject();
    v21 = v27;
    v20 = v28;
    v19[2] = v28;
    v19[3] = v21;
    v19[4] = v29;
    v22 = v20;

    sub_2CB720();

    sub_30B8(v14, &qword_34FF10, qword_2D3620);
    return (*(v15 + 8))(v17, v18);
  }

  else
  {
    (*(v9 + 104))(v11, enum case for PlaybackCode.acousticIDGenericError(_:), v8);
    (*(v5 + 104))(v7, enum case for DomainCode.shazamKit(_:), v4);
    sub_2CC930();
    swift_storeEnumTagMultiPayload();
    v30(v14);
    return sub_30B8(v14, &qword_34FF10, qword_2D3620);
  }
}

uint64_t sub_D9638(uint64_t a1, uint64_t a2, char *a3, void (*a4)(id), NSObject *a5)
{
  v38[1] = a5;
  v39 = a4;
  v48 = a3;
  v40 = a1;
  v41 = a2;
  v5 = sub_2CE150();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2CE180();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v38 - v13;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v8, qword_35F6A8);
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "ShazamKitRecognizer#performMatch Entering dispatchGroup", v19, 2u);
  }

  v20 = *(v9 + 8);
  v20(v14, v8);
  v21 = v48;
  v38[0] = *&v48[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_dispatchGroup];
  dispatch_group_enter(v38[0]);
  v22 = *&v21[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession];
  [v22 setDelegate:v21];
  v16(v12, v15, v8);
  v23 = sub_2CDFE0();
  v24 = sub_2CE690();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "ShazamKitRecognizer#performMatch triggering matchAmbientAudioSnippet", v25, 2u);
  }

  v20(v12, v8);
  v26 = [v22 matchAmbientAudioSnippet];
  v39(v26);
  sub_334A0(0, &qword_34FF18, OS_dispatch_queue_ptr);
  v27 = sub_2CE9B0();
  v28 = swift_allocObject();
  v29 = v48;
  v30 = v40;
  v31 = v41;
  v28[2] = v48;
  v28[3] = v30;
  v28[4] = v31;
  aBlock[4] = sub_DB7F0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_3346D0;
  v32 = _Block_copy(aBlock);
  v33 = v29;

  v34 = v42;
  sub_2CE160();
  v49 = _swiftEmptyArrayStorage;
  sub_DB814(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v35 = v44;
  v36 = v47;
  sub_2CEC10();
  sub_2CE970();
  _Block_release(v32);

  (*(v46 + 8))(v35, v36);
  (*(v43 + 8))(v34, v45);
}

uint64_t sub_D9B9C(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_20410(&qword_34FF10, qword_2D3620);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, qword_35F6A8);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "ShazamKitRecognizer#performMatch completed", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
  swift_beginAccess();
  sub_F3F4(a1 + v15, v6, &qword_34FF10, qword_2D3620);
  a2(v6);
  return sub_30B8(v6, &qword_34FF10, qword_2D3620);
}

uint64_t sub_D9E10(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v7 = sub_2C8D20();
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v8 = sub_3ED0(v2, qword_35F6A8);
    (*(v3 + 16))(v6, v8, v2);
    v9 = v7;
    v10 = sub_2CDFE0();
    v11 = sub_2CE680();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_0, v10, v11, "ShazamKitRecognizer#sessionDidFindMatch Failed to add song to SHMediaLibrary: %@", v12, 0xCu);
      sub_30B8(v13, &unk_34FC00, &unk_2D0150);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_DA12C(void *a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, qword_35F6A8);
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2CDFE0();
  v11 = sub_2CE690();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = [v9 description];
    v16 = sub_2CE270();
    v18 = v17;

    v19 = sub_3F08(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v10, v11, "ShazamKitRecognizer#finishedManagedSession: %s", v13, 0xCu);
    sub_306C(v14);

    v2 = v20;
  }

  (*(v5 + 8))(v7, v4);
  [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
  sub_DAB34();
}

uint64_t sub_DA3F4(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v59 = a3;
  v60 = a2;
  v57 = a1;
  v3 = sub_2CBAF0();
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  v8 = __chkstk_darwin(v6);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v54 = &v54 - v11;
  __chkstk_darwin(v10);
  v58 = &v54 - v12;
  v13 = sub_2CC2E0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  sub_F3F4(v57, &v54 - v21, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v19, v22, v13);
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v23 = v61;
    v24 = sub_3ED0(v61, qword_35F6A8);
    v25 = v62;
    (*(v62 + 16))(v58, v24, v23);
    v26 = *(v14 + 16);
    v57 = v19;
    v26(v17, v19, v13);
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v29 = 136446210;
      sub_DB814(&qword_34FF08, &type metadata accessor for NowPlayingInfoError, &protocol conformance descriptor for NowPlayingInfoError);
      v30 = sub_2CEEF0();
      v32 = v31;
      v33 = *(v14 + 8);
      v33(v17, v13);
      v34 = sub_3F08(v30, v32, &v63);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v27, v28, "ShazamKitRecognizer#shouldUseAsyncNotification failure with error: %{public}s, returning false", v29, 0xCu);
      sub_306C(v56);

      (*(v62 + 8))(v58, v61);
    }

    else
    {

      v33 = *(v14 + 8);
      v33(v17, v13);
      (*(v25 + 8))(v58, v23);
    }

    v60(0);
    return (v33)(v57, v13);
  }

  else
  {
    v35 = v56;
    (v56[4])(v5, v22, v3);
    v36 = sub_2CBAE0();
    v37 = v5;
    if ((v38 & 1) != 0 || v36 != 2)
    {
      v46 = v61;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v47 = sub_3ED0(v46, qword_35F6A8);
      v48 = v62;
      v49 = v55;
      (*(v62 + 16))(v55, v47, v46);
      v50 = sub_2CDFE0();
      v51 = sub_2CE690();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_0, v50, v51, "ShazamKitRecognizer#shouldUseAsyncNotification Now playing media type is not video, returning false", v52, 2u);
      }

      (*(v48 + 8))(v49, v46);
      v45 = 0;
    }

    else
    {
      v39 = v61;
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v40 = sub_3ED0(v39, qword_35F6A8);
      v41 = v54;
      (*(v62 + 16))(v54, v40, v39);
      v42 = sub_2CDFE0();
      v43 = sub_2CE690();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "ShazamKitRecognizer#shouldUseAsyncNotification Now playing media type is video, returning true", v44, 2u);
      }

      (*(v62 + 8))(v41, v39);
      v45 = 1;
    }

    v60(v45);
    return (v35[1])(v37, v3);
  }
}

void sub_DAB34()
{
  v1 = v0;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, qword_35F6A8);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "ShazamKitRecognizer#handleCompletion Triggering dispatchGroup leave", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  dispatch_group_leave(*(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_dispatchGroup));
}

id sub_DAD0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShazamKitRecognizer(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShazamKitRecognizer(uint64_t a1)
{
  result = qword_34FED8;
  if (!qword_34FED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DAE08(uint64_t a1)
{
  sub_DAEB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_DAEB0(uint64_t a1)
{
  if (!qword_34FEE8)
  {
    sub_2DB30(&qword_34FEF0, &qword_2D35E8);
    sub_2CC950();
    sub_DB814(&qword_34FEF8, &type metadata accessor for PlaybackCodeAndDescription, &protocol conformance descriptor for PlaybackCodeAndDescription);
    v1 = sub_2CEFA0();
    if (!v2)
    {
      atomic_store(v1, &qword_34FEE8);
    }
  }
}

uint64_t sub_DAF8C(uint64_t a1, uint64_t a2)
{
  sub_35E0((*v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_nowPlayingProvider), *(*v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_nowPlayingProvider + 24));
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_2CC300();
}

void sub_DB058()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession;
  [*(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) stopMatchingAmbientAudioSnippet];
  [*(v1 + v2) setDelegate:0];
  sub_DAB34();
}

unint64_t sub_DB0D4()
{
  v59 = sub_2CDFD0();
  v0 = *(v59 - 8);
  __chkstk_darwin(v59);
  v2 = &v53[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v53[-v8];
  v10 = [objc_opt_self() sharedInstance];
  v60[0] = 0;
  v11 = [v10 setActive:0 withOptions:1 error:v60];

  if (v11)
  {
    v12 = qword_34BF60;
    v13 = v60[0];
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v3, qword_35F6A8);
    (*(v4 + 16))(v9, v14, v3);
    v15 = sub_2CDFE0();
    v16 = sub_2CE690();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "ShazamKitRecognizer#deactivateAudioSession AVAudioSession logic change success", v17, 2u);
    }

    (*(v4 + 8))(v9, v3);
    v18 = sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v19 = qword_35F760;
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2D0090;
    *(v20 + 56) = &type metadata for Int;
    *(v20 + 64) = &protocol witness table for Int;
    *(v20 + 32) = 0;
    sub_2CDFC0();
    sub_2CDF90(v18, &dword_0, v19, "shazamKitAVAudioSessionDeactivate", 33, 2, v2, "status=%d enableTelemetry=YES", 29);
  }

  else
  {
    v57 = 0;
    v21 = v60[0];
    v22 = sub_2C8D30();

    swift_willThrow();
    v56 = v22;
    v23 = sub_2C8D20();
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v3, qword_35F6A8);
    (*(v4 + 16))(v7, v24, v3);
    v25 = v23;
    v26 = sub_2CDFE0();
    v27 = sub_2CE680();

    v28 = os_log_type_enabled(v26, v27);
    v58 = v0;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61 = v55;
      *v29 = 136315138;
      v30 = [v25 localizedDescription];
      v54 = v27;
      v31 = v30;
      v32 = v25;
      v33 = v2;
      v34 = sub_2CE270();
      v36 = v35;

      v60[0] = v34;
      v60[1] = v36;
      v2 = v33;
      v25 = v32;
      v37 = sub_2CE3C0();
      v39 = sub_3F08(v37, v38, &v61);

      *(v29 + 4) = v39;
      _os_log_impl(&dword_0, v26, v54, "ShazamKitRecognizer#deactivateAudioSession AVAudioSession logic change failed: %s", v29, 0xCu);
      sub_306C(v55);
    }

    (*(v4 + 8))(v7, v3);
    v60[0] = [v25 code];
    v40 = sub_2CEE70();
    v42 = v41;
    v43 = v25;
    v44 = [v25 localizedDescription];
    v45 = sub_2CE270();
    v47 = v46;

    v48 = sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v49 = qword_35F760;
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2D0E40;
    *(v50 + 56) = &type metadata for String;
    v51 = sub_1087C();
    *(v50 + 32) = v40;
    *(v50 + 40) = v42;
    *(v50 + 96) = &type metadata for String;
    *(v50 + 104) = v51;
    *(v50 + 64) = v51;
    *(v50 + 72) = v45;
    *(v50 + 80) = v47;
    sub_2CDFC0();
    sub_2CDF90(v48, &dword_0, v49, "shazamKitAVAudioSessionDeactivate", 33, 2, v2, "status=%@ localizedDescription=%@ enableTelemetry=YES", 53, 2, v50);

    v0 = v58;
    v11 = v57;
  }

  (*(v0 + 8))(v2, v59);
  return v11;
}

uint64_t sub_DB7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_DB814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_DB85C(void *a1)
{
  v2 = v1;
  v4 = sub_2CB6C0();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CB850();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v51 - v15;
  v56 = sub_20410(&qword_34FF10, qword_2D3620);
  __chkstk_darwin(v56);
  v17 = (&v51 - v16);
  v18 = [a1 mediaItems];
  sub_334A0(0, &unk_34FF50, SHMatchedMediaItem_ptr);
  v19 = sub_2CE410();

  if (v19 >> 62)
  {
    if (sub_2CEDA0())
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_2CECD0();
      goto LABEL_6;
    }

    if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
    {
      v20 = *(v19 + 32);
LABEL_6:
      v21 = v20;

      v22 = [objc_opt_self() defaultLibrary];
      sub_20410(&unk_351900, &unk_2D0960);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2D0770;
      *(v23 + 32) = v21;
      sub_334A0(0, &unk_34FF60, SHMediaItem_ptr);
      v24 = v21;
      isa = sub_2CE400().super.isa;

      aBlock[4] = sub_D9E10;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25FAD4;
      aBlock[3] = &unk_3346F8;
      v26 = _Block_copy(aBlock);
      [v22 addMediaItems:isa completionHandler:v26];
      _Block_release(v26);

      type metadata accessor for ShazamKitMatch(0);
      swift_allocObject();
      v27 = v24;
      v28 = ShazamKitMatch.init(matchedSong:)(v24);
      *v17 = v28;
      swift_storeEnumTagMultiPayload();
      v29 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
      swift_beginAccess();

      sub_DCCD8(v17, &v2[v29]);
      swift_endAccess();
      if (qword_34BF60 != -1)
      {
        swift_once();
      }

      v30 = sub_3ED0(v10, qword_35F6A8);
      v31 = v55;
      (*(v11 + 16))(v55, v30, v10);
      v32 = v27;
      v33 = sub_2CDFE0();
      v34 = sub_2CE690();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v56 = v28;
        aBlock[0] = v36;
        v37 = v11;
        v38 = v36;
        *v35 = 136315138;
        v39 = [v32 description];
        v40 = sub_2CE270();
        v54 = v10;
        v41 = v2;
        v43 = v42;

        v44 = sub_3F08(v40, v43, aBlock);
        v2 = v41;

        *(v35 + 4) = v44;
        _os_log_impl(&dword_0, v33, v34, "ShazamKitRecognizer#sessionDidFindMatch Got the following result: %s", v35, 0xCu);
        sub_306C(v38);

        (*(v37 + 8))(v55, v54);
      }

      else
      {

        (*(v11 + 8))(v31, v10);
      }

      [*&v2[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession] setDelegate:0];
      sub_DAB34();

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v55 = v2;

  if (qword_34BF60 != -1)
  {
LABEL_19:
    swift_once();
  }

  v45 = sub_3ED0(v10, qword_35F6A8);
  (*(v11 + 16))(v14, v45, v10);
  v46 = sub_2CDFE0();
  v47 = sub_2CE680();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "ShazamKitRecognizer#sessionDidFindMatch Invalid results from ShazamKit", v48, 2u);
  }

  (*(v11 + 8))(v14, v10);
  (*(v52 + 104))(v9, enum case for PlaybackCode.acousticIDGenericError(_:), v7);
  (*(v53 + 104))(v6, enum case for DomainCode.shazamKit(_:), v54);
  sub_2CC930();
  swift_storeEnumTagMultiPayload();
  v49 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
  v50 = v55;
  swift_beginAccess();
  sub_DCCD8(v17, &v50[v49]);
  swift_endAccess();
  [*&v50[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession] setDelegate:0];
  sub_DAB34();
}

void sub_DC078(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CB6C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2CB850();
  v8 = *(v105 - 8);
  __chkstk_darwin(v105);
  v106 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_20410(&qword_34FF10, qword_2D3620);
  __chkstk_darwin(v109);
  v110 = (&v89 - v10);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v21 = &v89 - v20;
  if (a1)
  {
    v98 = v19;
    v97 = v18;
    v107 = v8;
    v108 = v5;
    swift_errorRetain();
    if (qword_34BF60 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v11, qword_35F6A8);
    v23 = *(v12 + 16);
    v100 = v22;
    v101 = v12 + 16;
    v99 = v23;
    (v23)(v21);
    swift_errorRetain();
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();

    v26 = os_log_type_enabled(v24, v25);
    v103 = v12;
    v104 = v2;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v112[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = sub_2CEEF0();
      v31 = sub_3F08(v29, v30, v112);
      v96 = v7;
      v32 = v4;
      v33 = v11;
      v34 = v31;

      *(v27 + 4) = v34;
      _os_log_impl(&dword_0, v24, v25, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError Found no match for signature with error: %s", v27, 0xCu);
      sub_306C(v28);
      v2 = v104;

      v35 = *(v103 + 8);
      v36 = v21;
      v37 = v33;
      v38 = v33;
      v4 = v32;
      v7 = v96;
    }

    else
    {

      v35 = *(v12 + 8);
      v36 = v21;
      v37 = v11;
      v38 = v11;
    }

    v102 = v35;
    v35(v36, v38);
    v45 = *(v107 + 104);
    v107 += 104;
    v96 = v45;
    (v45)(v106, enum case for PlaybackCode.acousticIDGenericError(_:), v105);
    v46 = *(v108 + 104);
    v95 = enum case for DomainCode.shazamKit(_:);
    v108 += 104;
    v94 = v46;
    v46(v7);
    v47 = v110;
    sub_2CC930();
    swift_storeEnumTagMultiPayload();
    v48 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
    swift_beginAccess();
    sub_DCCD8(v47, v2 + v48);
    swift_endAccess();
    v49 = sub_2C8D20();
    v50 = [v49 userInfo];

    v51 = sub_2CE200();
    v52 = sub_2CE270();
    if (*(v51 + 16))
    {
      v54 = sub_4F538(v52, v53);
      v56 = v55;

      if (v56)
      {
        sub_E2FC(*(v51 + 56) + 32 * v54, v112);

        sub_334A0(0, &qword_34FF48, NSError_ptr);
        if (swift_dynamicCast())
        {
          v57 = v111;
          v58 = v98;
          v59 = v37;
          v99(v98, v100, v37);
          v60 = v57;
          v61 = sub_2CDFE0();
          v62 = sub_2CE670();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v90 = v63;
            v93 = swift_slowAlloc();
            v112[0] = v93;
            *v63 = 136315138;
            v64 = v60;
            v91 = v62;
            v65 = v64;
            v66 = [v64 description];
            v67 = sub_2CE270();
            v92 = v59;
            v68 = v67;
            v69 = v60;
            v71 = v70;

            v72 = sub_3F08(v68, v71, v112);
            v60 = v69;

            v73 = v90;
            *(v90 + 1) = v72;
            _os_log_impl(&dword_0, v61, v91, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError This is the underlying error: %s", v73, 0xCu);
            sub_306C(v93);

            v74 = v92;
            v102(v98, v92);
            v2 = v104;
          }

          else
          {

            v102(v58, v37);
            v2 = v104;
            v74 = v37;
          }

          v75 = [v60 code];
          if (qword_34BF50 != -1)
          {
            v87 = v74;
            v88 = v75;
            swift_once();
            v75 = v88;
            v74 = v87;
          }

          if (v75 == qword_34FE30)
          {
            v76 = v97;
            v99(v97, v100, v74);
            swift_errorRetain();
            v77 = sub_2CDFE0();
            v78 = sub_2CE670();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v100 = v60;
              v80 = v79;
              v99 = swift_slowAlloc();
              v112[0] = v99;
              *v80 = 136315138;
              swift_getErrorValue();
              LODWORD(v98) = v78;
              v81 = sub_2CEEF0();
              v101 = v4;
              v83 = sub_3F08(v81, v82, v112);

              *(v80 + 4) = v83;
              _os_log_impl(&dword_0, v77, v98, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError This is privacy acknowledgement error: %s", v80, 0xCu);
              sub_306C(v99);

              v60 = v100;

              v84 = v76;
              v85 = v74;
              v4 = v101;
            }

            else
            {

              v84 = v76;
              v85 = v74;
            }

            v102(v84, v85);
            (v96)(v106, enum case for PlaybackCode.acousticIDPrivDiscAckNeeded(_:), v105);
            v94(v7, v95, v4);
            v86 = v110;
            sub_2CC930();

            swift_storeEnumTagMultiPayload();
            v2 = v104;
            swift_beginAccess();
            sub_DCCD8(v86, v2 + v48);
            swift_endAccess();
          }

          else
          {
          }

          goto LABEL_20;
        }
      }

      else
      {
      }

      v2 = v104;
    }

    else
    {
    }

LABEL_20:
    [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
    sub_DAB34();

    return;
  }

  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v39 = sub_3ED0(v11, qword_35F6A8);
  (*(v12 + 16))(v15, v39, v11);
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "ShazamKitRecognizer#sessionDidNotFindMatchForSignatureError Found no match for signature", v42, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v43 = v110;
  *v110 = 0;
  swift_storeEnumTagMultiPayload();
  v44 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result;
  swift_beginAccess();
  sub_DCCD8(v43, v2 + v44);
  swift_endAccess();
  [*(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession) setDelegate:0];
  sub_DAB34();
}

uint64_t sub_DCCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34FF10, qword_2D3620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Logger.default.unsafeMutableAddressor()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v0 = sub_2CE000();

  return sub_3ED0(v0, static Logger.default);
}

uint64_t sub_DCDB4()
{
  v0 = sub_2CE000();
  sub_9A944(v0, static Logger.default);
  sub_3ED0(v0, static Logger.default);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v1 = qword_35F760;
  return sub_2CE010();
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = sub_2CE000();
  v3 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.default.setter(uint64_t a1)
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = sub_2CE000();
  v3 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = sub_2CE000();
  sub_3ED0(v1, static Logger.default);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_DD088()
{
  v0 = sub_2CE000();
  sub_9A944(v0, qword_35F6A8);
  sub_3ED0(v0, qword_35F6A8);
  return sub_2CDFF0();
}

uint64_t type metadata accessor for DetermineViewProvider(uint64_t a1)
{
  result = qword_34FFF8;
  if (!qword_34FFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DD150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v141 = a3;
  v139 = a1;
  v138 = sub_2C8E80();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v140 = v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v135 = v134 - v21;
  v22 = __chkstk_darwin(v20);
  v142 = v134 - v23;
  v24 = __chkstk_darwin(v22);
  v144 = v134 - v25;
  v26 = __chkstk_darwin(v24);
  v143 = v134 - v27;
  __chkstk_darwin(v26);
  v29 = v134 - v28;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v147 = a5;
  v148 = a4;
  v30[4] = a6;
  v30[5] = a7;
  v30[6] = a8;
  v30[7] = a9;
  v151 = v30;
  v31 = qword_34BF58;

  *&v149 = a6;

  v150 = a7;

  v145 = a8;
  v146 = a9;
  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v33 = *(v17 + 16);
  v153 = v17 + 16;
  v154 = v32;
  v152 = v33;
  (v33)(v29, v32, v16);
  v34 = a2;
  v35 = sub_2CDFE0();
  v36 = v16;
  v37 = v17;
  v38 = sub_2CE670();

  if (os_log_type_enabled(v35, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v155[0] = v40;
    *v39 = 136315138;
    v41 = v34;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3500C0, &qword_2D3668);
    v42 = sub_2CE2A0();
    v44 = sub_3F08(v42, v43, v155);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v35, v38, "DetermineViewProvider#makeViewsForHandleIntent called for Intent: %s", v39, 0xCu);
    sub_306C(v40);
  }

  else
  {
    v41 = v34;
  }

  v45 = *(v37 + 8);
  v45(v29, v36);
  v46 = v37;
  if (sub_2CB640())
  {
    v47 = v143;
    (v152)(v143, v154, v36);
    v48 = sub_2CDFE0();
    v49 = sub_2CE660();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "DetermineViewProvider#makeViewsForHandleIntent won't return an AceView for CarPlay", v50, 2u);
    }

    v45(v47, v36);
    v51 = v148;
    v52 = swift_allocObject();
    v54 = v146;
    v53 = v147;
    *(v52 + 16) = v51;
    *(v52 + 24) = v53;
    v55 = v145;
    *(v52 + 32) = v149;
    *(v52 + 40) = v55;
    *(v52 + 48) = v54;
    *(v52 + 56) = _swiftEmptyArrayStorage;

    v56 = v55;
    v57 = v54;
    v58 = [v56 targetDeviceIds];
    if (v58)
    {
      v59 = v58;
      v60 = sub_2CE410();

      v61 = *(v60 + 16);

      if (v61)
      {
        v62 = sub_DE0D8;
LABEL_47:
        sub_4843C(v150, v56, v62, v52);
LABEL_50:

        return;
      }
    }

    v83 = sub_DE0D8;
    goto LABEL_49;
  }

  v63 = v41;
  v64 = [v41 nowPlayingIntentInfo];
  v65 = v144;
  if (!v64)
  {
LABEL_42:
    (v152)(v65, v154, v36);
    v122 = sub_2CDFE0();
    v123 = sub_2CE670();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "DetermineViewProvider#makeViewsForHandleIntent no view as no nowPlayingIntentInfo could be found", v124, 2u);
    }

    v45(v65, v36);
    v125 = v148;
    v52 = swift_allocObject();
    v127 = v146;
    v126 = v147;
    *(v52 + 16) = v125;
    *(v52 + 24) = v126;
    v128 = v145;
    *(v52 + 32) = v149;
    *(v52 + 40) = v128;
    *(v52 + 48) = v127;
    *(v52 + 56) = _swiftEmptyArrayStorage;

    v56 = v128;
    v129 = v127;
    v130 = [v56 targetDeviceIds];
    if (v130)
    {
      v131 = v130;
      v132 = sub_2CE410();

      v133 = *(v132 + 16);

      if (v133)
      {
        v62 = sub_DDFF4;
        goto LABEL_47;
      }
    }

    v83 = sub_DDFF4;
LABEL_49:
    sub_45370(v150, v56, v83, v52);
    goto LABEL_50;
  }

  v66 = v64;
  type metadata accessor for NowPlayingIntentInfo();
  v67 = sub_2CE410();

  if (!(v67 >> 62))
  {
    v68 = v142;
    if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  v121 = sub_2CEDA0();
  v68 = v142;
  if (!v121)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_15:
  if ((v67 & 0xC000000000000001) != 0)
  {
    v69 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v69 = *(v67 + 32);
  }

  v70 = v69;

  (v152)(v68, v154, v36);
  v71 = v70;
  v72 = sub_2CDFE0();
  v73 = sub_2CE670();

  v74 = os_log_type_enabled(v72, v73);
  v150 = v71;
  v134[1] = v46;
  if (v74)
  {
    *&v149 = v63;
    v75 = v36;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    ObjectType = v77;
    *v76 = 136315138;
    v78 = [v71 appBundleId];
    if (v78)
    {
      v79 = v78;
      v80 = sub_2CE270();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    v155[0] = v80;
    v155[1] = v82;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v84 = sub_2CE2A0();
    v86 = sub_3F08(v84, v85, &ObjectType);

    *(v76 + 4) = v86;
    _os_log_impl(&dword_0, v72, v73, "DetermineViewProvider#makeViewsForHandleIntent bundleId: %s", v76, 0xCu);
    sub_306C(v77);

    v45(v142, v36);
    v63 = v149;
  }

  else
  {

    v75 = v36;
    v45(v68, v36);
  }

  v87 = &off_349000;
  v88 = [objc_allocWithZone(SFMediaRemoteControlCardSection) init];
  v89 = v136;
  sub_2C8E70();
  sub_2C8E50();
  (*(v137 + 8))(v89, v138);
  v90 = sub_2CE260();

  [v88 setCardSectionId:v90];

  sub_2CCF90();
  if (v91)
  {
    v92 = sub_2CE260();
  }

  else
  {
    v92 = 0;
  }

  [v88 setPlaybackBundleIdentifier:v92];

  v93 = [v63 targetDeviceIds];
  if (v93)
  {
    v94 = v93;
    v95 = sub_2CE410();

    if (v95[2])
    {
      v97 = v95[4];
      v96 = v95[5];

      v98 = v75;
      v99 = v135;
      v152();

      v100 = sub_2CDFE0();
      v101 = sub_2CE660();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = v63;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v155[0] = v104;
        *v103 = 136315138;
        *(v103 + 4) = sub_3F08(v97, v96, v155);
        _os_log_impl(&dword_0, v100, v101, "PlayMediaViewProvider#makeViews rendering snippet with route: %s", v103, 0xCu);
        sub_306C(v104);
        v87 = &off_349000;

        v63 = v102;

        v105 = v135;
      }

      else
      {

        v105 = v99;
      }

      v75 = v98;
      v45(v105, v98);
      v106 = sub_2CE260();

      [v88 setPlaybackRouteUniqueIdentifier:v106];
    }

    else
    {
    }
  }

  v107 = v63;
  v108 = [objc_allocWithZone(SACardSnippet) v87[477]];
  sub_20410(&unk_351900, &unk_2D0960);
  v109 = swift_allocObject();
  v149 = xmmword_2D0770;
  *(v109 + 16) = xmmword_2D0770;
  *(v109 + 32) = v88;
  v110 = [v150 appBundleId];
  if (v110)
  {
    v111 = v110;
    sub_2CE270();
  }

  sub_DDFF8();
  v112 = sub_2CE640();

  v113 = v140;
  (v152)(v140, v154, v75);
  v114 = v112;
  v115 = sub_2CDFE0();
  v116 = sub_2CE660();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&dword_0, v115, v116, "DetermineViewProvider#makeViewsForHandleIntent Returning snippet for iOS", v117, 2u);
  }

  v45(v113, v75);
  sub_35E0((v141 + 24), *(v141 + 48));
  v118 = swift_allocObject();
  *(v118 + 16) = v149;
  *(v118 + 32) = v114;
  v119 = swift_allocObject();
  v120 = v151;
  *(v119 + 16) = sub_DDFE0;
  *(v119 + 24) = v120;

  sub_203A68(v118, v107, sub_DE044, v119);
}

unint64_t sub_DDFF8()
{
  result = qword_3500B8;
  if (!qword_3500B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3500B8);
  }

  return result;
}

uint64_t sub_DE070()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_DE0DC()
{
  sub_187E40();

  return swift_deallocClassInstance();
}

uint64_t _s25NeedsConfirmationStrategyCMa(uint64_t a1)
{
  result = qword_3500F0;
  if (!qword_3500F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_DE190(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  v30 = sub_2CE990();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE180();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000011;
  v7[3] = 0x80000000002DA8D0;
  v7[5] = 0xD000000000000019;
  v7[6] = 0x80000000002DB1F0;
  v7[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v8 = sub_2CC2B0();
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v9 = sub_2CC360();
  v38 = v9;
  v39 = &protocol witness table for StringsFileResolver;
  sub_F390(&v37);
  sub_2CC350();
  v10 = sub_2CB4A0();
  v11 = sub_2CB490();
  v35 = v10;
  v36 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v34 = v11;
  type metadata accessor for UpdateMediaAffinityDialogProvider(0);
  v12 = swift_allocObject();
  v12[15] = v7;
  sub_EEAC(&v40, (v12 + 16));
  sub_EEAC(&v34, (v12 + 21));
  sub_EEAC(&v37, v33);
  sub_F338(&v34, v32);
  sub_306C(&v37);
  sub_306C(&v40);
  v12[13] = 0xD000000000000011;
  v12[14] = 0x80000000002DA8D0;
  v12[2] = a1;
  sub_F338(v33, (v12 + 3));
  sub_F338(v32, (v12 + 8));
  v41 = v9;
  v42 = &protocol witness table for StringsFileResolver;
  sub_F390(&v40);
  sub_2CC350();
  sub_20410(&qword_350218, qword_2D3690);
  v13 = swift_allocObject();
  sub_F338(&v40, v13 + 16);
  *(v13 + 56) = v12;
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v14 = swift_allocObject();
  sub_F338(&v40, v14 + 16);
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v15 = sub_2CB490();
  v38 = v10;
  v39 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v37 = v15;
  v16 = sub_2CC900();
  swift_allocObject();
  v17 = sub_2CC8F0();
  v41 = v16;
  v42 = &protocol witness table for AppleMediaServicesProvider;
  *&v40 = v17;
  v38 = v8;
  v39 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v37);
  sub_2CC2A0();
  v18 = sub_2CB490();
  v35 = v10;
  v36 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v34 = v18;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v19 = qword_35F740;

  sub_2C9A00();
  v20 = v25;
  sub_2CE170();
  v21 = v28;
  sub_2CE980();
  v22 = sub_2CBA00();

  sub_306C(v31);
  (*(v29 + 8))(v21, v30);
  (*(v26 + 8))(v20, v27);
  v3[26] = v22;
  v3[2] = v12;
  sub_F338(&v40, (v3 + 3));
  sub_F338(&v37, (v3 + 8));
  sub_F338(&v34, (v3 + 13));
  v3[18] = v19;
  sub_F338(v33, (v3 + 20));
  v3[25] = v14;
  v3[19] = v13;
  return v3;
}

uint64_t sub_DE6CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CBD60();
  v12 = v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v13, v6);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v7;
    v17 = v16;
    v26 = swift_slowAlloc();
    v29 = v12;
    v30 = v26;
    *v17 = 136315394;
    v28 = v10;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v18 = sub_2CE2A0();
    v20 = sub_3F08(v18, v19, &v30);
    v25 = v6;
    v21 = a1;
    v22 = v20;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_3F08(v21, a2, &v30);
    _os_log_impl(&dword_0, v14, v15, "App#resolveWithSystemExtension resolved system extension: %s for bundle: %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v9, v25);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_2CCFB0();
  swift_allocObject();

  return sub_2CCF70();
}

unint64_t sub_DE9F8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E696D7265746564;
    v7 = 2036427888;
    v8 = 6579297;
    if (a1 != 3)
    {
      v8 = 0x656C62616E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656B696C736964;
    v2 = 0x656C6666756873;
    if (a1 != 9)
    {
      v2 = 0x796669646F6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C6261736964;
    v4 = 0x6269726373627573;
    if (a1 != 6)
    {
      v4 = 1701538156;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_DEB38@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2CD4C0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_334860 + a1);

  return v5(a2, v6, v4);
}

uint64_t getEnumTagSinglePayload for MediaPlayerVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlayerVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_DED08()
{
  result = qword_350220;
  if (!qword_350220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350220);
  }

  return result;
}

uint64_t sub_DED5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_DE9F8(*a1);
  v5 = v4;
  if (v3 == sub_DE9F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_DEDE4()
{
  v1 = *v0;
  sub_2CEF50();
  sub_DE9F8(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_DEE48(uint64_t a1)
{
  sub_DE9F8(*v1);
  sub_2CE310();
}

Swift::Int sub_DEE9C(uint64_t a1)
{
  v2 = *v1;
  sub_2CEF50();
  sub_DE9F8(v2);
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_DEEFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_DF0F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_DEF2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_DE9F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_DEF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_DF140();
  v5 = sub_DF194();
  v6 = sub_DF1E8();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_DEFE0()
{
  result = qword_350228;
  if (!qword_350228)
  {
    sub_2DB30(&qword_350230, &qword_2D36F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350228);
  }

  return result;
}

unint64_t sub_DF048()
{
  result = qword_350238;
  if (!qword_350238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350238);
  }

  return result;
}

unint64_t sub_DF0A0()
{
  result = qword_350240;
  if (!qword_350240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350240);
  }

  return result;
}

unint64_t sub_DF0F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32FD78;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_DF140()
{
  result = qword_350248;
  if (!qword_350248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350248);
  }

  return result;
}

unint64_t sub_DF194()
{
  result = qword_350250;
  if (!qword_350250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350250);
  }

  return result;
}

unint64_t sub_DF1E8()
{
  result = qword_350258;
  if (!qword_350258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350258);
  }

  return result;
}

uint64_t sub_DF23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v49 = a2;
  v2 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v2 - 8);
  v45 = &v39 - v3;
  v4 = sub_2C8E80();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_350260, qword_2D3810);
  __chkstk_darwin(v8 - 8);
  v39 = &v39 - v9;
  v10 = sub_2CD5D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2CAB40();
  v14 = *(v48 - 8);
  __chkstk_darwin(v48);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CADF0();
  swift_allocObject();
  v17 = sub_2CADE0();
  sub_2CADD0();
  (*(v11 + 104))(v13, enum case for AudioUsoIntent.UsoNamespace.appBundleId(_:), v10);
  swift_bridgeObjectRetain_n();
  sub_2CD5C0();
  (*(v11 + 8))(v13, v10);
  sub_2CAB10();

  sub_2CAAD0();

  (*(v14 + 8))(v16, v48);
  if (sub_2CAD20())
  {
    v18 = sub_2CAC40();
    v19 = v39;
    (*(*(v18 - 8) + 56))(v39, 1, 1, v18);
    v20 = sub_2CAC00();
    sub_DF928(v19);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v41;
    v22 = sub_3ED0(v41, static Logger.default);
    swift_beginAccess();
    v23 = v40;
    v24 = v47;
    (*(v40 + 16))(v47, v22, v21);

    v25 = sub_2CDFE0();
    v26 = sub_2CE670();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v48 = v17;
      v28 = v23;
      v29 = v27;
      v30 = swift_slowAlloc();
      v50 = v20;
      v51 = v30;
      *v29 = 136315138;
      sub_2CAFA0();
      sub_DFA00();
      v31 = sub_2CEE70();
      v33 = sub_3F08(v31, v32, &v51);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_0, v25, v26, "DisplayApp#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v29, 0xCu);
      sub_306C(v30);

      (*(v28 + 8))(v47, v21);
    }

    else
    {

      (*(v23 + 8))(v24, v21);
    }

    v36 = v49;
    v37 = v42;
    sub_2C8E70();
    sub_2C8E50();
    (*(v43 + 8))(v37, v44);
    sub_2CBD50();
    sub_DF990(v46, v45);
    sub_2CE040();

    v38 = sub_2CE050();
    return (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
  }

  else
  {
    v34 = sub_2CE050();
    (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  }
}

uint64_t sub_DF928(uint64_t a1)
{
  v2 = sub_20410(&qword_350260, qword_2D3810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DF990(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E938, &qword_2D28E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DFA00()
{
  result = qword_350268;
  if (!qword_350268)
  {
    sub_2CAFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350268);
  }

  return result;
}

uint64_t ConvertibleToServerConversionParse.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v71 = sub_2CA870();
  v69 = *(v71 - 8);
  v2 = __chkstk_darwin(v71);
  v68 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v67 = &v61 - v4;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  v7 = __chkstk_darwin(v5);
  v77 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v61 - v9;
  v10 = sub_2C9900();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34D658, &qword_2D1530);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v17 = sub_20410(&qword_34D660, &qword_2D1538);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = sub_2CAFE0();
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v80 = sub_2CACD0();
  v81 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v79);
  sub_2CACC0();
  v26 = sub_2CAFB0();
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  v27 = sub_2CACE0();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = v25;
  sub_2CAFD0();
  (*(v11 + 104))(v13, enum case for SiriKitConfirmationState.unset(_:), v10);
  v80 = sub_2CCFE0();
  v81 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v79);
  sub_2CCFD0();
  sub_2CA860();
  swift_allocObject();
  v62 = v1;
  v65 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = v73;
  v30 = sub_3ED0(v73, static Logger.default);
  swift_beginAccess();
  v31 = v72;
  v61 = *(v74 + 16);
  v61(v72, v30, v29);
  v33 = v75;
  v32 = v76;
  v34 = *(v75 + 16);
  v66 = v28;
  v63 = v34;
  v64 = v75 + 16;
  v34(v23, v28, v76);
  v35 = sub_2CDFE0();
  v36 = sub_2CE670();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v23;
    v39 = swift_slowAlloc();
    v78 = v39;
    *v37 = 136315138;
    sub_E0318();
    v40 = sub_2CEE70();
    v41 = v32;
    v43 = v42;
    v44 = *(v33 + 8);
    v44(v38, v41);
    v45 = sub_3F08(v40, v43, &v78);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_0, v35, v36, "ConvertibleToServerConversionParse#toServerConversionParse nlIntent:%s", v37, 0xCu);
    sub_306C(v39);

    v29 = v73;

    v46 = *(v74 + 8);
    v46(v72, v29);
  }

  else
  {

    v44 = *(v33 + 8);
    v44(v23, v32);
    v46 = *(v74 + 8);
    v46(v31, v29);
  }

  v61(v77, v30, v29);
  v47 = v62;
  v48 = sub_2CDFE0();
  v49 = sub_2CE670();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v29;
    v52 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v52 = v47;
    v53 = v47;
    _os_log_impl(&dword_0, v48, v49, "ConvertibleToServerConversionParse#toServerConversionParse sirikitIntent:%@", v50, 0xCu);
    sub_212CC(v52);
    v29 = v51;
  }

  v46(v77, v29);
  v54 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v56 = v66;
  v55 = v67;
  v57 = v76;
  v63(v67, v66, v76);
  *&v55[v54] = v65;
  v58 = v69;
  v59 = v71;
  (*(v69 + 104))(v55, enum case for Parse.NLv3IntentPlusServerConversion(_:), v71);
  (*(v58 + 16))(v68, v55, v59);
  sub_2CA7A0();
  (*(v58 + 8))(v55, v59);
  return (v44)(v56, v57);
}

unint64_t sub_E0318()
{
  result = qword_34D678;
  if (!qword_34D678)
  {
    sub_2CAFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D678);
  }

  return result;
}

void *sub_E0370(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);

  v40 = v4;
  if (!v4)
  {
    return a2;
  }

  v5 = 0;
LABEL_5:
  v6 = *(a1 + 32 + 8 * v5);
  v41 = v5 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = a2;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v15 = v12;
LABEL_21:
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v6 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_E2FC(*(v6 + 56) + 32 * v19, &v42);
    *&v44 = v22;
    *(&v44 + 1) = v21;
    sub_E2DC(&v42, &v45);

LABEL_22:
    v42 = v44;
    v43[0] = v45;
    v43[1] = v46;
    v23 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {
      memset(v48, 0, sizeof(v48));
      v47 = 0u;
LABEL_4:

      v5 = v41;
      if (v41 == v40)
      {
        return a2;
      }

      goto LABEL_5;
    }

    v24 = v42;
    sub_E2FC(v43, v48);
    *&v47 = v24;
    *(&v47 + 1) = v23;

    sub_E06AC(&v42);
    v25 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {
      goto LABEL_4;
    }

    v26 = v47;
    sub_E2DC(v48, &v44);
    v27 = sub_4F538(v26, v25);
    v29 = a2[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_37;
    }

    v33 = v28;
    if (a2[3] < v32)
    {
      sub_236A58(v32, isUniquelyReferenced_nonNull_native & 1);
      v27 = sub_4F538(v26, v25);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if (v33)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v38 = v27;
    sub_23632C();
    v27 = v38;
    if (v33)
    {
LABEL_9:
      a2 = v49;
      v13 = 32 * v27;
      sub_E2FC(v49[7] + 32 * v27, &v42);
      sub_306C(&v44);

      v14 = a2[7];
      sub_306C((v14 + v13));
      sub_E2DC(&v42, (v14 + v13));
      goto LABEL_10;
    }

LABEL_30:
    a2 = v49;
    v49[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (a2[6] + 16 * v27);
    *v35 = v26;
    v35[1] = v25;
    sub_E2DC(&v44, (a2[7] + 32 * v27));
    v36 = a2[2];
    v31 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v31)
    {
      goto LABEL_38;
    }

    a2[2] = v37;
LABEL_10:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v11 <= v12 + 1)
  {
    v16 = v12 + 1;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v10 = 0;
      v45 = 0u;
      v46 = 0u;
      v12 = v17;
      v44 = 0u;
      goto LABEL_22;
    }

    v10 = *(v6 + 64 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_2CEEE0();
  __break(1u);
  return result;
}

uint64_t sub_E06AC(uint64_t a1)
{
  v2 = sub_20410(&qword_350270, &qword_2D38A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SearchForMedia.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(void *a1, void (*a2)(char *, uint64_t), void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v6 = v5;
  v43 = a5;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v38 = v9[2];
  v38(v13, v14, v8);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  v17 = os_log_type_enabled(v15, v16);
  v42 = v5;
  v45 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    ObjectType = a1;
    v47 = v19;
    *v18 = 136315138;
    sub_2CCFB0();
    v37 = a1;
    sub_E5FE0(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v20 = sub_2CEE70();
    v22 = sub_3F08(v20, v21, &v47);

    *(v18 + 4) = v22;
    a1 = v37;
    _os_log_impl(&dword_0, v15, v16, "HandleIntentStrategy#makeIntentHandledResponse for app: %s", v18, 0xCu);
    sub_306C(v19);
    v6 = v42;

    v8 = v45;
  }

  v23 = v9[1];
  v23(v13, v8);
  v24 = v44;
  v38(v44, v14, v8);

  v25 = v39;
  v26 = v43;

  v27 = v40;
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v40 = v9;
    v31 = v30;
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136315138;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_350278, &qword_2D38B0);
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v47);
    v39 = v23;
    v36 = v35;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v28, v29, "CommonViewProvider called for Intent: %s", v31, 0xCu);
    sub_306C(v32);
    v6 = v42;

    v39(v44, v45);
  }

  else
  {

    v23(v24, v45);
  }

  sub_E0BB8(_swiftEmptyArrayStorage, 0, v6, a1, v25, v41, v26, v27);
}

uint64_t sub_E0BB8(uint64_t a1, char a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t *), uint64_t a7, void *a8)
{
  v68 = a8;
  v75 = a7;
  v76 = a6;
  v73 = a5;
  v74 = a4;
  v71 = a3;
  v72 = a1;
  v66 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v66);
  v67 = &v64 - v9;
  v65 = sub_2CE000();
  v70 = *(v65 - 8);
  __chkstk_darwin(v65);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - v12;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v16 = &v64 - v15;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_2CCB30();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v20);
    swift_getErrorValue();
    sub_2CEEF0();
    v70 = sub_2CCAE0();
    v69 = v28;

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    sub_35E0(v71 + 8, v71[11]);
    v29 = enum case for ActivityType.failed(_:);
    v30 = sub_2C9C20();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v19, v29, v30);
    (*(v31 + 56))(v19, 0, 1, v30);
    v32 = sub_2CA130();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    v33 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v34 = sub_2C98F0();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v13, v33, v34);
    (*(v35 + 56))(v13, 0, 1, v34);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v13, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v16, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v19, &qword_34CB88, &unk_2D0D90);
    v77[0] = v72;
    v78 = 1;
    swift_errorRetain();
    v76(v77);
    return sub_30B8(v77, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v37 = v71;
    v38 = v71[24];
    v39 = swift_allocObject();
    v40 = v74;
    v39[2] = v37;
    v39[3] = v40;
    v41 = v73;
    v42 = v76;
    v39[4] = v73;
    v39[5] = v42;
    v43 = v75;
    v44 = v68;
    v39[6] = v75;
    v39[7] = v44;
    sub_35E0((v38 + 128), *(v38 + 152));
    swift_retain_n();
    swift_retain_n();
    v45 = v41;
    swift_retain_n();
    v46 = v44;
    v47 = v45;
    v73 = v46;
    v48 = v43;
    if (sub_2CC440())
    {
      v49 = v73;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v50 = v37;
      v51 = v65;
      v52 = sub_3ED0(v65, static Logger.default);
      swift_beginAccess();
      (*(v70 + 16))(v69, v52, v51);
      v53 = sub_2CDFE0();
      v54 = sub_2CE670();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_0, v53, v54, "SearchForMediaDialogProvider#makeIntentHandledDialog AppIntents enabled, returning suppressed CAT", v55, 2u);
      }

      (*(v70 + 8))(v69, v51);
      v56 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
      v57 = v67;
      sub_2CA0C0();
      v58 = [objc_allocWithZone(DialogExecutionResult) init];
      v59 = sub_2CE260();
      [v58 setCatId:v59];

      *(v57 + v56) = v58;
      swift_storeEnumTagMultiPayload();
      sub_E1654(v57, v50, v40, v47, v76, v48, v49);
      sub_30B8(v57, &unk_3519A0, &qword_2D0980);
    }

    else
    {
      sub_20410(&unk_353120, &unk_2D0B50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0090;
      *(inited + 32) = 0x68637461577369;
      *(inited + 40) = 0xE700000000000000;
      v61 = sub_2CB620();
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = v61 & 1;
      v62 = sub_112C0(inited);
      swift_setDeallocating();
      sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
      v77[3] = sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
      v77[4] = &off_3344D0;
      v77[0] = v47;
      v63 = v47;
      sub_1E79A0(v62, v40, v77, sub_E5FB0, v39);

      sub_30B8(v77, &qword_34C6C0, &qword_2D0710);
    }
  }
}

uint64_t sub_E1654(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v201 = a7;
  v207 = a5;
  v208 = a6;
  v212 = a4;
  v213 = a2;
  v209 = a1;
  v210 = a3;
  v7 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v7 - 8);
  v189 = &v185 - v8;
  v200 = sub_2CCB20();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_2CE000();
  v195 = *(v196 - 8);
  v10 = __chkstk_darwin(v196);
  v188 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v192 = &v185 - v13;
  __chkstk_darwin(v12);
  v194 = &v185 - v14;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v15 - 8);
  v206 = &v185 - v16;
  v202 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v17 = __chkstk_darwin(v202);
  v193 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v197 = &v185 - v20;
  __chkstk_darwin(v19);
  v211 = (&v185 - v21);
  v22 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v22 - 8);
  v203 = &v185 - v23;
  v24 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v24 - 8);
  v204 = &v185 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v26 - 8);
  v205 = &v185 - v27;
  v28 = sub_2CCB30();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v185 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CCAC0();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v185 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v36);
  v38 = (&v185 - v37);
  sub_F3F4(v209, &v185 - v37, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v38;
    (*(v33 + 104))(v35, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v32);
    (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v28);
    swift_getErrorValue();
    sub_2CEEF0();
    v211 = sub_2CCAE0();

    (*(v29 + 8))(v31, v28);
    (*(v33 + 8))(v35, v32);
    v213 = sub_35E0(v213 + 8, v213[11]);
    v40 = enum case for ActivityType.failed(_:);
    v41 = sub_2C9C20();
    v42 = *(v41 - 8);
    v43 = v205;
    (*(v42 + 104))(v205, v40, v41);
    (*(v42 + 56))(v43, 0, 1, v41);
    v44 = sub_2CA130();
    v45 = v204;
    (*(*(v44 - 8) + 56))(v204, 1, 1, v44);
    v46 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v47 = sub_2C98F0();
    v48 = *(v47 - 8);
    v49 = v203;
    (*(v48 + 104))(v203, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v49, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v45, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v43, &qword_34CB88, &unk_2D0D90);
    v214 = v39;
    LOBYTE(v215.super.isa) = 1;
    swift_errorRetain();
    v207(&v214);

    v50 = qword_34C798;
    v51 = &qword_2D0DA0;
    v52 = &v214;
    return sub_30B8(v52, v50, v51);
  }

  v191 = v31;
  v209 = v35;
  v185 = v29;
  v190 = v33;
  v186 = v28;
  v187 = v32;
  sub_24BE0(v38, v211);
  v54 = v212;
  sub_28CBC0(v212, v206);
  sub_35E0(v213 + 13, v213[16]);
  if ((sub_2CC440() & 1) == 0)
  {
    sub_2CCF90();
    reserved = _swiftEmptyArrayStorage;
    v215._reserved = _swiftEmptyArrayStorage;
    v91 = sub_2CBDB0();

    v92 = v209;
    v93 = v191;
    if ((v91 & 1) == 0)
    {
LABEL_30:
      v123 = v190;
      v124 = v92;
      v125 = v187;
      (*(v190 + 104))(v92, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v187);
      v126 = v185;
      v127 = v186;
      (*(v185 + 104))(v93, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v186);
      v128 = v199;
      v129 = v198;
      v130 = v200;
      (*(v199 + 104))(v198, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v200);
      v201 = sub_2CCAD0();
      v196 = v131;
      (*(v128 + 8))(v129, v130);
      v132 = v127;
      v133 = reserved;
      (*(v126 + 8))(v93, v132);
      (*(v123 + 8))(v124, v125);
      v134 = v213;
      v198 = v213[11];
      v199 = v213[12];
      v200 = sub_35E0(v213 + 8, v198);
      v135 = enum case for ActivityType.completed(_:);
      v136 = sub_2C9C20();
      v137 = *(v136 - 8);
      v138 = v205;
      (*(v137 + 104))(v205, v135, v136);
      (*(v137 + 56))(v138, 0, 1, v136);
      v139 = v197;
      sub_F3F4(v211, v197, &qword_34C6E8, &unk_2D0FF0);

      v140 = sub_2CA130();
      v141 = *(v140 - 1);
      v142 = v204;
      (*(v141 + 32))(v204, v139, v140);
      v143 = *(v141 + 56);
      v209 = v140;
      v143(v142, 0, 1, v140);
      v144 = enum case for SiriKitReliabilityCodes.success(_:);
      v145 = sub_2C98F0();
      v146 = *(v145 - 8);
      v147 = v203;
      (*(v146 + 104))(v203, v144, v145);
      (*(v146 + 56))(v147, 0, 1, v145);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      v148 = v211;
      sub_2CB4E0();

      v149 = v147;
      v150 = v148;
      sub_30B8(v149, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v142, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v138, &qword_34CB88, &unk_2D0D90);
      sub_35E0(v134 + 18, v134[21]);
      v151 = v193;
      sub_F3F4(v148, v193, &qword_34C6E8, &unk_2D0FF0);
      v152 = *(v151 + *(v202 + 48));
      if (v133 >> 62)
      {
        sub_334A0(0, &qword_350370, SABaseCommand_ptr);

        v153 = sub_2CED90();
      }

      else
      {

        sub_2CEEB0();
        sub_334A0(0, &qword_350370, SABaseCommand_ptr);
        v153 = v133;
      }

      v155 = v207;
      v154 = v208;

      v156 = v206;
      sub_1C077C(v151, v152, v206, v153, v155, v154);

      sub_30B8(v156, &unk_353020, &unk_2D0970);
      sub_30B8(v150, &qword_34C6E8, &unk_2D0FF0);
      return (*(v141 + 8))(v151, v209);
    }

    v94 = [v54 mediaItems];
    v95 = v190;
    v96 = v196;
    v97 = v195;
    v98 = v192;
    if (!v94)
    {
      goto LABEL_36;
    }

    v99 = v94;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v100 = sub_2CE410();

    if (v100 >> 62)
    {
      if (sub_2CEDA0())
      {
        goto LABEL_14;
      }
    }

    else if (*(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_14:
      if ((v100 & 0xC000000000000001) != 0)
      {
        v101 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_45;
        }

        v101 = *(v100 + 32);
      }

      v102 = v101;

      v103 = [v102 privateMediaItemValueData];

      if (v103)
      {
        v104 = [v103 punchoutURI];

        if (v104)
        {
          v201 = sub_2CE270();
          v98 = v105;

          if (qword_34BF58 == -1)
          {
LABEL_20:
            v106 = sub_3ED0(v96, static Logger.default);
            swift_beginAccess();
            v107 = v188;
            (*(v97 + 16))(v188, v106, v96);

            v108 = sub_2CDFE0();
            v109 = sub_2CE670();

            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v215._urlString = v111;
              *v110 = 136315138;
              *(v110 + 4) = sub_3F08(v201, v98, &v215._urlString);
              _os_log_impl(&dword_0, v108, v109, "Creating app punchout command with punchoutURI: %s", v110, 0xCu);
              sub_306C(v111);
            }

            (*(v97 + 8))(v107, v96);
            v112 = v189;
            v113 = [objc_allocWithZone(SAUIAppPunchOut) init];
            sub_2C8D80();

            v114 = sub_2C8D90();
            v115 = *(v114 - 8);
            v116 = (*(v115 + 48))(v112, 1, v114);
            v117 = 0;
            v93 = v191;
            if (v116 != 1)
            {
              sub_2C8D50(&v215);
              v117 = v118;
              (*(v115 + 8))(v112, v114);
            }

            [v113 setPunchOutUri:v117];

            sub_35E0(v213 + 2, v213[5]);
            v119 = v113;
            sub_2CA160();
            v92 = v209;
            if (v120)
            {
              v121 = sub_2CE260();
            }

            else
            {
              v121 = 0;
            }

            [v119 setRefId:v121];

            v122 = v119;
            sub_2CE3F0();
            if (*(&dword_10 + (v215._reserved & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v215._reserved & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_2CE430();
            }

            sub_2CE460();

            reserved = v215._reserved;
            goto LABEL_30;
          }

LABEL_45:
          swift_once();
          goto LABEL_20;
        }
      }

LABEL_36:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v157 = sub_3ED0(v96, static Logger.default);
      swift_beginAccess();
      (*(v97 + 16))(v98, v157, v96);
      v158 = sub_2CDFE0();
      v159 = sub_2CE680();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_0, v158, v159, "HandleIntentStrategy#makeIntentHandledResponse missing 1P punchoutURI in resolved mediaItem", v160, 2u);
      }

      (*(v97 + 8))(v98, v96);
      sub_2C9D40();
      swift_allocObject();
      v161 = sub_2C9D20();
      sub_2C9D10();
      if (!v162)
      {
        v163 = v199;
        v164 = v198;
        v165 = v200;
        (*(v199 + 104))(v198, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v200);
        sub_2CCB10();
        v166 = v164;
        v95 = v190;
        (*(v163 + 8))(v166, v165);
      }

      v167 = v209;
      v168 = v187;
      (*(v95 + 104))(v209, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v187);
      v169 = v185;
      v170 = v191;
      v171 = v186;
      (*(v185 + 104))(v191, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v186);
      v202 = sub_2CCAE0();

      (*(v169 + 8))(v170, v171);
      (*(v95 + 8))(v167, v168);
      v172 = v213[11];
      v209 = v213[12];
      v213 = sub_35E0(v213 + 8, v172);
      v173 = enum case for ActivityType.failed(_:);
      v174 = sub_2C9C20();
      v175 = *(v174 - 8);
      v176 = v205;
      (*(v175 + 104))(v205, v173, v174);
      (*(v175 + 56))(v176, 0, 1, v174);
      v177 = sub_2CA130();
      v178 = v204;
      (*(*(v177 - 8) + 56))(v204, 1, 1, v177);
      v179 = enum case for SiriKitReliabilityCodes.unsupportedParameterPunchout(_:);
      v180 = sub_2C98F0();
      v181 = *(v180 - 8);
      v182 = v203;
      (*(v181 + 104))(v203, v179, v180);
      (*(v181 + 56))(v182, 0, 1, v180);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      sub_2CB4E0();

      sub_30B8(v182, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v178, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v176, &qword_34CB88, &unk_2D0D90);
      sub_E5FE0(&unk_353010, 255, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
      v183 = swift_allocError();
      *v184 = v161;
      v214 = v183;
      LOBYTE(v215.super.isa) = 1;

      v207(&v214);

      sub_30B8(&v214, qword_34C798, &qword_2D0DA0);
      sub_30B8(v206, &unk_353020, &unk_2D0970);
      v50 = &qword_34C6E8;
      v51 = &unk_2D0FF0;
      v52 = v211;
      return sub_30B8(v52, v50, v51);
    }

    goto LABEL_36;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v55 = v196;
  v56 = sub_3ED0(v196, static Logger.default);
  swift_beginAccess();
  v57 = v195;
  v58 = v194;
  (*(v195 + 16))(v194, v56, v55);
  v59 = sub_2CDFE0();
  v60 = sub_2CE670();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v205;
  v63 = v187;
  v64 = v186;
  v65 = v185;
  if (v61)
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_0, v59, v60, "HandleIntentStrategy#makeIntentHandledResponse AppIntents enabled, skipping punchout response", v66, 2u);
  }

  (*(v57 + 8))(v58, v55);
  v67 = v190;
  v68 = v209;
  (*(v190 + 104))(v209, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v63);
  v69 = v191;
  (*(v65 + 104))(v191, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v64);
  v70 = v199;
  v71 = v198;
  v72 = v200;
  (*(v199 + 104))(v198, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v200);
  v201 = sub_2CCAD0();
  v196 = v73;
  (*(v70 + 8))(v71, v72);
  (*(v65 + 8))(v69, v64);
  (*(v67 + 8))(v68, v63);
  v74 = v213;
  v199 = v213[11];
  v200 = v213[12];
  v209 = sub_35E0(v213 + 8, v199);
  v75 = enum case for ActivityType.completed(_:);
  v76 = sub_2C9C20();
  v77 = *(v76 - 8);
  (*(v77 + 104))(v62, v75, v76);
  (*(v77 + 56))(v62, 0, 1, v76);
  v78 = v197;
  sub_F3F4(v211, v197, &qword_34C6E8, &unk_2D0FF0);

  v79 = sub_2CA130();
  v80 = *(v79 - 8);
  v81 = v204;
  (*(v80 + 32))(v204, v78, v79);
  (*(v80 + 56))(v81, 0, 1, v79);
  v82 = enum case for SiriKitReliabilityCodes.success(_:);
  v83 = sub_2C98F0();
  v84 = *(v83 - 8);
  v85 = v203;
  (*(v84 + 104))(v203, v82, v83);
  (*(v84 + 56))(v85, 0, 1, v83);
  INUpdateMediaAffinityIntent.firstMediaItemType()();
  sub_2CB4E0();

  sub_30B8(v85, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v81, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v62, &qword_34CB88, &unk_2D0D90);
  sub_35E0(v74 + 18, v74[21]);
  v86 = v211;
  sub_F3F4(v211, v78, &qword_34C6E8, &unk_2D0FF0);
  v87 = *(v78 + *(v202 + 48));
  sub_20410(&unk_351900, &unk_2D0960);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_2D0770;
  *(v88 + 32) = [objc_allocWithZone(SAUICloseAssistant) init];
  v89 = v206;
  sub_1C077C(v78, v87, v206, v88, v207, v208);

  sub_30B8(v89, &unk_353020, &unk_2D0970);
  sub_30B8(v86, &qword_34C6E8, &unk_2D0FF0);
  return (*(v80 + 8))(v78, v79);
}

uint64_t SearchForMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a4;
  v29 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
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
    _os_log_impl(&dword_0, v15, v16, "SearchForMedia+HandleIntentStrategy#makeFailureHandlingIntentResponse", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2CECB0(42);

  v31 = 0xD000000000000028;
  v32 = 0x80000000002DCBC0;
  v30 = [a3 code];
  v33._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v33);

  v19 = v31;
  v20 = v32;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  v21 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = a1;
  v23 = v28;
  v24 = v29;
  *(v22 + 32) = a2;
  *(v22 + 40) = v23;
  *(v22 + 48) = v24;
  *(v22 + 56) = a3;

  v25 = a2;

  v26 = a3;
  sub_E47A0(v21, a1, sub_E4788, v22);
}

uint64_t sub_E3800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7)
{
  v61 = a7;
  v73 = a5;
  v74 = a6;
  v71 = a3;
  v72 = a4;
  v67 = a2;
  v64 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v7 - 8);
  v63 = v60 - v8;
  v65 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v65);
  v62 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = v60 - v11;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v69 = v60 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v68 = v60 - v17;
  v18 = sub_2CCB30();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCAC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (v60 - v27);
  sub_F3F4(v64, v60 - v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    swift_getErrorValue();
    sub_2CEEF0();
    v66 = sub_2CCAE0();

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v67 = sub_35E0(v67 + 8, v67[11]);
    v30 = enum case for ActivityType.failed(_:);
    v31 = sub_2C9C20();
    v32 = *(v31 - 8);
    v33 = v68;
    (*(v32 + 104))(v68, v30, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    v34 = sub_2CA130();
    v35 = v69;
    (*(*(v34 - 8) + 56))(v69, 1, 1, v34);
    v36 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v37 = sub_2C98F0();
    v38 = *(v37 - 8);
    v39 = v70;
    (*(v38 + 104))(v70, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v39, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v35, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v33, &qword_34CB88, &unk_2D0D90);
    v75[0] = v29;
    v76 = 1;
    swift_errorRetain();
    v73(v75);

    return sub_30B8(v75, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v41 = v66;
    sub_24BE0(v28, v66);
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    v75[0] = [v61 code];
    sub_2CEE70();
    v64 = sub_2CCAE0();
    v61 = v42;

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v43 = v67;
    v60[0] = v67[11];
    v60[1] = v67[12];
    v60[2] = sub_35E0(v67 + 8, v60[0]);
    v44 = enum case for ActivityType.failed(_:);
    v45 = sub_2C9C20();
    v46 = *(v45 - 8);
    v47 = v68;
    (*(v46 + 104))(v68, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
    v48 = v62;
    sub_F3F4(v41, v62, &qword_34C6E8, &unk_2D0FF0);

    v49 = sub_2CA130();
    v50 = *(v49 - 8);
    v51 = v69;
    (*(v50 + 32))(v69, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v53 = sub_2C98F0();
    v54 = *(v53 - 8);
    v55 = v70;
    (*(v54 + 104))(v70, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v43 + 18, v43[21]);
    v56 = v66;
    sub_F3F4(v66, v48, &qword_34C6E8, &unk_2D0FF0);
    v57 = *(v48 + *(v65 + 48));
    v58 = sub_2CA000();
    v59 = v63;
    (*(*(v58 - 8) + 56))(v63, 1, 1, v58);
    sub_1C077C(v48, v57, v59, _swiftEmptyArrayStorage, v73, v74);

    sub_30B8(v59, &unk_353020, &unk_2D0970);
    sub_30B8(v56, &qword_34C6E8, &unk_2D0FF0);
    return (*(v50 + 8))(v48, v49);
  }
}

void *SearchForMedia.HandleIntentStrategy.deinit()
{
  sub_306C(v0 + 2);

  sub_306C(v0 + 8);
  sub_306C(v0 + 13);
  sub_306C(v0 + 18);

  return v0;
}

uint64_t SearchForMedia.HandleIntentStrategy.__deallocating_deinit()
{
  sub_306C(v0 + 2);

  sub_306C(v0 + 8);
  sub_306C(v0 + 13);
  sub_306C(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_E43C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E4444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E44C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E4560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E45DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_E46C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_E471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_E47A0(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v6 = sub_2CE000();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = __chkstk_darwin(v6);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v60 - v9;
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v67 = v4[2];
  v17 = v4[13];
  v60 = v4[14];
  v73 = 0x80000000002DAA60;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = v12 + v19 + 7;
  v21 = v16;
  v22 = v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "catServiceExecute";
  *(v23 + 24) = 17;
  *(v23 + 32) = 2;
  v70 = v11;
  v71 = v10;
  (*(v11 + 32))(v23 + v19, v14, v10);
  v24 = (v23 + v22);
  *v24 = v65;
  v24[1] = a4;

  v25 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0E40;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_1087C();
  v64 = v17;
  *(v26 + 32) = v17;
  v28 = v60;
  *(v26 + 40) = v60;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0xD000000000000015;
  *(v26 + 80) = v73;

  LOBYTE(v58) = 2;
  v65 = v21;
  sub_2CDF90(v25, &dword_0, v18, "catServiceExecute", 17, 2, v21, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v58, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = sub_13D80;
  *(v29 + 24) = v23;
  v61 = v29;
  v30 = qword_34BF58;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_3ED0(v75, static Logger.default);
  swift_beginAccess();
  v33 = v74;
  v34 = *(v74 + 16);
  v35 = v66;
  v63 = v32;
  v62 = v34;
  v34(v66, v32, v31);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v64;
    *(v38 + 4) = sub_3F08(v64, v28, &v76);
    *(v38 + 12) = 2080;
    v40 = v73;
    *(v38 + 14) = sub_3F08(0xD000000000000015, v73, &v76);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = *(v74 + 8);
    v42(v41, v75);
  }

  else
  {

    v43 = v35;
    v42 = *(v33 + 8);
    v42(v43, v31);
    v40 = v73;
    v39 = v64;
  }

  v76 = v39;
  v77 = v28;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000015;
  v81._object = v40;
  sub_2CE350(v81);
  v45 = v76;
  v44 = v77;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v61;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v68;
  *(&v60 - 10) = v67;
  *(&v60 - 9) = v50;
  *(&v60 - 8) = v69;
  *(&v60 - 7) = v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v45;
  v57 = v44;
  v58 = sub_3E06C;
  v59 = v48;

  sub_2CB0F0();

  (*(v70 + 8))(v65, v71);
  sub_30B8(v78, &qword_34C6C0, &qword_2D0710);
  v51 = v72;
  v52 = v75;
  v62(v72, v63, v75);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CommonDialogProvider#makeFailureHandlingIntentDialog", v55, 2u);
  }

  return (v42)(v51, v52);
}

uint64_t sub_E4FD0(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v6 = sub_2CE000();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = __chkstk_darwin(v6);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v60 - v9;
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v67 = v4[2];
  v17 = v4[13];
  v60 = v4[14];
  v73 = 0x80000000002DAA60;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = v12 + v19 + 7;
  v21 = v16;
  v22 = v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "catServiceExecute";
  *(v23 + 24) = 17;
  *(v23 + 32) = 2;
  v70 = v11;
  v71 = v10;
  (*(v11 + 32))(v23 + v19, v14, v10);
  v24 = (v23 + v22);
  *v24 = v65;
  v24[1] = a4;

  v25 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0E40;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_1087C();
  v64 = v17;
  *(v26 + 32) = v17;
  v28 = v60;
  *(v26 + 40) = v60;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0xD000000000000015;
  *(v26 + 80) = v73;

  LOBYTE(v58) = 2;
  v65 = v21;
  sub_2CDF90(v25, &dword_0, v18, "catServiceExecute", 17, 2, v21, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v58, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = sub_13D7C;
  *(v29 + 24) = v23;
  v61 = v29;
  v30 = qword_34BF58;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_3ED0(v75, static Logger.default);
  swift_beginAccess();
  v33 = v74;
  v34 = *(v74 + 16);
  v35 = v66;
  v63 = v32;
  v62 = v34;
  v34(v66, v32, v31);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v64;
    *(v38 + 4) = sub_3F08(v64, v28, &v76);
    *(v38 + 12) = 2080;
    v40 = v73;
    *(v38 + 14) = sub_3F08(0xD000000000000015, v73, &v76);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = *(v74 + 8);
    v42(v41, v75);
  }

  else
  {

    v43 = v35;
    v42 = *(v33 + 8);
    v42(v43, v31);
    v40 = v73;
    v39 = v64;
  }

  v76 = v39;
  v77 = v28;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000015;
  v81._object = v40;
  sub_2CE350(v81);
  v45 = v76;
  v44 = v77;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13D84;
  v48[4] = v61;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v68;
  *(&v60 - 10) = v67;
  *(&v60 - 9) = v50;
  *(&v60 - 8) = v69;
  *(&v60 - 7) = v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v45;
  v57 = v44;
  v58 = sub_3E010;
  v59 = v48;

  sub_2CB0F0();

  (*(v70 + 8))(v65, v71);
  sub_30B8(v78, &qword_34C6C0, &qword_2D0710);
  v51 = v72;
  v52 = v75;
  v62(v72, v63, v75);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CommonDialogProvider#makeFailureHandlingIntentDialog", v55, 2u);
  }

  return (v42)(v51, v52);
}

uint64_t sub_E5794(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v6 = sub_2CE000();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = __chkstk_darwin(v6);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v60 - v9;
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v67 = v4[2];
  v17 = v4[13];
  v60 = v4[14];
  v73 = 0x80000000002DAA60;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = v12 + v19 + 7;
  v21 = v16;
  v22 = v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "catServiceExecute";
  *(v23 + 24) = 17;
  *(v23 + 32) = 2;
  v70 = v11;
  v71 = v10;
  (*(v11 + 32))(v23 + v19, v14, v10);
  v24 = (v23 + v22);
  *v24 = v65;
  v24[1] = a4;

  v25 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0E40;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_1087C();
  v64 = v17;
  *(v26 + 32) = v17;
  v28 = v60;
  *(v26 + 40) = v60;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0xD000000000000015;
  *(v26 + 80) = v73;

  LOBYTE(v58) = 2;
  v65 = v21;
  sub_2CDF90(v25, &dword_0, v18, "catServiceExecute", 17, 2, v21, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v58, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = sub_13D80;
  *(v29 + 24) = v23;
  v61 = v29;
  v30 = qword_34BF58;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_3ED0(v75, static Logger.default);
  swift_beginAccess();
  v33 = v74;
  v34 = *(v74 + 16);
  v35 = v66;
  v63 = v32;
  v62 = v34;
  v34(v66, v32, v31);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v64;
    *(v38 + 4) = sub_3F08(v64, v28, &v76);
    *(v38 + 12) = 2080;
    v40 = v73;
    *(v38 + 14) = sub_3F08(0xD000000000000015, v73, &v76);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = *(v74 + 8);
    v42(v41, v75);
  }

  else
  {

    v43 = v35;
    v42 = *(v33 + 8);
    v42(v43, v31);
    v40 = v73;
    v39 = v64;
  }

  v76 = v39;
  v77 = v28;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000015;
  v81._object = v40;
  sub_2CE350(v81);
  v45 = v76;
  v44 = v77;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v61;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v68;
  *(&v60 - 10) = v67;
  *(&v60 - 9) = v50;
  *(&v60 - 8) = v69;
  *(&v60 - 7) = v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v45;
  v57 = v44;
  v58 = sub_3E06C;
  v59 = v48;

  sub_2CB0F0();

  (*(v70 + 8))(v65, v71);
  sub_30B8(v78, &qword_34C6C0, &qword_2D0710);
  v51 = v72;
  v52 = v75;
  v62(v72, v63, v75);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CommonDialogProvider#makeFailureHandlingIntentDialog", v55, 2u);
  }

  return (v42)(v51, v52);
}

uint64_t sub_E5F58()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_E5FE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E6028()
{

  return swift_deallocClassInstance();
}

uint64_t sub_E6084()
{
  sub_2CCFB0();
  swift_allocObject();

  return sub_2CCF70();
}

uint64_t sub_E60F8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AppResolutionConfirmation.confirmed(_:);
  v3 = sub_2CCFC0();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t PlayMediaAppResolver.resolveBundleIdentifier(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = sub_2CDFD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_20410(&qword_350438, qword_2D3AA0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v29 - v12);
  v34 = a1;
  v36 = a1;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  sub_2CC170();
  v14 = sub_20410(&qword_34E740, &unk_2D68F0);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  if (qword_34BF98 != -1)
  {
    v28 = v15;
    swift_once();
    v15 = v28;
  }

  if (v15 == 1)
  {
    v16 = 0x80000000002DCCF0;
  }

  else
  {
    v16 = 0xEE006465766C6F73;
  }

  v17 = 0x6552657250707061;
  if (v15 == 1)
  {
    v17 = 0xD000000000000010;
  }

  v30 = v17;
  v31 = v16;
  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v5 + 16))(v8, v10, v4);
  v19 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "playMediaAppResolutionServiceResolveBundleEverything";
  *(v21 + 24) = 52;
  *(v21 + 32) = 2;
  (*(v5 + 32))(v21 + v19, v8, v4);
  v22 = (v21 + v20);
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;

  v24 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0090;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1087C();
  v26 = v31;
  *(v25 + 32) = v30;
  *(v25 + 40) = v26;
  sub_2CDF90(v24, &dword_0, v18, "playMediaAppResolutionServiceResolveBundleEverything", 52, 2, v10, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v25);

  sub_EF0B8(v34, v35, v13, sub_EED20, v21);

  (*(v5 + 8))(v10, v4);
  return sub_30B8(v13, &qword_350438, qword_2D3AA0);
}

uint64_t sub_E65CC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a4;
  v38 = a5;
  v40 = a3;
  v41 = sub_2CDFD0();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  v8 = __chkstk_darwin(v41);
  v9 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v36 = &v34 - v10;
  v11 = sub_20410(&qword_3504C8, &unk_2D3B18);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for BundleResolutionResult(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, v13, &qword_3504C8, &unk_2D3B18);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v35 = a2;
    sub_30B8(v13, &qword_3504C8, &unk_2D3B18);
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v18 = qword_35F760;
    v19 = v36;
    sub_2CDFB0();
    v20 = v39;
    v21 = v41;
    (*(v39 + 16))(v9, v19, v41);
    v22 = (*(v20 + 80) + 33) & ~*(v20 + 80);
    v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = "playMediaAppResolutionServiceResolveBundle";
    *(v24 + 24) = 42;
    *(v24 + 32) = 2;
    (*(v20 + 32))(v24 + v22, v9, v21);
    v25 = (v24 + v23);
    v26 = v40;
    *v25 = v35;
    v25[1] = v26;

    v27 = sub_2CE9E0();
    sub_2CDF90(v27, &dword_0, v18, "playMediaAppResolutionServiceResolveBundle", 42, 2, v19, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_13B2C;
    *(v28 + 24) = v24;
    v29 = v37;
    sub_35E0((v37 + qword_350440), *(v37 + qword_350440 + 24));
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = sub_13BD8;
    v30[5] = v28;

    v32 = v31;
    sub_2CCAB0();

    return (*(v20 + 8))(v19, v41);
  }

  else
  {
    sub_F1BB8(v13, v17);
    a2(v17);
    return sub_F1AE0(v17);
  }
}

uint64_t sub_E6A24(NSObject *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v90 = a5;
  v88 = a4;
  v87 = a3;
  v83 = a2;
  v6 = sub_2CC990();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v81);
  v80 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_2CCA70();
  v86 = *(v89 - 8);
  __chkstk_darwin(v89);
  v84 = v11;
  v85 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v82 = sub_2CCA50();
  if (v19)
  {
    v20 = v19;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v18, v21, v12);

    v22 = sub_2CDFE0();
    v23 = sub_2CE690();

    v79 = v22;
    v24 = os_log_type_enabled(v22, v23);
    v25 = v89;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v78 = v12;
      v27 = v26;
      v94[0] = swift_slowAlloc();
      *v27 = 136446466;
      v28 = sub_2CCC80();
      v30 = sub_3F08(v28, v29, v94);
      v77 = v13;
      v31 = v25;
      v32 = v30;

      *(v27 + 4) = v32;
      v25 = v31;
      *(v27 + 12) = 2082;
      v33 = v82;
      *(v27 + 14) = sub_3F08(v82, v20, v94);
      v34 = v79;
      _os_log_impl(&dword_0, v79, v23, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s app selection resolved bundle: %{public}s", v27, 0x16u);
      swift_arrayDestroy();

      (*(v77 + 8))(v18, v78);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
      v33 = v82;
    }

    if (sub_2CBDB0())
    {
      v57 = v86;
      v58 = v85;
      (*(v86 + 16))(v85, a1, v25);
      v59 = (*(v57 + 80) + 56) & ~*(v57 + 80);
      v60 = swift_allocObject();
      *(v60 + 2) = v83;
      *(v60 + 3) = v33;
      v61 = v88;
      *(v60 + 4) = v20;
      *(v60 + 5) = v61;
      *(v60 + 6) = v90;
      (*(v57 + 32))(&v60[v59], v58, v25);

      sub_E9758(v87, sub_F1D4C, v60);
    }

    else
    {
      sub_20410(&qword_34E740, &unk_2D68F0);
      v62 = v80;
      *v80 = v33;
      *(v62 + 8) = v20;
      sub_2CCA40();
      swift_storeEnumTagMultiPayload();
      v88(v62);
      return sub_F1AE0(v62);
    }
  }

  else
  {
    v80 = v9;
    v81 = v7;
    v82 = v6;
    if (sub_2CCA60())
    {
      v79 = a1;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v35 = v12;
      v36 = sub_3ED0(v12, static Logger.default);
      swift_beginAccess();
      (*(v13 + 16))(v16, v36, v12);
      v37 = sub_2CDFE0();
      v38 = sub_2CE690();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v94[0] = v40;
        *v39 = 136446210;
        v41 = sub_2CCC80();
        v43 = sub_3F08(v41, v42, v94);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_0, v37, v38, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s app selection attempted but no bundle returned... disambiguating", v39, 0xCu);
        sub_306C(v40);
      }

      (*(v13 + 8))(v16, v35);
      v44 = v82;
      v45 = v81;
      v46 = v80;
      v47 = v83;
      v48 = (v83 + *(*v83 + class metadata base offset for CommonAppResolver + 48));
      v82 = v48[3];
      v80 = v48[4];
      v81 = sub_35E0(v48, v82);
      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v94[0] = v87;
      (*(v45 + 104))(v46, enum case for AcceptedSpeakerIdConfidence.executeOnCompanionConfidence(_:), v44);
      sub_2CCB50();
      (*(v45 + 8))(v46, v44);
      v49 = v86;
      v50 = v47;
      v51 = v85;
      v52 = v89;
      (*(v86 + 16))(v85, v79, v89);
      v53 = (*(v49 + 80) + 40) & ~*(v49 + 80);
      v54 = swift_allocObject();
      v55 = v88;
      *(v54 + 2) = v50;
      *(v54 + 3) = v55;
      *(v54 + 4) = v90;
      (*(v49 + 32))(&v54[v53], v51, v52);

      sub_2CC6C0();
    }

    else
    {
      v63 = a1;
      v64 = v83;
      sub_EEAC(v83 + *(*v83 + class metadata base offset for CommonAppResolver + 40), &v95);
      sub_EEAC(v64 + *(*v64 + class metadata base offset for CommonAppResolver + 24), v94);
      v65 = *(*v64 + class metadata base offset for CommonAppResolver + 32);
      swift_beginAccess();
      sub_EEAC(v64 + v65, v93);
      v66 = [v87 privatePlayMediaIntentData];
      v67 = v90;
      v68 = v89;
      if (v66)
      {
        v69 = v66;
        v70 = [v66 audioSearchResults];

        if (v70)
        {
          sub_334A0(0, &qword_356F50, INMediaItem_ptr);
          sub_2CE410();
        }
      }

      v92 = 0;
      memset(v91, 0, sizeof(v91));
      v71 = v86;
      v72 = v85;
      (*(v86 + 16))(v85, v63, v68);
      v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v74 = (v84 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      (*(v71 + 32))(v75 + v73, v72, v68);
      v76 = (v75 + v74);
      *v76 = v88;
      v76[1] = v67;

      sub_2CEAB0();

      sub_30B8(v91, &qword_34E748, &qword_2D26D0);
      sub_306C(v93);
      sub_306C(v94);
      return sub_306C(&v95);
    }
  }
}

uint64_t sub_E762C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v70 = a4;
  v64 = a2;
  v68 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v68);
  v67 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2CC820();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2CBF80();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v76 = sub_2CB7D0();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2CE000();
  v17 = *(v62 - 8);
  __chkstk_darwin(v62);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v21 = _swiftEmptyArrayStorage;
  v71 = v13;
  v72 = a3;
  if (v20)
  {
    v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v17;
    v77[0] = _swiftEmptyArrayStorage;
    sub_2DBFC(0, v20, 0);
    v21 = v77[0];
    v23 = *(v14 + 16);
    v22 = v14 + 16;
    v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v73 = *(v22 + 56);
    v74 = v23;
    v75 = v22;
    v25 = (v22 - 8);
    do
    {
      v26 = v76;
      v74(v16, v24, v76);
      v27 = sub_2CB7B0();
      v29 = v28;
      (*v25)(v16, v26);
      v77[0] = v21;
      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        sub_2DBFC((v30 > 1), v31 + 1, 1);
        v21 = v77[0];
      }

      v21[2] = v31 + 1;
      v32 = &v21[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
      v24 += v73;
      --v20;
    }

    while (v20);
    v13 = v71;
    a3 = v72;
    v17 = v59;
    v19 = v58;
  }

  v77[0] = v21;
  sub_EEDBC();
  v33 = v77[0];
  v34 = v62;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v34, static Logger.default);
  swift_beginAccess();
  (*(v17 + 16))(v19, v35, v34);

  v36 = sub_2CDFE0();
  v37 = sub_2CE690();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v77[0] = v39;
    *v38 = 136315138;
    v40 = sub_2CE420();
    v42 = v19;
    v43 = sub_3F08(v40, v41, v77);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaAppResolutionService#resolveBundleIdentifier disambiguating apps: %s", v38, 0xCu);
    sub_306C(v39);
    v13 = v71;

    (*(v17 + 8))(v42, v34);
    a3 = v72;
  }

  else
  {

    (*(v17 + 8))(v19, v34);
  }

  sub_2CC0E0();
  v44 = &enum case for DisambiguateItemsReason.predictionUncertainty(_:);
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v45 = v60;
    v46 = v61;
    if ((*(v60 + 48))(v13, 1, v61))
    {
      sub_30B8(v13, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v47 = v57;
      (*(v45 + 16))(v57, v13, v46);
      sub_30B8(v13, &qword_34DD30, &unk_2D1BC0);
      v48 = v46;
      v49 = sub_2CBF60();
      (*(v45 + 8))(v47, v48);
      if (v49)
      {
        v44 = &enum case for DisambiguateItemsReason.newUser(_:);
      }
    }
  }

  sub_EEAC(v64 + qword_350440, v77);
  sub_35E0(v77, v77[3]);
  v50 = v65;
  v51 = *v44;
  v52 = v63;
  v53 = v66;
  (*(v65 + 104))(v63, v51, v66);
  sub_2CCAA0();
  (*(v50 + 8))(v52, v53);
  sub_306C(v77);
  sub_20410(&qword_3504D0, &qword_2D3B28);
  v54 = v67;
  *v67 = v33;
  sub_2CCA40();
  swift_storeEnumTagMultiPayload();
  a3(v54);
  return sub_F1AE0(v54);
}

uint64_t sub_E7DC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v42 = a6;
  v43 = a5;
  v41 = a3;
  v39 = a1;
  v40 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v40);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2CCA70();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  (*(v11 + 16))(v13, a4, v10);

  v19 = sub_2CDFE0();
  LODWORD(v18) = sub_2CE690();

  v37 = v18;
  v38 = v19;
  v20 = os_log_type_enabled(v19, v18);
  v21 = a2;
  v22 = v10;
  if (v20)
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v23 = 136446722;
    v24 = sub_2CCC80();
    v36 = v17;
    v25 = a2;
    v27 = sub_3F08(v24, v26, &v44);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v34 = v14;
    v28 = v22;
    v29 = v39;
    *(v23 + 14) = sub_3F08(v39, v25, &v44);
    *(v23 + 22) = 1026;
    v21 = v25;
    LODWORD(v27) = sub_2CCA60() & 1;
    (*(v11 + 8))(v13, v28);
    *(v23 + 24) = v27;
    v30 = v38;
    _os_log_impl(&dword_0, v38, v37, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s using inferred bundle: %{public}s, attempted app selection?: %{BOOL,public}d", v23, 0x1Cu);
    swift_arrayDestroy();

    (*(v15 + 8))(v36, v34);
  }

  else
  {
    (*(v11 + 8))(v13, v10);

    (*(v15 + 8))(v17, v14);
    v29 = v39;
  }

  v31 = *(sub_20410(&qword_34E740, &unk_2D68F0) + 48);
  *v9 = v29;
  v9[1] = v21;
  v32 = sub_2CC5F0();
  (*(*(v32 - 8) + 16))(v9 + v31, v41, v32);
  swift_storeEnumTagMultiPayload();

  v43(v9);
  return sub_F1AE0(v9);
}

uint64_t sub_E822C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a8;
  v72 = a5;
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = sub_2CCA70();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = v11;
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v63 = (v19 + 16);
  *(v19 + 24) = a2;

  v20 = sub_2CBE40();
  v22 = &off_34B000;
  v74 = v13;
  if (v20 == a1 && v21 == a2)
  {
  }

  else
  {
    v23 = sub_2CEEA0();

    v24 = 0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v64 = v16;
  v25 = *(*a3 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(a3 + v25, v75);
  sub_35E0(v75, v75[3]);
  v26 = sub_2CC490();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    sub_306C(v75);
    v13 = v74;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v18, v30, v12);

    v31 = sub_2CDFE0();
    v32 = v12;
    v33 = sub_2CE670();

    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v28;
      v36 = swift_slowAlloc();
      v75[0] = v36;
      *v34 = 136315138;
      *(v34 + 4) = sub_3F08(v35, v29, v75);
      _os_log_impl(&dword_0, v31, v33, "PlayMediaAppResolver#resolveBundleIdentifier using overriden Classical Bundle ID (%s)", v34, 0xCu);
      sub_306C(v36);
      v28 = v35;

      v13 = v74;
    }

    (*(v13 + 8))(v18, v32);
    v12 = v32;
    v16 = v64;
    *(v19 + 16) = v28;
    *(v19 + 24) = v29;

    v24 = 1;
    v22 = &off_34B000;
  }

  else
  {
    sub_306C(v75);
    v24 = 1;
    v13 = v74;
    v16 = v64;
  }

LABEL_12:
  LODWORD(v64) = v24;
  if (v22[491] != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v37, v12);

  v38 = sub_2CDFE0();
  v39 = sub_2CE690();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v40 = 136446466;
    v41 = sub_2CCC80();
    v43 = sub_3F08(v41, v42, v76);
    v44 = v19;
    v62 = v12;
    v45 = v43;

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    swift_beginAccess();
    v46 = *(v19 + 16);
    v47 = *(v19 + 24);

    v48 = sub_3F08(v46, v47, v76);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_0, v38, v39, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s overriding with internal bundle: %{public}s", v40, 0x16u);
    swift_arrayDestroy();

    (*(v74 + 8))(v16, v62);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    v44 = v19;
  }

  v49 = (a3 + *(*a3 + class metadata base offset for CommonAppResolver + 48));
  v50 = v49[3];
  v74 = v49[4];
  v63 = sub_35E0(v49, v50);
  v62 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v51 = v68;
  v52 = v67;
  v53 = v70;
  (*(v68 + 16))(v67, v65, v70);
  v54 = a3;
  v55 = (*(v51 + 80) + 72) & ~*(v51 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v44;
  *(v56 + 24) = v64;
  v58 = v72;
  v57 = v73;
  *(v56 + 32) = v69;
  *(v56 + 40) = v58;
  v59 = v71;
  *(v56 + 48) = v54;
  *(v56 + 56) = v59;
  *(v56 + 64) = v57;
  (*(v51 + 32))(v56 + v55, v52, v53);

  sub_2CC6D0();
}

uint64_t sub_E8A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  v122 = a8;
  v123 = a7;
  v114 = a6;
  v119 = a5;
  v111 = a4;
  v118 = a3;
  v126 = a2;
  v117 = sub_2CC820();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v121);
  v120 = (&v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_2CE000();
  v127 = *(v128 - 8);
  v12 = __chkstk_darwin(v128);
  v124 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v113 = &v109 - v15;
  v16 = __chkstk_darwin(v14);
  v125 = &v109 - v17;
  __chkstk_darwin(v16);
  v110 = &v109 - v18;
  v134 = sub_2CB7D0();
  v19 = *(v134 - 8);
  v20 = __chkstk_darwin(v134);
  v129 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v109 - v22;
  v24 = *(a1 + 16);
  v131 = v19;
  v132 = v24;
  v130 = a1;
  if (v24)
  {
    v26 = *(v19 + 16);
    v25 = v19 + 16;
    v133 = v26;
    v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v30 = v134;
      v133(v23, v27, v134);
      v31 = sub_2CB7B0();
      v33 = v32;
      (*(v25 - 8))(v23, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_B90C4(0, *(v29 + 2) + 1, 1, v29);
      }

      v35 = *(v29 + 2);
      v34 = *(v29 + 3);
      v36 = v29;
      if (v35 >= v34 >> 1)
      {
        v36 = sub_B90C4((v34 > 1), v35 + 1, 1, v29);
      }

      *(v36 + 2) = v35 + 1;
      v29 = v36;
      v37 = &v36[16 * v35];
      *(v37 + 4) = v31;
      *(v37 + 5) = v33;
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v112 = a9;
  v38 = v126;
  v39 = swift_beginAccess();
  v40 = *(v38 + 24);
  v137 = *(v38 + 16);
  v138 = v40;
  __chkstk_darwin(v39);
  *(&v109 - 2) = &v137;

  v41 = sub_13964(sub_13A68, (&v109 - 4), v29);

  v42 = v118 | v41;
  if (v118)
  {
    v43 = v128;
    if ((v41 & 1) == 0)
    {
      v137 = sub_2CBE10();
      v138 = v44;
      __chkstk_darwin(v137);
      *(&v109 - 2) = &v137;
      v45 = sub_13964(sub_334E8, (&v109 - 4), v29);

      v46 = v127;
      if (v45)
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v47 = sub_3ED0(v43, static Logger.default);
        swift_beginAccess();
        v48 = v110;
        (*(v46 + 16))(v110, v47, v43);
        v49 = sub_2CDFE0();
        v50 = sub_2CE670();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_0, v49, v50, "PlayMediaAppResolver#resolveBundleIdentifier Classical was selected, but is not installed. Falling back to Music app", v51, 2u);
        }

        (*(v46 + 8))(v48, v43);
        v52 = sub_2CBE10();
        v54 = v53;
        v42 = 1;
        swift_beginAccess();
        *(v38 + 16) = v52;
        *(v38 + 24) = v54;
      }

      else
      {
        v42 = 0;
      }
    }
  }

  v133 = v42;
  v55 = 0;
  v56 = v131;
  do
  {
    v57 = v55;
    if (v132 == v55)
    {
      break;
    }

    v58 = v129;
    v59 = v134;
    v56[2](v129, v130 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v56[9] * v55++, v134);
    sub_2CB7B0();
    v60 = sub_2CBDB0();

    (v56[1])(v58, v59);
  }

  while ((v60 & 1) != 0);
  v134 = v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v61 = v128;
  v62 = sub_3ED0(v128, static Logger.default);
  swift_beginAccess();
  v63 = v127;
  v64 = v125;
  v131 = *(v127 + 16);
  (v131)(v125, v62, v61);

  v65 = sub_2CDFE0();
  v66 = sub_2CE670();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = v132 == v57;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v136 = v69;
    *v68 = 67109634;
    *(v68 + 4) = v67;
    *(v68 + 8) = 1024;
    v70 = v133;
    *(v68 + 10) = v133 & 1;
    *(v68 + 14) = 2080;
    v71 = sub_2CE420();
    v73 = sub_3F08(v71, v72, &v136);
    v61 = v128;

    *(v68 + 16) = v73;
    _os_log_impl(&dword_0, v65, v66, "PlayMediaAppResolver#resolveBundleIdentifier no3pBundle?:%{BOOL}d containsSelected1pBundle?:%{BOOL}d. Bundles: %s", v68, 0x18u);
    sub_306C(v69);
    v74 = v127;

    v75 = *(v74 + 8);
    v75(v125, v61);
    v76 = v132;
    v77 = v119;
    v78 = v124;
  }

  else
  {

    v75 = *(v63 + 8);
    v75(v64, v61);
    v77 = v119;
    v78 = v124;
    v76 = v132;
    v70 = v133;
  }

  if (((v76 != v57) & ~v70) != 0)
  {
    (v131)(v78, v62, v61);
    v87 = v126;

    v88 = sub_2CDFE0();
    v89 = sub_2CE680();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = v77;
      v91 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v91 = 136446722;
      v92 = sub_2CCC80();
      v94 = sub_3F08(v92, v93, &v135);

      *(v91 + 4) = v94;
      *(v91 + 12) = 2082;
      swift_beginAccess();
      v95 = *(v87 + 16);
      v96 = *(v87 + 24);

      v97 = sub_3F08(v95, v96, &v135);

      *(v91 + 14) = v97;
      *(v91 + 22) = 2082;
      *(v91 + 24) = sub_3F08(v111, v90, &v135);
      _os_log_impl(&dword_0, v88, v89, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s inferred 1p bundle: %{public}s based on selection of: %{public}s and intent contents, but it is not available on device... disambiguating.", v91, 0x20u);
      swift_arrayDestroy();

      v98 = v124;
      v99 = v128;
    }

    else
    {

      v98 = v78;
      v99 = v61;
    }

    v75(v98, v99);
    v100 = v117;
    v101 = v116;
    v102 = v115;
    v103 = v134;
    sub_35E0((v114 + qword_350440), *(v114 + qword_350440 + 24));
    (*(v101 + 104))(v102, enum case for DisambiguateItemsReason.unavailableInferred1pBundle(_:), v100);
    sub_2CCAA0();
    (*(v101 + 8))(v102, v100);
    v104 = *(sub_20410(&qword_3504D0, &qword_2D3B28) + 48);
    v86 = v120;
    *v120 = v103;
    v105 = enum case for ResolutionResultType.AppNotFoundDisambiguation(_:);
    v106 = sub_2CC5F0();
    (*(*(v106 - 8) + 104))(v86 + v104, v105, v106);
  }

  else
  {

    v79 = v113;
    (v131)(v113, v62, v61);
    v80 = sub_2CDFE0();
    v81 = sub_2CE670();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v126;
    if (v82)
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_0, v80, v81, "PlayMediaAppResolver#resolveBundleIdentifier validated firstPartyResultsBundleIdentifier available", v84, 2u);
    }

    v75(v79, v61);
    sub_20410(&qword_34E740, &unk_2D68F0);
    swift_beginAccess();
    v85 = *(v83 + 24);
    v86 = v120;
    *v120 = *(v83 + 16);
    *(v86 + 8) = v85;

    sub_2CCA40();
  }

  v107 = v123;
  swift_storeEnumTagMultiPayload();
  v107(v86);
  return sub_F1AE0(v86);
}

uint64_t sub_E9758(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 privatePlayMediaIntentData];
  if (v12 && (v13 = v12, v14 = [v12 audioSearchResults], v13, v14))
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v15 = sub_2CE410();
  }

  else
  {
    v15 = 0;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a1, &off_32FED0) && sub_E9E6C())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v11, v17, v8);
    v18 = sub_2CDFE0();
    v19 = sub_2CE670();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = a2;
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "PlayMediaAppResolver#determineFirstPartyBundleIdentifier we have signal from search results to consider using Classical for playback", v20, 2u);
      a2 = v27;
    }

    (*(v9 + 8))(v11, v8);
    sub_35E0((v4 + qword_350460), *(v4 + qword_350460 + 24));
    v21 = swift_allocObject();
    v21[2] = v4;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a1;
    v21[6] = v15;

    v22 = a1;
    sub_2CC330();
  }

  else
  {
    v29.value._rawValue = v15;
    v29.is_nil = 0;
    v24 = sub_2CEAD0(v29, v16);
    v26 = v25;

    a2(v24, v26);
  }
}

uint64_t sub_E9AA4(int a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6)
{
  if (a1 == 4 || a1 == 1)
  {
    sub_35E0((a2 + qword_350460), *(a2 + qword_350460 + 24));
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a5;
    v10[5] = a6;

    v11 = a5;
    sub_2CC2F0();
  }

  else
  {
    v15.value._rawValue = a6;
    v15.is_nil = 1;
    v13 = sub_2CEAD0(v15, a3);
    a3(v13);
  }
}

uint64_t sub_E9BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, void *a11)
{
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && !a7)
  {
    if (sub_2CBE10() == a3 && v26 == a4)
    {

      v28 = 0;
    }

    else
    {
      v29 = sub_2CEEA0();

      v28 = v29 ^ 1;
    }

    v34.is_nil = v28 & 1;
    v34.value._rawValue = a11;
    v30 = sub_2CEAD0(v34, v27);
    a8(v30);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v18, v19, v15);
    v20 = sub_2CDFE0();
    v21 = sub_2CE690();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "PlayMediaAppResolver#determineFirstPartyBundleIdentifier encountered error getting now playing bundle. Falling back to allow use of Classical", v22, 2u);
    }

    (*(v16 + 8))(v18, v15);
    v33.value._rawValue = a11;
    v33.is_nil = 1;
    v24 = sub_2CEAD0(v33, v23);
    a8(v24);
  }
}

BOOL sub_E9E6C()
{
  v1 = sub_2CCCE0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v20 = v0;
  sub_35E0((v0 + qword_350468), *(v0 + qword_350468 + 24));
  sub_2CBE40();
  sub_2CB950();

  v8 = enum case for TCCStatus.notYetPresented(_:);
  v9 = *(v2 + 104);
  v9(v5, enum case for TCCStatus.notYetPresented(_:), v1);
  v10 = sub_2CCCD0();
  v11 = *(v2 + 8);
  v11(v5, v1);
  if (v10)
  {
    v12 = v20 + *(*v20 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    v19 = v11;
    sub_F9A0(v12, *(v12 + 24));
    v11 = v19;
    sub_2CC4F0();
    swift_endAccess();
  }

  v9(v5, enum case for TCCStatus.accepted(_:), v1);
  v13 = sub_2CCCD0();
  v11(v5, v1);
  if (v13 & 1) != 0 || (v9(v5, v8, v1), v14 = sub_2CCCD0(), v11(v5, v1), (v14))
  {
    v11(v7, v1);
    return 1;
  }

  else
  {
    v16 = v20;
    v17 = *(*v20 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_EEAC(v16 + v17, v21);
    sub_35E0(v21, v21[3]);
    v18 = sub_2CC4E0();
    v11(v7, v1);
    sub_306C(v21);
    return v18 < 2;
  }
}

uint64_t sub_EA1B0()
{
  sub_20410(&qword_3504E0, &qword_2D3B40);
  swift_allocObject();
  result = sub_2CB9A0();
  qword_35F6C0 = result;
  return result;
}

uint64_t PlayMediaAppResolver.postResolve(for:app:resolutionResultType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v48 = a1;
  v49 = a2;
  v44 = sub_2CE150();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE180();
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v52 = v17;
  v18 = qword_34BF98;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v20 = *(v11 + 80);
  v40 = v16;
  v41 = v11;
  v21 = (v20 + 33) & ~v20;
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "postResolve";
  *(v23 + 24) = 11;
  *(v23 + 32) = 2;
  (*(v11 + 32))(v23 + v21, v14, v10);
  v24 = (v23 + v22);
  v25 = v52;
  *v24 = sub_F00C8;
  v24[1] = v25;

  v26 = sub_2CE9E0();
  sub_2CDF90(v26, &dword_0, v19, "postResolve", 11, 2, v16, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_F00F4;
  *(v27 + 24) = v23;
  swift_retain_n();

  v38 = sub_2CBB80();
  v28 = swift_allocObject();
  v39 = v10;
  v29 = v49;
  v30 = v50;
  *(v28 + 16) = v49;
  *(v28 + 24) = v30;
  aBlock[4] = sub_F01D8;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_334B38;
  v31 = _Block_copy(aBlock);

  v32 = v42;
  sub_2CE160();
  v53 = _swiftEmptyArrayStorage;
  sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v34 = v43;
  v33 = v44;
  sub_2CEC10();
  v35 = v38;
  sub_2CE9C0();
  _Block_release(v31);

  (*(v47 + 8))(v34, v33);
  (*(v45 + 8))(v32, v46);

  sub_F01F8(v30, v48, v29, v51, sub_F019C, v27);

  (*(v41 + 8))(v40, v39);
}

void sub_EA768(uint64_t a1)
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v19[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v5, v10, v1);
    v11 = sub_2CDFE0();
    v12 = sub_2CE660();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaAppResolver#postResolve background lazy triggering 1st party user context store...", v13, 2u);
    }

    (*(v2 + 8))(v5, v1);
    sub_35E0((v9 + qword_350448), *(v9 + qword_350448 + 24));
    v14 = sub_2CC110();
    sub_2CC740();
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v15 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (*(v2 + 16))(v7, v15, v1);
    v16 = sub_2CDFE0();
    v17 = sub_2CE680();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "PlayMediaAppResolver#postResolve self deallocated prematurely", v18, 2u);
    }

    (*(v2 + 8))(v7, v1);
  }
}

uint64_t sub_EAAA8(char a1)
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
  v8 = sub_2CE660();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "PlayMediaAppResolver#postResolve user context update with success: %{BOOL}d", v9, 8u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_EAC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v76 = a3;
  v92 = a2;
  v5 = sub_2CE150();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2CE180();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_3504F8, &qword_2D3B48);
  __chkstk_darwin(v8 - 8);
  v84 = &v68 - v9;
  v10 = sub_2CC100();
  v88 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v75 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v12;
  __chkstk_darwin(v11);
  v86 = &v68 - v13;
  v14 = sub_20410(&qword_350500, &unk_2D3B50);
  __chkstk_darwin(v14 - 8);
  v89 = (&v68 - v15);
  v16 = sub_2C8E80();
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = __chkstk_darwin(v16);
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v18;
  __chkstk_darwin(v17);
  v20 = &v68 - v19;
  v21 = sub_2CCC30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  (*(v26 + 16))(v28, v29, v25);
  v30 = *(v22 + 16);
  v85 = a1;
  v30(v24, a1, v21);
  v31 = v25;
  v32 = sub_2CDFE0();
  v33 = sub_2CE660();
  v34 = os_log_type_enabled(v32, v33);
  v87 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v71 = v10;
    v36 = v35;
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v36 = 136315138;
    sub_F1A8C(&qword_350508, &type metadata accessor for PlayMediaAppSelectionRecordSignalsResult, &protocol conformance descriptor for PlayMediaAppSelectionRecordSignalsResult);
    v70 = v31;
    v37 = sub_2CEE70();
    v39 = v38;
    (*(v22 + 8))(v24, v21);
    v40 = sub_3F08(v37, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v32, v33, "PlayMediaAppResolver#postResolve app selection signals recorded: %s", v36, 0xCu);
    sub_306C(v69);

    v10 = v71;

    (*(v26 + 8))(v28, v70);
  }

  else
  {

    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v31);
  }

  sub_35E0((v92 + qword_350458), *(v92 + qword_350458 + 24));
  result = sub_2CBE60();
  v43 = v90;
  v42 = v91;
  if (v44)
  {
    v45 = v89;
    sub_2C8E40();

    if ((*(v43 + 48))(v45, 1, v42) == 1)
    {
      v46 = &qword_350500;
      v47 = &unk_2D3B50;
      return sub_30B8(v45, v46, v47);
    }

    v48 = v87;
    v89 = *(v43 + 32);
    v89(v87, v45, v42);
    v49 = v84;
    sub_2CCC20();
    v45 = v49;
    v50 = v88;
    if ((*(v88 + 48))(v45, 1, v10) == 1)
    {
      (*(v43 + 8))(v48, v42);
      v46 = &qword_3504F8;
      v47 = &qword_2D3B48;
      return sub_30B8(v45, v46, v47);
    }

    v71 = *(v50 + 32);
    v51 = v86;
    v71(v86, v45, v10);
    v85 = sub_2CBA10();
    v52 = v50;
    v53 = *(v50 + 16);
    v54 = v75;
    v53(v75, v51, v10);
    v55 = v73;
    (*(v43 + 16))(v73, v48, v42);
    v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v57 = (v74 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (*(v43 + 80) + v57 + 16) & ~*(v43 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v92;
    v71((v59 + v56), v54, v10);
    v60 = (v59 + v57);
    v61 = v77;
    *v60 = v76;
    v60[1] = v61;
    v62 = v91;
    v89((v59 + v58), v55, v91);
    aBlock[4] = sub_F19A8;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A4294;
    aBlock[3] = &unk_334D80;
    v63 = _Block_copy(aBlock);

    v64 = v78;
    sub_2CE160();
    v93 = _swiftEmptyArrayStorage;
    sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v65 = v80;
    v66 = v83;
    sub_2CEC10();
    v67 = v85;
    sub_2CE9C0();
    _Block_release(v63);

    (*(v82 + 8))(v65, v66);
    (*(v79 + 8))(v64, v81);
    (*(v88 + 8))(v86, v10);
    (*(v90 + 8))(v87, v62);
  }

  return result;
}

uint64_t sub_EB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v5 = sub_20410(&qword_350500, &unk_2D3B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_2CC100();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v17, v18, "PlayMediaAppResolver#postResolve: Sending A/B evaluation SELF message", v19, 2u);
  }

  v20 = (*(v13 + 8))(v15, v12);
  v21 = *(v26 + qword_350470);
  v22 = *(v21 - 8);
  __chkstk_darwin(v20);
  v24 = &v26 - v23;
  (*(v9 + 16))(v11, v27, v8);
  sub_2CB930();
  sub_2CB940();
  sub_30B8(v7, &qword_350500, &unk_2D3B50);
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_EBA74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v7 = *v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
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
    _os_log_impl(&dword_0, v13, v14, "PlayMediaAppResolver#forcedResolution...", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = *(*v4 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v4 + v16, v21);
  sub_35E0(v21, v21[3]);
  LOBYTE(v16) = sub_2CC500();
  sub_306C(v21);
  sub_35E0((v4 + qword_350440), *(v4 + qword_350440 + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = v16 & 1;
  *(v17 + 40) = v20;
  *(v17 + 48) = a3;
  *(v17 + 56) = v7;

  v18 = a1;

  sub_2CCA90();
}

uint64_t sub_EBD74(uint64_t a1, void *a2, void *a3, int a4, void (*a5)(uint64_t), void (*a6)(uint64_t), uint64_t a7)
{
  v155 = a7;
  v163 = a6;
  v162 = a5;
  v180 = a4;
  v179 = a3;
  v176 = a2;
  v8 = sub_20410(&qword_3504C8, &unk_2D3B18);
  __chkstk_darwin(v8 - 8);
  v150 = &v143 - v9;
  v154 = sub_2CC990();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_2CC7E0();
  v157 = *(v173 - 8);
  __chkstk_darwin(v173);
  v156 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2C8E30();
  v171 = *(v175 - 8);
  v12 = __chkstk_darwin(v175);
  v144 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v178 = &v143 - v15;
  v151 = v16;
  __chkstk_darwin(v14);
  v177 = &v143 - v17;
  v18 = sub_2CCA10();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v159 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v143 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v143 - v26;
  v148 = v28;
  __chkstk_darwin(v25);
  v30 = &v143 - v29;
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v174 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v143 = &v143 - v36;
  __chkstk_darwin(v35);
  v38 = &v143 - v37;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v39 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v182 = v32;
  v40 = *(v32 + 16);
  v167 = v39;
  v181 = v31;
  v166 = v32 + 16;
  v165 = v40;
  v40(v38, v39, v31);
  v41 = *(v19 + 16);
  v41(v30, a1, v18);
  v41(v27, a1, v18);
  v147 = v19 + 16;
  v146 = v41;
  v41(v24, a1, v18);
  v172 = v38;
  v42 = sub_2CDFE0();
  v43 = sub_2CE670();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v24;
  v46 = v18;
  v161 = a1;
  v160 = v18;
  v149 = v19;
  if (v44)
  {
    v47 = v19;
    v48 = swift_slowAlloc();
    *v48 = 134218496;
    sub_2CCA00();
    v50 = v49;
    v51 = *(v47 + 8);
    v51(v30, v46);
    *(v48 + 4) = v50;
    *(v48 + 12) = 2048;
    sub_2CC9F0();
    v53 = v52;
    v51(v27, v46);
    *(v48 + 14) = v53;
    *(v48 + 22) = 2048;
    v54 = sub_2CC9C0();
    v51(v45, v46);
    *(v48 + 24) = v54;
    _os_log_impl(&dword_0, v42, v43, "PlayMediaAppResolver#forcedResolution rates - disambiguationRate:%f, disambiguationAdditionalRateFirstParty:%f, rateLimitSeconds:%ld", v48, 0x20u);
  }

  else
  {
    v55 = *(v19 + 8);
    v55(v45, v18);

    v55(v27, v18);
    v55(v30, v18);
  }

  v56 = *(v182 + 8);
  v182 += 8;
  v164 = v56;
  v56(v172, v181);
  v57 = v176;
  v58 = *(*v176 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v57 + v58, v184);
  sub_35E0(v184, v185);
  LODWORD(v170) = sub_2CC550();
  sub_306C(v184);
  LODWORD(v172) = sub_2CE730();
  v59 = sub_2CBD10();
  v61 = v60;
  v62 = sub_2CBD50();
  v64 = v175;
  v65 = v177;
  if (v61)
  {
    if (v62 == v59 && v61 == v63)
    {

      LODWORD(v169) = 1;
    }

    else
    {
      LODWORD(v169) = sub_2CEEA0();
    }
  }

  else
  {

    LODWORD(v169) = 0;
  }

  sub_EEF48(v66, 0.0, 1.0);
  v68 = v67;
  sub_EEF48(v69, 0.0, 1.0);
  v71 = v70;
  sub_2CCA00();
  v73 = v68 <= v72;
  sub_2C8E20();
  sub_EEAC(v57 + v58, v184);
  sub_35E0(v184, v185);
  v74 = v178;
  sub_2CC530();
  sub_306C(v184);
  sub_2C8DD0();
  v76 = v75;
  v77 = v171 + 8;
  v168 = *(v171 + 8);
  v168(v74, v64);
  v78 = sub_2CC9C0();
  v145 = v76 > v78;
  v79 = v156;
  sub_2CC7D0();
  v80 = sub_2CC7C0();
  (v157)[1](v79, v173);
  v81 = swift_allocObject();
  v173 = v81;
  *(v81 + 16) = 0;
  v82 = (v81 + 16);
  if (qword_34C028 != -1)
  {
    swift_once();
  }

  v83 = qword_35F860;
  if (*(qword_35F860 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_requestCancelled) == 1 && (*(qword_35F860 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) & v172 & 1) != 0)
  {
    v84 = *(qword_35F860 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch);
    if (v84)
    {
      v85 = v84;
      v86 = [v179 mediaSearch];
      if (v86 && (v87 = v86, sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr), v88 = sub_2CEB30(), v87, (v88 & 1) != 0))
      {
        v157 = v85;
        v89 = v82;
        v90 = v178;
        sub_2C8E20();
        v91 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_time;
        swift_beginAccess();
        v92 = v83 + v91;
        v93 = v144;
        (*(v171 + 16))(v144, v92, v64);
        sub_2C8DD0();
        v95 = v94;
        v96 = v93;
        v97 = v168;
        v168(v96, v64);
        v97(v90, v64);
        sub_2CCC50();
        if (v95 >= v98)
        {
        }

        else
        {
          *v89 = (*(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_previousDisambiguationCancelled) & 1) == 0;
          v99 = v143;
          v100 = v181;
          v165(v143, v167, v181);
          v101 = sub_2CDFE0();
          LODWORD(v156) = sub_2CE690();
          if (os_log_type_enabled(v101, v156))
          {
            v102 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v183 = v144;
            *v102 = 136315138;
            v103 = *(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId + 8);
            v184[0] = *(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId);
            v184[1] = v103;

            sub_20410(&qword_34CCC0, &unk_2D0DE0);
            v104 = sub_2CE2A0();
            v106 = sub_3F08(v104, v105, &v183);

            *(v102 + 4) = v106;
            _os_log_impl(&dword_0, v101, v156, "PlayMediaAppResolver#forcedResolution found this request as repeated, inferred, recent followup to the prior intent: %s resulting in a cancelled result after app selection used", v102, 0xCu);
            sub_306C(v144);

            v107 = v143;
            v108 = v181;
          }

          else
          {

            v107 = v99;
            v108 = v100;
          }

          v164(v107, v108);
          v65 = v177;
        }

        v82 = v89;
      }

      else
      {
      }
    }
  }

  v109 = v73 | v180;
  v110 = *v82;
  v111 = *v82;
  if (!*v82 && ((v170 ^ 1) & 1) == 0 && ((v172 ^ 1) & 1) == 0 && ((v169 ^ 1) & 1) == 0)
  {
    v112 = v180;
    if (v76 > v78)
    {
      v112 = v80 | v180;
    }

    v110 = v109 & v112;
  }

  LODWORD(v157) = v80 | v180;
  *(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_previousDisambiguationCancelled) = v111;
  v113 = v181;
  v165(v174, v167, v181);
  v114 = v173;

  v115 = sub_2CDFE0();
  v116 = sub_2CE690();
  v117 = os_log_type_enabled(v115, v116);
  v158 = v77;
  if (v117)
  {
    v118 = v180;
    v119 = v145 | v180;
    v120 = v114;
    v121 = swift_slowAlloc();
    *v121 = 67111936;
    *(v121 + 4) = v110 & 1;
    *(v121 + 8) = 1024;
    swift_beginAccess();
    *(v121 + 10) = *(v120 + 16);

    *(v121 + 14) = 1024;
    *(v121 + 16) = v170 & 1;
    *(v121 + 20) = 1024;
    *(v121 + 22) = v172 & 1;
    *(v121 + 26) = 1024;
    *(v121 + 28) = v169 & 1;
    *(v121 + 32) = 1024;
    *(v121 + 34) = v109 & 1;
    *(v121 + 38) = 2048;
    *(v121 + 40) = v76;
    *(v121 + 48) = 1024;
    *(v121 + 50) = v119 & 1;
    *(v121 + 54) = 1024;
    v65 = v177;
    *(v121 + 56) = v118 & 1;
    *(v121 + 60) = 1024;
    v64 = v175;
    *(v121 + 62) = v157 & 1;
    *(v121 + 66) = 2048;
    *(v121 + 68) = v68;
    *(v121 + 76) = 2048;
    *(v121 + 78) = v71;
    _os_log_impl(&dword_0, v115, v116, "PlayMediaAppResolver#forcedResolution forced disambiguation test?: %{BOOL}d ---- repeatedCancelled?: %{BOOL}d disambiguationEnabled?:%{BOOL}d, appInferred?:%{BOOL}d, bundleIdentifierIsSentinel?:%{BOOL}d, rateTest?:%{BOOL}d, disambiguationElapsed?:%f, interactionFrequencyTest?:%{BOOL}d disambiguateAlways?:%{BOOL}d, recordStoringPermitted?:%{BOOL}d,rateRoll:%f, rateRoll1p:%f", v121, 0x56u);
    v113 = v181;
  }

  else
  {
  }

  v164(v174, v113);
  if (v110)
  {
    v122 = (v176 + *(*v176 + class metadata base offset for CommonAppResolver + 48));
    v182 = v122[3];
    v174 = v122[4];
    v181 = sub_35E0(v122, v182);
    v172 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v183 = v179;
    v123 = v153;
    v124 = v152;
    v125 = v154;
    (*(v153 + 104))(v152, enum case for AcceptedSpeakerIdConfidence.executeOnCompanionConfidence(_:), v154);
    v170 = sub_2CCB50();
    v169 = v126;
    (*(v123 + 8))(v124, v125);
    v146(v159, v161, v160);
    v127 = v171;
    (*(v171 + 16))(v178, v65, v64);
    v128 = v149;
    v129 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v130 = v129 + v148;
    v131 = (v129 + v148) & 0xFFFFFFFFFFFFFFF8;
    v132 = (v131 + 23) & 0xFFFFFFFFFFFFFFF8;
    v167 = (v132 + 23) & 0xFFFFFFFFFFFFFFF8;
    v133 = (*(v127 + 80) + v167 + 8) & ~*(v127 + 80);
    v134 = (v151 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    v136 = v179;
    *(v135 + 16) = v179;
    *(v135 + 24) = v71;
    (*(v128 + 32))(v135 + v129, v159, v160);
    *(v135 + v130) = v180 & 1;
    v64 = v175;
    *(v135 + v131 + 8) = v173;
    v137 = (v135 + v132);
    v138 = v163;
    *v137 = v162;
    v137[1] = v138;
    *(v135 + v167) = v176;
    (*(v127 + 32))(v135 + v133, v178, v64);
    *(v135 + v134) = v155;
    v65 = v177;

    v139 = v136;

    sub_2CC6C0();
  }

  else
  {
    v140 = type metadata accessor for BundleResolutionResult(0);
    v141 = v150;
    (*(*(v140 - 8) + 56))(v150, 1, 1, v140);
    v162(v141);
    sub_30B8(v141, &qword_3504C8, &unk_2D3B18);
  }

  v168(v65, v64);
}

uint64_t sub_ED10C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, void *a8, double a9, uint64_t (**a10)(char *, uint64_t))
{
  v118 = a8;
  v120 = a7;
  v121 = a6;
  v124 = a5;
  v117 = a4;
  v122 = a3;
  v116 = a2;
  v12 = sub_20410(&qword_3504C8, &unk_2D3B18);
  __chkstk_darwin(v12 - 8);
  v119 = v99 - v13;
  v115 = sub_2CC820();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2C8E30();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v112 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2CE150();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2CE180();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2CCA10();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99[1] = v18;
  v100 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2CE000();
  v126 = *(v123 - 8);
  v19 = __chkstk_darwin(v123);
  v109 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = v99 - v21;
  v130 = sub_2CB7D0();
  v22 = *(v130 - 8);
  __chkstk_darwin(v130);
  v24 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  if (v25)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_2DBFC(0, v25, 0);
    v26 = aBlock[0];
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v129 = v28;
    v29 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v128 = *(v27 + 56);
    v127 = (v27 - 8);
    do
    {
      v30 = v130;
      v31 = v27;
      v129(v24, v29, v130);
      v32 = sub_2CB7B0();
      v34 = v33;
      (*v127)(v24, v30);
      aBlock[0] = v26;
      v36 = v26[2];
      v35 = v26[3];
      if (v36 >= v35 >> 1)
      {
        sub_2DBFC((v35 > 1), v36 + 1, 1);
        v26 = aBlock[0];
      }

      v26[2] = v36 + 1;
      v37 = &v26[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v29 += v128;
      --v25;
      v27 = v31;
    }

    while (v25);
  }

  aBlock[0] = v26;
  sub_EEDBC();
  v38 = aBlock[0];
  v39 = *(aBlock[0] + 16);
  v40 = _swiftEmptyArrayStorage;
  if (v39)
  {
    v41 = 0;
    v42 = aBlock[0] + 40;
    v43 = v39 - 1;
    do
    {
      v44 = v42 + 16 * v41;
      v45 = v41;
      while (1)
      {
        if (v45 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        v24 = *(v44 - 8);
        v46 = *v44;
        v41 = v45 + 1;

        if ((sub_2CBDB0() & 1) == 0)
        {
          break;
        }

        v44 += 16;
        ++v45;
        if (v39 == v41)
        {
          goto LABEL_19;
        }
      }

      v130 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v40;
      v48 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2DBFC(0, v40[2] + 1, 1);
        v40 = aBlock[0];
      }

      v50 = v40[2];
      v49 = v40[3];
      if (v50 >= v49 >> 1)
      {
        sub_2DBFC((v49 > 1), v50 + 1, 1);
        v40 = aBlock[0];
      }

      v40[2] = v50 + 1;
      v51 = &v40[2 * v50];
      v51[4] = v24;
      v51[5] = v46;
      v43 = v48;
      v52 = v48 == v45;
      v42 = v130;
    }

    while (!v52);
  }

LABEL_19:
  v39 = v40[2];

  v53 = [v116 mediaSearch];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 mediaType];

    LODWORD(v24) = v55 == &dword_8 + 2;
  }

  else
  {
    LODWORD(v24) = 0;
  }

  v44 = v124;
  v45 = v123;
  sub_2CC9F0();
  LOBYTE(v42) = (v56 >= a9) | v117;
  swift_beginAccess();
  v57 = *(v44 + 16);
  v130 = v39;
  if (v57)
  {
    LOBYTE(v39) = 1;
  }

  else
  {
    LOBYTE(v39) = (v39 != 0) | v24 | v42;
  }

  if (qword_34BF58 != -1)
  {
LABEL_38:
    swift_once();
  }

  v58 = sub_3ED0(v45, static Logger.default);
  swift_beginAccess();
  v128 = *(v126 + 16);
  v128(v125, v58, v45);

  v59 = sub_2CDFE0();
  v60 = sub_2CE690();
  v61 = os_log_type_enabled(v59, v60);
  v129 = v58;
  if (v61)
  {
    v62 = v130 != 0;
    v63 = v44;
    v64 = swift_slowAlloc();
    *v64 = 67110144;
    *(v64 + 4) = v39 & 1;
    *(v64 + 8) = 1024;
    *(v64 + 10) = v62;
    *(v64 + 14) = 1024;
    *(v64 + 16) = v24;
    *(v64 + 20) = 1024;
    *(v64 + 22) = v42 & 1;
    *(v64 + 26) = 1024;
    swift_beginAccess();
    *(v64 + 28) = *(v63 + 16);
    v45 = v123;

    _os_log_impl(&dword_0, v59, v60, "PlayMediaAppResolver#forcedResolution firstPartyDisambiguate?:%{BOOL}d --- default apps test. contains3p?:%{BOOL}d audiobook?:%{BOOL}d firstPartyRateTest?:%{BOOL}d repeatedCancelled?:%{BOOL}d", v64, 0x20u);
  }

  else
  {
  }

  v65 = *(v126 + 8);
  v126 += 8;
  v65(v125, v45);
  if (v39)
  {
    v125 = v65;
    v127 = a10;
    v66 = v130 != 0;
    v67 = sub_2CBA10();
    v68 = v101;
    v69 = v100;
    v70 = v102;
    (*(v101 + 16))(v100, v122, v102);
    v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v66;
    *(v72 + 24) = v118;
    (*(v68 + 32))(v72 + v71, v69, v70);
    v134 = sub_F17EC;
    v135 = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A4294;
    v133 = &unk_334C18;
    v73 = _Block_copy(aBlock);

    v74 = v103;
    sub_2CE160();
    v131 = _swiftEmptyArrayStorage;
    sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v75 = v105;
    v76 = v108;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v73);

    (*(v107 + 8))(v75, v76);
    (*(v104 + 8))(v74, v106);

    v77 = v109;
    v128(v109, v129, v45);

    v78 = sub_2CDFE0();
    v79 = sub_2CE690();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136315138;
      v82 = sub_2CE420();
      v84 = sub_3F08(v82, v83, aBlock);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_0, v78, v79, "PlayMediaAppResolver#forcedResolution disambiguating apps: %s", v80, 0xCu);
      sub_306C(v81);
    }

    (v125)(v77, v45);
    v85 = v119;
    v86 = v115;
    v87 = v114;
    byte_350430 = 1;
    (*(v110 + 16))(v112, v127, v111);
    v88 = v118;
    v89 = v118 + *(*v118 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_F9A0(v89, *(v89 + 24));
    sub_2CC540();
    swift_endAccess();
    sub_EEAC(v88 + qword_350440, aBlock);
    sub_35E0(aBlock, v133);
    v90 = v124;
    swift_beginAccess();
    v91 = &enum case for DisambiguateItemsReason.repeatCancelled(_:);
    if (!*(v90 + 16))
    {
      v91 = &enum case for DisambiguateItemsReason.forced(_:);
    }

    v92 = v113;
    (*(v87 + 104))(v113, *v91, v86);
    sub_2CCAA0();
    (*(v87 + 8))(v92, v86);
    sub_306C(aBlock);
    v93 = *(sub_20410(&qword_3504D0, &qword_2D3B28) + 48);
    *v85 = v38;
    v94 = enum case for ResolutionResultType.ForcedDisambiguation(_:);
    v95 = sub_2CC5F0();
    (*(*(v95 - 8) + 104))(v85 + v93, v94, v95);
    v96 = type metadata accessor for BundleResolutionResult(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v96 - 8) + 56))(v85, 0, 1, v96);
  }

  else
  {

    v97 = type metadata accessor for BundleResolutionResult(0);
    v85 = v119;
    (*(*(v97 - 8) + 56))(v119, 1, 1, v97);
  }

  v121(v85);
  return sub_30B8(v85, &qword_3504C8, &unk_2D3B18);
}