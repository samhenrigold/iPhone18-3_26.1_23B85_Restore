uint64_t sub_1BDD00(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v15[2] = a2;
  v16 = sub_20410(&qword_34DA20, &qword_2D1900);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = v15 - v3;
  sub_20410(&qword_354150, &qword_2D6298);
  v5 = *(v2 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2D0E40;
  v8 = v7 + v6;
  v9 = enum case for DeviceType.television(_:);
  v10 = sub_2CDD00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 104);
  v12(v8, v9, v10);
  v13 = *(v11 + 56);
  v13(v8, 0, 1, v10);
  v12(v8 + v5, enum case for DeviceType.appleTv(_:), v10);
  v13(v8 + v5, 0, 1, v10);
  sub_2CDEA0();
  LOBYTE(v10) = sub_1955C0(v4, v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_30B8(v4, &qword_34DA20, &qword_2D1900);
  return v10 & 1;
}

BOOL sub_1BDF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34DA10, &qword_2D18F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_20410(&qword_34DA18, &qword_2D18F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_20410(&qword_34DA28, qword_2D1908);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_20410(&qword_34DA20, &qword_2D1900);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  sub_2CDEA0();
  v16 = sub_2CDD00();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  sub_30B8(v15, &qword_34DA20, &qword_2D1900);
  if (v17 != 1 && !sub_1BCEE8(a1, a2))
  {
    sub_2CDEF0();
    v18 = sub_2CDDD0();
    v19 = (*(*(v18 - 8) + 48))(v12, 1, v18);
    sub_30B8(v12, &qword_34DA28, qword_2D1908);
    if (v19 == 1)
    {
      sub_2CDF00();
      if (v20)
      {
      }

      else
      {
        sub_2CDE60();
        v21 = sub_2CDF70();
        v22 = (*(*(v21 - 8) + 48))(v9, 1, v21);
        sub_30B8(v9, &qword_34DA18, &qword_2D18F8);
        if (v22 == 1)
        {
          sub_2CDE70();
          v23 = sub_2CDF80();
          v24 = (*(*(v23 - 8) + 48))(v6, 1, v23) == 1;
          sub_30B8(v6, &qword_34DA10, &qword_2D18F0);
          return v24;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1BE2A4(uint64_t a1, uint64_t a2)
{
  v32 = sub_2CDD50();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDEB0();
  v9 = *(v8 + 16);
  if (v9)
  {
    v28[1] = a1;
    v28[2] = v2;
    v28[3] = a2;
    v34 = _swiftEmptyArrayStorage;
    sub_2DBFC(0, v9, 0);
    v10 = v34;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = *(v11 + 64);
    v28[0] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v30 = *(v11 + 56);
    v31 = v12;
    v29 = (v11 - 8);
    do
    {
      v15 = v32;
      v16 = v11;
      v31(v7, v14, v32);
      v17 = sub_2CDD40();
      v19 = v18;
      (*v29)(v7, v15);
      v34 = v10;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        sub_2DBFC((v20 > 1), v21 + 1, 1);
        v10 = v34;
      }

      v10[2] = v21 + 1;
      v22 = &v10[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v14 += v30;
      --v9;
      v11 = v16;
    }

    while (v9);
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v23 = sub_2CDE80();
  v24 = sub_2CDE90();
  v33 = v23;
  sub_80D34(v24);
  v25 = sub_2CDEC0();
  sub_80D34(v25);
  v26 = sub_2CDED0();
  sub_80D34(v26);
  sub_80D34(v10);
  return v33;
}

uint64_t sub_1BE508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE550()
{
  v1 = sub_2C8EC0();
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2CB260();
  v42 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = sub_2CB1D0();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CB350();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_354178, &unk_2D62A0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v43 = &v39 - v20;
  __chkstk_darwin(v19);
  v22 = &v39 - v21;
  if (sub_2CB460())
  {
    v40 = v12;
    v41 = v11;
    v43 = v0;
    sub_2CCEE0();
    swift_allocObject();
    sub_2CCED0();
    sub_2CB140();
    sub_2CB330();

    sub_2CCE30();

    sub_2CB140();
    sub_2CB300();

    sub_2CCDF0();

    sub_2CB140();
    sub_2CB2D0();

    sub_2CCEA0();

    sub_2CB140();
    sub_2CB310();

    sub_2CCE10();

    sub_2CB140();
    sub_2CB2F0();

    sub_2CCDE0();

    sub_2CB140();
    sub_2CB2E0();

    sub_2CCEB0();

    sub_2CB140();
    sub_2CB320();

    sub_2CCE20();

    sub_2CB140();
    sub_2CB280();

    sub_2CCE00();

    sub_2CB140();
    sub_2CB2A0();

    sub_2CCE80();

    sub_2CB140();
    sub_2CB290();

    sub_2CCE70();

    v23 = sub_2CB120();
    [v23 isEyesFree];

    sub_2CCE40();

    sub_2CB140();
    sub_2CB2B0();

    sub_2CCE90();

    sub_2CB140();
    v24 = sub_2CB330();

    if ((v24 & 1) == 0)
    {
      v39 = v18;
      sub_2CB130();
      sub_2CD3C0();

      sub_2CB250();
      v31 = sub_2CB230();
      v32 = *(v42 + 8);
      v32(v6, v3);
      v32(v8, v3);
      if ((v31 & 1) == 0)
      {
        sub_2CB130();
        sub_2CD3C0();

        sub_2CB220();
        sub_2CB230();
        v32(v6, v3);
        v32(v8, v3);
      }

      v18 = v39;
    }

    sub_2CCEC0();

    sub_2CB130();
    sub_2CD3E0();

    sub_2CB340();
    (*(v44 + 8))(v14, v40);
    sub_2CCD90();
    v33 = sub_2CCDA0();
    v34 = *(*(v33 - 8) + 56);
    v34(v22, 0, 1, v33);
    sub_2CCE60();

    sub_1BF4B8(v22);
    sub_2CB130();
    v35 = v41;
    sub_2CD3A0();

    sub_2CB1C0();
    (*(v45 + 8))(v35, v46);
    sub_2CCD90();
    v34(v22, 0, 1, v33);
    sub_2CCE50();

    sub_1BF4B8(v22);
    sub_2CB5C0();
    sub_2CCD90();
    v34(v18, 0, 1, v33);
    sub_2CCDB0();

    v36 = sub_1BF4B8(v18);
    sub_1BF520(v36);
    sub_2CCD90();
    v34(v22, 0, 1, v33);
    sub_2CCDD0();

    sub_1BF4B8(v22);
    sub_2CB140();
    v37 = v47;
    sub_2CB270();

    sub_2C8EA0();
    (*(v48 + 8))(v37, v49);
    sub_2CCD90();
    v34(v22, 0, 1, v33);
    sub_2CCDC0();

    sub_1BF4B8(v22);
    v30 = sub_2CCEF0();
  }

  else
  {
    sub_2CA880();
    sub_2CCEE0();
    swift_allocObject();
    sub_2CCED0();
    sub_35E0(v50, v51);
    sub_2C9B00();
    sub_2CCE30();

    sub_35E0(v50, v51);
    sub_2C9AD0();
    sub_2CCDF0();

    sub_35E0(v50, v51);
    sub_2C9AA0();
    sub_2CCEA0();

    sub_35E0(v50, v51);
    sub_2C9AE0();
    sub_2CCE10();

    sub_35E0(v50, v51);
    sub_2C9AC0();
    sub_2CCDE0();

    sub_35E0(v50, v51);
    sub_2C9AB0();
    sub_2CCEB0();

    sub_35E0(v50, v51);
    sub_2C9AF0();
    sub_2CCE20();

    sub_35E0(v50, v51);
    sub_2C9A50();
    sub_2CCE00();

    sub_35E0(v50, v51);
    sub_2C9A80();
    sub_2CCE80();

    sub_35E0(v50, v51);
    sub_2C9A70();
    sub_2CCE70();

    sub_35E0(v50, v51);
    sub_2C9A20();
    sub_2CCE40();

    sub_35E0(v50, v51);
    sub_2C9A90();
    sub_2CCE90();

    sub_35E0(v50, v51);
    sub_2C9B10();
    sub_2CCEC0();

    sub_35E0(v50, v51);
    sub_2C9A60();
    sub_2CB340();
    (*(v44 + 8))(v14, v12);
    sub_2CCD90();
    v25 = sub_2CCDA0();
    v26 = *(*(v25 - 8) + 56);
    v26(v22, 0, 1, v25);
    sub_2CCE60();

    sub_1BF4B8(v22);
    sub_35E0(v50, v51);
    sub_2C9A40();
    sub_2CB1C0();
    (*(v45 + 8))(v11, v46);
    sub_2CCD90();
    v26(v22, 0, 1, v25);
    sub_2CCE50();

    sub_1BF4B8(v22);
    sub_35E0(v50, v51);
    sub_2C9A10();
    v27 = v43;
    sub_2CCD90();
    v26(v27, 0, 1, v25);
    sub_2CCDB0();

    v28 = sub_1BF4B8(v27);
    sub_1BF520(v28);
    sub_2CCD90();
    v26(v22, 0, 1, v25);
    sub_2CCDD0();

    sub_1BF4B8(v22);
    sub_35E0(v50, v51);
    v29 = v47;
    sub_2C9A30();
    sub_2C8EA0();
    (*(v48 + 8))(v29, v49);
    sub_2CCD90();
    v26(v22, 0, 1, v25);
    sub_2CCDC0();

    sub_1BF4B8(v22);
    v30 = sub_2CCEF0();
    sub_306C(v50);
  }

  return v30;
}

uint64_t sub_1BF4B8(uint64_t a1)
{
  v2 = sub_20410(&qword_354178, &unk_2D62A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF520(uint64_t a1)
{
  if (sub_2CB650())
  {
    return 0x646F70656D6F68;
  }

  if (sub_2CB620())
  {
    return 0x61775F656C707061;
  }

  if (sub_2CB5E0())
  {
    return 6513005;
  }

  if (sub_2CB630())
  {
    return 0x76745F656C707061;
  }

  if (sub_2CB610())
  {
    return 0x656E6F687069;
  }

  if (sub_2CB5F0())
  {
    return 1684107369;
  }

  if (sub_2CB640())
  {
    return 0x79616C705F726163;
  }

  return 0x746375646F7270;
}

uint64_t sub_1BF638(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v3 - 8);
  v88 = &v77 - v4;
  v5 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v5 - 8);
  v80 = &v77 - v6;
  v7 = sub_2CAA00();
  v81 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CA870();
  v95 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v86 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v96 = &v77 - v12;
  v13 = sub_2CA7B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v90 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v83 = &v77 - v22;
  __chkstk_darwin(v21);
  v24 = (&v77 - v23);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v82 = v7;
  v25 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v26 = *(v18 + 16);
  v93 = v18 + 16;
  v94 = v25;
  v92 = v26;
  v26(v24, v25, v17);
  v27 = *(v14 + 16);
  v85 = v14 + 16;
  v84 = v27;
  v27(v16, v98, v13);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  v97 = v17;
  v30 = v18;
  v31 = v29;
  v32 = os_log_type_enabled(v28, v29);
  v87 = v13;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v91 = v14;
    v35 = v34;
    v99[0] = v34;
    *v33 = 136315138;
    sub_C72E8();
    v89 = v30;
    v36 = sub_2CEE70();
    v78 = v9;
    v37 = v2;
    v39 = v38;
    (*(v91 + 8))(v16, v13);
    v40 = sub_3F08(v36, v39, v99);
    v2 = v37;
    v9 = v78;

    *(v33 + 4) = v40;
    _os_log_impl(&dword_0, v28, v31, "DirectActionAudioSearchFlowFrame#onInput with input: %s", v33, 0xCu);
    sub_306C(v35);
    v14 = v91;

    v41 = v89;
    v42 = *(v89 + 8);
    v43 = v24;
    v44 = v97;
    v42(v43, v97);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v42 = *(v30 + 8);
    v45 = v24;
    v44 = v97;
    v42(v45, v97);
    v41 = v30;
  }

  if (*(v2 + 72) != 1)
  {
    v48 = v90;
    v92(v90, v94, v44);
    v49 = sub_2CDFE0();
    v50 = sub_2CE680();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "DirectActionAudioSearchFlowFrame#on not an audioSearch direct invocation", v51, 2u);
    }

    v42(v48, v44);
    return 0;
  }

  v46 = v96;
  sub_2CA790();
  v47 = v95;
  if ((*(v95 + 88))(v46, v9) != enum case for Parse.directInvocation(_:))
  {
    v89 = v41;
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v53 = (v52 + 16);
    *(v52 + 24) = -1;
    v54 = dispatch_group_create();
    dispatch_group_enter(v54);
    v78 = v2;
    v55 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playFlowStrategy);
    v56 = v86;
    sub_2CA790();
    v57 = v54;
    sub_A3148(v56, 0, v55, v52, v57);

    v58 = *(v47 + 8);
    v95 = v47 + 8;
    v58(v56, v9);
    v90 = v57;
    sub_2CE960();
    swift_beginAccess();
    v59 = *(v52 + 24);
    if (v59 != 255 && (v59 & 1) == 0)
    {
      v97 = v52;
      v91 = v14;
      v67 = *v53;
      v68 = *(v78 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent);
      *(v78 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_playMediaIntent) = *v53;
      sub_1C0764(v67, v59);
      sub_195158(v67, 0);

      v69 = v86;
      sub_2CA790();
      v70 = v80;
      sub_2CA7E0();
      v58(v69, v9);
      v71 = v81;
      v72 = v82;
      if ((*(v81 + 48))(v70, 1, v82) == 1)
      {

        sub_A4194(v67, v59);
        sub_30B8(v70, &qword_34CC90, qword_2D40E0);
      }

      else
      {
        v73 = v79;
        (*(v71 + 32))(v79, v70, v72);
        sub_2CCC10();
        sub_2CCC00();
        sub_2CCBC0();

        sub_A4194(v67, v59);

        (*(v71 + 8))(v73, v72);
      }

      v2 = v78;
      v14 = v91;
      v58(v96, v9);
      goto LABEL_23;
    }

    v60 = v83;
    v61 = v97;
    v92(v83, v94, v97);
    v62 = sub_2CDFE0();
    v63 = sub_2CE680();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "DirectActionAudioSearchFlowFrame#on received non-directInvocation parse which didn't contain a play media intent. Returning false to give another flow a chance to grab this intent.", v64, 2u);

      v65 = v90;
    }

    else
    {
      v65 = v62;
      v62 = v90;
    }

    v42(v60, v61);

    v58(v96, v9);
    return 0;
  }

  (*(v47 + 8))(v96, v9);
LABEL_23:
  v74 = v87;
  v75 = v88;
  v84(v88, v98, v87);
  (*(v14 + 56))(v75, 0, 1, v74);
  v76 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin27DirectActionAudioSearchFlow_input;
  swift_beginAccess();
  sub_A4888(v75, v2 + v76);
  swift_endAccess();
  return 1;
}

uint64_t sub_1C00B8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_2C9EC0();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, v37, qword_34C798, &qword_2D0DA0);
  if (v38)
  {
    v31 = a3;
    v32 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v15 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v14, v15, v11);
    swift_errorRetain();
    v16 = sub_2CDFE0();
    v17 = sub_2CE680();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = v8;
      v19 = v18;
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v19 = 136315138;
      swift_getErrorValue();
      v34[0] = sub_2CEEF0();
      v34[1] = v20;
      v21 = sub_2CE3C0();
      v23 = sub_3F08(v21, v22, v35);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "DirectActionAudioSearchFlowFrame#execute Could not properly create dialog %s, silently failing...", v19, 0xCu);
      sub_306C(v29);

      v8 = v30;
    }

    (*(v12 + 8))(v14, v11);
    sub_2C9EB0();
    v31(v10);

    return (*(v33 + 8))(v10, v8);
  }

  else
  {
    sub_F338(v37, v36);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_EEAC(Strong + 80, v34);

      sub_35E0(v34, v34[3]);
      v26 = swift_allocObject();
      v26[2] = a2;
      v26[3] = a3;
      v26[4] = a4;

      sub_2CA010();

      sub_306C(v36);
      v27 = v34;
    }

    else
    {
      v27 = v36;
    }

    return sub_306C(v27);
  }
}

void sub_1C0530(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C060C()
{
  result = qword_354320;
  if (!qword_354320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354320);
  }

  return result;
}

uint64_t sub_1C06AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DirectActionAudioSearchFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1C06F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_353020, &unk_2D0970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1C0764(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_195158(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1C077C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v7 = v6;
  v98 = a5;
  v99 = a6;
  v97 = a4;
  v95 = a3;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v90 = *(v10 - 8);
  v91 = *(v90 + 64);
  __chkstk_darwin(v10 - 8);
  v92 = v81 - v11;
  v85 = sub_2CB260();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v86 = v81 - v19;
  __chkstk_darwin(v18);
  v21 = v81 - v20;
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v87 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v89 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v25;
  __chkstk_darwin(v24);
  v27 = v81 - v26;
  v28 = sub_2CA130();
  (*(*(v28 - 8) + 16))(v27, a1, v28);
  v29 = *(v23 + 56);
  v96 = v27;
  *&v27[v29] = a2;
  v30 = qword_34BF58;
  v31 = a2;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v94 = *(v14 + 16);
  v94(v21, v32, v13);
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v93 = v13;
    v36 = v35;
    v37 = swift_slowAlloc();
    v82 = v17;
    v38 = v37;
    v102[0] = v37;
    *v36 = 136446210;
    v39 = sub_2CCCA0();
    v81[1] = v14 + 16;
    v41 = sub_3F08(v39, v40, v102);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v33, v34, "SiriAudioOutputProvider#completionViewOutput... %{public}s", v36, 0xCu);
    sub_306C(v38);
    v17 = v82;

    v13 = v93;
  }

  v42 = *(v14 + 8);
  v42(v21, v13);
  sub_35E0((v7 + 16), *(v7 + 40));
  if (sub_2CC4B0())
  {
    v43 = sub_2CB460();
    v82 = v42;
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      sub_2CB180();
      v44 = sub_2CB170();
    }

    v58 = v86;
    v94(v86, v32, v13);

    v59 = sub_2CDFE0();
    v60 = sub_2CE660();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v93 = v13;
      v63 = v62;
      v102[0] = v62;
      *v61 = 136315138;
      sub_2CB130();
      v64 = v83;
      sub_2CD3C0();

      v65 = v58;
      v66 = sub_2CB200();
      v68 = v67;
      (*(v84 + 8))(v64, v85);
      v69 = sub_3F08(v66, v68, v102);

      *(v61 + 4) = v69;
      _os_log_impl(&dword_0, v59, v60, "SiriAudioOutputProvider#completionViewOutput with responseMode = %s", v61, 0xCu);
      sub_306C(v63);

      v70 = v65;
      v71 = v93;
    }

    else
    {

      v70 = v58;
      v71 = v13;
    }

    (v82)(v70, v71);
    v72 = v92;
    sub_F3F4(v95, v92, &unk_353020, &unk_2D0970);
    v73 = v96;
    v74 = v89;
    sub_F3F4(v96, v89, &qword_34C6E8, &unk_2D0FF0);
    v75 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v76 = (v91 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = (*(v87 + 80) + v77 + 8) & ~*(v87 + 80);
    v79 = swift_allocObject();
    sub_14A58(v72, v79 + v75, &unk_353020, &unk_2D0970);
    *(v79 + v76) = v97;
    *(v79 + v77) = v44;
    sub_14A58(v74, v79 + v78, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v57 = v73;
    v55 = &qword_34C6E8;
    v56 = &unk_2D0FF0;
  }

  else
  {
    v94(v17, v32, v13);
    v45 = sub_2CDFE0();
    v46 = sub_2CE690();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v102[0] = v48;
      *v47 = 136446210;
      v49 = sub_2CCCA0();
      v51 = v17;
      v52 = sub_3F08(v49, v50, v102);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_0, v45, v46, "SiriAudioOutputProvider#completionViewOutput creating completionViewOutput %{public}s", v47, 0xCu);
      sub_306C(v48);

      v42(v51, v13);
    }

    else
    {

      v42(v17, v13);
    }

    sub_2CB5B0();
    v53 = sub_2CA910();
    memset(v100, 0, sizeof(v100));
    v101 = 0;
    v102[3] = v53;
    v102[4] = &protocol witness table for AceOutput;
    sub_F390(v102);
    v54 = v96;
    sub_2C9DC0();
    sub_30B8(v100, &qword_34CC80, &qword_2D1520);
    v103 = 0;
    v98(v102);
    sub_30B8(v54, &qword_34C6E8, &unk_2D0FF0);
    v55 = qword_34C798;
    v56 = &qword_2D0DA0;
    v57 = v102;
  }

  return sub_30B8(v57, v55, v56);
}

uint64_t sub_1C1174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5[11] = swift_task_alloc();
  v6 = sub_2CE000();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_2C9B80();
  v5[15] = swift_task_alloc();
  v7 = sub_2CA630();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1C1300, 0, 0);
}

uint64_t sub_1C1300(uint64_t a1)
{
  v31 = v1;
  v27 = *(v1 + 64);
  v28 = *(v1 + 48);
  sub_2C9B20();
  v2 = swift_task_alloc();
  *(v2 + 16) = v28;
  *(v2 + 32) = v27;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  v5 = *(v1 + 96);
  v6 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = *(v1 + 96);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136446210;
    v15 = sub_2CCCA0();
    v17 = sub_3F08(v15, v16, &v30);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "SiriAudioOutputProvider#completionViewOutput returning completionViewOutput using RF 2.0 %{public}s", v13, 0xCu);
    sub_306C(v14);
  }

  (*(v11 + 8))(v10, v12);
  v19 = *(v1 + 80);
  v18 = *(v1 + 88);
  v20 = *(v1 + 72);
  sub_2CA080();
  swift_allocObject();
  *(v1 + 152) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v21 = swift_allocObject();
  *(v1 + 160) = v21;
  *(v21 + 16) = xmmword_2D0770;
  sub_F3F4(v20, v18, &qword_34C6E8, &unk_2D0FF0);
  *(v21 + 32) = *(v18 + *(v19 + 48));
  v22 = sub_2CA130();
  (*(*(v22 - 8) + 8))(v18, v22);
  v29 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v23 = swift_task_alloc();
  *(v1 + 168) = v23;
  *v23 = v1;
  v23[1] = sub_1C1640;
  v24 = *(v1 + 144);
  v25 = *(v1 + 40);

  return v29(v25, v21, v24);
}

uint64_t sub_1C1640()
{

  return _swift_task_switch(sub_1C1774, 0, 0);
}

uint64_t sub_1C1774()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1C181C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  if (a3 >> 62)
  {
    if (!sub_2CEDA0())
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
  }

LABEL_5:
  sub_2CA5D0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v18, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 48)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  (*(*(v15 - 8) + 8))(v9, v15);
  return sub_2CA610();
}

uint64_t sub_1C1AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[10] = swift_task_alloc();
  v5 = sub_2CE000();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_2C9B80();
  v4[14] = swift_task_alloc();
  v6 = sub_2CA630();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_1C1C84, 0, 0);
}

