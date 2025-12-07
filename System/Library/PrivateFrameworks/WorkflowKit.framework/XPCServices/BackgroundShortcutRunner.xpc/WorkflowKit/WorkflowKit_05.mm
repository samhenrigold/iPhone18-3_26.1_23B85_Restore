uint64_t sub_10007CF64()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_100083D94();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10007D064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v23 = [*(v22 + 432) key];
  if (!v23)
  {
    sub_10008A268();
    sub_10008A238();
    sub_100084F18();
  }

  v24 = [*(v22 + 32) parameterStateForKey:v23 fallingBackToDefaultValue:1];
  *(v22 + 464) = v24;

  if (v24)
  {
    v26 = *(v22 + 208);
    v25 = *(v22 + 216);
    v27 = *(v22 + 184);
    v28 = *(v22 + 192);
    v29 = *(v28 + 16);
    *(v22 + 472) = v29;
    *(v22 + 480) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v26, v25, v27);
    sub_10008A188();
    swift_getObjectType();
    sub_10008A108();
    swift_task_alloc();
    sub_100012480();
    *(v22 + 488) = v30;
    *v30 = v31;
    v30[1] = sub_10007D3D0;
    sub_1000843E8();

    return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)(v32);
  }

  else
  {
    v34 = *(v22 + 432);
    (*(*(v22 + 192) + 8))(*(v22 + 216), *(v22 + 184));

    v35 = sub_1000841EC();
    if (v53)
    {
      v36 = *(v22 + 424);
      v37 = *(v22 + 176);
      v67 = *(v22 + 32);
      v68 = *(v22 + 368);

      v38 = sub_10005DEB4();
      v39(v38);
      sub_10007E814(v36);

      v40 = sub_1000891D8();
      sub_100084E94(v37, v41, v42, v40);
      sub_1000851CC();
      sub_1000890B8();
      v43 = sub_10005E464();
      v44(v43);

      sub_1000845C4();

      sub_10001248C();
      sub_1000843E8();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, v67, v68, a19, a20, a21, a22);
    }

    else
    {
      v54 = sub_100084E24(v35);
      if (v53)
      {
        v56 = sub_1000854F0(v54, v55);
      }

      else
      {
        v56 = sub_10008A928();
      }

      v57 = [sub_100084B00(v56) defaultContext];
      sub_100084F0C(v57);
      swift_task_alloc();
      sub_100012480();
      *(v22 + 448) = v58;
      *v58 = v59;
      sub_1000839C0(v58);
      sub_1000843E8();

      return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v60, v61, v62, v63, v64);
    }
  }
}

uint64_t sub_10007D3D0()
{
  sub_100012604();
  sub_1000851A8();
  sub_100083D94();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 496) = v0;

  sub_1000850E4();
  (*(*(v1 + 104) + 8))(*(v5 + 112), *(v1 + 96));
  sub_1000840CC();

  return _swift_task_switch(v6);
}

uint64_t sub_10007D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v23 = *(v22 + 408);
  v24 = [*(v22 + 432) key];
  v25 = sub_10008A268();
  v27 = v26;

  v28 = sub_10005DEB4();
  v29(v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 16) = v23;
  sub_10008395C();
  v31 = sub_10005EAE0();
  sub_100081320(v31, v32, v33);
  sub_100083E98();
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
    goto LABEL_24;
  }

  v42 = v34;
  v43 = v35;
  sub_100008DC0(&qword_1000A6AB8, &qword_10008DEE0);
  if (sub_10008A9A8(isUniquelyReferenced_nonNull_native, v41))
  {
    sub_10008395C();
    v44 = sub_10005EAE0();
    sub_100081320(v44, v45, v46);
    sub_100084A44();
    if (!v48)
    {
      sub_1000843E8();

      return sub_10008AAA8();
    }

    v42 = v47;
  }

  v51 = *(v22 + 16);
  if (v43)
  {
    v52 = *(v22 + 432);
    sub_100083ED8();
    v55(v53 + v54 * v42);

    goto LABEL_12;
  }

  sub_100084A28();
  sub_100083C28();
  v57 = (v56 + 16 * v42);
  *v57 = v25;
  v57[1] = v27;
  (*(v58 + 32))(*(v51 + 56) + *(v58 + 72) * v42);
  sub_10008497C();
  if (v60)
  {
LABEL_24:
    __break(1u);
    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v34, v35, v36, v37, v38);
  }

  v52 = *(v22 + 432);
  *(v51 + 16) = v59;
LABEL_12:
  swift_unknownObjectRelease();

  (*(*(v22 + 128) + 8))(*(v22 + 144), *(v22 + 120));
  v61 = sub_10005DC4C();
  v62(v61);
  v63 = sub_1000124C8();
  v64(v63);
  v65 = sub_1000841EC();
  if (!v48)
  {
    *(v22 + 416) = v65;
    *(v22 + 424) = v51;
    *(v22 + 408) = v51;
    v82 = *(v22 + 376);
    if ((v82 & 0xC000000000000001) != 0)
    {
      v83 = sub_10008A928();
    }

    else
    {
      v83 = sub_1000854F0(v65, v82);
    }

    v84 = [sub_100084B00(v83) defaultContext];
    sub_100084F0C(v84);
    swift_task_alloc();
    sub_100012480();
    *(v22 + 448) = v85;
    *v85 = v86;
    sub_1000839C0(v85);
    sub_1000843E8();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v34, v35, v36, v37, v38);
  }

  v66 = *(v22 + 176);
  v88 = *(v22 + 32);
  v89 = *(v22 + 368);

  v67 = sub_10005DEB4();
  v68(v67);
  sub_10007E814(v51);

  v69 = sub_1000891D8();
  sub_100084E94(v66, v70, v71, v69);
  sub_1000851CC();
  sub_1000890B8();
  v72 = sub_10005E464();
  v73(v72);

  sub_1000845C4();

  sub_10001248C();
  sub_1000843E8();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, v88, v89, a19, a20, a21, a22);
}