uint64_t sub_1C1C84(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 64);
  v28 = *(v1 + 48);
  sub_2C9B30();
  v3 = swift_task_alloc();
  *(v3 + 16) = v28;
  *(v3 + 32) = v2;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = *(v1 + 88);
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 96);
  v11 = *(v1 + 104);
  v13 = *(v1 + 88);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446210;
    v16 = sub_2CCCA0();
    v18 = sub_3F08(v16, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "SiriAudioOutputProvider#confirmationViewOutput creating confirmationViewOutput using RF 2.0 %{public}s", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v1 + 72);
  v19 = *(v1 + 80);
  v21 = *(v1 + 64);
  sub_2CA080();
  swift_allocObject();
  *(v1 + 144) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v22 = swift_allocObject();
  *(v1 + 152) = v22;
  *(v22 + 16) = xmmword_2D0770;
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  *(v22 + 32) = *(v19 + *(v20 + 48));
  v23 = sub_2CA130();
  (*(*(v23 - 8) + 8))(v19, v23);
  v29 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v24 = swift_task_alloc();
  *(v1 + 160) = v24;
  *v24 = v1;
  v24[1] = sub_1C1FCC;
  v25 = *(v1 + 136);
  v26 = *(v1 + 40);

  return v29(v26, v22, v25);
}

uint64_t sub_1C1FCC()
{

  return _swift_task_switch(sub_1C7854, 0, 0);
}

uint64_t sub_1C2100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CA5F0();
  sub_2CA5A0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  return (*(*(v15 - 8) + 8))(v9, v15);
}

uint64_t sub_1C2398(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, const char *a6, const char *a7, uint64_t a8, uint64_t a9, const char *a10, void (*a11)(char *, uint64_t), ...)
{
  v102 = a8;
  v94 = a7;
  v95 = a6;
  v12 = v11;
  v109 = a4;
  v110 = a5;
  v107 = a3;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v99 = *(v15 - 8);
  v100 = *(v99 + 64);
  __chkstk_darwin(v15 - 8);
  v101 = &v89 - v16;
  v93 = sub_2CB260();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v89 - v24;
  __chkstk_darwin(v23);
  v27 = &v89 - v26;
  v28 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v29 = v28 - 8;
  v96 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v98 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v31;
  __chkstk_darwin(v30);
  v33 = &v89 - v32;
  v34 = sub_2CA130();
  (*(*(v34 - 8) + 16))(v33, a1, v34);
  v35 = *(v29 + 56);
  v108 = v33;
  *&v33[v35] = a2;
  v36 = qword_34BF58;
  v37 = a2;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v105 = *(v19 + 16);
  v106 = (v19 + 16);
  v105(v27, v38, v18);
  v39 = sub_2CDFE0();
  v40 = sub_2CE690();
  v41 = os_log_type_enabled(v39, v40);
  v104 = v25;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v103 = v18;
    v90 = v22;
    v44 = v43;
    v113[0] = v43;
    *v42 = 136446210;
    v45 = sub_2CCCA0();
    v47 = v19;
    v48 = sub_3F08(v45, v46, v113);

    *(v42 + 4) = v48;
    v19 = v47;
    _os_log_impl(&dword_0, v39, v40, v95, v42, 0xCu);
    sub_306C(v44);
    v22 = v90;
    v18 = v103;
  }

  v49 = *(v19 + 8);
  v49(v27, v18);
  sub_35E0((v12 + 16), *(v12 + 40));
  if (sub_2CC4B0())
  {
    v103 = a9;
    v50 = sub_2CB460();
    if (!v50)
    {
      sub_2CB180();
      v50 = sub_2CB170();
    }

    v51 = v50;
    v52 = v104;
    v105(v104, v38, v18);

    v53 = sub_2CDFE0();
    v54 = sub_2CE660();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v106 = v49;
      v57 = v56;
      v113[0] = v56;
      *v55 = 136315138;
      sub_2CB130();
      v58 = v91;
      sub_2CD3C0();

      v59 = sub_2CB200();
      v61 = v60;
      (*(v92 + 8))(v58, v93);
      v62 = sub_3F08(v59, v61, v113);

      *(v55 + 4) = v62;
      _os_log_impl(&dword_0, v53, v54, v94, v55, 0xCu);
      sub_306C(v57);

      v106(v104, v18);
    }

    else
    {

      v49(v52, v18);
    }

    v74 = v101;
    sub_F3F4(v107, v101, &unk_353020, &unk_2D0970);
    v75 = v108;
    v76 = v98;
    sub_F3F4(v108, v98, &qword_34C6E8, &unk_2D0FF0);
    v77 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v78 = (v100 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (*(v96 + 80) + v78 + 8) & ~*(v96 + 80);
    v80 = swift_allocObject();
    sub_14A58(v74, v80 + v77, &unk_353020, &unk_2D0970);
    *(v80 + v78) = v51;
    sub_14A58(v76, v80 + v79, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v81 = v75;
    v82 = &qword_34C6E8;
    v83 = &unk_2D0FF0;
  }

  else
  {
    v63 = a11;
    v105(v22, v38, v18);
    v64 = sub_2CDFE0();
    v65 = sub_2CE690();
    if (os_log_type_enabled(v64, v65))
    {
      v106 = a11;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v103 = v18;
      v68 = v22;
      v69 = v67;
      v113[0] = v67;
      *v66 = 136446210;
      v70 = sub_2CCCA0();
      v72 = v49;
      v73 = sub_3F08(v70, v71, v113);

      *(v66 + 4) = v73;
      v63 = v106;
      _os_log_impl(&dword_0, v64, v65, a10, v66, 0xCu);
      sub_306C(v69);

      v72(v68, v103);
    }

    else
    {

      v49(v22, v18);
    }

    v84 = sub_2CB5B0();
    v85 = sub_2CA910();
    memset(v111, 0, sizeof(v111));
    v112 = 0;
    v113[3] = v85;
    v113[4] = &protocol witness table for AceOutput;
    sub_F390(v113);
    v86 = v84 & 1;
    v87 = v108;
    (v63)(v108, v86, _swiftEmptyArrayStorage, 1, 1, v107, _swiftEmptyArrayStorage, v111);
    sub_30B8(v111, &qword_34CC80, &qword_2D1520);
    v114 = 0;
    v109(v113);
    sub_30B8(v87, &qword_34C6E8, &unk_2D0FF0);
    v82 = qword_34C798;
    v83 = &qword_2D0DA0;
    v81 = v113;
  }

  return sub_30B8(v81, v82, v83);
}

uint64_t sub_1C2D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[10] = swift_task_alloc();
  v5 = sub_2CE000();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_2C9B80();
  v4[14] = swift_task_alloc();
  v6 = sub_2CA630();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_1C2F10, 0, 0);
}

uint64_t sub_1C2F10()
{
  v30 = v0;
  v1 = *(v0 + 64);
  v27 = *(v0 + 48);
  sub_2C9B60();
  v2 = swift_task_alloc();
  *(v2 + 16) = v27;
  *(v2 + 32) = v1;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136446210;
    v15 = sub_2CCCA0();
    v17 = sub_3F08(v15, v16, &v29);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "SiriAudioOutputProvider#summaryViewOutput creating summaryViewOutput using RF 2.0 %{public}s", v13, 0xCu);
    sub_306C(v14);
  }

  (*(v11 + 8))(v10, v12);
  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 64);
  sub_2CA080();
  swift_allocObject();
  *(v0 + 144) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v21 = swift_allocObject();
  *(v0 + 152) = v21;
  *(v21 + 16) = xmmword_2D0770;
  sub_F3F4(v20, v18, &qword_34C6E8, &unk_2D0FF0);
  *(v21 + 32) = *(v18 + *(v19 + 48));
  v22 = sub_2CA130();
  (*(*(v22 - 8) + 8))(v18, v22);
  v28 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v23 = swift_task_alloc();
  *(v0 + 160) = v23;
  *v23 = v0;
  v23[1] = sub_171AC4;
  v24 = *(v0 + 136);
  v25 = *(v0 + 40);

  return v28(v25, v21, v24);
}

uint64_t sub_1C3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  (*(*(v15 - 8) + 8))(v9, v15);
  return sub_2CA610();
}

uint64_t sub_1C3480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v7 = v6;
  v98 = a5;
  v99 = a6;
  v94 = a4;
  v96 = a3;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v91 = *(v10 - 8);
  v92 = *(v91 + 64);
  __chkstk_darwin(v10 - 8);
  v93 = &v80 - v11;
  v86 = sub_2CB260();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v87 = &v80 - v19;
  __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v88 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v90 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v25;
  __chkstk_darwin(v24);
  v27 = &v80 - v26;
  v28 = sub_2CA130();
  (*(*(v28 - 8) + 16))(v27, a1, v28);
  v29 = *(v23 + 56);
  v97 = v27;
  *&v27[v29] = a2;
  v30 = qword_34BF58;
  v31 = a2;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v95 = *(v14 + 16);
  v95(v21, v32, v13);
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v81 = v7;
    v36 = v35;
    v37 = swift_slowAlloc();
    v82 = v13;
    v38 = v37;
    v102[0] = v37;
    *v36 = 136446210;
    v39 = sub_2CCCA0();
    v80 = v14 + 16;
    v41 = sub_3F08(v39, v40, v102);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v33, v34, "SiriAudioOutputProvider#errorOutput... %{public}s", v36, 0xCu);
    sub_306C(v38);
    v13 = v82;

    v7 = v81;
  }

  v42 = *(v14 + 8);
  v42(v21, v13);
  sub_35E0((v7 + 16), *(v7 + 40));
  if (sub_2CC4B0())
  {
    v43 = sub_2CB460();
    v83 = v14;
    v82 = v42;
    if (!v43)
    {
      sub_2CB180();
      v43 = sub_2CB170();
    }

    v44 = v43;
    v45 = v87;
    v95(v87, v32, v13);

    v46 = sub_2CDFE0();
    v47 = sub_2CE660();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v102[0] = v49;
      *v48 = 136315138;
      sub_2CB130();
      v50 = v84;
      sub_2CD3C0();

      v51 = v45;
      v52 = sub_2CB200();
      v54 = v53;
      (*(v85 + 8))(v50, v86);
      v55 = sub_3F08(v52, v54, v102);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_0, v46, v47, "SiriAudioOutputProvider#errorOutput with responseMode = %s", v48, 0xCu);
      sub_306C(v49);

      v56 = v51;
    }

    else
    {

      v56 = v45;
    }

    v82(v56, v13);
    v66 = v93;
    sub_F3F4(v96, v93, &unk_353020, &unk_2D0970);
    v67 = v97;
    v68 = v90;
    sub_F3F4(v97, v90, &qword_34C6E8, &unk_2D0FF0);
    v69 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v70 = (v92 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = (*(v88 + 80) + v71 + 8) & ~*(v88 + 80);
    v73 = swift_allocObject();
    sub_14A58(v66, v73 + v69, &unk_353020, &unk_2D0970);
    *(v73 + v70) = v94;
    *(v73 + v71) = v44;
    sub_14A58(v68, v73 + v72, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v74 = v67;
    v75 = &qword_34C6E8;
    v76 = &unk_2D0FF0;
  }

  else
  {
    v95(v17, v32, v13);
    v57 = sub_2CDFE0();
    v58 = v17;
    v59 = sub_2CE690();
    if (os_log_type_enabled(v57, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v102[0] = v61;
      *v60 = 136446210;
      v62 = sub_2CCCA0();
      v64 = v42;
      v65 = sub_3F08(v62, v63, v102);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_0, v57, v59, "SiriAudioOutputProvider#errorOutput creating errorOutput %{public}s", v60, 0xCu);
      sub_306C(v61);

      v64(v58, v13);
    }

    else
    {

      v42(v58, v13);
    }

    sub_2CB5B0();
    v77 = sub_2CA910();
    memset(v100, 0, sizeof(v100));
    v101 = 0;
    v102[3] = v77;
    v102[4] = &protocol witness table for AceOutput;
    sub_F390(v102);
    v78 = v97;
    sub_2C9E40();
    sub_30B8(v100, &qword_34CC80, &qword_2D1520);
    v103 = 0;
    v98(v102);
    sub_30B8(v78, &qword_34C6E8, &unk_2D0FF0);
    v75 = qword_34C798;
    v76 = &qword_2D0DA0;
    v74 = v102;
  }

  return sub_30B8(v74, v75, v76);
}

uint64_t sub_1C3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5[11] = swift_task_alloc();
  v6 = sub_2CE000();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_2C9B80();
  v5[15] = swift_task_alloc();
  v7 = sub_2CA630();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1C4000, 0, 0);
}

uint64_t sub_1C4000()
{
  v30 = v0;
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  sub_2C9B50();
  v1 = swift_task_alloc();
  *(v1 + 16) = v27;
  *(v1 + 32) = v26;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_2CDFE0();
  v7 = sub_2CE690();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 96);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446210;
    v14 = sub_2CCCA0();
    v16 = sub_3F08(v14, v15, &v29);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v6, v7, "SiriAudioOutputProvider#errorOutput returning errorOutput using RF 2.0 %{public}s", v12, 0xCu);
    sub_306C(v13);
  }

  (*(v10 + 8))(v9, v11);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v19 = *(v0 + 72);
  sub_2CA080();
  swift_allocObject();
  *(v0 + 152) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v20 = swift_allocObject();
  *(v0 + 160) = v20;
  *(v20 + 16) = xmmword_2D0770;
  sub_F3F4(v19, v17, &qword_34C6E8, &unk_2D0FF0);
  *(v20 + 32) = *(v17 + *(v18 + 48));
  v21 = sub_2CA130();
  (*(*(v21 - 8) + 8))(v17, v21);
  v28 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  *v22 = v0;
  v22[1] = sub_1C4340;
  v23 = *(v0 + 144);
  v24 = *(v0 + 40);

  return v28(v24, v20, v23);
}

uint64_t sub_1C4340()
{

  return _swift_task_switch(sub_1C7858, 0, 0);
}

uint64_t sub_1C4474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();

  sub_2CA5D0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v18, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  return (*(*(v15 - 8) + 8))(v9, v15);
}

uint64_t sub_1C46A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v3[9] = swift_task_alloc();
  sub_2C9B80();
  v3[10] = swift_task_alloc();
  v4 = sub_2CA630();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_2CE000();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1C4830, 0, 0);
}

uint64_t sub_1C4830()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE690();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "SiriAudioOutputProvider#cancelOutput returning cancel output using RF 2.0", v7, 2u);
  }

  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  v11 = v0[9];
  v12 = v0[7];
  v21 = v0[8];
  v13 = v0[6];

  (*(v9 + 8))(v8, v10);
  sub_2C9B70();
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_2CA560();

  sub_2CA080();
  swift_allocObject();
  v0[17] = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v15 = swift_allocObject();
  v0[18] = v15;
  *(v15 + 16) = xmmword_2D0770;
  sub_F3F4(v12, v11, &qword_34C6E8, &unk_2D0FF0);
  *(v15 + 32) = *(v11 + *(v21 + 48));
  v16 = sub_2CA130();
  (*(*(v16 - 8) + 8))(v11, v16);
  v22 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1C4B14;
  v18 = v0[13];
  v19 = v0[5];

  return v22(v19, v15, v18);
}

uint64_t sub_1C4B14()
{

  return _swift_task_switch(sub_1C4C48, 0, 0);
}

uint64_t sub_1C4C48()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1C4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_2CB260();
  __chkstk_darwin(v8 - 8);
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a3, v7, &qword_34C6E8, &unk_2D0FF0);
  v9 = *&v7[*(v5 + 56)];
  v10 = [v9 catId];

  sub_2CE270();
  sub_2CA590();
  v11 = sub_2CA130();
  return (*(*(v11 - 8) + 8))(v7, v11);
}

uint64_t sub_1C4F40(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t))
{
  v70 = a6;
  v71 = a7;
  v69 = a5;
  v72 = a3;
  v64 = sub_2CB260();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v68 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - v18;
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v65 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v67 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v25;
  __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v28 = sub_2CA130();
  (*(*(v28 - 8) + 16))(v27, a1, v28);
  v29 = *(v23 + 56);
  v74 = v27;
  v75 = a4;
  *&v27[v29] = a2;
  v30 = qword_34BF58;

  v31 = a2;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v33 = *(v14 + 16);
  v33(v21, v32, v13);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v73 = v33;
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "SiriAudioOutputProvider#errorOutput...", v36, 2u);
    v33 = v73;
  }

  v37 = *(v14 + 8);
  v73 = (v14 + 8);
  v37(v21, v13);
  sub_35E0(v72 + 2, *(v72 + 5));
  if (sub_2CC4B0())
  {
    v38 = sub_2CB460();
    if (!v38)
    {
      sub_2CB180();
      v38 = sub_2CB170();
    }

    v39 = v38;
    v40 = v68;
    v33(v68, v32, v13);
    v41 = v40;

    v42 = sub_2CDFE0();
    v43 = sub_2CE660();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v72 = v37;
      v46 = v45;
      v78[0] = v45;
      *v44 = 136315138;
      sub_2CB130();
      v47 = v62;
      sub_2CD3C0();

      v48 = sub_2CB200();
      v50 = v49;
      (*(v63 + 8))(v47, v64);
      v51 = sub_3F08(v48, v50, v78);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_0, v42, v43, "SiriAudioOutputProvider#cancelOutput with responseMode = %s", v44, 0xCu);
      sub_306C(v46);

      v72(v41, v13);
    }

    else
    {

      v37(v40, v13);
    }

    v57 = v74;
    v58 = v67;
    sub_F3F4(v74, v67, &qword_34C6E8, &unk_2D0FF0);
    v59 = (*(v65 + 80) + 24) & ~*(v65 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v39;
    sub_14A58(v58, v60 + v59, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    sub_30B8(v57, &qword_34C6E8, &unk_2D0FF0);
  }

  else
  {
    v33(v19, v32, v13);
    v52 = sub_2CDFE0();
    v53 = sub_2CE690();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "SiriAudioOutputProvider#cancelOutput creating cancel output", v54, 2u);
    }

    v37(v19, v13);
    sub_2CB5B0();
    v55 = sub_2CA910();
    memset(v76, 0, sizeof(v76));
    v77 = 0;
    v78[3] = v55;
    v78[4] = &protocol witness table for AceOutput;
    sub_F390(v78);
    v56 = v74;
    sub_2C9DD0();
    sub_30B8(v76, &qword_34CC80, &qword_2D1520);
    v79 = 0;
    a8(v78, v75);
    sub_30B8(v56, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v78, qword_34C798, &qword_2D0DA0);
  }
}

uint64_t sub_1C576C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_1C3E74(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_1C5950(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, char *a10, void *a11)
{
  v97 = a5;
  v93 = a4;
  v99 = a3;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v90 = *(v15 - 8);
  v91 = *(v90 + 64);
  __chkstk_darwin(v15 - 8);
  v92 = &v81 - v16;
  v85 = sub_2CB260();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v95 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v94 = &v81 - v23;
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v27 = v26 - 8;
  v86 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v88 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v29;
  __chkstk_darwin(v28);
  v31 = &v81 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  v100 = v32;
  v33 = sub_2CA130();
  (*(*(v33 - 8) + 16))(v31, a1, v33);
  v34 = *(v27 + 56);
  v98 = v31;
  *&v31[v34] = a2;
  v35 = qword_34BF58;
  v89 = a7;

  v36 = a2;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v96 = *(v19 + 16);
  v96(v25, v37, v18);
  v38 = sub_2CDFE0();
  v39 = sub_2CE690();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v103[0] = v41;
    *v40 = 136446210;
    v42 = sub_2CCCA0();
    v81 = v25;
    v82 = (v19 + 16);
    v44 = a6;
    v45 = sub_3F08(v42, v43, v103);

    *(v40 + 4) = v45;
    a6 = v44;
    _os_log_impl(&dword_0, v38, v39, "SiriAudioOutputProvider#errorOutput... %{public}s", v40, 0xCu);
    sub_306C(v41);

    v46 = *(v19 + 8);
    v46(v81, v18);
  }

  else
  {

    v46 = *(v19 + 8);
    v46(v25, v18);
  }

  sub_35E0(v97 + 2, v97[5]);
  if (sub_2CC4B0())
  {
    v47 = v18;
    v97 = a11;
    v94 = a10;
    v89 = a9;
    v48 = sub_2CB460();
    v82 = v46;
    if (!v48)
    {
      sub_2CB180();
      v48 = sub_2CB170();
    }

    v49 = v48;
    v50 = v95;
    v96(v95, v37, v47);

    v51 = sub_2CDFE0();
    v52 = sub_2CE660();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v103[0] = v54;
      *v53 = 136315138;
      sub_2CB130();
      v55 = v83;
      sub_2CD3C0();

      v56 = sub_2CB200();
      v58 = v57;
      (*(v84 + 8))(v55, v85);
      v59 = sub_3F08(v56, v58, v103);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_0, v51, v52, "SiriAudioOutputProvider#errorOutput with responseMode = %s", v53, 0xCu);
      sub_306C(v54);

      v60 = v95;
    }

    else
    {

      v60 = v50;
    }

    v82(v60, v47);
    v70 = v92;
    sub_F3F4(v99, v92, &unk_353020, &unk_2D0970);
    v71 = v98;
    v72 = v88;
    sub_F3F4(v98, v88, &qword_34C6E8, &unk_2D0FF0);
    v73 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v74 = (v91 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v86 + 80) + v75 + 8) & ~*(v86 + 80);
    v77 = swift_allocObject();
    sub_14A58(v70, v77 + v73, &unk_353020, &unk_2D0970);
    *(v77 + v74) = v93;
    *(v77 + v75) = v49;
    sub_14A58(v72, v77 + v76, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    sub_30B8(v71, &qword_34C6E8, &unk_2D0FF0);
  }

  else
  {
    v61 = v94;
    v96(v94, v37, v18);
    v62 = sub_2CDFE0();
    v63 = sub_2CE690();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v103[0] = v65;
      *v64 = 136446210;
      v66 = sub_2CCCA0();
      v68 = v46;
      v69 = sub_3F08(v66, v67, v103);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_0, v62, v63, "SiriAudioOutputProvider#errorOutput creating errorOutput %{public}s", v64, 0xCu);
      sub_306C(v65);

      v68(v94, v18);
    }

    else
    {

      v46(v61, v18);
    }

    sub_2CB5B0();
    v78 = sub_2CA910();
    memset(v101, 0, sizeof(v101));
    v102 = 0;
    v103[3] = v78;
    v103[4] = &protocol witness table for AceOutput;
    sub_F390(v103);
    v79 = v98;
    sub_2C9E40();
    sub_30B8(v101, &qword_34CC80, &qword_2D1520);
    v104 = 0;
    a6(v103);
    sub_30B8(v79, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v103, qword_34C798, &qword_2D0DA0);
  }
}

uint64_t sub_1C6398(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_E664;

  return sub_1C2D88(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1C6514()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_2CA000();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return _swift_deallocObject(v0, v9 + v6);
}

uint64_t sub_1C6704(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24C84;

  return sub_1C1AFC(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1C6880(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_1C1174(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_1C6A14(uint64_t a1)
{
  v4 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24C84;

  return sub_1C46A8(a1, v6, v1 + v5);
}

uint64_t sub_1C6B14()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = sub_2CA130();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1C6C10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), void (*a6)(void), uint64_t a7)
{
  v93 = a5;
  v97 = a4;
  v95 = a3;
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v88 = *(v11 - 8);
  v89 = *(v88 + 64);
  __chkstk_darwin(v11 - 8);
  v90 = &v78 - v12;
  v81 = sub_2CB260();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v83 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v91 = &v78 - v19;
  __chkstk_darwin(v18);
  v21 = &v78 - v20;
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v84 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v86 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v25;
  __chkstk_darwin(v24);
  v27 = &v78 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = a7;
  v96 = v28;
  v29 = sub_2CA130();
  (*(*(v29 - 8) + 16))(v27, a1, v29);
  v30 = *(v23 + 56);
  v94 = v27;
  *&v27[v30] = a2;
  v31 = qword_34BF58;
  v87 = a7;

  v32 = a2;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v92 = *(v15 + 16);
  v92(v21, v33, v14);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78 = v15;
    v82 = v14;
    v38 = v37;
    v100[0] = v37;
    *v36 = 136446210;
    v39 = sub_2CCCA0();
    v41 = v33;
    v42 = a6;
    v43 = sub_3F08(v39, v40, v100);

    *(v36 + 4) = v43;
    a6 = v42;
    v33 = v41;
    _os_log_impl(&dword_0, v34, v35, "SiriAudioOutputProvider#completionViewOutput... %{public}s", v36, 0xCu);
    sub_306C(v38);
    v14 = v82;
    v15 = v78;
  }

  v44 = *(v15 + 8);
  v44(v21, v14);
  sub_35E0(v93 + 2, *(v93 + 5));
  if (sub_2CC4B0())
  {
    v45 = sub_2CB460();
    if (!v45)
    {
      sub_2CB180();
      v45 = sub_2CB170();
    }

    v46 = v45;
    v47 = v83;
    v92(v83, v33, v14);

    v48 = sub_2CDFE0();
    v49 = sub_2CE660();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v93 = v44;
      v52 = v51;
      v100[0] = v51;
      *v50 = 136315138;
      sub_2CB130();
      v53 = v79;
      sub_2CD3C0();

      v54 = sub_2CB200();
      v82 = v14;
      v56 = v55;
      (*(v80 + 8))(v53, v81);
      v57 = sub_3F08(v54, v56, v100);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_0, v48, v49, "SiriAudioOutputProvider#completionViewOutput with responseMode = %s", v50, 0xCu);
      sub_306C(v52);

      v93(v47, v82);
    }

    else
    {

      v44(v47, v14);
    }

    v67 = v90;
    sub_F3F4(v95, v90, &unk_353020, &unk_2D0970);
    v68 = v94;
    v69 = v86;
    sub_F3F4(v94, v86, &qword_34C6E8, &unk_2D0FF0);
    v70 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v71 = (v89 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v84 + 80) + v72 + 8) & ~*(v84 + 80);
    v74 = swift_allocObject();
    sub_14A58(v67, v74 + v70, &unk_353020, &unk_2D0970);
    *(v74 + v71) = v97;
    *(v74 + v72) = v46;
    sub_14A58(v69, v74 + v73, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    sub_30B8(v68, &qword_34C6E8, &unk_2D0FF0);
  }

  else
  {
    v58 = v91;
    v92(v91, v33, v14);
    v59 = sub_2CDFE0();
    v60 = sub_2CE690();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v100[0] = v62;
      *v61 = 136446210;
      v63 = sub_2CCCA0();
      v65 = v44;
      v66 = sub_3F08(v63, v64, v100);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_0, v59, v60, "SiriAudioOutputProvider#completionViewOutput creating completionViewOutput %{public}s", v61, 0xCu);
      sub_306C(v62);

      v65(v91, v14);
    }

    else
    {

      v44(v58, v14);
    }

    sub_2CB5B0();
    v75 = sub_2CA910();
    memset(v98, 0, sizeof(v98));
    v99 = 0;
    v100[3] = v75;
    v100[4] = &protocol witness table for AceOutput;
    sub_F390(v100);
    v76 = v94;
    sub_2C9DC0();
    sub_30B8(v98, &qword_34CC80, &qword_2D1520);
    v101 = 0;
    a6(v100);
    sub_30B8(v76, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v100, qword_34C798, &qword_2D0DA0);
  }
}

uint64_t sub_1C7654()
{
  v1 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_2CA000();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  v9 = (((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  v10 = sub_2CA130();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return _swift_deallocObject(v0, v9 + v6);
}

uint64_t sub_1C785C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v74 = a1;
  v83 = a4;
  v5 = sub_2CDAA0();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v76 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v7 - 8);
  v9 = v73 - v8;
  v10 = sub_2CA000();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE670();

  v19 = os_log_type_enabled(v17, v18);
  v79 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v89 = v21;
    *v20 = 136315138;
    v22 = v84;
    *(v20 + 4) = sub_3F08(v84, a3, &v89);
    _os_log_impl(&dword_0, v17, v18, "Making needs value NL context for parameter: %s", v20, 0xCu);
    sub_306C(v21);

    (*(v13 + 8))(v15, v12);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v22 = v84;
  }

  v23 = v80;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v24 = sub_20410(&unk_356F40, &unk_2D0740);
  v25 = swift_allocObject();
  v75 = xmmword_2D0090;
  *(v25 + 16) = xmmword_2D0090;
  v89 = sub_2CE2C0();
  v90 = v26;
  v87 = 32;
  v88 = 0xE100000000000000;
  v85 = 95;
  v86 = 0xE100000000000000;
  v73[2] = sub_B96A0();
  sub_2CEBD0();

  v89 = sub_C3828(1);
  v90 = v27;
  v91._countAndFlagsBits = 0x2E65756C61562ELL;
  v91._object = 0xE700000000000000;
  sub_2CE350(v91);
  v28 = sub_2CE2C0();
  v30 = v29;

  v92._countAndFlagsBits = v28;
  v92._object = v30;
  sub_2CE350(v92);

  v31 = v90;
  *(v25 + 32) = v89;
  *(v25 + 40) = v31;
  sub_2C9F90();
  sub_2C9F50();
  (*(v77 + 104))(v76, enum case for PommesContext.Source.pluginDefined(_:), v78);
  sub_2CDAB0();
  v32 = sub_2CDAC0();
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_2C9F20();
  v33 = v79;
  if (v22 == 0xD000000000000010 && 0x80000000002D9DE0 == v79 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 8;
    goto LABEL_10;
  }

  if (v22 == 0x657449616964656DLL && v33 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    objc_opt_self();
    v42 = v74;
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = [v43 mediaSearch];
      v37 = v81;
    }

    else
    {
      objc_opt_self();
      v45 = swift_dynamicCastObjCClass();
      v37 = v81;
      if (!v45)
      {
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (!v45)
        {
          v45 = v42;
        }
      }

      v44 = [v45 mediaSearch];
    }

    v46 = v44;
    v47 = v46;
    if (v46)
    {
      v48 = [v46 mediaType];
      if (v48 > 2)
      {
        if (v48 == &dword_0 + 3)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 3;
          goto LABEL_40;
        }

        if (v48 == &dword_4 + 1)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 8;
          goto LABEL_40;
        }
      }

      else
      {
        if (v48 == &dword_0 + 1)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 9;
          goto LABEL_40;
        }

        if (v48 == &dword_0 + 2)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 10;
LABEL_40:
          *(v49 + 32) = sub_C3828(v50);
          *(v49 + 40) = v51;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v49 = swift_allocObject();
    *(v49 + 16) = v75;
    v50 = 2;
    goto LABEL_40;
  }

  if (v22 == 0xD000000000000012 && 0x80000000002DA150 == v33 || (sub_2CEEA0() & 1) != 0 || v22 == 0xD000000000000015 && 0x80000000002DA180 == v33 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 11;
  }

  else if (v22 == 0x6B63616279616C70 && v33 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 12;
  }

  else
  {
    if ((v22 != 0x7974696E69666661 || v33 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v73[1] = v24;
      if ((v22 != 0x6675685379616C70 || v33 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v22 != 0x6C50656D75736572 || v33 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v37 = v81;
        v39 = v82;
        (*(v81 + 8))(v23, v82);
        v40 = 1;
        v38 = v83;
        return (*(v37 + 56))(v38, v40, 1, v39);
      }

      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2D10E0;
      v89 = sub_2CE2C0();
      v90 = v53;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v54;
      v93._countAndFlagsBits = 0x2E65756C61562ELL;
      v93._object = 0xE700000000000000;
      sub_2CE350(v93);
      v55 = sub_2CE2C0();
      v57 = v56;

      v94._countAndFlagsBits = v55;
      v94._object = v57;
      sub_2CE350(v94);

      v58 = v90;
      *(v52 + 32) = v89;
      *(v52 + 40) = v58;
      v89 = sub_2CE2C0();
      v90 = v59;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v60;
      v95._countAndFlagsBits = 0x2E65756C61562ELL;
      v95._object = 0xE700000000000000;
      sub_2CE350(v95);
      v61 = sub_2CE2C0();
      v63 = v62;

      v96._countAndFlagsBits = v61;
      v96._object = v63;
      sub_2CE350(v96);

      v64 = v90;
      *(v52 + 48) = v89;
      *(v52 + 56) = v64;
      v89 = sub_2CE2C0();
      v90 = v65;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v66;
      v97._countAndFlagsBits = 0x2E65756C61562ELL;
      v97._object = 0xE700000000000000;
      sub_2CE350(v97);
      v67 = sub_2CE2C0();
      v69 = v68;

      v98._countAndFlagsBits = v67;
      v98._object = v69;
      sub_2CE350(v98);

      v70 = v90;
      *(v52 + 64) = v89;
      *(v52 + 72) = v70;
      sub_2C9F90();
      v71 = swift_allocObject();
      *(v71 + 16) = v75;
      *(v71 + 32) = sub_C3828(1);
      *(v71 + 40) = v72;
      goto LABEL_11;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 13;
  }

LABEL_10:
  *(v34 + 32) = sub_C3828(v35);
  *(v34 + 40) = v36;
LABEL_11:
  sub_2C9FA0();
  v37 = v81;
LABEL_12:
  v39 = v82;
  v38 = v83;
  (*(v37 + 32))(v83, v23, v82);
  v40 = 0;
  return (*(v37 + 56))(v38, v40, 1, v39);
}

uint64_t sub_1C856C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v74 = a1;
  v83 = a4;
  v5 = sub_2CDAA0();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v76 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v7 - 8);
  v9 = v73 - v8;
  v10 = sub_2CA000();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE670();

  v19 = os_log_type_enabled(v17, v18);
  v79 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v89 = v21;
    *v20 = 136315138;
    v22 = v84;
    *(v20 + 4) = sub_3F08(v84, a3, &v89);
    _os_log_impl(&dword_0, v17, v18, "Making needs value NL context for parameter: %s", v20, 0xCu);
    sub_306C(v21);

    (*(v13 + 8))(v15, v12);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v22 = v84;
  }

  v23 = v80;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v24 = sub_20410(&unk_356F40, &unk_2D0740);
  v25 = swift_allocObject();
  v75 = xmmword_2D0090;
  *(v25 + 16) = xmmword_2D0090;
  v89 = sub_2CE2C0();
  v90 = v26;
  v87 = 32;
  v88 = 0xE100000000000000;
  v85 = 95;
  v86 = 0xE100000000000000;
  v73[2] = sub_B96A0();
  sub_2CEBD0();

  v89 = sub_C3828(1);
  v90 = v27;
  v91._countAndFlagsBits = 0x2E65756C61562ELL;
  v91._object = 0xE700000000000000;
  sub_2CE350(v91);
  v28 = sub_2CE2C0();
  v30 = v29;

  v92._countAndFlagsBits = v28;
  v92._object = v30;
  sub_2CE350(v92);

  v31 = v90;
  *(v25 + 32) = v89;
  *(v25 + 40) = v31;
  sub_2C9F90();
  sub_2C9F50();
  (*(v77 + 104))(v76, enum case for PommesContext.Source.pluginDefined(_:), v78);
  sub_2CDAB0();
  v32 = sub_2CDAC0();
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_2C9F20();
  v33 = v79;
  if (v22 == 0xD000000000000010 && 0x80000000002D9DE0 == v79 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 8;
    goto LABEL_10;
  }

  if (v22 == 0x657449616964656DLL && v33 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    objc_opt_self();
    v42 = v74;
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = [v43 mediaSearch];
      v37 = v81;
    }

    else
    {
      objc_opt_self();
      v45 = swift_dynamicCastObjCClass();
      v37 = v81;
      if (!v45)
      {
        v45 = v42;
      }

      v44 = [v45 mediaSearch];
    }

    v46 = v44;
    v47 = v46;
    if (v46)
    {
      v48 = [v46 mediaType];
      if (v48 > 2)
      {
        if (v48 == &dword_0 + 3)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 3;
          goto LABEL_38;
        }

        if (v48 == &dword_4 + 1)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 8;
          goto LABEL_38;
        }
      }

      else
      {
        if (v48 == &dword_0 + 1)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 9;
          goto LABEL_38;
        }

        if (v48 == &dword_0 + 2)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v75;
          v50 = 10;
LABEL_38:
          *(v49 + 32) = sub_C3828(v50);
          *(v49 + 40) = v51;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v49 = swift_allocObject();
    *(v49 + 16) = v75;
    v50 = 2;
    goto LABEL_38;
  }

  if (v22 == 0xD000000000000012 && 0x80000000002DA150 == v33 || (sub_2CEEA0() & 1) != 0 || v22 == 0xD000000000000015 && 0x80000000002DA180 == v33 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 11;
  }

  else if (v22 == 0x6B63616279616C70 && v33 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 12;
  }

  else
  {
    if ((v22 != 0x7974696E69666661 || v33 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v73[1] = v24;
      if ((v22 != 0x6675685379616C70 || v33 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v22 != 0x6C50656D75736572 || v33 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v37 = v81;
        v39 = v82;
        (*(v81 + 8))(v23, v82);
        v40 = 1;
        v38 = v83;
        return (*(v37 + 56))(v38, v40, 1, v39);
      }

      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2D10E0;
      v89 = sub_2CE2C0();
      v90 = v53;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v54;
      v93._countAndFlagsBits = 0x2E65756C61562ELL;
      v93._object = 0xE700000000000000;
      sub_2CE350(v93);
      v55 = sub_2CE2C0();
      v57 = v56;

      v94._countAndFlagsBits = v55;
      v94._object = v57;
      sub_2CE350(v94);

      v58 = v90;
      *(v52 + 32) = v89;
      *(v52 + 40) = v58;
      v89 = sub_2CE2C0();
      v90 = v59;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v60;
      v95._countAndFlagsBits = 0x2E65756C61562ELL;
      v95._object = 0xE700000000000000;
      sub_2CE350(v95);
      v61 = sub_2CE2C0();
      v63 = v62;

      v96._countAndFlagsBits = v61;
      v96._object = v63;
      sub_2CE350(v96);

      v64 = v90;
      *(v52 + 48) = v89;
      *(v52 + 56) = v64;
      v89 = sub_2CE2C0();
      v90 = v65;
      v87 = 32;
      v88 = 0xE100000000000000;
      v85 = 95;
      v86 = 0xE100000000000000;
      sub_2CEBD0();

      v89 = sub_C3828(1);
      v90 = v66;
      v97._countAndFlagsBits = 0x2E65756C61562ELL;
      v97._object = 0xE700000000000000;
      sub_2CE350(v97);
      v67 = sub_2CE2C0();
      v69 = v68;

      v98._countAndFlagsBits = v67;
      v98._object = v69;
      sub_2CE350(v98);

      v70 = v90;
      *(v52 + 64) = v89;
      *(v52 + 72) = v70;
      sub_2C9F90();
      v71 = swift_allocObject();
      *(v71 + 16) = v75;
      *(v71 + 32) = sub_C3828(1);
      *(v71 + 40) = v72;
      goto LABEL_11;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v75;
    v35 = 13;
  }

LABEL_10:
  *(v34 + 32) = sub_C3828(v35);
  *(v34 + 40) = v36;
LABEL_11:
  sub_2C9FA0();
  v37 = v81;
LABEL_12:
  v39 = v82;
  v38 = v83;
  (*(v37 + 32))(v83, v23, v82);
  v40 = 0;
  return (*(v37 + 56))(v38, v40, 1, v39);
}

uint64_t sub_1C9250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a2;
  v70 = a1;
  v79 = a4;
  v5 = sub_2CDAA0();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin(v5);
  v72 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v7 - 8);
  v9 = v69 - v8;
  v10 = sub_2CA000();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v76 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE670();

  v19 = os_log_type_enabled(v17, v18);
  v75 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v85 = v21;
    *v20 = 136315138;
    v22 = v80;
    *(v20 + 4) = sub_3F08(v80, a3, &v85);
    _os_log_impl(&dword_0, v17, v18, "Making needs value NL context for parameter: %s", v20, 0xCu);
    sub_306C(v21);

    (*(v13 + 8))(v15, v12);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v22 = v80;
  }

  v23 = v76;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v24 = sub_20410(&unk_356F40, &unk_2D0740);
  v25 = swift_allocObject();
  v71 = xmmword_2D0090;
  *(v25 + 16) = xmmword_2D0090;
  v85 = sub_2CE2C0();
  v86 = v26;
  v83 = 32;
  v84 = 0xE100000000000000;
  v81 = 95;
  v82 = 0xE100000000000000;
  v69[2] = sub_B96A0();
  sub_2CEBD0();

  v85 = sub_C3828(1);
  v86 = v27;
  v87._countAndFlagsBits = 0x2E65756C61562ELL;
  v87._object = 0xE700000000000000;
  sub_2CE350(v87);
  v28 = sub_2CE2C0();
  v30 = v29;

  v88._countAndFlagsBits = v28;
  v88._object = v30;
  sub_2CE350(v88);

  v31 = v86;
  *(v25 + 32) = v85;
  *(v25 + 40) = v31;
  sub_2C9F90();
  sub_2C9F50();
  (*(v73 + 104))(v72, enum case for PommesContext.Source.pluginDefined(_:), v74);
  sub_2CDAB0();
  v32 = sub_2CDAC0();
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_2C9F20();
  v33 = v75;
  if (v22 == 0xD000000000000010 && 0x80000000002D9DE0 == v75 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v71;
    v35 = 8;
    goto LABEL_10;
  }

  if (v22 == 0x657449616964656DLL && v33 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v42 = [v70 mediaSearch];
    v43 = v42;
    v37 = v77;
    if (v42)
    {
      v44 = [v42 mediaType];
      if (v44 > 2)
      {
        if (v44 == &dword_0 + 3)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v71;
          v46 = 3;
          goto LABEL_33;
        }

        if (v44 == &dword_4 + 1)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v71;
          v46 = 8;
          goto LABEL_33;
        }
      }

      else
      {
        if (v44 == &dword_0 + 1)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v71;
          v46 = 9;
          goto LABEL_33;
        }

        if (v44 == &dword_0 + 2)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v71;
          v46 = 10;
LABEL_33:
          *(v45 + 32) = sub_C3828(v46);
          *(v45 + 40) = v47;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v45 = swift_allocObject();
    *(v45 + 16) = v71;
    v46 = 2;
    goto LABEL_33;
  }

  if (v22 == 0xD000000000000012 && 0x80000000002DA150 == v33 || (sub_2CEEA0() & 1) != 0 || v22 == 0xD000000000000015 && 0x80000000002DA180 == v33 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v71;
    v35 = 11;
  }

  else if (v22 == 0x6B63616279616C70 && v33 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v71;
    v35 = 12;
  }

  else
  {
    if ((v22 != 0x7974696E69666661 || v33 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v69[1] = v24;
      if ((v22 != 0x6675685379616C70 || v33 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v22 != 0x6C50656D75736572 || v33 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v37 = v77;
        v39 = v78;
        (*(v77 + 8))(v23, v78);
        v40 = 1;
        v38 = v79;
        return (*(v37 + 56))(v38, v40, 1, v39);
      }

      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2D10E0;
      v85 = sub_2CE2C0();
      v86 = v49;
      v83 = 32;
      v84 = 0xE100000000000000;
      v81 = 95;
      v82 = 0xE100000000000000;
      sub_2CEBD0();

      v85 = sub_C3828(1);
      v86 = v50;
      v89._countAndFlagsBits = 0x2E65756C61562ELL;
      v89._object = 0xE700000000000000;
      sub_2CE350(v89);
      v51 = sub_2CE2C0();
      v53 = v52;

      v90._countAndFlagsBits = v51;
      v90._object = v53;
      sub_2CE350(v90);

      v54 = v86;
      *(v48 + 32) = v85;
      *(v48 + 40) = v54;
      v85 = sub_2CE2C0();
      v86 = v55;
      v83 = 32;
      v84 = 0xE100000000000000;
      v81 = 95;
      v82 = 0xE100000000000000;
      sub_2CEBD0();

      v85 = sub_C3828(1);
      v86 = v56;
      v91._countAndFlagsBits = 0x2E65756C61562ELL;
      v91._object = 0xE700000000000000;
      sub_2CE350(v91);
      v57 = sub_2CE2C0();
      v59 = v58;

      v92._countAndFlagsBits = v57;
      v92._object = v59;
      sub_2CE350(v92);

      v60 = v86;
      *(v48 + 48) = v85;
      *(v48 + 56) = v60;
      v85 = sub_2CE2C0();
      v86 = v61;
      v83 = 32;
      v84 = 0xE100000000000000;
      v81 = 95;
      v82 = 0xE100000000000000;
      sub_2CEBD0();

      v85 = sub_C3828(1);
      v86 = v62;
      v93._countAndFlagsBits = 0x2E65756C61562ELL;
      v93._object = 0xE700000000000000;
      sub_2CE350(v93);
      v63 = sub_2CE2C0();
      v65 = v64;

      v94._countAndFlagsBits = v63;
      v94._object = v65;
      sub_2CE350(v94);

      v66 = v86;
      *(v48 + 64) = v85;
      *(v48 + 72) = v66;
      sub_2C9F90();
      v67 = swift_allocObject();
      *(v67 + 16) = v71;
      *(v67 + 32) = sub_C3828(1);
      *(v67 + 40) = v68;
      goto LABEL_11;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v71;
    v35 = 13;
  }

LABEL_10:
  *(v34 + 32) = sub_C3828(v35);
  *(v34 + 40) = v36;
LABEL_11:
  sub_2C9FA0();
  v37 = v77;
LABEL_12:
  v39 = v78;
  v38 = v79;
  (*(v37 + 32))(v79, v23, v78);
  v40 = 0;
  return (*(v37 + 56))(v38, v40, 1, v39);
}

uint64_t sub_1C9EE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v73 = a1;
  v82 = a4;
  v5 = sub_2CDAA0();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v7 - 8);
  v9 = v72 - v8;
  v10 = sub_2CA000();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v79 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE670();

  v19 = os_log_type_enabled(v17, v18);
  v78 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v88 = v21;
    *v20 = 136315138;
    v22 = v83;
    *(v20 + 4) = sub_3F08(v83, a3, &v88);
    _os_log_impl(&dword_0, v17, v18, "Making needs value NL context for parameter: %s", v20, 0xCu);
    sub_306C(v21);

    (*(v13 + 8))(v15, v12);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v22 = v83;
  }

  v23 = v79;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v24 = sub_20410(&unk_356F40, &unk_2D0740);
  v25 = swift_allocObject();
  v74 = xmmword_2D0090;
  *(v25 + 16) = xmmword_2D0090;
  v88 = sub_2CE2C0();
  v89 = v26;
  v86 = 32;
  v87 = 0xE100000000000000;
  v84 = 95;
  v85 = 0xE100000000000000;
  v72[2] = sub_B96A0();
  sub_2CEBD0();

  v88 = sub_C3828(1);
  v89 = v27;
  v90._countAndFlagsBits = 0x2E65756C61562ELL;
  v90._object = 0xE700000000000000;
  sub_2CE350(v90);
  v28 = sub_2CE2C0();
  v30 = v29;

  v91._countAndFlagsBits = v28;
  v91._object = v30;
  sub_2CE350(v91);

  v31 = v89;
  *(v25 + 32) = v88;
  *(v25 + 40) = v31;
  sub_2C9F90();
  sub_2C9F50();
  (*(v76 + 104))(v75, enum case for PommesContext.Source.pluginDefined(_:), v77);
  sub_2CDAB0();
  v32 = sub_2CDAC0();
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_2C9F20();
  v33 = v78;
  if (v22 == 0xD000000000000010 && 0x80000000002D9DE0 == v78 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v74;
    v35 = 8;
    goto LABEL_10;
  }

  if (v22 == 0x657449616964656DLL && v33 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    objc_opt_self();
    v42 = v73;
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
      v43 = v42;
    }

    v44 = [v43 mediaSearch];
    v37 = v80;
    v45 = v44;
    v46 = v45;
    if (v45)
    {
      v47 = [v45 mediaType];
      if (v47 > 2)
      {
        if (v47 == &dword_0 + 3)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v74;
          v49 = 3;
          goto LABEL_35;
        }

        if (v47 == &dword_4 + 1)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v74;
          v49 = 8;
          goto LABEL_35;
        }
      }

      else
      {
        if (v47 == &dword_0 + 1)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v74;
          v49 = 9;
          goto LABEL_35;
        }

        if (v47 == &dword_0 + 2)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v74;
          v49 = 10;