uint64_t sub_10007D918(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1000847D0();
  sub_100084AC4();
  v34 = *(v32 + 432);
  v35 = *(v32 + 32);

  sub_100088F28();
  v36 = v35;
  v37 = v34;
  swift_errorRetain();
  v38 = sub_100088FF8();
  v39 = sub_10008A5D8();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v32 + 432);
  v42 = *(v32 + 88);
  v43 = *(v32 + 72);
  if (v40)
  {
    v44 = *(v32 + 32);
    v103 = *(v32 + 64);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    a20 = swift_slowAlloc();
    *v45 = 136315650;
    v47 = [v44 identifier];
    v101 = v42;
    v48 = sub_10008A268();

    v49 = sub_1000124C8();
    sub_100080D2C(v49, v50, v51);
    sub_100060454();

    *(v45 + 4) = v48;
    *(v45 + 12) = 2112;
    *(v45 + 14) = v41;
    *v46 = v41;
    *(v45 + 22) = 2112;
    v33 = v41;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 24) = v52;
    v46[1] = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to get type defintion for  %s-%@ error: %@", v45, 0x20u);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    swift_arrayDestroy();
    sub_100084DDC(v46);
    sub_10005B1BC(a20);
    sub_100084DDC(a20);
    sub_100084DDC(v45);

    (*(v43 + 8))(v101, v103);
  }

  else
  {

    v53 = sub_10005EDA0();
    v55(v53, v54);
  }

  v56 = sub_1000841EC();
  if (v70)
  {
    v57 = *(v32 + 424);
    sub_100085430();
    v58 = sub_10005DB50();
    v59(v58);
    sub_10007E814(v57);

    sub_1000891D8();
    v60 = sub_100084B28();
    sub_100009158(v60, v61, 1, v62);
    sub_100084828();
    sub_1000890B8();
    v63 = sub_10005DC4C();
    v64(v63);

    sub_100084BE8();
    v92 = v66;
    v93 = v65;
    sub_100085270();
    v94 = v67;
    v95 = v68;
    v96 = v69;
    v97 = *(v32 + 144);
    v98 = *(v32 + 136);
    loga = *(v32 + 112);
    v100 = *(v32 + 88);
    v102 = *(v32 + 80);
    v104 = *(v32 + 56);

    sub_10001248C();
    sub_1000843C0();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, v92, v93, v94, v95, v96, v97, v98, loga, v100, v102, v104, a20, a21, a22, a23, a24);
  }

  else
  {
    v71 = sub_100084E24(v56);
    if (v70)
    {
      v73 = sub_1000854F0(v71, v72);
    }

    else
    {
      v73 = sub_10008A928();
    }

    v83 = [sub_100084B00(v73) defaultContext];
    sub_100084F0C(v83);
    swift_task_alloc();
    sub_100012480();
    *(v32 + 448) = v84;
    *v84 = v85;
    sub_1000839C0(v84);
    sub_1000843C0();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v86, v87, v88, v89, v90);
  }
}

uint64_t sub_10007DDBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_100060FF4();
  a33 = v35;
  a34 = v36;
  sub_100084FE4();
  a32 = v34;
  v37 = v34[59];
  v125 = v34[54];
  v38 = v34[4];
  (*(v34[20] + 8))(v34[21], v34[19]);
  sub_100088F28();
  v39 = sub_1000848B4();
  v37(v39);
  v40 = v38;
  v41 = v125;
  swift_errorRetain();
  v42 = sub_100088FF8();
  v43 = sub_10008A5D8();

  v122 = v43;
  v44 = os_log_type_enabled(v42, v43);
  v45 = v34[54];
  v47 = v34[24];
  v46 = v34[25];
  v48 = v34[9];
  v49 = v34[10];
  v50 = v34[8];
  if (v44)
  {
    v106 = v34[23];
    v120 = v34[10];
    v52 = v34[6];
    v51 = v34[7];
    a10 = v34[5];
    logb = v42;
    v53 = v34[4];
    v118 = v34[27];
    v54 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    a22 = v112;
    *v54 = 136315906;
    v55 = [v53 identifier];
    v114 = v48;
    v116 = v50;
    v56 = sub_10008A268();
    v58 = v57;

    v59 = sub_100080D2C(v56, v58, &a22);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2112;
    *(v54 + 14) = v45;
    *a9 = v45;
    *(v54 + 22) = 2080;
    v108 = v45;
    sub_1000898D8();
    sub_100089988();
    (*(v52 + 8))(v51, a10);
    v61 = *(v47 + 8);
    v60 = (v47 + 8);
    v61(v46, v106);
    v62 = sub_10005E9C0();
    v65 = sub_100080D2C(v62, v63, v64);

    *(v54 + 24) = v65;
    *(v54 + 32) = 2112;
    swift_errorRetain();
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 34) = v66;
    a9[1] = v66;
    _os_log_impl(&_mh_execute_header, logb, v122, "Failed to convert  %s-%@ with type definition: %s error: %@", v54, 0x2Au);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    swift_arrayDestroy();
    sub_100084DDC(a9);
    swift_arrayDestroy();
    sub_100084DDC(v112);
    sub_100084DDC(v54);

    swift_unknownObjectRelease();

    (*(v114 + 8))(v120, v116);
    v61(v118, v106);
  }

  else
  {

    swift_unknownObjectRelease();

    v67 = *(v47 + 8);
    v60 = (v47 + 8);
    v68 = sub_10005ECA8();
    v67(v68);
    (*(v48 + 8))(v49, v50);
    v69 = sub_1000124C8();
    v67(v69);
  }

  v70 = sub_1000841EC();
  if (v84)
  {
    v71 = v34[53];
    sub_100085430();
    v72 = sub_10005DB50();
    v73(v72);
    sub_10007E814(v71);

    sub_1000891D8();
    v74 = sub_100084B28();
    sub_100009158(v74, v75, 1, v76);
    sub_100084828();
    sub_1000890B8();
    v77 = sub_10005DC4C();
    v78(v77);

    sub_100084BE8();
    v107 = v80;
    v109 = v79;
    sub_100085270();
    loga = v81;
    v113 = v82;
    v115 = v83;
    v117 = v34[18];
    v119 = v34[17];
    v121 = v34[14];
    v123 = v34[11];
    v124 = v34[10];
    v126 = v34[7];

    sub_10001248C();
    sub_10005E9F8();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, v107, v109, loga, v113, v115, v117, v119, v121, v123, v124, v126, a22, a23, a24, a25, a26);
  }

  else
  {
    v85 = sub_100084E24(v70);
    if (v84)
    {
      v87 = sub_1000854F0(v85, v86);
    }

    else
    {
      v87 = sub_10008A928();
    }

    v97 = [sub_100084B00(v87) defaultContext];
    sub_100084F0C(v97);
    swift_task_alloc();
    sub_100012480();
    v34[56] = v98;
    *v98 = v99;
    sub_1000839C0(v98);
    sub_10005E9F8();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v100, v101, v102, v103, v104);
  }
}