LABEL_35:
          *(v48 + 32) = sub_C3828(v49);
          *(v48 + 40) = v50;
          sub_2C9FA0();

          goto LABEL_12;
        }
      }
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v74;
    v49 = 2;
    goto LABEL_35;
  }

  if (v22 == 0xD000000000000012 && 0x80000000002DA150 == v33 || (sub_2CEEA0() & 1) != 0 || v22 == 0xD000000000000015 && 0x80000000002DA180 == v33 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v74;
    v35 = 11;
  }

  else if (v22 == 0x6B63616279616C70 && v33 == 0xED00006465657053 || (sub_2CEEA0() & 1) != 0)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v74;
    v35 = 12;
  }

  else
  {
    if ((v22 != 0x7974696E69666661 || v33 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
    {
      v72[1] = v24;
      if ((v22 != 0x6675685379616C70 || v33 != 0xEC00000064656C66) && (sub_2CEEA0() & 1) == 0 && (v22 != 0x6C50656D75736572 || v33 != 0xEE006B6361627961) && (sub_2CEEA0() & 1) == 0)
      {
        v37 = v80;
        v39 = v81;
        (*(v80 + 8))(v23, v81);
        v40 = 1;
        v38 = v82;
        return (*(v37 + 56))(v38, v40, 1, v39);
      }

      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2D10E0;
      v88 = sub_2CE2C0();
      v89 = v52;
      v86 = 32;
      v87 = 0xE100000000000000;
      v84 = 95;
      v85 = 0xE100000000000000;
      sub_2CEBD0();

      v88 = sub_C3828(1);
      v89 = v53;
      v92._countAndFlagsBits = 0x2E65756C61562ELL;
      v92._object = 0xE700000000000000;
      sub_2CE350(v92);
      v54 = sub_2CE2C0();
      v56 = v55;

      v93._countAndFlagsBits = v54;
      v93._object = v56;
      sub_2CE350(v93);

      v57 = v89;
      *(v51 + 32) = v88;
      *(v51 + 40) = v57;
      v88 = sub_2CE2C0();
      v89 = v58;
      v86 = 32;
      v87 = 0xE100000000000000;
      v84 = 95;
      v85 = 0xE100000000000000;
      sub_2CEBD0();

      v88 = sub_C3828(1);
      v89 = v59;
      v94._countAndFlagsBits = 0x2E65756C61562ELL;
      v94._object = 0xE700000000000000;
      sub_2CE350(v94);
      v60 = sub_2CE2C0();
      v62 = v61;

      v95._countAndFlagsBits = v60;
      v95._object = v62;
      sub_2CE350(v95);

      v63 = v89;
      *(v51 + 48) = v88;
      *(v51 + 56) = v63;
      v88 = sub_2CE2C0();
      v89 = v64;
      v86 = 32;
      v87 = 0xE100000000000000;
      v84 = 95;
      v85 = 0xE100000000000000;
      sub_2CEBD0();

      v88 = sub_C3828(1);
      v89 = v65;
      v96._countAndFlagsBits = 0x2E65756C61562ELL;
      v96._object = 0xE700000000000000;
      sub_2CE350(v96);
      v66 = sub_2CE2C0();
      v68 = v67;

      v97._countAndFlagsBits = v66;
      v97._object = v68;
      sub_2CE350(v97);

      v69 = v89;
      *(v51 + 64) = v88;
      *(v51 + 72) = v69;
      sub_2C9F90();
      v70 = swift_allocObject();
      *(v70 + 16) = v74;
      *(v70 + 32) = sub_C3828(1);
      *(v70 + 40) = v71;
      goto LABEL_11;
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v74;
    v35 = 13;
  }

LABEL_10:
  *(v34 + 32) = sub_C3828(v35);
  *(v34 + 40) = v36;
LABEL_11:
  sub_2C9FA0();
  v37 = v80;
LABEL_12:
  v39 = v81;
  v38 = v82;
  (*(v37 + 32))(v82, v23, v81);
  v40 = 0;
  return (*(v37 + 56))(v38, v40, 1, v39);
}

uint64_t sub_1CAB90@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = a1;
  v77 = sub_2CD490();
  v72 = *(v77 - 1);
  __chkstk_darwin(v77);
  v64 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20410(&qword_34CFB0, &unk_2D1000);
  __chkstk_darwin(v69);
  v76 = &v64 - v3;
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v5 = __chkstk_darwin(v4 - 8);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v70 = &v64 - v8;
  __chkstk_darwin(v7);
  v71 = &v64 - v9;
  v10 = sub_2CA870();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v67 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v68 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v65 = &v64 - v23;
  __chkstk_darwin(v22);
  v25 = &v64 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v27 = *(v17 + 16);
  v74 = v26;
  v73 = v27;
  v27(v25, v26, v16);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "AddMediaNeedsValueStrategy#actionForInput...", v30, 2u);
  }

  v31 = *(v17 + 8);
  v32 = v16;
  v31(v25, v16);
  sub_2CA790();
  v33 = (*(v11 + 88))(v15, v10);
  if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v11 + 96))(v15, v10);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v34 = sub_2CAFE0();
    (*(*(v34 - 8) + 8))(v15, v34);
    v35 = v77;
  }

  else
  {
    v36 = v33;
    v37 = enum case for Parse.pommesResponse(_:);
    (*(v11 + 8))(v15, v10);
    v35 = v77;
    if (v36 != v37)
    {
      v48 = v67;
      v73(v67, v74, v32);
      v49 = sub_2CDFE0();
      v50 = sub_2CE690();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "AddMediaNeedsValueStrategy#actionForInput parse not of right type";
        goto LABEL_16;
      }

LABEL_17:

      v31(v48, v32);
      return sub_2C9CF0();
    }
  }

  v38 = v75;
  sub_2CA790();
  v39 = sub_D2F98(v38, &v80);
  (*(v11 + 8))(v38, v10, v39);
  if (!v81)
  {
    sub_30B8(&v80, &qword_34CF98, &unk_2D1A40);
    v48 = v68;
    v73(v68, v74, v32);
    v49 = sub_2CDFE0();
    v50 = sub_2CE690();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AddMediaNeedsValueStrategy#actionForInput received invalid NL intent";
LABEL_16:
      _os_log_impl(&dword_0, v49, v50, v52, v51, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v77 = v31;
  v79 = v17 + 8;
  sub_420A4(&v80, &v82);
  sub_35E0(&v82, v83);
  v40 = v71;
  sub_2CD480();
  v41 = v72;
  v42 = v70;
  (*(v72 + 104))(v70, enum case for CommonAudio.Confirmation.cancel(_:), v35);
  (*(v41 + 56))(v42, 0, 1, v35);
  v43 = *(v69 + 48);
  v44 = v76;
  sub_F3F4(v40, v76, &qword_34CCE8, &unk_2D0E20);
  v45 = v44;
  sub_F3F4(v42, v44 + v43, &qword_34CCE8, &unk_2D0E20);
  v46 = *(v41 + 48);
  if (v46(v44, 1, v35) == 1)
  {
    sub_30B8(v42, &qword_34CCE8, &unk_2D0E20);
    v47 = v76;
    sub_30B8(v40, &qword_34CCE8, &unk_2D0E20);
    if (v46(v47 + v43, 1, v35) == 1)
    {
      sub_30B8(v47, &qword_34CCE8, &unk_2D0E20);
LABEL_23:
      v60 = v65;
      v73(v65, v74, v32);
      v61 = sub_2CDFE0();
      v62 = sub_2CE690();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_0, v61, v62, "AddMediaNeedsValueStrategy#actionForInput User asked to cancel", v63, 2u);
      }

      (v77)(v60, v32);
      sub_2C9CD0();
      return sub_306C(&v82);
    }

    goto LABEL_20;
  }

  v54 = v66;
  sub_F3F4(v44, v66, &qword_34CCE8, &unk_2D0E20);
  if (v46(v44 + v43, 1, v35) == 1)
  {
    sub_30B8(v70, &qword_34CCE8, &unk_2D0E20);
    v47 = v76;
    sub_30B8(v71, &qword_34CCE8, &unk_2D0E20);
    (*(v72 + 8))(v54, v35);
LABEL_20:
    sub_30B8(v47, &qword_34CFB0, &unk_2D1000);
    goto LABEL_21;
  }

  v55 = v72;
  v56 = v64;
  (*(v72 + 32))(v64, v45 + v43, v35);
  sub_1CEAF8(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
  v57 = v45;
  v58 = sub_2CE250();
  v59 = *(v55 + 8);
  v59(v56, v35);
  sub_30B8(v70, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v71, &qword_34CCE8, &unk_2D0E20);
  v59(v54, v35);
  sub_30B8(v57, &qword_34CCE8, &unk_2D0E20);
  if (v58)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_2C9CE0();
  return sub_306C(&v82);
}

uint64_t sub_1CB664(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v44 = a5;
  v46 = a2;
  v47 = a7;
  v43 = a6;
  v48 = a1;
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v40 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v41 = v11;
  v42 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = v39 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);

  v18 = sub_2CDFE0();
  v19 = sub_2CE690();

  v20 = a4;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_3F08(v21, v20, &v50);
    _os_log_impl(&dword_0, v18, v19, "AddMediaNeedsValueStrategy#makePromptForValue parameter: %{public}s", v22, 0xCu);
    sub_306C(v23);

    a3 = v21;
  }

  (*(v14 + 8))(v16, v13);
  v24 = v49;
  v25 = v46;
  v26 = a3;
  v27 = v44;
  sub_1C9EE0(v46, a3, v20, v49);
  v28 = v45;
  v39[1] = *(v45 + 16);
  v29 = v24;
  v30 = v20;
  v31 = v42;
  sub_F3F4(v29, v42, &unk_353020, &unk_2D0970);
  v32 = (*(v40 + 80) + 80) & ~*(v40 + 80);
  v33 = swift_allocObject();
  v33[2] = v26;
  v33[3] = v30;
  v33[4] = v27;
  v33[5] = v28;
  v35 = v47;
  v34 = v48;
  v33[6] = v48;
  v33[7] = v25;
  v33[8] = v43;
  v33[9] = v35;
  sub_14A58(v31, v33 + v32, &unk_353020, &unk_2D0970);

  v36 = v27;

  v37 = v25;

  sub_CF92C(v34, v26, v30, v37, sub_1CEA6C, v33);

  return sub_30B8(v49, &unk_353020, &unk_2D0970);
}

uint64_t sub_1CBA70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v79 = a8;
  v76 = a6;
  v77 = a7;
  v72 = a5;
  v70 = a4;
  v69 = a3;
  v68 = a2;
  v67 = a1;
  v78 = a9;
  v65 = sub_2CCB20();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v71);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v62 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v75 = &v62 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v74 = &v62 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v73 = &v62 - v19;
  v20 = sub_2CCB30();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v28);
  v30 = (&v62 - v29);
  sub_F3F4(v67, &v62 - v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.amnvs(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v20);
    swift_getErrorValue();
    sub_2CEEF0();
    v80 = sub_2CCAF0();

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v72 = sub_35E0(v72 + 3, v72[6]);
    v32 = enum case for ActivityType.failed(_:);
    v33 = sub_2C9C20();
    v34 = *(v33 - 8);
    v35 = v73;
    (*(v34 + 104))(v73, v32, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    v36 = sub_2CA130();
    v37 = v74;
    (*(*(v36 - 8) + 56))(v74, 1, 1, v36);
    v38 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v39 = sub_2C98F0();
    v40 = *(v39 - 8);
    v41 = v75;
    (*(v40 + 104))(v75, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v41, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v37, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v35, &qword_34CB88, &unk_2D0D90);
    v81[0] = v31;
    v82 = 1;
    swift_errorRetain();
    v79(v81);

    return sub_30B8(v81, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v67 = a10;
    sub_14A58(v30, v80, &qword_34C6E8, &unk_2D0FF0);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.amnvs(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v20);
    v43 = v64;
    v44 = v63;
    v45 = v65;
    (*(v64 + 104))(v63, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v65);
    v70 = sub_2CCB00();
    v69 = v46;
    (*(v43 + 8))(v44, v45);
    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v47 = v72;
    v64 = v72[6];
    v65 = v72[7];
    v68 = sub_35E0(v72 + 3, v64);
    v48 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v49 = sub_2C9C20();
    v50 = *(v49 - 8);
    v51 = v73;
    (*(v50 + 104))(v73, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = v66;
    sub_F3F4(v80, v66, &qword_34C6E8, &unk_2D0FF0);

    v53 = sub_2CA130();
    v54 = *(v53 - 8);
    v55 = v74;
    (*(v54 + 32))(v74, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = enum case for SiriKitReliabilityCodes.success(_:);
    v57 = sub_2C98F0();
    v58 = *(v57 - 8);
    v59 = v75;
    (*(v58 + 104))(v75, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v59, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v55, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v47 + 8, v47[11]);
    v60 = v80;
    sub_F3F4(v80, v52, &qword_34C6E8, &unk_2D0FF0);
    v61 = *(v52 + *(v71 + 48));
    sub_1C1A94(v52, v61, v67, v79, v78);

    sub_30B8(v60, &qword_34C6E8, &unk_2D0FF0);
    return (*(v54 + 8))(v52, v53);
  }
}

uint64_t sub_1CC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_1();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_1CC6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_1();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_1CC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s18NeedsValueStrategyCMa_1();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_1CC7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_1();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_1CC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s18NeedsValueStrategyCMa_1();
  *v14 = v7;
  v14[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_1CC970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = _s18NeedsValueStrategyCMa_1();
  *v16 = v8;
  v16[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_1CCAAC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v235 = a6;
  v236 = a5;
  v233 = a4;
  v231 = a2;
  v228 = a1;
  v7 = sub_20410(&qword_34CC98, &unk_2D3120);
  __chkstk_darwin(v7 - 8);
  v210 = &v208 - v8;
  v216 = sub_2CE0A0();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v10 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_20410(&qword_3544D8, &unk_2D6620);
  v11 = __chkstk_darwin(v234);
  v218 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v230 = (&v208 - v13);
  v241 = sub_2CA870();
  v14 = *(v241 - 8);
  v15 = __chkstk_darwin(v241);
  v219 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v232 = (&v208 - v18);
  __chkstk_darwin(v17);
  v20 = &v208 - v19;
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v213 = &v208 - v27;
  v28 = __chkstk_darwin(v26);
  v226 = &v208 - v29;
  v30 = __chkstk_darwin(v28);
  v212 = &v208 - v31;
  v32 = __chkstk_darwin(v30);
  v220 = &v208 - v33;
  v34 = __chkstk_darwin(v32);
  v223 = &v208 - v35;
  v36 = __chkstk_darwin(v34);
  v211 = &v208 - v37;
  v38 = __chkstk_darwin(v36);
  v222 = &v208 - v39;
  v40 = __chkstk_darwin(v38);
  v221 = &v208 - v41;
  v42 = __chkstk_darwin(v40);
  v217 = &v208 - v43;
  __chkstk_darwin(v42);
  v45 = &v208 - v44;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v214 = v10;
  v46 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v47 = *(v22 + 16);
  v239 = v46;
  v238 = v22 + 16;
  v240 = v47;
  v47(v45, v46, v21);

  v48 = sub_2CDFE0();
  v49 = sub_2CE690();

  v50 = os_log_type_enabled(v48, v49);
  v225 = a3;
  v237 = v22;
  if (v50)
  {
    v51 = v14;
    v52 = v22;
    v53 = v21;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = a3;
    v57 = v55;
    *&v249 = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_3F08(v231, v56, &v249);
    _os_log_impl(&dword_0, v48, v49, "AddMediaNeedsValueStrategy#parseResponseValue parameter: %{public}s", v54, 0xCu);
    sub_306C(v57);

    v21 = v53;
    v22 = v52;
    v14 = v51;
  }

  v58 = *(v22 + 8);
  v58(v45, v21);
  sub_2CA790();
  v59 = sub_D2F98(v20, &v246);
  v60 = *(v14 + 8);
  v60(v20, v241, v59);
  if (v248)
  {
    v229 = v21;
    sub_420A4(&v246, &v249);
    sub_35E0(&v249, v250);
    v61 = sub_2CD760();
    if (v61[2])
    {
      v62 = v61[5];
      v208 = v61[4];
      v224 = v62;
    }

    else
    {
      v208 = 0;
      v224 = 0;
    }

    v209 = v60;
    v227 = v58;

    [v228 copy];
    sub_2CEC00();
    swift_unknownObjectRelease();
    v71 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v245 = 0;
    }

    v72 = v232;
    sub_2CA790();
    v73 = *(v14 + 88);
    v74 = v241;
    v75 = v73(v72, v241);
    v76 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
    if (v75 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v14 + 96))(v72, v74);
      sub_20410(&qword_353070, &unk_2D0FB0);
      v77 = sub_2CA830();
      objc_opt_self();
      v78 = swift_dynamicCastObjCClass();
      if (!v78)
      {

        v114 = v217;
        v115 = v229;
        v240(v217, v239, v229);
        v116 = sub_2CDFE0();
        v117 = sub_2CE670();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_0, v116, v117, "AddMediaNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v118, 2u);
          v115 = v229;
        }

        v227(v114, v115);
        v119 = sub_2CB850();
        sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v120 = swift_allocError();
        (*(*(v119 - 8) + 104))(v121, enum case for PlaybackCode.ceGE2(_:), v119);
        v122 = v230;
        *v230 = v120;
        swift_storeEnumTagMultiPayload();
        v236(v122);

        sub_30B8(v122, &qword_3544D8, &unk_2D6620);
        v123 = sub_2CAFE0();
        (*(*(v123 - 8) + 8))(v72, v123);
        goto LABEL_85;
      }

      v79 = v78;

      v80 = v245;
      v245 = v79;

      v81 = sub_2CAFE0();
      (*(*(v81 - 8) + 8))(v72, v81);
      v82 = v229;
      v83 = v225;
      goto LABEL_53;
    }

    v217 = v71;
    v84 = enum case for Parse.pommesResponse(_:);
    if (v75 == enum case for Parse.pommesResponse(_:))
    {
      v85 = v232;
      (*(v14 + 96))(v232, v74);
      v86 = *v85;
      v87 = sub_1B7F14();
      if (!v87)
      {

        v135 = v211;
        v240(v211, v239, v229);
        v136 = sub_2CDFE0();
        v137 = sub_2CE680();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&dword_0, v136, v137, "AddMediaNeedsValueStrategy#parseResponseValue pommesResponse contains no AudioExperience", v138, 2u);
        }

        v227(v135, v229);
        v139 = sub_2CB850();
        sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v140 = swift_allocError();
        (*(*(v139 - 8) + 104))(v141, enum case for PlaybackCode.ceGE3(_:), v139);
        v142 = v230;
        *v230 = v140;
        swift_storeEnumTagMultiPayload();
        v236(v142);

        goto LABEL_74;
      }

      v88 = v87;
      v89 = v250;
      v90 = v251;
      v91 = sub_35E0(&v249, v250);
      v92 = sub_17FF0C(v91, 0, 0, v89, v90);
      sub_2CDBC0();
      sub_2CDBB0();
      sub_2CDAE0();
      v93 = sub_2CDBA0();

      v241 = v93;
      v94 = sub_232644(v88);
      v240(v221, v239, v229);
      v95 = v94;
      v96 = sub_2CDFE0();
      v97 = sub_2CE670();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        *(v98 + 4) = v95;
        *v99 = v95;
        v100 = v95;
        _os_log_impl(&dword_0, v96, v97, "AddMediaNeedsValueStrategy#parseResponseValue Updating privateAddMediaIntentData with: %@", v98, 0xCu);
        sub_30B8(v99, &unk_34FC00, &unk_2D0150);
      }

      v227(v221, v229);
      if (v245)
      {
        v101 = v245;
        v102 = [v101 backingStore];
        objc_opt_self();
        v103 = swift_dynamicCastObjCClass();
        if (v103)
        {
          v104 = v103;
          v105 = INIntentSlotValueTransformToPrivateAddMediaIntentData();
          [v104 setPrivateAddMediaIntentData:v105];
        }

        else
        {
          v105 = v101;
          v101 = v102;
        }
      }

      v240(v222, v239, v229);
      v143 = v92;
      v144 = sub_2CDFE0();
      v145 = sub_2CE670();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *v146 = 138412290;
        *(v146 + 4) = v143;
        *v147 = v143;
        v148 = v143;
        _os_log_impl(&dword_0, v144, v145, "AddMediaNeedsValueStrategy#parseResponseValue Updating media search with: %@", v146, 0xCu);
        sub_30B8(v147, &unk_34FC00, &unk_2D0150);
      }

      v227(v222, v229);
      v149 = v245;
      if (!v245)
      {

        v82 = v229;
        v83 = v225;
LABEL_52:
        v71 = v217;
LABEL_53:

        v158 = sub_2C5C50(v231, v83);
        v159 = v226;
        switch(v158)
        {
          case 8:

            v174 = v213;
            v240(v213, v239, v82);

            v175 = sub_2CDFE0();
            v176 = sub_2CE680();

            if (os_log_type_enabled(v175, v176))
            {
              v177 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              *&v244 = v178;
              *v177 = 136315138;
              *(v177 + 4) = sub_3F08(v231, v83, &v244);
              _os_log_impl(&dword_0, v175, v176, "AddMediaNeedsValueStrategy#parseConfirmationResponse unexpected parameter: %s", v177, 0xCu);
              sub_306C(v178);
            }

            v227(v174, v82);
            v179 = sub_2CB850();
            sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
            v180 = swift_allocError();
            v182 = v181;
            v183 = &enum case for PlaybackCode.ceGE5(_:);
            break;
          case 1:
            v217 = v71;
            v164 = v208;
            if (!v224)
            {
              v164 = 0;
            }

            v165 = 0xE000000000000000;
            if (v224)
            {
              v165 = v224;
            }

            v166 = v214;
            *v214 = v164;
            v166[1] = v165;
            v167 = v215;
            v168 = v216;
            (*(v215 + 104))(v166, enum case for INMediaDestination.playlist(_:), v216);
            v248 = v168;
            v169 = sub_F390(&v246);
            v170 = *(v167 + 16);
            v170(v169, v166, v168);
            v171 = v245;
            if (v245)
            {
              v172 = v210;
              v170(v210, v166, v168);
              (*(v167 + 56))(v172, 0, 1, v168);
              v173 = v171;
              sub_72E4C(v172);

              sub_30B8(v172, &qword_34CC98, &unk_2D3120);
            }

            (*(v167 + 8))(v166, v168);
            goto LABEL_78;
          case 0:

            if (v245 && (v160 = [v245 mediaItems]) != 0)
            {
              v161 = v160;
              sub_334A0(0, &qword_356F50, INMediaItem_ptr);
              v162 = sub_2CE410();

              v163 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
              if (v162)
              {
LABEL_77:
                v246 = v162;
                v247 = v244;
                v248 = v163;
LABEL_78:
                v240(v159, v239, v82);
                sub_F3F4(&v246, &v244, &qword_34CEA0, &qword_2D0FC0);
                v193 = sub_2CDFE0();
                v194 = sub_2CE690();
                if (os_log_type_enabled(v193, v194))
                {
                  v195 = swift_slowAlloc();
                  v196 = swift_slowAlloc();
                  v243 = v196;
                  *v195 = 136446210;
                  sub_F3F4(&v244, v242, &qword_34CEA0, &qword_2D0FC0);
                  sub_20410(&qword_34CEA0, &qword_2D0FC0);
                  v197 = sub_2CE2A0();
                  v199 = v198;
                  sub_30B8(&v244, &qword_34CEA0, &qword_2D0FC0);
                  v200 = sub_3F08(v197, v199, &v243);

                  *(v195 + 4) = v200;
                  _os_log_impl(&dword_0, v193, v194, "AddMediaNeedsValueStrategy#parseResponseValue returning with: %{public}s", v195, 0xCu);
                  sub_306C(v196);

                  v201 = v159;
                  v202 = v229;
                }

                else
                {

                  sub_30B8(&v244, &qword_34CEA0, &qword_2D0FC0);
                  v201 = v159;
                  v202 = v82;
                }

                v227(v201, v202);
                sub_F3F4(&v246, &v244, &qword_34CEA0, &qword_2D0FC0);
                v203 = v245;
                if (!v245)
                {
                  v204 = v228;
                  v203 = 0;
                }

                v205 = v203;
                v206 = v218;
                sub_2CA220();
                v207 = sub_20410(&qword_3544E0, &unk_2D6630);
                (*(*(v207 - 8) + 56))(v206, 0, 1, v207);
                swift_storeEnumTagMultiPayload();
                v236(v206);
                sub_30B8(v206, &qword_3544D8, &unk_2D6620);
                v190 = &qword_34CEA0;
                v191 = &qword_2D0FC0;
                v192 = &v246;
                goto LABEL_84;
              }
            }

            else
            {
              v163 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
            }

            v162 = _swiftEmptyArrayStorage;
            goto LABEL_77;
          default:

            v184 = v212;
            v240(v212, v239, v82);

            v185 = sub_2CDFE0();
            v186 = sub_2CE680();

            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              *&v244 = v188;
              *v187 = 136315138;
              *(v187 + 4) = sub_3F08(v231, v83, &v244);
              _os_log_impl(&dword_0, v185, v186, "AddMediaNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v187, 0xCu);
              sub_306C(v188);
            }

            v227(v184, v82);
            v179 = sub_2CB850();
            sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
            v180 = swift_allocError();
            v182 = v189;
            v183 = &enum case for PlaybackCode.ceGE6(_:);
            break;
        }

        (*(*(v179 - 8) + 104))(v182, *v183, v179);
        v142 = v230;
        *v230 = v180;
        swift_storeEnumTagMultiPayload();
        v236(v142);
LABEL_74:
        v190 = &qword_3544D8;
        v191 = &unk_2D6620;
        v192 = v142;
LABEL_84:
        sub_30B8(v192, v190, v191);
LABEL_85:

        return sub_306C(&v249);
      }

      objc_opt_self();
      v150 = swift_dynamicCastObjCClass();
      v151 = v143;
      v152 = v149;
      v153 = [v152 backingStore];
      v83 = v225;
      if (v150)
      {
        objc_opt_self();
        v154 = swift_dynamicCastObjCClass();
        if (v154)
        {
          goto LABEL_49;
        }
      }

      else
      {
        objc_opt_self();
        v154 = swift_dynamicCastObjCClass();
        if (v154)
        {
LABEL_49:
          v155 = v154;
          v156 = v83;
          v157 = INIntentSlotValueTransformToMediaSearch();
          [v155 setMediaSearch:v157];

          v83 = v156;

LABEL_51:
          v82 = v229;
          goto LABEL_52;
        }
      }

      goto LABEL_51;
    }

    v106 = v219;
    sub_2CA790();
    v107 = v241;
    v108 = v73(v106, v241);
    v109 = v227;
    if (v108 == v76)
    {
      (*(v14 + 96))(v106, v107);
      sub_20410(&qword_353070, &unk_2D0FB0);

      v110 = sub_2CAFE0();
      (*(*(v110 - 8) + 8))(v106, v110);
      v111 = v229;
      v112 = v220;
      v113 = v209;
    }

    else
    {
      v124 = v108;
      v113 = v209;
      v209(v106, v107);
      v111 = v229;
      v112 = v220;
      if (v124 != v84)
      {
LABEL_33:
        v240(v112, v239, v111);
        v128 = sub_2CDFE0();
        v129 = sub_2CE690();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_0, v128, v129, "AddMediaNeedsValueStrategy#parseResponseValue intent not of right type", v130, 2u);
        }

        v109(v112, v111);
        v131 = sub_2CB850();
        sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v132 = swift_allocError();
        (*(*(v131 - 8) + 104))(v133, enum case for PlaybackCode.ceGE4(_:), v131);
        v134 = v230;
        *v230 = v132;
        swift_storeEnumTagMultiPayload();
        v236(v134);
        sub_30B8(v134, &qword_3544D8, &unk_2D6620);
        v113(v232, v241);
        goto LABEL_85;
      }
    }

    v240(v223, v239, v111);
    v125 = sub_2CDFE0();
    v126 = sub_2CE680();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_0, v125, v126, "AddMediaNeedsValueStrategy#parseResponseValue and AddMediaNeedsValueStrategy#actionForInput parse handling need to be the same!", v127, 2u);
      v109 = v227;
    }

    v109(v223, v111);
    goto LABEL_33;
  }

  sub_30B8(&v246, &qword_34CF98, &unk_2D1A40);
  v240(v25, v239, v21);
  v63 = sub_2CDFE0();
  v64 = sub_2CE690();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "AddMediaNeedsValueStrategy#parseResponseValue received invalid NL intent", v65, 2u);
  }

  v58(v25, v21);
  v66 = sub_2CB850();
  sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v67 = swift_allocError();
  (*(*(v66 - 8) + 104))(v68, enum case for PlaybackCode.ceGE1(_:), v66);
  v69 = v230;
  *v230 = v67;
  swift_storeEnumTagMultiPayload();
  v236(v69);
  return sub_30B8(v69, &qword_3544D8, &unk_2D6620);
}

uint64_t sub_1CEAF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t GuardedFlow.State.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x456F547964616572;
  }

  return 0x6574656C706D6F63;
}

uint64_t sub_1CEBB0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00657475636578;
  v3 = 0x456F547964616572;
  v4 = *a1;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE900000000000064;
  if (v4 == 1)
  {
    v5 = 0x456F547964616572;
    v6 = 0xEE00657475636578;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000000002DA3B0;
  }

  if (*a2 != 1)
  {
    v3 = 0x6574656C706D6F63;
    v2 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000000002DA3B0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

Swift::Int sub_1CECBC()
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

double sub_1CED74(uint64_t a1)
{
  sub_2CE310();

  return result;
}

Swift::Int sub_1CEE18(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_1CEECC@<X0>(Swift::String *a1@<X0>, AudioFlowDelegatePlugin::GuardedFlow::State_optional *a2@<X8>)
{
  result = _s23AudioFlowDelegatePlugin07GuardedB0C5StateO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1CEEFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657475636578;
  v4 = 0x456F547964616572;
  if (v2 != 1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE900000000000064;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000000002DA3B0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1CEF74(char a1)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  if (a1)
  {
    *(v1 + 24) = 2;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v9, v10, v3);
    v11 = sub_2CDFE0();
    v12 = sub_2CE660();
    if (!os_log_type_enabled(v11, v12))
    {
      v7 = v9;
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "GuardedFlow#processGuardFlowExitValue returned a fail result", v13, 2u);
    v7 = v9;
    goto LABEL_10;
  }

  *(v1 + 24) = 1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v7, v14, v3);
  v11 = sub_2CDFE0();
  v15 = sub_2CE660();
  if (os_log_type_enabled(v11, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v11, v15, "GuardedFlow#processGuardFlowExitValue called the callback", v16, 2u);
LABEL_10:
  }

LABEL_12:

  return (*(v4 + 8))(v7, v3);
}

uint64_t GuardedFlow.execute()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_2CE000();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1CF2FC, 0, 0);
}

uint64_t sub_1CF2FC(uint64_t a1)
{
  v2 = v1[7];
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      sub_2C9EA0();
    }

    else
    {
      sub_2C9EB0();
    }
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v4 = v1[9];
    v3 = v1[10];
    v5 = v1[8];
    v6 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_2CDFE0();
    v8 = sub_2CE660();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "GuardedFlow#execute executing flow with guards", v9, 2u);
    }

    v11 = v1[9];
    v10 = v1[10];
    v13 = v1[7];
    v12 = v1[8];

    (*(v11 + 8))(v10, v12);
    v1[5] = sub_2C93A0();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1CF91C;
    *(v14 + 24) = v13;
    sub_2C95F0();

    sub_2C9E80();
  }

  v15 = v1[1];

  return v15();
}

uint64_t GuardedFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GuardedFlow();
  sub_1CF974();
  return sub_2C97C0();
}

uint64_t GuardedFlow.deinit()
{

  return v0;
}

uint64_t GuardedFlow.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CF654(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E664;

  return GuardedFlow.execute()(a1);
}

uint64_t sub_1CF6F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GuardedFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t _s23AudioFlowDelegatePlugin07GuardedB0C5StateO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3308B0;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s23AudioFlowDelegatePlugin07GuardedB0C2on5inputSb07SiriKitB05InputV_tF_0()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2CDFE0();
  v6 = sub_2CE660();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "GuardedFlow#on", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

unint64_t sub_1CF974()
{
  result = qword_3524A8;
  if (!qword_3524A8)
  {
    type metadata accessor for GuardedFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3524A8);
  }

  return result;
}

unint64_t sub_1CF9CC()
{
  result = qword_3544E8;
  if (!qword_3544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3544E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuardedFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuardedFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1CFB70(void *a1, void *a2)
{
  v3 = v2;
  v69 = a2;
  v5 = sub_2CAA00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v13 - 8);
  v15 = v68 - v14;
  sub_2CD700();
  v70 = a1;
  sub_2CDA40();
  (*(v6 + 56))(v15, 0, 1, v5);
  v16 = sub_2CD600();
  if (v16)
  {
    v17 = sub_62CF4(v16, 0, 0);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18 = [v3 backingStore];
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      v20 = v70;
      if (v19)
      {
        v21 = v19;
        v22 = INIntentSlotValueTransformToMediaSearch();
        [v21 setMediaSearch:v22];
      }

      else
      {
        v22 = v17;
        v17 = v18;
      }

      sub_2CDBC0();
      sub_2CDBB0();
      sub_2CDBA0();

      v38 = sub_2CDB80();
      v40 = v39;
      v41 = sub_2CDB60();
      v43 = sub_230B38(v38, v40, v41, v42);

      v44 = [v3 backingStore];
      objc_opt_self();
      v45 = swift_dynamicCastObjCClass();
      if (v45)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    v20 = v70;
    if (v34)
    {
      v35 = v3;
      v36 = [v3 backingStore];
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
LABEL_23:
        v53 = v37;
        v54 = INIntentSlotValueTransformToMediaSearch();
        [v53 setMediaSearch:v54];

        goto LABEL_28;
      }

      v54 = v17;
      v17 = v36;
    }

    else
    {
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      v36 = [v3 backingStore];
      if (!v52)
      {
        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (v55)
        {
          v56 = v55;
          v57 = INIntentSlotValueTransformToMediaSearch();
          [v56 setMediaSearch:v57];
        }

        else
        {
          v57 = v17;
          v17 = v36;
        }

        sub_2CDBC0();
        sub_2CDBB0();
        sub_2CDBA0();

        v63 = sub_2CDB80();
        v65 = v64;
        v66 = sub_2CDB60();
        v43 = sub_230B38(v63, v65, v66, v67);

        v44 = [v3 backingStore];
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (v45)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v35 = v3;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        goto LABEL_23;
      }

      v54 = v17;
      v17 = v36;
    }

LABEL_28:

    sub_2CDBC0();
    sub_2CDBB0();
    sub_2CDBA0();

    v58 = sub_2CDB80();
    v60 = v59;
    v61 = sub_2CDB60();
    v43 = sub_230B38(v58, v60, v61, v62);

    v44 = [v35 backingStore];
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    v3 = v35;
    if (v45)
    {
LABEL_17:
      [v45 setIntentMetadata:v43];

      v46 = sub_22F9F8(v20);
      v47 = [v3 backingStore];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        v49 = v48;
        v50 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData();
        [v49 setPrivateSearchForMediaIntentData:v50];
      }

      else
      {
      }

      return v3;
    }

LABEL_16:

    goto LABEL_17;
  }

  v68[1] = v8;
  v69 = v3;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v24 = v10;
  (*(v10 + 16))(v12, v23, v9);
  v25 = v70;
  v26 = sub_2CDFE0();
  v27 = sub_2CE680();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v70 = v24;
    v71 = v29;
    v30 = v29;
    *v28 = 136315138;
    sub_2CDA40();
    v31 = sub_2CE2A0();
    v33 = sub_3F08(v31, v32, &v71);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_0, v26, v27, "INSearchForMediaIntent#amend unable to construct AudioUsoIntent from userDialogAct: %s", v28, 0xCu);
    sub_306C(v30);

    (*(v70 + 1))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  return v69;
}

void sub_1D04A0()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 internalSignals];

    if (v3)
    {
      v4 = sub_2CE410();

      v5 = v4 + 40;
      v6 = -*(v4 + 16);
      v7 = -1;
      while (1)
      {
        if (v6 + v7 == -1)
        {
LABEL_7:

          return;
        }

        if (++v7 >= *(v4 + 16))
        {
          break;
        }

        v8 = v5 + 16;
        sub_B96A0();
        v9 = sub_2CEBF0();
        v5 = v8;
        if (v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }
}

id sub_1D05F0(SEL *a1)
{
  result = [v1 mediaItems];
  if (result)
  {
    v4 = result;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v5 = sub_2CE410();

    if (v5 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 *a1];

        if (v8)
        {
          v9 = sub_2CE270();

          return v9;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

id sub_1D0718(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v42 - v8;
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  result = [v1 privatePlayMediaIntentData];
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [result internalSignals];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_2CE410();

  if (sub_1D2278())
  {

    if (qword_34BF58 != -1)
    {
LABEL_30:
      swift_once();
    }

    v16 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (v3[2])(v11, v16, v2);
    v17 = sub_2CDFE0();
    v18 = sub_2CE660();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "INPlayMediaIntent#PlayNlsContainer false: playing from library", v19, 2u);
    }

    (v3[1])(v11, v2);
    return 0;
  }

  sub_2CCF90();
  v20 = sub_2CBDB0();

  if ((v20 & 1) == 0)
  {

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (v3[2])(v6, v30, v2);

    v31 = sub_2CDFE0();
    v32 = sub_2CE660();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = sub_2CCF90();
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        sub_10C40();
        swift_allocError();
        *v39 = v37;
        v39[1] = v38;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v33 + 4) = v40;
      *v34 = v41;
      _os_log_impl(&dword_0, v31, v32, "INPlayMediaIntent#PlayNlsContainer false: playing on 3p app %@", v33, 0xCu);
      sub_30B8(v34, &unk_34FC00, &unk_2D0150);
    }

    (v3[1])(v6, v2);
    return 0;
  }

  v42[0] = v3;
  v21 = (v15 + 40);
  v11 = -*(v15 + 16);
  v22 = -1;
  do
  {
    if (&v11[v22] == -1)
    {

      return 0;
    }

    if (++v22 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v3 = v21 + 2;
    v23 = *v21;
    v42[3] = *(v21 - 1);
    v42[4] = v23;
    v42[1] = 0xD000000000000010;
    v42[2] = 0x80000000002DEDB0;
    sub_B96A0();
    v24 = sub_2CEBF0();
    v21 = v3;
  }

  while ((v24 & 1) == 0);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v26 = v42[0];
  (*(v42[0] + 16))(v9, v25, v2);
  v27 = sub_2CDFE0();
  v28 = sub_2CE660();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "INPlayMediaIntent#PlayNlsContainer true", v29, 2u);
  }

  (*(v26 + 8))(v9, v2);
  return &dword_0 + 1;
}

uint64_t sub_1D0CF0()
{
  v1 = v0;
  v2 = sub_2CB8E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CB900();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for PlaybackItem.Scheme.library(_:), v6);
  v10 = sub_2CB8F0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v29 = v10;
  v30 = v12;
  v31._countAndFlagsBits = 3092282;
  v31._object = 0xE300000000000000;
  sub_2CE350(v31);
  (*(v3 + 104))(v5, enum case for PlaybackItem.ContentOrigin.wholelibrary(_:), v2);
  v13 = sub_2CB8D0();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v32._countAndFlagsBits = v13;
  v32._object = v15;
  sub_2CE350(v32);

  v33._countAndFlagsBits = 47;
  v33._object = 0xE100000000000000;
  sub_2CE350(v33);
  v17 = v29;
  v16 = v30;
  v18 = [v1 mediaItems];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v20 = sub_2CE410();

  if (!(v20 >> 62))
  {
    result = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_12:

LABEL_13:

    LOBYTE(v24) = 0;
    return v24 & 1;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
    v22 = *(v20 + 32);
LABEL_7:
    v23 = v22;

    v24 = [v23 identifier];

    if (v24)
    {
      v25 = sub_2CE270();
      v27 = v26;

      v29 = v25;
      v30 = v27;
      v28[0] = v17;
      v28[1] = v16;
      sub_F18AC();
      sub_F1900();
      LOBYTE(v24) = sub_2CE230();
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

id sub_1D1060()
{
  v0 = sub_1D05F0(&selRef_title);
  if (!v1)
  {
    return sub_1D05F0(&selRef_title);
  }

  v2 = v0;
  sub_B96A0();
  v3 = sub_2CEBD0();
  v4 = v2;
  v5 = sub_2CE320();
  result = sub_2CE320();
  if (__OFSUB__(v5, result))
  {
    __break(1u);
  }

  else if (v5 - result <= 34 || sub_2CE320() <= 5)
  {

    return v4;
  }

  else
  {

    return v3;
  }

  return result;
}

id sub_1D119C()
{
  v0 = sub_1D05F0(&selRef_artist);
  if (!v1)
  {
    return sub_1D05F0(&selRef_artist);
  }

  v2 = v0;
  sub_1D05F0(&selRef_title);
  if (!v3)
  {
    sub_1D05F0(&selRef_title);
    if (!v6)
    {
      return v2;
    }

    goto LABEL_10;
  }

  sub_B96A0();
  sub_2CEBD0();
  v4 = sub_2CE320();
  result = sub_2CE320();
  if (!__OFSUB__(v4, result))
  {
    if (v4 - result >= 35)
    {
      sub_2CE320();
    }

LABEL_10:
    if (sub_2CE320() > 59)
    {
    }

    else
    {
      sub_B96A0();
      v7 = sub_2CEBF0();

      if ((v7 & 1) == 0)
      {
        return v2;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1380()
{
  v1 = sub_1D2364(&off_330098);
  sub_F1954(&unk_3300B8);
  if (v1)
  {
    goto LABEL_9;
  }

  v2 = [v0 mediaSearch];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 sortOrder];

  if (v4 != &dword_0 + 1)
  {
    goto LABEL_9;
  }

  v5 = [v0 mediaSearch];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaType];
  }

  else
  {
    v7 = 0;
  }

  if (sub_1953FC(v7, v6 == 0, &off_3300C8))
  {
    v8 = sub_2CE710();
    v9 = vdupq_n_s64(v8);
    v10 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_330158, v9), vceqq_s64(unk_330168, v9)))) | (v8 == 5);
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10 & 1;
}