uint64_t sub_10007E3E0(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_1000849BC();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  sub_1000125C0();

  return sub_1000639A8();
}

uint64_t sub_10007E45C(void *a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = sub_1000889D8();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_10007E534;

  return static ToolKitHelper.transformAction(for:queue:)();
}

uint64_t sub_10007E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  sub_100083C3C();
  sub_10001237C();
  *v14 = v13;
  v15 = v13[2];
  *v14 = *v12;

  sub_100084D58();
  sub_10005ABBC(v13[4], *(v16 + 40));
  if (v11)
  {
    sub_100088968();
    sub_100060454();

    v17 = v10;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v19 = sub_100084074();
    sub_10005ABBC(v19, v20);
    v17 = isa;
  }

  v21 = v13[3];
  v22 = sub_100083E70();
  v23(v22);

  _Block_release(v21);
  sub_1000840DC();
  sub_1000853F8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

id ToolKitHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id _s24BackgroundShortcutRunner13ToolKitHelperC28DynamicEnumerationDefinitionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007E744(uint64_t a1)
{
  v2 = sub_100008DC0(&qword_1000A6A88, &qword_10008DE98);
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_100089188();
}

unint64_t sub_10007E814(uint64_t a1)
{
  v45 = sub_100008DC0(&qword_1000A6BC0, &qword_10008E2B0);
  v2 = __chkstk_darwin(v45);
  v44 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v43 = &v40 - v4;
  v46 = a1;
  if (*(a1 + 16))
  {
    sub_100008DC0(&qword_1000A6BC8, &unk_10008E2B8);
    v5 = sub_10008A9E8();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v46 + 64;
  v7 = 1 << *(v46 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v46 + 64);
  v10 = (v7 + 63) >> 6;
  v40 = v5 + 8;

  v12 = 0;
  v41 = v6;
  for (i = v5; v9; v6 = v41)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v46 + 56);
    v17 = (*(v46 + 48) + 16 * v15);
    v19 = *v17;
    v47 = v17[1];
    v18 = v47;
    v20 = sub_1000897A8();
    v21 = *(v20 - 8);
    v22 = v16 + *(v21 + 72) * v15;
    v23 = v45;
    v24 = v43;
    (*(v21 + 16))(&v43[*(v45 + 48)], v22, v20);
    *v24 = v19;
    v24[1] = v18;
    v25 = v24;
    v26 = v44;
    sub_100083614(v25, v44);
    v27 = *(v23 + 48);
    v29 = *v26;
    v28 = v26[1];
    v49 = v20;
    v50 = &protocol witness table for TypedValue;
    v30 = sub_100082710(&v48);
    (*(v21 + 32))(v30, v26 + v27, v20);
    sub_100083684(&v48, v52);
    v31 = v29;
    sub_100083684(v52, v53);
    sub_100083684(v53, &v51);

    v5 = i;
    result = sub_100081320(v29, v28, sub_100083930);
    v32 = result;
    if (v33)
    {
      v34 = (v5[6] + 16 * result);
      *v34 = v31;
      v34[1] = v28;

      v35 = v5[7] + 40 * v32;
      sub_10005B1BC(v35);
      result = sub_100083684(&v51, v35);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v40 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v36 = (v5[6] + 16 * result);
      *v36 = v31;
      v36[1] = v28;
      result = sub_100083684(&v51, v5[7] + 40 * result);
      v37 = v5[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_21;
      }

      v5[2] = v39;
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10007EBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v106 = a1;
  v107 = a3;
  v112 = a2;
  v5 = sub_100008DC0(&qword_1000A6C58, &unk_10008E2F0);
  __chkstk_darwin(v5 - 8);
  v98 = &v92 - v6;
  v93 = sub_100089C98();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v99 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100089CF8();
  v111 = *(v100 - 8);
  v8 = __chkstk_darwin(v100);
  v95 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = &v92 - v10;
  v11 = sub_100008DC0(&qword_1000A68D0, &qword_10008DD78);
  v12 = __chkstk_darwin(v11 - 8);
  v108 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = &v92 - v14;
  v15 = sub_100089098();
  v96 = *(v15 - 8);
  v97 = v15;
  __chkstk_darwin(v15);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100089768();
  v103 = *(v17 - 8);
  v104 = v17;
  __chkstk_darwin(v17);
  v102 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100008DC0(&qword_1000A6C60, &qword_10008D5B8);
  __chkstk_darwin(v19 - 8);
  v21 = &v92 - v20;
  v22 = sub_100089738();
  v109 = *(v22 - 8);
  v110 = v22;
  __chkstk_darwin(v22);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000897A8();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v105 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = (&v92 - v29);
  v31 = *(v26 + 16);
  v31(&v92 - v29, v4, v25);
  v32 = *(v26 + 88);
  if (v32(v30, v25) == enum case for TypedValue.collection(_:))
  {
    (*(v26 + 96))(v30, v25);
    v33 = *v30;
    v34 = swift_projectBox();
    v36 = v109;
    v35 = v110;
    (v109[2])(v24, v34, v110);
    v37 = *(sub_100089728() + 16);

    if (v37)
    {
      v113 = v33;
      v38 = sub_100089728();
      __chkstk_darwin(v38);
      v39 = v112;
      *(&v92 - 4) = v106;
      *(&v92 - 3) = v39;
      *(&v92 - 2) = v107;
      v40 = sub_100063408(sub_1000836F8, (&v92 - 6), v38);

      v41 = 0;
      v42 = *(v40 + 16);
      v43 = _swiftEmptyArrayStorage;
      while (v42 != v41)
      {
        if (v41 >= *(v40 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v44 = *(v40 + 8 * v41 + 32);
        v45 = *(v44 + 16);
        v46 = v43[2];
        if (__OFADD__(v46, v45))
        {
          goto LABEL_50;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v46 + v45 > v43[3] >> 1)
        {
          sub_1000802EC();
          v43 = v47;
        }

        if (*(v44 + 16))
        {
          if ((v43[3] >> 1) - v43[2] < v45)
          {
            goto LABEL_52;
          }

          swift_arrayInitWithCopy();

          if (v45)
          {
            v48 = v43[2];
            v49 = __OFADD__(v48, v45);
            v50 = v48 + v45;
            if (v49)
            {
              goto LABEL_53;
            }

            v43[2] = v50;
          }
        }

        else
        {

          if (v45)
          {
            goto LABEL_51;
          }
        }

        ++v41;
      }

      v69 = v43[2];
      v70 = sub_100089728();
      (v109[1])(v24, v110);
      v71 = *(v70 + 16);

      if (v69 != v71)
      {
      }
    }

    else
    {
      (v36[1])(v24, v35);
    }
  }

  else
  {
    v109 = v30;
    v110 = v25;
    sub_100089778();
    v51 = sub_100089E48();
    if (sub_100008E78(v21, 1, v51) == 1)
    {
      sub_100017954(v21, &qword_1000A6C60, &qword_10008D5B8);
      v52 = v105;
      v53 = v110;
      v31(v105, v4, v110);
      if (v32(v52, v53) == enum case for TypedValue.primitive(_:))
      {
        v54 = v26;
        (*(v26 + 96))(v52, v53);
        v55 = swift_projectBox();
        v57 = v102;
        v56 = v103;
        v58 = v104;
        (*(v103 + 16))(v102, v55, v104);
        if ((*(v56 + 88))(v57, v58) == enum case for TypedValue.PrimitiveValue.BOOL(_:))
        {
          (*(v56 + 96))(v57, v58);
          LODWORD(v105) = *v57;

          sub_1000890C8();
          v59 = sub_100089078();
          v60 = 0;
          v61 = *(v59 + 16);
          v62 = (v111 + 8);
          v63 = v100;
          v64 = v107;
          while (1)
          {
            v65 = v108;
            if (v61 == v60)
            {

              v77 = 1;
              v78 = v110;
              v79 = v98;
              v80 = v99;
              v82 = v94;
              v81 = v95;
              goto LABEL_40;
            }

            if (v60 >= *(v59 + 16))
            {
LABEL_54:
              __break(1u);
              return;
            }

            (*(v111 + 16))(v113, v59 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v60, v63);
            if (sub_100089CB8() == v112 && v66 == v64)
            {

              goto LABEL_39;
            }

            v68 = sub_10008AA68();

            if (v68)
            {
              break;
            }

            (*v62)(v113, v63);
            ++v60;
          }

          v65 = v108;
LABEL_39:
          v82 = v94;
          (*(v111 + 32))(v94, v113, v63);
          v77 = 0;
          v78 = v110;
          v79 = v98;
          v80 = v99;
          v81 = v95;
LABEL_40:
          sub_100009158(v82, v77, 1, v63);
          sub_100083834();
          if (sub_100008E78(v65, 1, v63) == 1)
          {
            sub_100017954(v82, &qword_1000A68D0, &qword_10008DD78);
            (*(v96 + 8))(v101, v97);
            v83 = v65;
            v84 = &qword_1000A68D0;
            v85 = &qword_10008DD78;
LABEL_44:
            sub_100017954(v83, v84, v85);
            (*(v54 + 8))(v109, v78);
            return;
          }

          (*(v111 + 32))(v81, v65, v63);
          sub_100089CA8();
          v86 = v93;
          if (sub_100008E78(v79, 1, v93) == 1)
          {
            (*v62)(v81, v63);
            sub_100017954(v82, &qword_1000A68D0, &qword_10008DD78);
            (*(v96 + 8))(v101, v97);
            v84 = &qword_1000A6C58;
            v85 = &unk_10008E2F0;
            v83 = v79;
            goto LABEL_44;
          }

          (*(v92 + 32))(v80, v79, v86);
          if (v105)
          {
            v87 = sub_100089C78();
          }

          else
          {
            v87 = sub_100089C88();
          }

          v89 = v87;
          v90 = v88;
          sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
          v91 = swift_allocObject();
          *(v91 + 16) = xmmword_10008C980;
          *(v91 + 32) = v89;
          *(v91 + 40) = v90;
          (*(v92 + 8))(v80, v93);
          (*v62)(v81, v63);
          sub_100017954(v82, &qword_1000A68D0, &qword_10008DD78);
          (*(v96 + 8))(v101, v97);
          (*(v54 + 8))(v109, v78);
        }

        else
        {
          (*(v56 + 8))(v57, v58);

          (*(v26 + 8))(v109, v53);
        }
      }

      else
      {
        v76 = *(v26 + 8);
        v76(v52, v53);
        v76(v109, v53);
      }
    }

    else
    {
      v72 = sub_100089DC8();
      v74 = v73;
      (*(*(v51 - 8) + 8))(v21, v51);
      sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_10008C980;
      *(v75 + 32) = v72;
      *(v75 + 40) = v74;
      (*(v26 + 8))(v109, v110);
    }
  }
}

id sub_10007F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10008A238();

  v6 = sub_10008A238();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

uint64_t sub_10007F964(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10007F99C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100012334;

  return v6();
}

uint64_t sub_10007FA84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000105E8;

  return v7();
}

uint64_t sub_10007FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100083834();
  v12 = sub_10008A3D8();
  if (sub_100008E78(v11, 1, v12) == 1)
  {
    sub_100017954(v11, &qword_1000A5E70, &qword_10008D410);
  }

  else
  {
    sub_10008A3C8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10008A388();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_10008A288() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100017954(a3, &qword_1000A5E70, &qword_10008D410);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100017954(a3, &qword_1000A5E70, &qword_10008D410);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10007FE48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007FF40;

  return v6(a1);
}

uint64_t sub_10007FF40()
{
  sub_100012404();
  sub_100012474();
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;

  sub_10001248C();

  return v3();
}

unint64_t sub_100080024(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100008DC0(&qword_1000A6C88, &qword_10008E320);
  v2 = sub_10008A9E8();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_100083834();
    result = sub_100081320(v13, v14, sub_100083930);
    if (v8)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v13;
    v9[1] = v14;
    result = sub_10000A6AC(&v15, (v3[7] + 32 * result));
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v3[2] = v12;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1000801D4()
{
  result = qword_1000A6920;
  if (!qword_1000A6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6920);
  }

  return result;
}

void sub_100080228()
{
  sub_100084D64();
  if (v4)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  sub_10008496C();
  if (v2)
  {
    v7 = sub_100008DC0(&unk_1000A6CF8, &unk_10008E388);
    v8 = sub_1000854A8(v7);
    v9 = j__malloc_size(v8);
    sub_100084EE8(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000850F0();
  if (v1)
  {
    if (v8 != v0 || &v11[8 * v3] <= v10)
    {
      memmove(v10, v11, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_1000802EC()
{
  sub_100084D64();
  if (v3)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    v9 = sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
    v10 = sub_1000854A8(v9);
    j__malloc_size(v10);
    sub_100084958();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[16 * v7] <= v12)
    {
      memmove(v12, v13, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100080408()
{
  sub_100084D64();
  if (v4)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  sub_10008496C();
  if (v2)
  {
    v7 = sub_100008DC0(&qword_1000A6600, &unk_10008E360);
    v8 = sub_1000854A8(v7);
    j__malloc_size(v8);
    sub_100084958();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000850F0();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v3] <= v10)
    {
      memmove(v10, v11, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_100080510(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    sub_100083EF8();
    if (v12 != v13)
    {
      sub_100084B10();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100080B78(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100080604()
{
  sub_100084D64();
  if (v4)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  sub_10008496C();
  if (v2)
  {
    sub_100080C44();
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_100084EE8(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000850F0();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_10008084C()
{
  sub_100084D64();
  if (v4)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  sub_10008496C();
  if (v2)
  {
    sub_100008DC0(&qword_1000A6CB8, &unk_10008E348);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v3;
    v7[3] = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000850F0();
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10008093C()
{
  sub_100084D64();
  if (v3)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    v9 = sub_100008DC0(&qword_1000A6CB0, &qword_10008E340);
    v10 = sub_1000854A8(v9);
    j__malloc_size(v10);
    sub_100084958();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[16 * v7] <= v12)
    {
      memmove(v12, v13, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_100080A18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6C68, &unk_10008E300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008DC0(&qword_1000A6C70, &qword_10008D2F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100080B78(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_10005F538();
  if (v9 < v8 || (a4(0), sub_100017A1C(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_10005E428();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_10005E428();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_100080C44()
{
  v0 = sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  if (sub_1000838D0(v0, v0))
  {
    v1 = &qword_1000A6978;
    v2 = &qword_10008DDB8;
  }

  else
  {
    v1 = &unk_1000A6D08;
    v2 = &unk_10008E398;
  }

  return sub_100008DC0(v1, v2);
}

uint64_t sub_100080CD4(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t ***, uint64_t))
{
  v6 = a4(a1, a2);
  sub_100080D2C(v6, v7, a3);
  sub_100084F18();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

uint64_t sub_100080D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_100012554();
  v9 = sub_100080DEC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_10000A650(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_10005B1BC(v14);
  return v10;
}

unint64_t sub_100080DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100080EEC(a5, a6);
    *a1 = v9;
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
    result = sub_10008A938();
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

void *sub_100080EEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100080F38(a1, a2);
  sub_100081050(&off_10009E790);
  return v3;
}

void *sub_100080F38(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10008A2E8())
  {
    result = sub_100081134(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10008A908();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10008A938();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100081050(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000811A4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100081134(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100008DC0(&qword_1000A6C48, &qword_10008E2E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000811A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DC0(&qword_1000A6C48, &qword_10008E2E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_100081298()
{
  sub_100085264();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

uint64_t sub_100081320(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_10008AB08();
  sub_10008A2B8();
  v5 = sub_10008AB28();

  return a3(a1, a2, v5);
}

unint64_t sub_1000813A4()
{
  sub_100085158();
  sub_1000899A8();
  sub_10008388C(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v1 = sub_10008A208();
  return sub_100081848(v0, v1, &type metadata accessor for TypeIdentifier, &qword_1000A6C80, &type metadata accessor for TypeIdentifier, &protocol conformance descriptor for TypeIdentifier);
}

unint64_t sub_100081474(uint64_t a1)
{
  sub_10008AB08();
  sub_1000899A8();
  sub_10008388C(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  sub_10008A218();
  type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_100088A68();
  sub_10008388C(&unk_1000A6430, &type metadata accessor for Locale);
  sub_10008A218();
  v2 = sub_10008AB28();

  return sub_1000816E0(a1, v2);
}

unint64_t sub_100081588()
{
  sub_100085158();
  sub_100089F58();
  sub_10008388C(&qword_1000A6CC8, &type metadata accessor for AssistantSchemaIdentifier);
  v1 = sub_10008A208();
  return sub_100081848(v0, v1, &type metadata accessor for AssistantSchemaIdentifier, &qword_1000A6CD0, &type metadata accessor for AssistantSchemaIdentifier, &protocol conformance descriptor for AssistantSchemaIdentifier);
}

unint64_t sub_100081658(uint64_t a1, uint64_t a2, char a3)
{
  sub_10008AB08();
  sub_10002A4D0(v10, a1, a2);
  sub_10008AB28();
  v6 = sub_10005E810();

  return sub_1000819D0(v6, v7, a3, v8);
}

unint64_t sub_1000816E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_10001779C(*(v2 + 48) + v11 * v9, v7);
      if (sub_100089998())
      {
        v12 = sub_100088A38();
        sub_100017740(v7);
        if (v12)
        {
          return v9;
        }
      }

      else
      {
        sub_100017740(v7);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100081848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v19 = a1;
  v8 = a3(0);
  sub_100012368();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v24 = v6 + 64;
  v20 = v6;
  sub_10005EB04();
  v15 = ~v14;
  for (i = a2 & ~v14; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v13, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_10008388C(v21, v22);
    v17 = sub_10008A228();
    (*(v10 + 8))(v13, v8);
    if (v17)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000819D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if (((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v11 = ~v6;
  v12 = *(v4 + 48);
  v13 = a1 != 4;
  v14 = a1 != 3;
  v15 = a1 != 2;
  v16 = a1 != 1;
  if (a2)
  {
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
  }

  if (a3 != 2)
  {
    v13 = 1;
  }

  v29 = v13;
  v17 = a3 != 2 || v14;
  v28 = v17;
  v18 = a3 != 2 || v15;
  v27 = v18;
  v19 = a3 != 2 || v16;
  if (a2 | a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3 == 2;
  }

  while (1)
  {
    v21 = (v12 + 24 * v7);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v21 + 16);
    if (!v24)
    {
      if (a3)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v24 != 1)
    {
      break;
    }

    if (a3 != 1)
    {
      goto LABEL_28;
    }

LABEL_23:
    v25 = v23 == a1 && v22 == a2;
    if (v25 || (sub_10008AA68() & 1) != 0)
    {
      return v7;
    }

LABEL_28:
    v7 = (v7 + 1) & v11;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  switch(v23)
  {
    case 1:
      if (v19)
      {
        goto LABEL_28;
      }

      break;
    case 2:
      if (v27)
      {
        goto LABEL_28;
      }

      break;
    case 3:
      if (v28)
      {
        goto LABEL_28;
      }

      break;
    case 4:
      if (v29)
      {
        goto LABEL_28;
      }

      break;
    default:
      if (!v20)
      {
        goto LABEL_28;
      }

      break;
  }

  return v7;
}

void sub_100081C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100084CB0();
  sub_100081E88(v4, v5, v6, v7, v8, v9, v10, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  *v3 = v11;
}

char *sub_100081CE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100082070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100081D00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10008216C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100081D78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000822E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100081D98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000823F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100081E10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100082500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100081E88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    sub_100083EF8();
    if (v13 != v14)
    {
      sub_100084B10();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100008DC0(a5, a6);
  v17 = a7(0);
  sub_100017A0C(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (v11)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_100080B78(a4 + v26, v15, v22 + v26, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_100082070(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080C44();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_10008216C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6CA0, &qword_10008E330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008DC0(&qword_1000A6CA8, &qword_10008E338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000822E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DC0(&qword_1000A6CE0, &qword_10008E370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000823F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100082500(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DC0(&qword_1000A6CD8, &qword_10008E358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10008260C(uint64_t a1, void *a2)
{
  sub_100008DC0(&qword_1000A6C30, &qword_10008E2C8);
  isa = sub_10008A1B8().super.isa;

  v4 = [a2 copyWithSerializedParameters:isa];

  return v4;
}

uint64_t sub_100082694(uint64_t a1, uint64_t a2)
{
  v2 = sub_10008A268();
  v4 = v3;
  if (v2 == sub_10008A268() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    sub_100083EA8();
    v7 = sub_10008AA68();
  }

  return v7 & 1;
}

uint64_t *sub_100082710(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_10008279C()
{
  result = qword_1000A6968;
  if (!qword_1000A6968)
  {
    sub_100010924(&qword_1000A6960, &qword_10008DDB0);
    sub_10008388C(&qword_1000A6970, &type metadata accessor for TypedValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6968);
  }

  return result;
}

unint64_t sub_100082850()
{
  result = qword_1000A6A18;
  if (!qword_1000A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6A18);
  }

  return result;
}

unint64_t sub_1000828A4()
{
  result = qword_1000A6AA0;
  if (!qword_1000A6AA0)
  {
    sub_100010924(&qword_1000A6A88, &qword_10008DE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6AA0);
  }

  return result;
}

unint64_t sub_10008290C()
{
  result = qword_1000A6AC0;
  if (!qword_1000A6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitDeferredValueResolutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolKitDeferredValueResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitLinkQueryCoercionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ToolKitLinkQueryCoercionError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100082C0C()
{
  result = qword_1000A6B40;
  if (!qword_1000A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B40);
  }

  return result;
}

unint64_t sub_100082C64()
{
  result = qword_1000A6B48;
  if (!qword_1000A6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B48);
  }

  return result;
}

uint64_t sub_100082CB8()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100082D48()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100082DD8()
{
  swift_unknownObjectRelease();

  v0 = sub_1000849BC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100082E10()
{
  sub_10005EC9C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  sub_100012480();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_100012334;

  return sub_10007FA84(v3, v4, v5, v6);
}

uint64_t sub_100082ED4()
{
  sub_100012604();
  swift_task_alloc();
  sub_100012480();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100084BBC(v1);

  return v4(v3);
}

uint64_t sub_100082F6C()
{
  sub_100012604();
  swift_task_alloc();
  sub_100012480();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100084BBC(v1);

  return v4(v3);
}

uint64_t sub_100083004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  v10 = swift_task_alloc();
  v11 = sub_10008461C(v10);
  *v11 = v12;
  v11[1] = sub_1000105E8;
  sub_100084664();
  sub_1000853F8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1000830C0()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083150()
{
  sub_100012604();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  v1[1] = sub_100012334;
  v3 = sub_1000124C8();

  return v4(v3);
}

uint64_t sub_1000831F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  v10 = swift_task_alloc();
  v11 = sub_10008461C(v10);
  *v11 = v12;
  v11[1] = sub_100012334;
  sub_100083DB8();
  sub_1000853F8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1000832A8()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083338()
{
  _Block_release(*(v0 + 32));
  v1 = sub_1000849BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100083378()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083408()
{
  sub_10005EC9C();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  v1[1] = sub_100012334;
  v3 = sub_100083DB8();

  return v4(v3);
}

uint64_t sub_1000834BC()
{
  sub_1000615C8();
  sub_10005EC9C();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  v1[1] = sub_100012334;
  sub_100084664();
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008356C()
{
  sub_100012604();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  v1[1] = sub_100012334;
  v3 = sub_1000124C8();

  return v4(v3);
}

uint64_t sub_100083614(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A6BC0, &qword_10008E2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083684(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000836F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007EBE4(v1[2], v1[3], v1[4]);
  *a1 = result;
  return result;
}

uint64_t sub_10008377C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  sub_1000899A8();
  sub_100017A1C();
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_100083834()
{
  sub_10005F538();
  sub_100008DC0(v1, v2);
  sub_100017A1C();
  v3 = sub_1000125C0();
  v4(v3);
  return v0;
}

uint64_t sub_10008388C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000838D0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083988(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000839F8()
{
}

void sub_100083A84()
{
  v2 = v0[112];
  v3 = v0[111];
  *(v1 - 112) = v0[110];
  *(v1 - 104) = v2;
  *(v1 - 128) = v0[109];
  *(v1 - 120) = v3;
  *(v1 - 136) = v0[107];
}

uint64_t sub_100083B24()
{
  *(v1 - 88) = v0;
}

uint64_t sub_100083B80()
{
}

void sub_100083C08()
{
  *(v2 - 128) = *(v1 + 856);
  *(v2 - 120) = v0;
  *(v2 - 136) = *(v1 + 808);
}

uint64_t sub_100083C6C()
{
  v3 = v0[50];
  *(v1 - 136) = v0[51];
  *(v1 - 128) = v3;
  v4 = v0[48];
  *(v1 - 120) = v0[49];
  *(v1 - 112) = v4;
  v5 = v0[42];
  *(v1 - 104) = v0[45];
  *(v1 - 96) = v5;
}

uint64_t sub_100083D58(uint64_t a1)
{
  *(v2 - 88) = *(v1 + 472);

  return sub_100088AC8();
}

void sub_100083DCC()
{
  *(v2 - 128) = *(v1 + 856);
  *(v2 - 120) = v0;
  *(v2 - 136) = *(v1 + 808);
}

uint64_t sub_100083DE0()
{
}

void sub_100083F18()
{
  v2 = *(v0 + 896);
  *(v1 - 112) = *(v0 + 880);
  *(v1 - 104) = v2;
}

void sub_100083F48()
{
  v2 = *(v0 + 536);
}

uint64_t sub_100083F9C()
{
}

uint64_t sub_100084034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100088958();
}

uint64_t sub_100084054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100088958();
}

uint64_t sub_1000840EC()
{
  *(v1 - 112) = v0[112];
  *(v1 - 128) = v0[110];
  *(v1 - 104) = v0[104];
  *(v1 - 136) = v0[103];
  *(v1 - 120) = v0[102];
}

void *sub_100084228()
{
  result = *(v1 + 400);
  *result = v0;
  return result;
}

uint64_t sub_10008423C()
{
  *(v1 - 112) = v0[112];
  v3 = v0[110];
  *(v1 - 136) = v0[109];
  *(v1 - 128) = v3;
  *(v1 - 104) = v0[105];
  *(v1 - 120) = v0[102];
}

uint64_t sub_1000842DC()
{
  result = v0[80];
  v3 = v0[41];
  *(v1 - 96) = v0[44];
  *(v1 - 88) = v3;
  return result;
}

uint64_t sub_10008433C()
{
  v4 = v0[48];
  v3 = v0[49];
  *(v1 - 136) = v0[50];
  *(v1 - 128) = v3;
  v5 = v0[45];
  *(v1 - 120) = v4;
  *(v1 - 112) = v5;
  *(v1 - 104) = v0[42];
}

uint64_t sub_100084404(uint64_t a1)
{

  return sub_10008AA68();
}

uint64_t sub_100084460()
{

  return sub_100088918();
}

uint64_t sub_10008448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21)
{

  return sub_1000615DC(v21, v22, a21, v23);
}

uint64_t sub_1000845C4()
{
}

uint64_t sub_100084628()
{
  *(v1 - 104) = *(v0 + 1160);
  *(v1 - 112) = *(v0 + 936);
  return *(v0 + 408);
}

uint64_t sub_100084670(uint64_t a1)
{
  *(v1 + 136) = a1;
  result = *(v2 - 112);
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100084694()
{
  *(v0 + 56) = *(v1 - 120);
  *(v0 + 24) = sub_10006B004;

  return swift_continuation_init();
}

uint64_t sub_1000846D0()
{
}

void sub_100084704()
{
  v2[12] = sub_100083940;
  v2[13] = v0;
  v2[14] = v1;
}

void sub_100084750()
{
  *(v3 - 136) = v1 + 16;
  *(v1 + 1032) = v0;
  *(v3 - 120) = v1 + 232;
  *(v3 - 104) = v1 + 80;
}

uint64_t sub_100084868()
{

  return swift_beginAccess();
}

uint64_t sub_100084988()
{
}

uint64_t sub_1000849CC()
{
}

uint64_t sub_100084A68()
{
}

void sub_100084C54()
{
  v2 = v0[112];
  v3 = v0[111];
  *(v1 - 104) = v0[110];
  *(v1 - 96) = v2;
  *(v1 - 120) = v0[109];
  *(v1 - 112) = v3;
}

uint64_t sub_100084C80@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 1024) = a2;

  return sub_100089B78();
}

uint64_t sub_100084CC8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100084CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100088958();
}

id sub_100084D08()
{

  return v0;
}

uint64_t sub_100084D7C()
{
}

uint64_t sub_100084DB4()
{

  return sub_10008A268();
}

uint64_t sub_100084DDC(uint64_t a1)
{
}

uint64_t sub_100084E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18)
{

  return sub_100079E20(v20, v18, v19, a18);
}

uint64_t sub_100084E6C()
{
  v5 = v1[48];
  v4 = v1[49];
  *(v2 - 136) = v0;
  *(v2 - 128) = v4;
  v6 = v1[45];
  *(v2 - 120) = v5;
  *(v2 - 112) = v6;
  *(v2 - 104) = v1[42];
}

uint64_t sub_100084E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009158(a1, 1, 1, a4);
}

void sub_100084ED0()
{
  v3 = *(v1 + 952);
  *(v2 - 152) = v0;
  *(v2 - 144) = v3;
}

uint64_t sub_100084EE8(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 8);
  return result;
}

void *sub_100084FB4()
{
  result = *(v2 + 392);
  *result = v0;
  result[1] = v3;
  result[2] = v1;
  return result;
}

uint64_t sub_100084FF0(uint64_t a1)
{
  *(v2 - 152) = v1;

  return swift_willThrow();
}

uint64_t sub_100085008(uint64_t a1)
{

  return sub_10008A068();
}

uint64_t sub_10008502C()
{

  return sub_100079E20(v2, v0, v1, v3);
}

uint64_t sub_100085050@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t sub_10008506C(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_100085084(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_10008509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100088958();
}

void sub_100085124()
{
  v2 = *(v0 + 1056);
  *(v1 - 168) = *(v0 + 1064);
  *(v1 - 160) = v2;
}

void *sub_100085290()
{
  result = *(v1 + 400);
  *result = v0;
  return result;
}

void sub_1000852D0()
{
  *(v2 - 112) = *(v1 + 880);
  *(v2 - 104) = v0;
  *(v2 - 120) = *(v1 + 872);
}

uint64_t sub_1000853D8(uint64_t a1)
{

  return sub_100088AC8();
}

uint64_t sub_100085410(uint64_t a1)
{

  return sub_10008A728();
}

uint64_t sub_100085430()
{
}

uint64_t sub_100085450()
{
}

void sub_100085488(id a1)
{
}

uint64_t sub_1000854A8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000854C0()
{
}

id sub_1000854D8()
{
  v3 = *(v1 + 3248);

  return [v0 v3];
}

id sub_1000854F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);

  return v3;
}

uint64_t sub_100085508()
{
}

void sub_10008578C(uint64_t a1, void *a2)
{
  v3 = WFHandoffSourceKey;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  v7 = WFWorkflowRunSourceHandoff;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:WFHandoffWorkflowControllerStateKey];

  (*(*(a1 + 32) + 16))();
}

void sub_1000861DC(uint64_t a1, void *a2)
{
  v3 = [a2 parameters];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v3 objectForKey:@"webpageURL"];
  v6 = [v3 objectForKey:@"userInfoURL"];
  v7 = [NSURL URLWithString:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100086324;
  v12[3] = &unk_10009F9F0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  [v8 deserializeUserInfoAtURL:v7 completionHandler:v12];
}

void sub_1000865B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10008681C;
  v26[3] = &unk_10009FC98;
  v13 = v11;
  v29 = v13;
  v14 = v10;
  v15 = *(a1 + 32);
  v27 = v14;
  v28 = v15;
  v16 = objc_retainBlock(v26);
  if ([v9 count])
  {
    v17 = [v14 url];
    [v17 startAccessingSecurityScopedResource];

    v25 = 0;
    v18 = [[WFToolKitIndexer alloc] initWithClientIdentifier:@"BackgroundShortcutRunner" error:&v25];
    v19 = v25;
    if (v19)
    {
      (*(*(a1 + 48) + 16))();
      (v16[2])(v16, @"ToolKit indexing failed because database failed to initialize");
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000868B8;
      v21[3] = &unk_10009FCC0;
      v20 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = v16;
      v22 = v18;
      [(WFToolKitIndexer *)v22 reindexWithRequest:v20 completionHandler:v21];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v19 = [NSString stringWithFormat:@"ToolKit indexing failed with result: %@", v9];
    (v16[2])(v16, v19);
  }
}

void sub_10008681C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  v6 = [*(a1 + 32) url];
  [v6 stopAccessingSecurityScopedResource];

  v7 = [*(a1 + 40) stateMachine];
  [v7 exitWithReason:v5];
}

uint64_t sub_1000868B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[WFShortcutRunnerSandboxExtensionManager sharedManager];
  [v4 resignIssuedExtensionsWithReason:@"done with ToolKit indexing"];

  (*(*(a1 + 40) + 16))();
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_100086BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 | a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v3 + 16))(v3, 0, v6);
  }
}

void sub_100086D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 | a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v3 + 16))(v3, 0, v6);
  }
}

void sub_10008760C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) parameterKey];
    v8 = [v5 parameterForKey:v7];

    if (v8)
    {
      v9 = v8;
      v10 = [v9 conformsToProtocol:&OBJC_PROTOCOL___WFParameterValuePickable];
      v11 = v10;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v11)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = [WFToolKitHelper decodeSearchStringInEncodedQuery:v14 error:0];
        }

        else
        {
          v15 = 0;
        }

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100087BF8;
        v27[3] = &unk_10009FBF8;
        v33 = *(a1 + 56);
        v28 = v15;
        v29 = v9;
        v30 = v29;
        v31 = v5;
        v32 = *(a1 + 48);
        v26 = v15;
        [v30 wf_loadStatesWithSearchTerm:v26 completionHandler:v27];
      }

      else
      {
        v34 = NSLocalizedDescriptionKey;
        v22 = [*(a1 + 32) parameterKey];
        v23 = [NSString stringWithFormat:@"Parameter %@ is not enumerable: %@.", v22, objc_opt_class()];
        v35 = v23;
        v24 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v24];

        (*(*(a1 + 56) + 16))();
        v6 = v25;
      }
    }

    else
    {
      v36 = NSLocalizedDescriptionKey;
      v18 = [*(a1 + 32) parameterKey];
      v19 = [NSString stringWithFormat:@"Parameter %@ not found.", v18];
      v37 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];

      (*(*(a1 + 56) + 16))();
      v6 = v21;
    }
  }

  else
  {
    v38 = NSLocalizedDescriptionKey;
    v39 = @"Action backing this tool not found.";
    v16 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];

    (*(*(a1 + 56) + 16))();
    v6 = v17;
  }
}

id sub_100087A20(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Taking sandbox extensions for execution", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id sub_100087B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100087A20(v3, v4);

  v6 = [v5 name];
  v7 = [*(a1 + 32) propertyName];
  v8 = [v6 isEqualToString:v7];

  return v8;
}

void sub_100087BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) length];
    if (v7)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100087DBC;
      v17[3] = &unk_10009FBA8;
      v14 = &v18;
      v18 = *(a1 + 40);
      v13 = &v19;
      v19 = *(a1 + 32);
      v8 = [v6 wf_filteredCollectionUsingBlock:v17];
    }

    else
    {
      v8 = v6;
    }

    v9 = [v8 allItems];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100087E04;
    v15[3] = &unk_10009FBD0;
    v12 = *(a1 + 64);
    v16 = *(a1 + 72);
    [WFToolKitHelper produceEncodedTypedValuesFromPossibleStates:v9 ofParameter:v10 inAction:v11 encodedOptions:v12 completionBlock:v15];

    if (v7)
    {
    }
  }
}

id sub_100087DBC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) wf_pickerLocalizedTitleForState:a2];
  v4 = [v3 localizedStandardContainsString:*(a1 + 40)];

  return v4;
}

id sub_100088020(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [WFToolKitHelper produceEncodedTypedValueFromCollection:a2 withResolutionRequest:*(a1 + 32) completionBlock:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_1000885D8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) name];
    [v3 injectResolvedContent:v5 asVariableWithName:v4 completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id sub_10008874C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000887D0;
  v3[3] = &unk_10009FAE0;
  v4 = *(a1 + 40);
  return [WFToolKitHelper createActionFromEncodedToolInvocation:v1 fetchingDefaultValues:1 completion:v3];
}

void sub_1000887D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"WFIsolatedShortcutRunner.m" lineNumber:59 description:{@"Faulty encoded tool invocation: %@", v6}];
  }

  v7 = getWFToolKitExecutionLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[WFIsolatedShortcutRunner runToolWithInvocation:]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Stepping with action %@", buf, 0x16u);
  }

  [*(a1 + 32) stepWithAction:v5];
}