id sub_1D14A0()
{
  result = [v0 mediaItems];
  if (result)
  {
    v2 = result;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v3 = sub_2CE410();

    if (v3 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v4 = *(v3 + 32);
        }

        v5 = v4;

        v6 = [v5 privateMediaItemValueData];

        if (v6)
        {
          v7 = [v6 provider];

          if (v7)
          {
            v8 = sub_2CE270();

            return v8;
          }
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

id sub_1D15EC()
{
  result = [v0 mediaSearch];
  if (result)
  {
    v2 = result;
    v3 = [result genreNames];

    if (v3)
    {
      v4 = sub_2CE410();

      if (*(v4 + 16))
      {
        v5 = *(v4 + 32);

        return v5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D16A0()
{
  v1 = [v0 privatePlayMediaIntentData];
  v2 = [v1 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v3.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v2)
  {
    v4 = sub_2CEB30();

    v3.super.super.isa = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D1750()
{
  v1 = sub_2CE000();
  v99 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v91 - v6;
  v8 = __chkstk_darwin(v5);
  v94 = &v91 - v9;
  __chkstk_darwin(v8);
  v93 = &v91 - v10;
  v11 = sub_20410(&qword_3545D8, qword_2D6838);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v91 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v91 - v19;
  __chkstk_darwin(v18);
  v22 = &v91 - v21;
  v23 = sub_2C8CB0();
  v24 = *(v23 - 8);
  v97 = v23;
  v98 = v24;
  v25 = __chkstk_darwin(v23);
  v95 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v96 = &v91 - v27;
  v28 = sub_1D2364(&off_3301B0);
  sub_F1954(&unk_3301D0);
  if (v28)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v30 = v99;
    (*(v99 + 16))(v4, v29, v1);
    v31 = sub_2CDFE0();
    v32 = sub_2CE660();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "INPlayMediaIntent#isQueryStationDecade returning true with internal signal QueryStationDecade", v33, 2u);
    }

    (*(v30 + 8))(v4, v1);
    return 1;
  }

  v35 = sub_1D2364(&off_3301E0);
  sub_F1954(&unk_330200);
  if ((v35 & 1) == 0)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v45 = v99;
    (*(v99 + 16))(v7, v44, v1);
    v46 = sub_2CDFE0();
    v47 = sub_2CE660();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "INPlayMediaIntent#isQueryStationDecade not returning false with internal signal QueryStationEditorial", v48, 2u);
    }

    (*(v45 + 8))(v7, v1);
    return 0;
  }

  v36 = [v0 mediaSearch];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 releaseDate];

    if (v38)
    {
      v39 = [v38 startDateComponents];

      if (v39)
      {
        sub_2C8C60();

        v40 = v98;
        v41 = *(v98 + 56);
        v42 = v20;
        v43 = 0;
      }

      else
      {
        v40 = v98;
        v41 = *(v98 + 56);
        v42 = v20;
        v43 = 1;
      }

      v49 = v97;
      v92 = v41;
      v41(v42, v43, 1, v97);
      sub_1D266C(v20, v22);
      v50 = (v40 + 48);
      v51 = *(v40 + 48);
      if (v51(v22, 1, v49) == 1)
      {
        goto LABEL_21;
      }

      v54 = *(v40 + 32);
      v53 = v40 + 32;
      v91 = v54;
      v54(v96, v22, v49);
      v55 = [v0 mediaSearch];
      if (!v55 || (v56 = v55, v57 = [v55 releaseDate], v56, v49 = v97, !v57))
      {
        (*(v98 + 8))(v96, v49);
        v92(v17, 1, 1, v49);
LABEL_32:
        v52 = v17;
        goto LABEL_22;
      }

      v58 = [v57 endDateComponents];

      if (v58)
      {
        sub_2C8C60();

        v59 = 0;
      }

      else
      {
        v59 = 1;
      }

      v60 = v98;
      v92(v14, v59, 1, v49);
      sub_1D266C(v14, v17);
      if (v51(v17, 1, v49) == 1)
      {
        (*(v60 + 8))(v96, v49);
        goto LABEL_32;
      }

      v61 = v95;
      v91(v95, v17, v49);
      v62 = sub_2C8C80();
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      v65 = sub_2C8C80();
      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65;
      }

      v68 = __OFSUB__(v64, v67);
      v69 = v64 - v67;
      if (v68)
      {
        __break(1u);
      }

      else
      {
        v53 = v99;
        v50 = v94;
        if (v69 == 9)
        {
          v70 = sub_2C8C90();
          if ((v71 & 1) == 0 && v70 == 1)
          {
            v72 = sub_2C8C70();
            if ((v73 & 1) == 0 && v72 == 1)
            {
              v74 = sub_2C8C90();
              if ((v75 & 1) == 0 && v74 == 12)
              {
                v76 = sub_2C8C70();
                if ((v77 & 1) == 0 && v76 == 31)
                {
                  if (qword_34BF58 != -1)
                  {
                    swift_once();
                  }

                  v78 = sub_3ED0(v1, static Logger.default);
                  swift_beginAccess();
                  v79 = v93;
                  (*(v53 + 16))(v93, v78, v1);
                  v80 = sub_2CDFE0();
                  v81 = sub_2CE660();
                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = swift_slowAlloc();
                    *v82 = 0;
                    _os_log_impl(&dword_0, v80, v81, "INPlayMediaIntent#isQueryStationDecade returning true with internal signal QueryStationEditorial,  startDateComponents and endDateComponents", v82, 2u);
                  }

                  (*(v53 + 8))(v79, v1);
                  v83 = v97;
                  v84 = *(v98 + 8);
                  v84(v61, v97);
                  v84(v96, v83);
                  return 1;
                }
              }
            }
          }
        }

        if (qword_34BF58 == -1)
        {
          goto LABEL_55;
        }
      }

      swift_once();
LABEL_55:
      v85 = sub_3ED0(v1, static Logger.default);
      swift_beginAccess();
      (*(v53 + 16))(v50, v85, v1);
      v86 = sub_2CDFE0();
      v87 = sub_2CE660();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_0, v86, v87, "INPlayMediaIntent#isQueryStationDecade not returning false as releaseDate matches that of a decade", v88, 2u);
      }

      (*(v53 + 8))(v50, v1);
      v89 = v97;
      v90 = *(v98 + 8);
      v90(v61, v97);
      v90(v96, v89);
      return 0;
    }
  }

  (*(v98 + 56))(v22, 1, 1, v97);
LABEL_21:
  v52 = v22;
LABEL_22:
  sub_30B8(v52, &qword_3545D8, qword_2D6838);
  return 0;
}

id sub_1D21B0()
{
  result = [v0 privatePlayMediaIntentData];
  if (result)
  {
    v2 = result;
    v3 = [result privateMediaIntentData];

    if (v3 && (v4 = [v3 speakerIDInfo], v3, v4))
    {
      if ([v4 speakerIDConfidence] == &dword_4 + 1)
      {

        return &dword_0 + 1;
      }

      else
      {
        v5 = [v4 speakerIDConfidence];

        return (v5 == &dword_4);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D2278()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
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

    v7 = sub_2CE5D0();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2364(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 mediaItems];
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = v6;
      sub_334A0(0, &qword_356F50, INMediaItem_ptr);
      v8 = sub_2CE410();

      if (v8 >> 62)
      {
        result = sub_2CEDA0();
        if (!result)
        {
LABEL_16:

LABEL_3:

          goto LABEL_4;
        }
      }

      else
      {
        result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (!result)
        {
          goto LABEL_16;
        }
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v10 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 + 32);
      }

      v11 = v10;

      v12 = [v11 privateMediaItemValueData];

      if (!v12)
      {
        goto LABEL_3;
      }

      v13 = [v12 internalSignals];

      if (!v13)
      {
        goto LABEL_3;
      }

      v14 = sub_2CE410();

      v18 = &v18;
      v19[0] = v4;
      v19[1] = v5;
      __chkstk_darwin(v15);
      v17[2] = v19;
      v16 = sub_13964(sub_13A68, v17, v14);

      if (v16)
      {
        return 1;
      }

LABEL_4:
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1D266C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_3545D8, qword_2D6838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26DC(uint64_t a1, char a2, void *a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v34 - v11;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v13 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    swift_errorRetain();
    v14 = sub_2CDFE0();
    v15 = sub_2CE680();
    sub_1D33E8(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_0, v14, v15, "SiriRemembersAPI#saveToMemory Donation failed with %@", v16, 0xCu);
      sub_212CC(v17);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v12, v20, v6);
    v21 = a3;
    v22 = sub_2CDFE0();
    v23 = sub_2CE670();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315138;
      v26 = [v21 identifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_2CE270();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v34[0] = v28;
      v34[1] = v30;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v31 = sub_2CE2A0();
      v33 = sub_3F08(v31, v32, &v35);

      *(v24 + 4) = v33;
      _os_log_impl(&dword_0, v22, v23, "SiriRemembersAPI#saveToMemory success for intent with uuid %s", v24, 0xCu);
      sub_306C(v25);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_1D2AC4(void *a1)
{
  v2 = sub_2CE000();
  v57 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v4 = __chkstk_darwin(v3);
  v6 = &v52 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v52 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = sub_2CB0E0();
  v16 = __chkstk_darwin(v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v21 = &v52 - v20;
  if (a1)
  {
    v56 = v19;
    v22 = a1;
    if (sub_2CE730())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v23 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      v24 = v57;
      (*(v57 + 16))(v9, v23, v2);
      v25 = sub_2CDFE0();
      v26 = sub_2CE690();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "SiriRemembersAPI#saveToMemory suppressing as app is inferred", v27, 2u);
      }

      else
      {
      }

      return (*(v24 + 8))(v9, v2);
    }

    else
    {
      v34 = sub_2CE6E0();
      if (v34)
      {
        v35 = v34;
        v36 = [objc_allocWithZone(INInteraction) initWithIntent:v34 response:0];
        [v36 _setDonatedBySiri:1];
        sub_2CE600();
        v55 = v36;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v42 = sub_3ED0(v2, static Logger.default);
        swift_beginAccess();
        v43 = v57;
        (*(v57 + 16))(v14, v42, v2);
        v44 = sub_2CDFE0();
        v54 = sub_2CE690();
        if (os_log_type_enabled(v44, v54))
        {
          v45 = swift_slowAlloc();
          v52 = v45;
          v53 = swift_slowAlloc();
          v58[0] = v53;
          *v45 = 136315138;
          swift_beginAccess();
          (*(v56 + 16))(v18, v21, v15);
          v46 = sub_2CE2A0();
          v48 = sub_3F08(v46, v47, v58);

          v49 = v52;
          *(v52 + 1) = v48;
          _os_log_impl(&dword_0, v44, v54, "SiriRemembersAPI#saveToMemory saving with donation %s", v49, 0xCu);
          sub_306C(v53);
        }

        (*(v43 + 8))(v14, v2);
        v50 = v56;
        swift_beginAccess();
        *(swift_allocObject() + 16) = v22;
        v51 = v22;
        sub_2CB0D0();

        return (*(v50 + 8))(v21, v15);
      }

      else
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v37 = sub_3ED0(v2, static Logger.default);
        swift_beginAccess();
        v38 = v57;
        (*(v57 + 16))(v12, v37, v2);
        v39 = sub_2CDFE0();
        v40 = sub_2CE680();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_0, v39, v40, "SiriRemembersAPI#saveToMemory Error getting donations", v41, 2u);
        }

        else
        {
        }

        return (*(v38 + 8))(v12, v2);
      }
    }
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v28 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v29 = v57;
    (*(v57 + 16))(v6, v28, v2);
    v30 = sub_2CDFE0();
    v31 = sub_2CE690();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "SiriRemembersAPI#saveToMemory no media intent to save", v32, 2u);
    }

    return (*(v29 + 8))(v6, v2);
  }
}

uint64_t sub_1D33E8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1D33F4()
{
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_285EC(&static StringsBackedAppNameResolver.shared, v7);
  sub_2CB4A0();
  v0 = sub_2CB490();

  sub_2C9A00();
  type metadata accessor for SearchForMediaFlowStrategy(0);
  v1 = swift_allocObject();
  sub_EEAC(v6, v5);
  sub_285EC(v7, v4);
  v2 = sub_1D3850(v4, v0, v5, v1);

  sub_306C(v6);
  result = sub_28648(v7);
  qword_35F7D0 = v2;
  return result;
}

uint64_t sub_1D34E8()
{
  result = sub_10E8F4();
  qword_35F7D8 = result;
  return result;
}

id sub_1D3508()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  v4 = sub_2CC240();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v10[3] = v0;
    v10[4] = &protocol witness table for FeatureFlagProvider;
    sub_F390(v10);
    sub_2CC2A0();
    v5 = sub_2CBC40();
    swift_allocObject();
    v6 = sub_2CBC30();
    v9[3] = v5;
    v9[4] = &protocol witness table for AppIntentInvoker;
    v9[0] = v6;
    v7 = objc_allocWithZone(sub_2CD0E0());
    result = sub_2CD0D0();
  }

  else
  {
    result = [objc_allocWithZone(sub_2CD0C0()) init];
  }

  static SearchForMedia.intentHandler = result;
  return result;
}

uint64_t *SearchForMedia.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  return &static SearchForMedia.intentHandler;
}

id static SearchForMedia.intentHandler.getter()
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SearchForMedia.intentHandler;

  return v0;
}

void static SearchForMedia.intentHandler.setter(uint64_t a1)
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static SearchForMedia.intentHandler;
  static SearchForMedia.intentHandler = a1;
}

uint64_t (*static SearchForMedia.intentHandler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_1D3850(_OWORD *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_2CC2B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CB4A0();
  v52[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v30 = v12;
  v31 = a3;
  v52[3] = v12;
  v52[0] = a2;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = 1307;
  a4[4] = 0;
  a4[5] = 0;
  sub_EEAC(a3, &v49);
  LODWORD(a3) = CATDefaultMode;
  v13 = sub_2CBC00();
  v14 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v15 = swift_allocObject();
  v47 = &type metadata for StringsBackedAppNameResolver;
  v48 = sub_2869C();
  v16 = swift_allocObject();
  *&v46 = v16;
  v17 = a1[3];
  v16[3] = a1[2];
  v16[4] = v17;
  v16[5] = a1[4];
  v18 = a1[1];
  v16[1] = *a1;
  v16[2] = v18;
  v45[3] = v13;
  v45[4] = &protocol witness table for MorphunProvider;
  v45[0] = v14;
  v44[3] = v8;
  v44[4] = &protocol witness table for FeatureFlagProvider;
  v19 = sub_F390(v44);
  (*(v9 + 16))(v19, v11, v8);
  *(v15 + 296) = a3;
  sub_EEAC(v44, v15 + 256);
  sub_EEAC(&v46, v43);
  sub_EEAC(v45, v42);
  sub_EEAC(&v49, v41);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v20 = sub_2CCA30();
  v21 = sub_2CCA20();
  v38[3] = v20;
  v38[4] = &protocol witness table for MultiUserConnectionProvider;
  v38[0] = v21;
  v37[3] = sub_2CB9E0();
  v37[4] = &protocol witness table for DeviceProvider;
  sub_F390(v37);
  sub_2CB9C0();
  sub_EEAC(v43, v15 + 16);
  sub_EEAC(v42, v15 + 216);
  sub_EEAC(v41, v15 + 56);
  sub_EEAC(v38, v15 + 96);
  sub_EEAC(v37, v15 + 176);
  sub_286F0(v39, &v32);
  if (v33)
  {

    sub_28760(v39);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v43);
    (*(v9 + 8))(v11, v8);
    sub_306C(&v49);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(&v46);
    sub_306C(v37);
    sub_306C(v38);
    sub_F338(&v32, &v34);
  }

  else
  {
    sub_EEAC(v41, &v34);
    v22 = sub_2C9E60();
    swift_allocObject();
    v23 = sub_2C9E50();
    v35 = v22;
    v36 = &protocol witness table for ContactsManager;

    *&v34 = v23;
    sub_28760(v39);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v43);
    (*(v9 + 8))(v11, v8);
    sub_306C(&v49);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(&v46);
    sub_306C(v37);
    sub_306C(v38);
    if (v33)
    {
      sub_28760(&v32);
    }
  }

  sub_F338(&v34, v15 + 136);
  a4[6] = v15;
  v50 = sub_2CC360();
  v51 = &protocol witness table for StringsFileResolver;
  sub_F390(&v49);

  sub_2CC350();
  v24 = v30;
  v25 = sub_2CB490();
  v47 = v24;
  v48 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v46 = v25;
  sub_20410(qword_354608, &qword_2D68D0);
  v26 = swift_allocObject();
  v26[13] = 0xD000000000000011;
  v26[14] = 0x80000000002DA8D0;
  v26[2] = v15;
  sub_F338(&v49, (v26 + 3));
  sub_F338(&v46, (v26 + 8));
  a4[7] = v26;
  sub_EEAC(v52, (a4 + 8));
  v50 = v8;
  v51 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v49);
  sub_2CC2A0();
  v27 = type metadata accessor for SiriAudioOutputProvider();
  v28 = swift_allocObject();
  sub_F338(&v49, v28 + 16);
  v50 = v27;
  v51 = &off_337EB0;
  *&v49 = v28;
  sub_306C(v31);
  sub_306C(v52);
  sub_F338(&v49, (a4 + 13));
  return a4;
}

uint64_t CommonAppResolver.postResolve(for:app:resolutionResultType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v19[1] = a5;
  v20 = a4;
  v7 = sub_2CE150();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE180();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CBB80();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v5;
  aBlock[4] = sub_1DABE0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_3382B8;
  v17 = _Block_copy(aBlock);

  sub_2CE160();
  v21 = _swiftEmptyArrayStorage;
  sub_1DBE14(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);

  return v20(1);
}

void *CommonAppResolver.deinit()
{
  v0 = sub_2CCF60();

  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 16)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 24)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 32)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 40)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 48)));
  return v0;
}

uint64_t CommonAppResolver.resolveApp(forIntent:withConversionState:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v60 = a2;
  v61 = v4;
  v6 = sub_2CDFD0();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v52 = sub_2CE000();
  v12 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_350438, qword_2D3AA0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v63 = a1;
  v62 = a1;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if (swift_dynamicCast())
  {
    sub_35E0(&v64, *(&v65 + 1));
    sub_2CC170();
    sub_306C(&v64);
    v21 = sub_20410(&qword_34E740, &unk_2D68F0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) != 1)
    {
      v56 = 0xEE006465766C6F73;
      v22 = 0x6552657250707061;
      goto LABEL_6;
    }
  }

  else
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    sub_30B8(&v64, &qword_3530A0, &qword_2D1EF8);
    v23 = sub_20410(&qword_34E740, &unk_2D68F0);
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  }

  v56 = 0x80000000002DCCF0;
  v22 = 0xD000000000000010;
LABEL_6:
  v55 = v22;
  sub_F3F4(v20, v18, &qword_350438, qword_2D3AA0);
  v24 = sub_20410(&qword_34E740, &unk_2D68F0);
  v25 = (*(*(v24 - 8) + 48))(v18, 1, v24);
  v59 = v20;
  if (v25 == 1)
  {
    sub_30B8(v18, &qword_350438, qword_2D3AA0);
  }

  else
  {
    v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *v18;
    v26 = v18[1];
    v28 = *(v24 + 48);
    v29 = sub_2CC5F0();
    (*(*(v29 - 8) + 8))(v18 + v28, v29);
    if (sub_1DB7D8(v62))
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v30 = v52;
      v31 = sub_3ED0(v52, static Logger.default);
      swift_beginAccess();
      (*(v12 + 16))(v14, v31, v30);

      v32 = sub_2CDFE0();
      v33 = sub_2CE690();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v63 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_3F08(v27, v26, &v63);
        _os_log_impl(&dword_0, v32, v33, "CommonIntentAppResolver#resolveApp setting bundleId: %s", v34, 0xCu);
        sub_306C(v35);

        (*(v12 + 8))(v14, v52);
      }

      else
      {

        (*(v12 + 8))(v14, v30);
      }

      v36 = sub_2CE260();

      [v62 _setLaunchId:v36];
    }

    else
    {
    }

    v9 = v51;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v57;
  *(v37 + 24) = v58;
  v38 = qword_34BF98;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_35F760;
  sub_2CDFB0();
  v40 = v53;
  v41 = v54;
  (*(v53 + 16))(v9, v11, v54);
  v42 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = "commonAppResolver";
  *(v43 + 24) = 17;
  *(v43 + 32) = 2;
  (*(v40 + 32))(v43 + v42, v9, v41);
  v44 = (v43 + ((v7 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v44 = sub_1DB7BC;
  v44[1] = v37;

  v45 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2D0090;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_1087C();
  v47 = v56;
  *(v46 + 32) = v55;
  *(v46 + 40) = v47;
  sub_2CDF90(v45, &dword_0, v39, "commonAppResolver", 17, 2, v11, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v46);

  v48 = swift_allocObject();
  *(v48 + 16) = sub_1DB7C0;
  *(v48 + 24) = v43;

  sub_1D5084(sub_13D8C, v48, v62, v60, v61);

  (*(v40 + 8))(v11, v41);
  return sub_30B8(v59, &qword_350438, qword_2D3AA0);
}

uint64_t sub_1D4A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a2;
  v27 = a1;
  v28 = a4;
  v26 = a3;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = qword_34BF98;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "resolveSelectedApp";
  *(v20 + 24) = 18;
  *(v20 + 32) = 2;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = sub_1DC1A0;
  v21[1] = v15;

  v22 = sub_2CE9E0();
  sub_2CDF90(v22, &dword_0, v17, "resolveSelectedApp", 18, 2, v14, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1DBEB0;
  *(v23 + 24) = v20;

  sub_1D8388(sub_13BD8, v23, v30, v26, v28, v27, v29);

  (*(v9 + 8))(v14, v8);
}

uint64_t sub_1D4D38(uint64_t a1, unint64_t a2)
{
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + class metadata base offset for CommonAppResolver + 24);
  v10 = *(*v2 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v2 + v10, v26);
  v11 = sub_DE6CC(a1, a2, v2 + v9, v26);
  sub_306C(v26);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v8, v12, v5);

  v13 = sub_2CDFE0();
  v14 = sub_2CE690();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v22 = a1;
    v24 = v11;
    v25 = v17;
    *v16 = 136446466;
    sub_2CCFB0();
    sub_1DBE14(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v18 = sub_2CEE70();
    v20 = sub_3F08(v18, v19, &v25);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_3F08(v22, a2, &v25);
    _os_log_impl(&dword_0, v13, v14, "CommonIntentAppResolver#app created app as: %{public}s from bundleIdentifier: %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v23);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

uint64_t sub_1D5084(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v269 = a4;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v259 = v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v262 = v238 - v14;
  v15 = __chkstk_darwin(v13);
  v256 = v238 - v16;
  v17 = __chkstk_darwin(v15);
  v260 = v238 - v18;
  v19 = __chkstk_darwin(v17);
  v261 = v238 - v20;
  v21 = __chkstk_darwin(v19);
  v263 = v238 - v22;
  __chkstk_darwin(v21);
  v24 = v238 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v268 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v28 = v10 + 16;
  v266 = *(v10 + 16);
  v266(v24, v27, v9);
  v29 = a3;
  v30 = sub_2CDFE0();
  v31 = sub_2CE690();

  v32 = os_log_type_enabled(v30, v31);
  v267 = v10;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v257 = swift_slowAlloc();
    *&v274[0] = v257;
    *v33 = 136446466;
    v34 = sub_2CCC80();
    v258 = v24;
    LODWORD(v255) = v31;
    v36 = a5;
    v37 = v29;
    v38 = sub_3F08(v34, v35, v274);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = [v37 utteranceString];
    v40 = sub_2CE270();
    v41 = v9;
    v42 = v36;
    v43 = v27;
    v45 = v44;

    v46 = v40;
    v29 = v37;
    v47 = sub_3F08(v46, v45, v274);
    v27 = v43;
    a5 = v42;
    v9 = v41;
    v10 = v267;

    *(v33 + 14) = v47;
    _os_log_impl(&dword_0, v30, v255, "CommonIntentAppResolver#resolveApp %{public}s with user utterance: %s", v33, 0x16u);
    swift_arrayDestroy();

    v48 = *(v10 + 8);
    v48(v258, v9);
  }

  else
  {

    v48 = *(v10 + 8);
    v48(v24, v9);
  }

  v49 = v269;
  sub_EEAC(v269, &v273);
  sub_20410(&qword_354760, &qword_2D69F0);
  v50 = swift_dynamicCast();
  v265 = v9;
  if (v50)
  {
    v274[1] = v271;
    v274[2] = v272;
    v274[0] = v270;
    v51 = *(&v272 + 1);
    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    if (v52)
    {
      v258 = v52;
      v264 = v27;
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        v254 = a5;
        v255 = v48;
        v252 = v29;
        v55 = v29;
        v56 = v51;
        v57 = [v54 isEqual:v258];
        v246 = v54;
        v58 = v9;
        if (sub_2CE730())
        {
          v59 = sub_2CE730() ^ 1;
        }

        else
        {
          v59 = 0;
        }

        v61 = (v57 ^ 1) & v59;
        v266(v263, v264, v9);
        v62 = v55;
        v63 = v56;
        v64 = sub_2CDFE0();
        v65 = sub_2CE690();
        v66 = os_log_type_enabled(v64, v65);
        LODWORD(v257) = v61;
        v243 = v62;
        v251 = v63;
        if (v66)
        {
          v67 = swift_slowAlloc();
          *v67 = 67109888;
          v68 = v62;
          v69 = v246;
          *(v67 + 4) = [v246 isEqual:v258];
          *(v67 + 8) = 1024;
          *(v67 + 10) = sub_2CE730() & 1;

          *(v67 + 14) = 1024;
          *(v67 + 16) = sub_2CE730() & 1;

          *(v67 + 20) = 1024;
          v58 = v265;
          *(v67 + 22) = v257;
          _os_log_impl(&dword_0, v64, v65, "CommonIntentAppResolver#resolveApp intent and updatedIntent are sameIntents: %{BOOL}d. intent has app inferred: %{BOOL}d, updatedIntent has app inferred: %{BOOL}d. This is a disambiguationSelection: %{BOOL}d", v67, 0x1Au);
        }

        else
        {

          v64 = v62;
          v69 = v246;
        }

        v245 = v10 + 8;
        v255(v263, v58);
        v70 = [v69 privatePlayMediaIntentData];
        v29 = &selRef_hasTwoOrMoreRooms;
        v72 = v58;
        if (v70)
        {
          v73 = v70;
          v74 = [v70 audioSearchResults];

          a5 = v254;
          if (v74)
          {
            sub_736BC();
            v75 = sub_2CE410();

            if (v75 >> 62)
            {
LABEL_114:
              v76 = sub_2CEDA0();
            }

            else
            {
              v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
            }

            v77 = v72;
            v242 = v76 == 0;
LABEL_26:
            v263 = v75;
            v275.value._rawValue = v75;
            v275.is_nil = 0;
            v253 = sub_2CEAD0(v275, v71);
            v250 = v78;
            v79 = [v258 privatePlayMediaIntentData];
            if (v79 && (v81 = v79, v82 = [v79 *(v29 + 1144)], v81, v82))
            {
              sub_736BC();
              v83 = sub_2CE410();

              v84 = v261;
              if (v83 >> 62)
              {
                v85 = sub_2CEDA0();
              }

              else
              {
                v85 = *(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8));
              }

              v86 = v251;
              v248 = v85 == 0;
            }

            else
            {
              v83 = 0;
              v248 = 1;
              v84 = v261;
              v86 = v251;
            }

            v276.value._rawValue = v83;
            v276.is_nil = 0;
            v87 = sub_2CEAD0(v276, v80);
            v249 = v88;
            v247 = v28;
            v266(v84, v264, v77);

            v89 = v86;
            v90 = v83;
            v91 = v250;

            v92 = v263;

            v93 = v91;
            v94 = sub_2CDFE0();
            LODWORD(v91) = sub_2CE690();
            v251 = v89;

            v95 = v90;

            v241 = v91;
            v96 = os_log_type_enabled(v94, v91);
            v244 = v87;
            if (!v96)
            {

              v48 = v255;
              v255(v84, v77);
              v110 = v260;
              v28 = v247;
              v27 = v264;
              v75 = v95;
              v29 = v252;
              goto LABEL_73;
            }

            v97 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            *&v270 = v239;
            *v97 = 67110402;
            *(v97 + 4) = v248;
            *(v97 + 8) = 2082;
            *(v97 + 10) = sub_3F08(v253, v93, &v270);
            *(v97 + 18) = 2082;
            *(v97 + 20) = sub_3F08(v87, v249, &v270);
            v98 = v97;
            *(v97 + 28) = 2082;
            v240 = v94;
            if (v92)
            {
              v75 = v95;
              if (v92 >> 62)
              {
                v99 = sub_2CEDA0();
              }

              else
              {
                v99 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
              }

              v28 = v247;
              v27 = v264;
              v100 = v98;
              v29 = v252;
              v101 = _swiftEmptyArrayStorage;
              if (v99)
              {
                v273 = _swiftEmptyArrayStorage;
                v29 = v92;
                v102 = v99 & ~(v99 >> 63);

                sub_2DBFC(0, v102, 0);
                if (v99 < 0)
                {
                  __break(1u);
                  goto LABEL_119;
                }

                v101 = v273;
                if ((v29 & 0xC000000000000001) != 0)
                {
                  v103 = 0;
                  do
                  {
                    sub_2CECD0();
                    v104 = sub_2CE5B0();
                    v106 = v105;
                    swift_unknownObjectRelease();
                    v273 = v101;
                    v108 = v101[2];
                    v107 = v101[3];
                    if (v108 >= v107 >> 1)
                    {
                      sub_2DBFC((v107 > 1), v108 + 1, 1);
                      v101 = v273;
                    }

                    ++v103;
                    v101[2] = v108 + 1;
                    v109 = &v101[2 * v108];
                    v109[4] = v104;
                    v109[5] = v106;
                  }

                  while (v99 != v103);
                }

                else
                {
                  v111 = (v29 + 32);
                  do
                  {
                    v112 = *v111;
                    v113 = sub_2CE5B0();
                    v115 = v114;

                    v273 = v101;
                    v117 = v101[2];
                    v116 = v101[3];
                    if (v117 >= v116 >> 1)
                    {
                      sub_2DBFC((v116 > 1), v117 + 1, 1);
                      v101 = v273;
                    }

                    v101[2] = v117 + 1;
                    v118 = &v101[2 * v117];
                    v118[4] = v113;
                    v118[5] = v115;
                    ++v111;
                    --v99;
                  }

                  while (v99);
                }

                a5 = v254;
                v29 = v252;
                v27 = v264;
                v28 = v247;
              }
            }

            else
            {
              v101 = 0;
              v28 = v247;
              v27 = v264;
              v75 = v95;
              v100 = v98;
              v29 = v252;
            }

            v273 = v101;
            v119 = sub_20410(&qword_353C98, &unk_2D6A00);
            v120 = sub_2CE2A0();
            v122 = sub_3F08(v120, v121, &v270);

            *(v100 + 30) = v122;
            *(v100 + 38) = 2082;
            if (v75)
            {
              v238[1] = v119;
              if (v75 >> 62)
              {
                v123 = sub_2CEDA0();
              }

              else
              {
                v123 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
              }

              v124 = _swiftEmptyArrayStorage;
              if (v123)
              {
                v273 = _swiftEmptyArrayStorage;
                v102 = v123 & ~(v123 >> 63);

                sub_2DBFC(0, v102, 0);
                if ((v123 & 0x8000000000000000) == 0)
                {
                  v124 = v273;
                  if ((v75 & 0xC000000000000001) != 0)
                  {
                    v125 = 0;
                    do
                    {
                      sub_2CECD0();
                      v126 = sub_2CE5B0();
                      v128 = v127;
                      swift_unknownObjectRelease();
                      v273 = v124;
                      v130 = v124[2];
                      v129 = v124[3];
                      if (v130 >= v129 >> 1)
                      {
                        sub_2DBFC((v129 > 1), v130 + 1, 1);
                        v124 = v273;
                      }

                      ++v125;
                      v124[2] = v130 + 1;
                      v131 = &v124[2 * v130];
                      v131[4] = v126;
                      v131[5] = v128;
                    }

                    while (v123 != v125);
                  }

                  else
                  {
                    v132 = (v75 + 32);
                    do
                    {
                      v133 = *v132;
                      v134 = sub_2CE5B0();
                      v136 = v135;

                      v273 = v124;
                      v138 = v124[2];
                      v137 = v124[3];
                      if (v138 >= v137 >> 1)
                      {
                        sub_2DBFC((v137 > 1), v138 + 1, 1);
                        v124 = v273;
                      }

                      v124[2] = v138 + 1;
                      v139 = &v124[2 * v138];
                      v139[4] = v134;
                      v139[5] = v136;
                      ++v132;
                      --v123;
                    }

                    while (v123);
                  }

                  a5 = v254;
                  v29 = v252;
                  v27 = v264;
                  v28 = v247;
                  goto LABEL_68;
                }

LABEL_119:
                __break(1u);
                goto LABEL_120;
              }
            }

            else
            {
              v124 = 0;
            }

LABEL_68:
            v273 = v124;
            v140 = sub_2CE2A0();
            v142 = sub_3F08(v140, v141, &v270);

            *(v100 + 40) = v142;
            *(v100 + 48) = 2082;
            v143 = [v258 privatePlayMediaIntentData];
            if (v143)
            {
              v144 = v143;
              v145 = [v143 internalSignals];

              v146 = v261;
              if (v145)
              {
                sub_2CE410();
              }
            }

            else
            {
              v146 = v261;
            }

            v147 = sub_2CE420();
            v149 = v148;

            v150 = sub_3F08(v147, v149, &v270);

            *(v100 + 50) = v150;
            v151 = v240;
            _os_log_impl(&dword_0, v240, v241, "CommonIntentAppResolver#resolveApp for updatedResultsEmpty?:%{BOOL}d originalDefaultBundle:%{public}s, updatedDefaultBundle:%{public}s checking if we should override original search results: %{public}s with search results after disambiguation: %{public}s -- internal signals?:%{public}s", v100, 0x3Au);
            swift_arrayDestroy();

            v48 = v255;
            v255(v146, v265);
            v110 = v260;
            v93 = v250;
LABEL_73:
            v153 = v253 == v244 && v93 == v249;
            LODWORD(v60) = v257;
            if (v248)
            {
              if (v153 || (sub_2CEEA0() & 1) != 0)
              {

LABEL_83:

LABEL_87:
                sub_1DC07C(v274);
                v49 = v269;
                goto LABEL_164;
              }

              v168 = v265;
              v266(v110, v27, v265);
              v169 = sub_2CDFE0();
              v170 = sub_2CE690();
              if (os_log_type_enabled(v169, v170))
              {
                v171 = swift_slowAlloc();
                v172 = swift_slowAlloc();
                *&v270 = v172;
                *v171 = 136446210;
                v173 = sub_2CCC80();
                v175 = sub_3F08(v173, v174, &v270);
                v48 = v255;

                *(v171 + 4) = v175;
                v29 = v252;
                _os_log_impl(&dword_0, v169, v170, "CommonIntentAppResolver#resolveApp %{public}s updating original intent with nil search results as default bundles are not consistent", v171, 0xCu);
                sub_306C(v172);

                v176 = v260;
LABEL_163:
                v48(v176, v168);
                v49 = v269;
                v202 = [v258 privatePlayMediaIntentData];
                [v246 setPrivatePlayMediaIntentData:v202];

                sub_1DC07C(v274);
                a5 = v254;
                goto LABEL_164;
              }

              goto LABEL_162;
            }

            if (v153)
            {

              v102 = v263;
              if (!v242)
              {
LABEL_86:

                goto LABEL_87;
              }
            }

            else
            {
              v154 = sub_2CEEA0();

              v155 = v242 | ~v154;
              v102 = v263;
              if ((v155 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            if (!v75)
            {
              v177 = 0;
              v261 = 0;
              goto LABEL_126;
            }

            v29 = v75 & 0xFFFFFFFFFFFFFF8;
            if (!(v75 >> 62))
            {
              v156 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
              if (v156)
              {
                goto LABEL_92;
              }

              goto LABEL_121;
            }

LABEL_120:
            v156 = sub_2CEDA0();
            if (v156)
            {
LABEL_92:
              v72 = 0;
              v260 = _swiftEmptyArrayStorage;
              do
              {
                v157 = v72;
                while (1)
                {
                  if ((v75 & 0xC000000000000001) != 0)
                  {
                    v158 = sub_2CECD0();
                  }

                  else
                  {
                    if (v157 >= *(v29 + 16))
                    {
                      goto LABEL_113;
                    }

                    v158 = *(v75 + 8 * v157 + 32);
                  }

                  a5 = v158;
                  v72 = v157 + 1;
                  if (__OFADD__(v157, 1))
                  {
                    __break(1u);
LABEL_113:
                    __break(1u);
                    goto LABEL_114;
                  }

                  v159 = [v158 identifier];
                  if (v159)
                  {
                    break;
                  }

                  ++v157;
                  if (v72 == v156)
                  {
                    goto LABEL_122;
                  }
                }

                v160 = v159;
                v261 = sub_2CE270();
                v253 = v161;

                v162 = v28;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v260 = sub_B90C4(0, *(v260 + 2) + 1, 1, v260);
                }

                v164 = *(v260 + 2);
                v163 = *(v260 + 3);
                if (v164 >= v163 >> 1)
                {
                  v260 = sub_B90C4((v163 > 1), v164 + 1, 1, v260);
                }

                v165 = v260;
                *(v260 + 2) = v164 + 1;
                v166 = &v165[16 * v164];
                v167 = v253;
                *(v166 + 4) = v261;
                *(v166 + 5) = v167;
                v28 = v162;
                v102 = v263;
              }

              while (v72 != v156);
              goto LABEL_122;
            }

LABEL_121:
            v260 = _swiftEmptyArrayStorage;
LABEL_122:

            if (*(v260 + 2))
            {
              v177 = *(v260 + 4);
              v261 = *(v260 + 5);
            }

            else
            {

              v177 = 0;
              v261 = 0;
            }

            a5 = v254;
            v29 = v252;
            v27 = v264;
            v48 = v255;
            LODWORD(v60) = v257;
LABEL_126:
            if (v102)
            {
              v178 = v102 & 0xFFFFFFFFFFFFFF8;
              if (v102 >> 62)
              {
LABEL_187:
                v179 = sub_2CEDA0();
              }

              else
              {
                v179 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
              }

              v260 = v177;
              if (v179)
              {
                v180 = 0;
                v181 = v102 & 0xC000000000000001;
                v182 = _swiftEmptyArrayStorage;
                v177 = &selRef_hasTwoOrMoreRooms;
                do
                {
                  v183 = v180;
                  while (1)
                  {
                    if (v181)
                    {
                      v184 = sub_2CECD0();
                    }

                    else
                    {
                      if (v183 >= *(v178 + 16))
                      {
                        goto LABEL_186;
                      }

                      v184 = *(v102 + 8 * v183 + 32);
                    }

                    v185 = v184;
                    v180 = v183 + 1;
                    if (__OFADD__(v183, 1))
                    {
                      __break(1u);
LABEL_186:
                      __break(1u);
                      goto LABEL_187;
                    }

                    v186 = [v184 identifier];
                    if (v186)
                    {
                      break;
                    }

                    ++v183;
                    if (v180 == v179)
                    {
                      goto LABEL_148;
                    }
                  }

                  v187 = v186;
                  v253 = sub_2CE270();
                  v250 = v188;

                  v189 = v28;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v182 = sub_B90C4(0, *(v182 + 2) + 1, 1, v182);
                  }

                  v191 = *(v182 + 2);
                  v190 = *(v182 + 3);
                  if (v191 >= v190 >> 1)
                  {
                    v182 = sub_B90C4((v190 > 1), v191 + 1, 1, v182);
                  }

                  *(v182 + 2) = v191 + 1;
                  v192 = &v182[16 * v191];
                  v193 = v250;
                  *(v192 + 4) = v253;
                  *(v192 + 5) = v193;
                  v28 = v189;
                  v102 = v263;
                }

                while (v180 != v179);
              }

              else
              {
                v182 = _swiftEmptyArrayStorage;
              }

LABEL_148:

              if (*(v182 + 2))
              {
                v194 = *(v182 + 4);
                v195 = *(v182 + 5);
              }

              else
              {

                v194 = 0;
                v195 = 0;
              }

              a5 = v254;
              v29 = v252;
              v27 = v264;
              v48 = v255;
              LODWORD(v60) = v257;
              v177 = v260;
            }

            else
            {
              v194 = 0;
              v195 = 0;
            }

            if (v261)
            {
              if (v195)
              {
                if (v177 == v194 && v261 == v195)
                {
                  goto LABEL_86;
                }

                v237 = sub_2CEEA0();

                if (v237)
                {
                  goto LABEL_83;
                }

LABEL_160:
                v110 = v256;
                v168 = v265;
                v266(v256, v27, v265);
                v169 = sub_2CDFE0();
                v196 = sub_2CE690();
                if (os_log_type_enabled(v169, v196))
                {
                  v197 = swift_slowAlloc();
                  v198 = swift_slowAlloc();
                  *&v270 = v198;
                  *v197 = 136446210;
                  v199 = sub_2CCC80();
                  v201 = sub_3F08(v199, v200, &v270);
                  v48 = v255;

                  *(v197 + 4) = v201;
                  v29 = v252;
                  _os_log_impl(&dword_0, v169, v196, "CommonIntentAppResolver#resolveApp %{public}s updating original intent with new search results", v197, 0xCu);
                  sub_306C(v198);

                  v176 = v256;
                  goto LABEL_163;
                }

LABEL_162:

                v176 = v110;
                goto LABEL_163;
              }
            }

            else
            {
              if (!v195)
              {
                goto LABEL_83;
              }

              v261 = v195;
            }

            goto LABEL_160;
          }

          v75 = 0;
          v242 = 1;
        }

        else
        {
          v75 = 0;
          v242 = 1;
          a5 = v254;
        }

        v77 = v72;
        goto LABEL_26;
      }

      sub_1DC07C(v274);
      LODWORD(v60) = 0;
      v27 = v264;
    }

    else
    {
      sub_1DC07C(v274);
      LODWORD(v60) = 0;
    }
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
    v270 = 0u;
    sub_30B8(&v270, &qword_354768, &qword_2D69F8);
    LODWORD(v60) = 0;
  }

LABEL_164:
  sub_35E0(v49, v49[3]);
  if (sub_2CCFF0())
  {
    v203 = sub_2CCF90();
    v205 = v204;

    if (v205)
    {

      v206 = sub_2CBD10();
      if (v207)
      {
        if (v203 == v206 && v205 == v207)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_182;
        }

        v208 = sub_2CEEA0();

        if (v208)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_182;
        }
      }

      LODWORD(v257) = v60;
      v209 = v262;
      v60 = v265;
      v266(v262, v27, v265);

      v210 = sub_2CDFE0();
      v211 = sub_2CE690();
      v264 = v27;
      v212 = v211;

      LODWORD(v269) = v212;
      if (os_log_type_enabled(v210, v212))
      {
        v213 = swift_slowAlloc();
        v255 = v48;
        v214 = v213;
        *&v274[0] = swift_slowAlloc();
        *v214 = 136446466;
        v215 = sub_2CCC80();
        v217 = v29;
        v218 = sub_3F08(v215, v216, v274);

        *(v214 + 4) = v218;
        v29 = v217;
        *(v214 + 12) = 2082;
        v219 = sub_3F08(v203, v205, v274);

        *(v214 + 14) = v219;
        _os_log_impl(&dword_0, v210, v269, "CommonIntentAppResolver#resolveApp %{public}s updating intent with requested app (differs from launchId): %{public}s", v214, 0x16u);
        swift_arrayDestroy();
        v220 = v264;

        v48 = v255;

        v48(v262, v265);
        LOBYTE(v60) = v257;
      }

      else
      {

        v48(v209, v60);
        LOBYTE(v60) = v257;
        v220 = v264;
      }

      v278._object = 0x80000000002DEF40;
      v277.value._countAndFlagsBits = v203;
      v277.value._object = v205;
      v278._countAndFlagsBits = 0xD00000000000001CLL;
      sub_2CEAA0(v277, v278);

      objc_opt_self();
      v221 = swift_dynamicCastObjCClass();
      if (v221)
      {
        v222 = v221;
        v223 = v29;
        v224 = [v222 backingStore];
        objc_opt_self();
        v225 = swift_dynamicCastObjCClass();
        if (v225)
        {
          v254 = a5;
          v255 = v48;
          v226 = [v225 privatePlayMediaIntentData];
          [v226 setAppInferred:0];

          v266(v259, v220, v265);
          v227 = v223;
          v228 = sub_2CDFE0();
          v229 = sub_2CE690();
          if (os_log_type_enabled(v228, v229))
          {
            v230 = swift_slowAlloc();
            *v230 = 67240192;
            *(v230 + 4) = sub_2CE730() & 1;

            _os_log_impl(&dword_0, v228, v229, "CommonIntentAppResolver#resolveApp set appInferred?:%{BOOL,public}d as using requested app", v230, 8u);

            v231 = v227;
          }

          else
          {

            v231 = v224;
            v228 = v227;
            v224 = v227;
          }

          a5 = v254;

          v255(v259, v265);
          LOBYTE(v60) = v257;
        }

        else
        {
        }
      }
    }
  }

LABEL_182:
  v232 = swift_allocObject();
  *(v232 + 16) = a5;
  *(v232 + 24) = v29;
  *(v232 + 32) = v60;
  v233 = v268;
  *(v232 + 40) = sub_1DC19C;
  *(v232 + 48) = v233;
  v234 = *(*a5 + class metadata base offset for CommonAppResolver + 128);
  v235 = v29;

  v234(v235, sub_1DC06C, v232);
}

uint64_t sub_1D6EF0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_20410(&qword_354758, &qword_2D69E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_F3F4(a1, &v11 - v8, &qword_354750, &qword_2D69E0);
  *&v9[*(v7 + 56)] = a2;

  a3(v9);
  return sub_30B8(v9, &qword_354758, &qword_2D69E8);
}

uint64_t sub_1D6FD8(uint64_t a1, char **a2, void *a3, int a4, void (*a5)(void, void, __n128), uint64_t a6)
{
  v156 = a6;
  v155 = a5;
  LODWORD(v151) = a4;
  v157 = *a2;
  v148 = sub_20410(&qword_354750, &qword_2D69E0);
  __chkstk_darwin(v148);
  v149 = (&v138 - v9);
  v10 = sub_2CE000();
  v160 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v147 = (&v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v153 = &v138 - v14;
  __chkstk_darwin(v13);
  v150 = &v138 - v15;
  v16 = sub_2CC5F0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v146 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v158 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v138 - v23;
  v25 = __chkstk_darwin(v22);
  v152 = &v138 - v26;
  __chkstk_darwin(v25);
  v28 = &v138 - v27;
  v29 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v29);
  v31 = (&v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DBBE0(a1, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v159 = v10;
  if (EnumCaseMultiPayload != 1)
  {
    v74 = v31[1];
    v158 = *v31;
    v75 = sub_20410(&qword_34E740, &unk_2D68F0);
    (*(v17 + 4))(v28, v31 + *(v75 + 48), v16);
    sub_1DC0D0(a3, v28);
    v76 = swift_allocBox();
    v78 = v77;
    v79 = *(v17 + 2);
    v157 = v28;
    v149 = v17 + 16;
    v148 = v79;
    v79(v77, v28, v16);
    v80 = v16;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v145 = a3;
    v81 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    v82 = v160;
    v83 = *(v160 + 2);
    v84 = v150;
    v142 = v81;
    v141 = v160 + 16;
    v140 = v83;
    v83(v150, v81, v10);

    v85 = v10;
    v86 = sub_2CDFE0();
    v87 = sub_2CE690();
    v88 = v76;
    v89 = v87;
    v153 = v88;

    if (os_log_type_enabled(v86, v89))
    {
      v90 = swift_slowAlloc();
      v154 = v17;
      v143 = v80;
      v144 = v74;
      v91 = v90;
      v161[0] = swift_slowAlloc();
      *v91 = 136446722;
      v92 = sub_2CCC80();
      v94 = v78;
      v95 = sub_3F08(v92, v93, v161);

      *(v91 + 4) = v95;
      *(v91 + 12) = 2082;
      *(v91 + 14) = sub_3F08(v158, v144, v161);
      *(v91 + 22) = 2082;
      swift_beginAccess();
      v96 = v152;
      v148(v152, v94, v143);
      v97 = sub_2CC5E0();
      v99 = v98;
      (*(v154 + 1))(v96, v143);
      v100 = sub_3F08(v97, v99, v161);
      v78 = v94;

      *(v91 + 24) = v100;
      _os_log_impl(&dword_0, v86, v89, "CommonIntentAppResolver#resolveApp %{public}s BundleResolutionResult selected with bundleIdentifier:%{public}s resolutionResultType:%{public}s", v91, 0x20u);
      swift_arrayDestroy();
      v101 = v160;

      v74 = v144;
      v80 = v143;
      v17 = v154;

      v102 = *(v101 + 1);
      v103 = v159;
      v102(v84, v159);
    }

    else
    {

      v102 = *(v82 + 1);
      v102(v84, v85);
      v103 = v85;
    }

    if (v151)
    {
      v139 = v78;
      v151 = v102;
      v109 = v152;
      (*(v17 + 13))(v152, enum case for ResolutionResultType.UserSelected(_:), v80);
      swift_beginAccess();
      (*(v17 + 5))(v78, v109, v80);
      v110 = v147;
      v140(v147, v142, v103);
      v111 = v146;
      v148(v146, v157, v80);

      v112 = sub_2CDFE0();
      v113 = sub_2CE690();

      LODWORD(v150) = v113;
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v161[0] = swift_slowAlloc();
        *v114 = 136446978;
        v115 = sub_2CCC80();
        v117 = sub_3F08(v115, v116, v161);

        *(v114 + 4) = v117;
        *(v114 + 12) = 2082;
        *(v114 + 14) = sub_3F08(v158, v74, v161);
        *(v114 + 22) = 2082;
        v118 = sub_2CC5E0();
        v119 = v111;
        v120 = v118;
        v122 = v121;
        v144 = v74;
        v123 = v80;
        v124 = v17;
        v154 = v17;
        v125 = v123;
        v126 = v152;
        v127 = *(v124 + 1);
        v127(v119, v123);
        v128 = sub_3F08(v120, v122, v161);

        *(v114 + 24) = v128;
        *(v114 + 32) = 2082;
        v148(v126, v139, v125);
        v129 = sub_2CC5E0();
        v131 = v130;
        v127(v126, v125);
        v74 = v144;
        v80 = v125;
        v17 = v154;
        v132 = sub_3F08(v129, v131, v161);

        *(v114 + 34) = v132;
        _os_log_impl(&dword_0, v112, v150, "CommonIntentAppResolver#resolveApp %{public}s user selected bundleIdentifier from disambiguation list. bundleIdentifier:%{public}s overwriting resolutionResultType from: %{public}s to %{public}s", v114, 0x2Au);
        swift_arrayDestroy();

        v133 = v147;
      }

      else
      {

        (*(v17 + 1))(v111, v80);
        v133 = v110;
      }

      (v151)(v133, v159);
    }

    sub_2CBC60();
    sub_35E0(v161, v161[3]);
    sub_2CBE60();
    sub_306C(v161);
    sub_2CC0E0();
    v134 = swift_allocObject();
    v134[2] = v153;
    v134[3] = a2;
    v134[4] = v158;
    v134[5] = v74;
    v135 = v145;
    v136 = v155;
    v134[6] = v145;
    v134[7] = v136;
    v134[8] = v156;

    v137 = v135;

    sub_2CC0C0();

    (*(v17 + 1))(v157, v80);
  }

  v33 = v17;
  v34 = *v31;
  v35 = sub_20410(&qword_3504D0, &qword_2D3B28);
  (*(v33 + 4))(v24, v31 + *(v35 + 48), v16);
  sub_1DC0D0(a3, v24);
  sub_20410(&unk_356F30, &qword_2D69C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  v37 = (a2 + *&(*a2)[class metadata base offset for CommonAppResolver + 8]);
  v38 = v37[1];
  *(inited + 32) = *v37;
  *(inited + 40) = v38;

  *(inited + 48) = sub_2CC5E0();
  *(inited + 56) = v39;
  v40 = sub_90A9C(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);
  v41 = v16;
  if (qword_34BF58 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v42 = v159;
    v43 = sub_3ED0(v159, static Logger.default);
    swift_beginAccess();
    v44 = v160;
    v45 = v153;
    (*(v160 + 2))(v153, v43, v42);
    (*(v33 + 2))(v158, v24, v41);

    v46 = sub_2CDFE0();
    v47 = v33;
    v48 = sub_2CE690();

    LODWORD(v152) = v48;
    v49 = os_log_type_enabled(v46, v48);
    v154 = v47;
    v157 = v40;
    if (!v49)
    {
      break;
    }

    v50 = swift_slowAlloc();
    v151 = v24;
    v51 = v50;
    v150 = swift_slowAlloc();
    v162 = v150;
    *v51 = 136446978;
    v52 = sub_2CCC80();
    v147 = v46;
    v54 = v41;
    v55 = sub_3F08(v52, v53, &v162);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2082;
    v56 = sub_2CE420();
    v58 = sub_3F08(v56, v57, &v162);

    *(v51 + 14) = v58;
    *(v51 + 22) = 2080;
    v59 = v158;
    v60 = sub_2CC5E0();
    v62 = v61;
    v63 = *(v47 + 1);
    v63(v59, v54);
    v64 = sub_3F08(v60, v62, &v162);
    v41 = v54;

    *(v51 + 24) = v64;
    *(v51 + 32) = 2082;
    v65 = sub_2CE210();
    v67 = sub_3F08(v65, v66, &v162);

    *(v51 + 34) = v67;
    v68 = v147;
    _os_log_impl(&dword_0, v147, v152, "CommonIntentAppResolver#resolveApp %{public}s BundleResolutionResult disambiguate with bundleIdentifiers:%{public}s, resolutionResultType: %s, ResolveApp metadata: %{public}s", v51, 0x2Au);
    swift_arrayDestroy();

    v24 = v151;

    (*(v160 + 1))(v153, v159);
    v69 = *(v34 + 16);
    if (!v69)
    {
      goto LABEL_14;
    }

LABEL_5:
    v160 = v63;
    v33 = v24;
    v40 = v41;
    v162 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v70 = 0;
    v41 = (v34 + 40);
    while (v70 < *(v34 + 16))
    {
      ++v70;
      v71 = *(v41 - 1);
      v72 = *v41;

      v24 = sub_1D4D38(v71, v72);

      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v41 += 2;
      if (v69 == v70)
      {

        v73 = v162;
        v41 = v40;
        v24 = v33;
        v63 = v160;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v63 = *(v47 + 1);
  v63(v158, v41);
  (*(v44 + 1))(v45, v159);
  v69 = *(v34 + 16);
  if (v69)
  {
    goto LABEL_5;
  }

LABEL_14:

  v73 = _swiftEmptyArrayStorage;
LABEL_15:
  v104 = v149;
  *v149 = v73;
  v105 = enum case for AppResolutionResult.needsDisambiguation(_:);
  v106 = sub_2CD050();
  (*(*(v106 - 8) + 104))(v104, v105, v106);
  swift_storeEnumTagMultiPayload();
  v107 = sub_2349AC(v157);

  v155(v104, v107);

  sub_30B8(v104, &qword_354750, &qword_2D69E0);
  return (v63)(v24, v41);
}

uint64_t sub_1D8150(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v23[0] = a6;
  v23[1] = a3;
  v13 = sub_2CC5F0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_350D38, &unk_2D3EC0);
  __chkstk_darwin(v17 - 8);
  v19 = v23 - v18;
  v20 = swift_projectBox();
  if (a1)
  {
    swift_beginAccess();
    (*(v14 + 16))(v19, v20, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    sub_2CC090();
  }

  swift_beginAccess();
  (*(v14 + 16))(v16, v20, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;

  sub_1D4A58(a4, a5, v16, v23[0], sub_1DC174, v21);

  return (*(v14 + 8))(v16, v13);
}

double sub_1D8388(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v60 = a6;
  v51 = a5;
  v52 = *a3;
  v61 = sub_2CC5F0();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = v11;
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v55 = v16;
  sub_20410(&unk_356F30, &qword_2D69C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  v18 = *(*a3 + class metadata base offset for CommonAppResolver + 8);
  v54 = a3;
  v19 = (a3 + v18);
  v20 = v19[1];
  *(inited + 32) = *v19;
  *(inited + 40) = v20;

  v21 = a4;

  *(inited + 48) = sub_2CC5E0();
  *(inited + 56) = v22;
  v23 = sub_90A9C(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v24, v12);

  v25 = sub_2CDFE0();
  v26 = sub_2CE670();

  v27 = os_log_type_enabled(v25, v26);
  v53 = v23;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v50 = v12;
    v29 = v28;
    v30 = swift_slowAlloc();
    *&v63 = v30;
    *v29 = 136446210;
    v31 = sub_2CE210();
    v33 = sub_3F08(v31, v32, &v63);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_0, v25, v26, "CommonIntentAppResolver#resolveSelectedApp ResolveApp metadata: %{public}s", v29, 0xCu);
    sub_306C(v30);

    (*(v13 + 8))(v15, v50);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v62 = v51;
  v34 = *(v52 + class metadata base offset for CommonAppResolver);
  v35 = v51;
  sub_20410(&qword_3530E0, &unk_2D69D0);
  if (swift_dynamicCast())
  {
    sub_35E0(&v63, *(&v64 + 1));
    sub_2CCB60();
    v52 = v36;
    sub_306C(&v63);
  }

  else
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    sub_30B8(&v63, &qword_3530D8, &unk_2D5730);
    v52 = 0;
  }

  v37 = v59;
  v38 = v57;
  v39 = v21;
  v40 = v61;
  (*(v59 + 16))(v57, v39, v61);
  v41 = (*(v37 + 80) + 72) & ~*(v37 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v54;
  *(v43 + 2) = v34;
  *(v43 + 3) = v44;
  v45 = v60;
  v46 = v58;
  *(v43 + 4) = v60;
  *(v43 + 5) = v46;
  *(v43 + 6) = v35;
  *(v43 + 7) = sub_1DBF84;
  *(v43 + 8) = v55;
  (*(v37 + 32))(&v43[v41], v38, v40);
  *&v43[v42] = v53;
  v47 = v35;

  sub_1DB868(v45, v46, sub_1DBF8C, v43);

  return result;
}

uint64_t sub_1D8988(char a1, void *a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(void, void, __n128), uint64_t a7, unint64_t a8, uint64_t a9)
{
  v94 = a6;
  v91 = a9;
  v92 = a8;
  v88 = sub_20410(&qword_354750, &qword_2D69E0);
  __chkstk_darwin(v88);
  v16 = &v76 - v15;
  v17 = sub_2CC5F0();
  v86 = *(v17 - 8);
  v87 = v17;
  __chkstk_darwin(v17);
  v85 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v93 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v26 = &v76 - v25;
  if (a1)
  {
    v77 = v24;
    v90 = a3;
    v82 = a5;
    v83 = a2;
    v84 = a7;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = sub_3ED0(v19, static Logger.default);
    swift_beginAccess();
    v28 = *(v20 + 16);
    v81 = v27;
    v80 = v20 + 16;
    v79 = v28;
    v28(v26, v27, v19);

    v29 = sub_2CDFE0();
    v30 = sub_2CE670();

    v31 = os_log_type_enabled(v29, v30);
    v89 = a4;
    v78 = v16;
    if (v31)
    {
      v32 = a4;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_3F08(v90, v32, &v95);
      _os_log_impl(&dword_0, v29, v30, "CommonIntentAppResolver#resolveSelectedApp app IS installed: %{public}s", v33, 0xCu);
      sub_306C(v34);
    }

    v38 = *(v20 + 8);
    v38(v26, v19);
    v39 = v83;
    v40 = v82;
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    v42 = v90;
    v43 = v93;
    if (!v41)
    {
      goto LABEL_13;
    }

    v44 = v41;
    v45 = v40;
    if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v44, &off_330918) || (sub_2CBDB0() & 1) != 0)
    {

LABEL_13:
      v79(v43, v81, v19);
      v46 = sub_2CDFE0();
      v47 = sub_2CE670();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "CommonIntentAppResolver#resolveSelectedApp Removing the launchID from the intent", v48, 2u);
      }

      v38(v43, v19);
      v99._object = 0x80000000002DEE60;
      v97.value._countAndFlagsBits = 0;
      v97.value._object = 0;
      v99._countAndFlagsBits = 0xD000000000000024;
      sub_2CEAA0(v97, v99);
      [v40 _setExtensionBundleId:0];
      v49 = sub_1D4D38(v42, v89);
      v50 = swift_allocObject();
      v51 = v94;
      v50[2] = v91;
      v50[3] = v51;
      v50[4] = v84;
      v50[5] = v49;
      v52 = *(*v39 + class metadata base offset for CommonAppResolver + 120);

      v52(v40, v49, v92, sub_1DC044, v50);
    }

    v93 = v45;
    sub_20410(&unk_356F30, &qword_2D69C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    v54 = (v39 + *(*v39 + class metadata base offset for CommonAppResolver + 8));
    v55 = v54[1];
    *(inited + 32) = *v54;
    *(inited + 40) = v55;
    v57 = v86;
    v56 = v87;
    v58 = v85;
    (*(v86 + 104))(v85, enum case for ResolutionResultType.UnsupportedLyricsSearch(_:), v87);

    v59 = sub_2CC5E0();
    v61 = v60;
    (*(v57 + 8))(v58, v56);
    *(inited + 48) = v59;
    *(inited + 56) = v61;
    v92 = sub_90A9C(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);
    v62 = v77;
    v79(v77, v81, v19);
    v63 = v89;

    v64 = sub_2CDFE0();
    v65 = sub_2CE680();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v95 = v67;
      *v66 = 136446210;
      v68 = v90;
      *(v66 + 4) = sub_3F08(v90, v63, &v95);
      _os_log_impl(&dword_0, v64, v65, "CommonIntentAppResolver#resolveSelectedApp unsupported lyrics search request for 3p: %{public}s", v66, 0xCu);
      sub_306C(v67);

      v38(v62, v19);
    }

    else
    {

      v38(v62, v19);
      v68 = v90;
    }

    v69 = v78;

    v100._countAndFlagsBits = 0xD00000000000002BLL;
    v100._object = 0x80000000002DEE90;
    v98.value._countAndFlagsBits = v68;
    v98.value._object = v63;
    v70 = v93;
    sub_2CEAA0(v98, v100);
    sub_2CCFB0();
    *v69 = sub_2CCF80();
    v71 = enum case for AppResolutionResult.AppResolutionResultError.appNotSupported(_:);
    v72 = sub_2CD040();
    (*(*(v72 - 8) + 104))(v69, v71, v72);
    v73 = enum case for AppResolutionResult.unsuccessful(_:);
    v74 = sub_2CD050();
    (*(*(v74 - 8) + 104))(v69, v73, v74);
    swift_storeEnumTagMultiPayload();
    v75 = sub_2349AC(v92);

    v94(v69, v75);

    return sub_30B8(v69, &qword_354750, &qword_2D69E0);
  }

  else
  {
    sub_35E0((a2 + *(*a2 + class metadata base offset for CommonAppResolver + 48)), *(a2 + *(*a2 + class metadata base offset for CommonAppResolver + 48) + 24));
    v35 = swift_allocObject();
    v35[2] = a3;
    v35[3] = a4;
    v35[4] = a2;
    v35[5] = a5;
    v35[6] = v94;
    v35[7] = a7;

    v36 = a5;

    sub_2CC6B0();
  }
}

uint64_t sub_1D93F8(char a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, __n128), uint64_t a7)
{
  v73 = a7;
  v74 = a6;
  v69 = a5;
  v75 = a2;
  v71 = sub_20410(&qword_354750, &qword_2D69E0);
  __chkstk_darwin(v71);
  v72 = (&v67 - v10);
  v11 = sub_2CC5F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  if (a1)
  {
    v68 = v11;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    v23 = v16;
    (*(v16 + 16))(v21, v22, v15);

    v24 = sub_2CDFE0();
    v25 = sub_2CE670();

    v26 = a3;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v70 = a3;
      v28 = v27;
      v29 = swift_slowAlloc();
      v76 = v29;
      *v28 = 136446210;
      v67 = a4;
      v30 = v75;
      *(v28 + 4) = sub_3F08(v75, v70, &v76);
      _os_log_impl(&dword_0, v24, v25, "CommonIntentAppResolver#resolveSelectedApp app IS installed but doesn't support any SiriKit audio intents: %{public}s", v28, 0xCu);
      sub_306C(v29);

      v26 = v70;

      v31 = v30;
      a4 = v67;
      (*(v23 + 8))(v21, v15);
    }

    else
    {

      (*(v23 + 8))(v21, v15);
      v31 = v75;
    }

    sub_20410(&unk_356F30, &qword_2D69C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    v52 = (a4 + *(*a4 + class metadata base offset for CommonAppResolver + 8));
    v53 = v52[1];
    *(inited + 32) = *v52;
    *(inited + 40) = v53;
    v54 = v68;
    (*(v12 + 104))(v14, enum case for ResolutionResultType.IntentsNotSupportedByApp(_:), v68);

    v55 = sub_2CC5E0();
    v57 = v56;
    (*(v12 + 8))(v14, v54);
    *(inited + 48) = v55;
    *(inited + 56) = v57;
    v38 = sub_90A9C(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);

    v79._countAndFlagsBits = 0xD000000000000034;
    v79._object = 0x80000000002DEF00;
    v77.value._countAndFlagsBits = v31;
    v77.value._object = v26;
    sub_2CEAA0(v77, v79);
    sub_2CCFB0();
    v58 = sub_2CCF80();
    v59 = v72;
    *v72 = v58;
    v60 = &enum case for AppResolutionResult.AppResolutionResultError.appNotSupported(_:);
  }

  else
  {
    v70 = a3;
    sub_20410(&unk_356F30, &qword_2D69C0);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_2D0090;
    v33 = (a4 + *(*a4 + class metadata base offset for CommonAppResolver + 8));
    v34 = v33[1];
    *(v32 + 32) = *v33;
    *(v32 + 40) = v34;
    (*(v12 + 104))(v14, enum case for ResolutionResultType.AppNotInstalled(_:), v11);

    v35 = sub_2CC5E0();
    v37 = v36;
    (*(v12 + 8))(v14, v11);
    *(v32 + 48) = v35;
    *(v32 + 56) = v37;
    v38 = sub_90A9C(v32);
    swift_setDeallocating();
    sub_30B8(v32 + 32, &qword_354748, &qword_2D69C8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v19, v39, v15);
    v40 = v70;

    v41 = sub_2CDFE0();
    v42 = sub_2CE680();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v75;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v68 = v15;
      v46 = v16;
      v47 = v45;
      v76 = swift_slowAlloc();
      *v47 = 136446466;
      *(v47 + 4) = sub_3F08(v44, v40, &v76);
      *(v47 + 12) = 2082;
      v48 = sub_2CE210();
      v50 = sub_3F08(v48, v49, &v76);
      v40 = v70;

      *(v47 + 14) = v50;
      v44 = v75;
      _os_log_impl(&dword_0, v41, v42, "CommonIntentAppResolver#resolveSelectedApp app NOT installed: %{public}s, overwriting ResolveApp metadata with: %{public}s", v47, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v19, v68);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v59 = v72;
    v80._object = 0x80000000002DEEC0;
    v78.value._countAndFlagsBits = v44;
    v78.value._object = v40;
    v80._countAndFlagsBits = 0xD000000000000031;
    sub_2CEAA0(v78, v80);
    v60 = &enum case for AppResolutionResult.AppResolutionResultError.noAppFound(_:);
  }

  v61 = *v60;
  v62 = sub_2CD040();
  (*(*(v62 - 8) + 104))(v59, v61, v62);
  v63 = enum case for AppResolutionResult.unsuccessful(_:);
  v64 = sub_2CD050();
  (*(*(v64 - 8) + 104))(v59, v63, v64);
  swift_storeEnumTagMultiPayload();
  v65 = sub_2349AC(v38);

  (v74)(v59, v65);

  return sub_30B8(v59, &qword_354750, &qword_2D69E0);
}

uint64_t sub_1D9D20(int a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v38 = a4;
  LODWORD(v36) = a1;
  v37 = sub_20410(&qword_354750, &qword_2D69E0);
  __chkstk_darwin(v37);
  v9 = (&v33 - v8);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = v11;
  v16 = v13;
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  v35 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 67240450;
    *(v20 + 4) = v36 & 1;
    *(v20 + 8) = 2082;
    v22 = sub_2CE210();
    v24 = sub_3F08(v22, v23, &v39);
    v36 = v10;
    v25 = v9;
    v26 = a5;
    v27 = a2;
    v28 = v24;

    *(v20 + 10) = v28;
    a2 = v27;
    a5 = v26;
    v9 = v25;
    _os_log_impl(&dword_0, v17, v35, "CommonIntentAppResolver#postResolve complete with success?: %{BOOL,public}d, metadata: %{public}s", v20, 0x12u);
    sub_306C(v21);

    a3 = v34;

    (*(v15 + 8))(v16, v36);
  }

  else
  {

    (*(v15 + 8))(v16, v10);
  }

  *v9 = a5;
  v29 = enum case for AppResolutionResult.selected(_:);
  v30 = sub_2CD050();
  (*(*(v30 - 8) + 104))(v9, v29, v30);
  swift_storeEnumTagMultiPayload();

  v31 = sub_2349AC(a2);
  a3(v9, v31);

  return sub_30B8(v9, &qword_354750, &qword_2D69E0);
}

uint64_t sub_1DA0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v49 = a6;
  v53 = a4;
  v54 = a5;
  v59 = a3;
  v8 = sub_2CE000();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = __chkstk_darwin(v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v48 - v11;
  v62 = sub_2CB7D0();
  v12 = *(v62 - 8);
  v13 = __chkstk_darwin(v62);
  v61 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v58 = v19;
    v56 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = a1 + v56;
    v21 = *(v18 + 56);
    v55 = (v18 - 8);
    v60 = (v18 + 16);
    v22 = _swiftEmptyArrayStorage;
    v57 = a2;
    v19(v16, a1 + v56, v62);
    while (1)
    {
      if (sub_2CB7B0() == a2 && v23 == v59)
      {
      }

      else
      {
        v24 = sub_2CEEA0();

        if ((v24 & 1) == 0)
        {
          (*v55)(v16, v62);
          goto LABEL_4;
        }
      }

      v25 = *v60;
      (*v60)(v61, v16, v62);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2DC3C(0, v22[2] + 1, 1);
        v22 = v63;
      }

      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        sub_2DC3C((v27 > 1), v28 + 1, 1);
        v22 = v63;
      }

      v22[2] = v28 + 1;
      v25(v22 + v56 + v28 * v21, v61, v62);
      a2 = v57;
LABEL_4:
      v20 += v21;
      if (!--v17)
      {
        goto LABEL_16;
      }

      v58(v16, v20, v62);
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_16:
  v29 = v22[2];

  if (v29)
  {
    v31 = v51;
    v30 = v52;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v30, static Logger.default);
    swift_beginAccess();
    v33 = v50;
    (*(v31 + 16))(v50, v32, v30);
    v34 = sub_2CDFE0();
    v35 = sub_2CE690();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "CommonIntentAppResolver#appInstalled app is installed", v36, 2u);
    }

    (*(v31 + 8))(v33, v30);
    return v53(1);
  }

  else
  {
    v39 = v51;
    v38 = v52;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v40 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    v41 = v48;
    (*(v39 + 16))(v48, v40, v38);
    v42 = sub_2CDFE0();
    v43 = sub_2CE670();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "CommonIntentAppResolver#appInstalled app missing (at least from cache), refreshing...", v44, 2u);
    }

    (*(v39 + 8))(v41, v38);
    sub_35E0((v49 + *(*v49 + class metadata base offset for CommonAppResolver + 48)), *(v49 + *(*v49 + class metadata base offset for CommonAppResolver + 48) + 24));
    v45 = swift_allocObject();
    v45[2] = a2;
    v46 = v53;
    v47 = v54;
    v45[3] = v59;
    v45[4] = v46;
    v45[5] = v47;

    sub_2CC6D0();
  }
}