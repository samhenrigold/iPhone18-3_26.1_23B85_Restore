uint64_t sub_24AE796D4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24AE79950;
  }

  else
  {
    v2 = sub_24AE797E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AE797E8()
{
  v12 = v0;
  swift_unknownObjectRetain();
  v1 = sub_24AE83EB0();
  v2 = sub_24AE84250();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    v6 = sub_24AE84510();
    v8 = sub_24AE53C28(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24AE43000, v1, v2, "Done running service: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C233A80](v5, -1, -1);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AE79950()
{
  v19 = v0;
  v1 = v0[9];
  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_24AE83EB0();
  v4 = sub_24AE84230();
  swift_unknownObjectRelease();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[7];
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136446466;
    v12 = (*(v8 + 24))(v7, v8);
    v14 = sub_24AE53C28(v12, v13, &v18);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = sub_24AE83DE0();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&dword_24AE43000, v3, v4, "Uncaught error running service: %{public}s, error: %{public}@", v9, 0x16u);
    sub_24AE567BC(v10, &qword_27EFBE850, &qword_24AE863D0);
    MEMORY[0x24C233A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C233A80](v11, -1, -1);
    MEMORY[0x24C233A80](v9, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AE79B40(__int128 *a1, _OWORD *a2)
{
  *(v3 + 1320) = v2;
  v6 = sub_24AE83EA0();
  *(v3 + 1328) = v6;
  *(v3 + 1336) = *(v6 - 8);
  *(v3 + 1344) = swift_task_alloc();
  *(v3 + 1352) = swift_task_alloc();
  *(v3 + 1360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA18, &qword_24AE87170);
  *(v3 + 1368) = swift_task_alloc();
  *(v3 + 1376) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  *(v3 + 1384) = v7;
  *(v3 + 1392) = *(v7 - 8);
  *(v3 + 1400) = swift_task_alloc();
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a1;
  *(v3 + 112) = a1[1];
  *(v3 + 128) = v8;
  v11 = a1[4];
  *(v3 + 144) = v9;
  *(v3 + 160) = v11;
  v12 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v12;
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v10;
  v13 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v13;

  return MEMORY[0x2822009F8](sub_24AE79D00, v2, 0);
}

uint64_t sub_24AE79D00()
{
  v83 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 104))
  {
    if (!v1)
    {
      return sub_24AE84440();
    }

    goto LABEL_5;
  }

  if (v1)
  {
LABEL_5:
    object = *(v0 + 24);
    v3 = *(v0 + 64);
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 16);
    sub_24AE5681C(v0 + 96, v0 + 1056, &qword_27EFBEA28, &qword_24AE87188);
    v12 = v8;
    v13 = *(v0 + 144);
    *(v0 + 208) = *(v0 + 128);
    *(v0 + 224) = v13;
    *(v0 + 240) = *(v0 + 160);
    v14 = *(v0 + 112);
    *(v0 + 176) = *(v0 + 96);
    *(v0 + 192) = v14;
    v15 = 1;
    goto LABEL_6;
  }

  v37._countAndFlagsBits = sub_24AE83C30();
  SystemVersionNumber.init(string:)(&v82, v37);
  if (!v82.value.rawValue._object)
  {
LABEL_43:

    v63 = *(v0 + 8);

    return v63();
  }

  object = v82.value.rawValue._object;
  countAndFlagsBits = v82.value.rawValue._countAndFlagsBits;
  baseNumber = v82.value.baseNumber;
  v20 = v82.value.baseLetter._object;
  value = v82.value.childType.value;
  is_nil = v82.value.childType.is_nil;
  v26 = v82.value.suffix.value._countAndFlagsBits;
  v73 = v82.value.baseLetter._countAndFlagsBits;
  buildNumber = v82.value.buildNumber;
  v4 = v82.value.suffix.value._object;
  if (qword_280D7A568 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 1400);
  v39 = *(v0 + 1392);
  v40 = *(v0 + 1384);
  v41 = __swift_project_value_buffer(v40, qword_280D7A570);
  swift_beginAccess();
  (*(v39 + 16))(v38, v41, v40);
  sub_24AE83CD0();
  (*(v39 + 8))(v38, v40);
  v42 = *(v0 + 1280);
  if (!v42)
  {
    v78 = v4;
    v23 = 0;
    v24 = is_nil;
    goto LABEL_11;
  }

  v43 = *(v0 + 1272);
  SystemVersionNumber.init(string:)((v0 + 176), *(&v42 - 1));
  v15 = 0;
  v3 = is_nil;
  v5 = v26;
  v12 = v20;
  v7 = value;
  v9 = v73;
  v6 = buildNumber;
  v11 = countAndFlagsBits;
  v10 = baseNumber;
LABEL_6:
  v77 = v5;
  v78 = v4;
  *(v0 + 1472) = v4;
  *(v0 + 1464) = v5;
  *(v0 + 1456) = v6;
  v79 = v3;
  *(v0 + 1617) = v3 & 1;
  v76 = v7;
  *(v0 + 1448) = v7;
  *(v0 + 1440) = v12;
  *(v0 + 1432) = v9;
  *(v0 + 1424) = v10;
  *(v0 + 1416) = object;
  *(v0 + 1408) = v11;
  *(v0 + 1616) = v15;
  v16 = *(v0 + 176);
  v17 = *(v0 + 184);
  v18 = *(v0 + 240);
  *(v0 + 1168) = *(v0 + 224);
  *(v0 + 1184) = v18;
  v19 = *(v0 + 208);
  *(v0 + 1136) = *(v0 + 192);
  *(v0 + 1152) = v19;
  v20 = v12;
  if (!v17)
  {
    countAndFlagsBits = v11;
    baseNumber = v10;
    v73 = v9;
    buildNumber = v6;
    v22 = v15;
    sub_24AE5681C(v0 + 16, v0 + 336, &qword_27EFBEA28, &qword_24AE87188);
    v23 = v22;
    v24 = v79;
    value = v76;
    v26 = v77;
LABEL_11:
    *(v0 + 1552) = v78;
    *(v0 + 1544) = v26;
    *(v0 + 1536) = buildNumber;
    *(v0 + 1619) = v24;
    *(v0 + 1528) = value;
    *(v0 + 1520) = v20;
    *(v0 + 1512) = v73;
    *(v0 + 1504) = baseNumber;
    *(v0 + 1496) = object;
    *(v0 + 1488) = countAndFlagsBits;
    *(v0 + 1618) = v23;
    v27 = swift_task_alloc();
    *(v0 + 1560) = v27;
    *v27 = v0;
    v27[1] = sub_24AE7AF78;

    return sub_24AE7BB94();
  }

  v74 = v15;
  if (v16 == v11 && v17 == object)
  {
    v21 = v0 + 976;
LABEL_16:
    sub_24AE5681C(v0 + 16, v21, &qword_27EFBEA28, &qword_24AE87188);
    sub_24AE567BC(v0 + 176, &qword_27EFBEA28, &qword_24AE87188);
    *(v0 + 256) = v11;
    *(v0 + 264) = object;
    *(v0 + 272) = v10;
    *(v0 + 280) = v9;
    *(v0 + 288) = v20;
    *(v0 + 296) = v76;
    *(v0 + 304) = v79;
    *(v0 + 312) = v6;
    *(v0 + 320) = v77;
    *(v0 + 328) = v4;
    if (v74)
    {
      sub_24AE4C4CC(v0 + 256);
    }

    else
    {
      v28 = *(v0 + 304);
      *&v82.value.baseLetter._object = *(v0 + 288);
      *&v82.value.childType.is_nil = v28;
      v82.value.suffix = *(v0 + 320);
      v29 = *(v0 + 272);
      v82.value.rawValue = *(v0 + 256);
      *&v82.value.baseNumber = v29;
      v30 = SystemVersionNumber.description.getter();
      v32 = v31;
      sub_24AE4C4CC(v0 + 256);
      if (qword_280D7A568 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 1384), qword_280D7A570);
      *(v0 + 1288) = v30;
      *(v0 + 1296) = v32;
      swift_beginAccess();
      sub_24AE83CE0();
      swift_endAccess();
    }

    sub_24AE83C40();
    if (qword_280D7A540 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 1400);
    v34 = *(v0 + 1392);
    v35 = *(v0 + 1384);
    v36 = __swift_project_value_buffer(v35, qword_280D7A548);
    swift_beginAccess();
    (*(v34 + 16))(v33, v36, v35);
    sub_24AE83CD0();
    (*(v34 + 8))(v33, v35);
    if (*(v0 + 1312))
    {
      sub_24AE83E70();
    }

    else
    {
      (*(*(v0 + 1336) + 56))(*(v0 + 1376), 1, 1, *(v0 + 1328));
    }

    v44 = *(v0 + 1376);
    v45 = *(v0 + 1368);
    v46 = *(v0 + 1336);
    v47 = *(v0 + 1328);
    (*(v46 + 16))(*(v0 + 1352), *(v0 + 1360), v47);
    sub_24AE5681C(v44, v45, &qword_27EFBEA18, &qword_24AE87170);
    if ((*(v46 + 48))(v45, 1, v47) == 1)
    {
      sub_24AE567BC(*(v0 + 1368), &qword_27EFBEA18, &qword_24AE87170);
      if (qword_280D7A590 != -1)
      {
        swift_once();
      }

      v48 = sub_24AE83ED0();
      __swift_project_value_buffer(v48, qword_280D7A598);
      v49 = sub_24AE83EB0();
      v50 = sub_24AE84250();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_24AE43000, v49, v50, "No lastLaunchBootSessionUUID on record", v51, 2u);
        MEMORY[0x24C233A80](v51, -1, -1);
      }

      v52 = swift_task_alloc();
      *(v0 + 1592) = v52;
      *v52 = v0;
      v53 = sub_24AE7B934;
      goto LABEL_50;
    }

    (*(*(v0 + 1336) + 32))(*(v0 + 1344), *(v0 + 1368), *(v0 + 1328));
    sub_24AE83BE4(&qword_280D7A940, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    if ((sub_24AE83F90() & 1) == 0)
    {
      v52 = swift_task_alloc();
      *(v0 + 1568) = v52;
      *v52 = v0;
      v53 = sub_24AE7B6C0;
LABEL_50:
      v52[1] = v53;
      v69 = *(v0 + 1352);
      v70 = *(v0 + 1320);

      return sub_24AE82AF4(v69, v70);
    }

    v54 = *(*(v0 + 1336) + 8);
    v54(*(v0 + 1352), *(v0 + 1328));
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v55 = sub_24AE83ED0();
    __swift_project_value_buffer(v55, qword_280D7A598);
    v56 = sub_24AE83EB0();
    v57 = sub_24AE84250();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 1344);
    v60 = *(v0 + 1328);
    if (v58)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_24AE43000, v56, v57, "This is *NOT* the first run since reboot", v61, 2u);
      MEMORY[0x24C233A80](v61, -1, -1);
    }

    v54(v59, v60);
    v62 = *(v0 + 1376);
    v54(*(v0 + 1360), *(v0 + 1328));
    sub_24AE567BC(v62, &qword_27EFBEA18, &qword_24AE87170);
    goto LABEL_43;
  }

  if (sub_24AE84540())
  {
    v21 = v0 + 896;
    goto LABEL_16;
  }

  *(v0 + 496) = v11;
  *(v0 + 504) = object;
  *(v0 + 512) = v10;
  *(v0 + 520) = v9;
  *(v0 + 528) = v20;
  *(v0 + 536) = v76;
  *(v0 + 544) = v79;
  *(v0 + 552) = v6;
  *(v0 + 560) = v77;
  *(v0 + 568) = v4;
  *(v0 + 576) = v16;
  *(v0 + 584) = v17;
  v64 = *(v0 + 1152);
  *(v0 + 592) = *(v0 + 1136);
  *(v0 + 608) = v64;
  v65 = *(v0 + 1184);
  *(v0 + 624) = *(v0 + 1168);
  *(v0 + 640) = v65;
  v66 = *(v0 + 560);
  *(v0 + 704) = *(v0 + 544);
  *(v0 + 720) = v66;
  v67 = *(v0 + 528);
  *(v0 + 672) = *(v0 + 512);
  *(v0 + 688) = v67;
  *(v0 + 656) = *(v0 + 496);
  sub_24AE5681C(v0 + 16, v0 + 736, &qword_27EFBEA28, &qword_24AE87188);
  sub_24AE4C3C8(v0 + 496, v0 + 816);
  v68 = swift_task_alloc();
  *(v0 + 1480) = v68;
  *v68 = v0;
  v68[1] = sub_24AE7A7F8;

  return sub_24AE7C3AC((v0 + 576), (v0 + 656));
}

uint64_t sub_24AE7A7F8()
{
  v1 = *v0;
  v2 = *(*v0 + 1320);

  v3 = v1[44];
  v1[28] = v1[43];
  v1[29] = v3;
  v1[30] = v1[45];
  v4 = v1[42];
  v1[26] = v1[41];
  v1[27] = v4;
  sub_24AE4C4CC((v1 + 26));
  sub_24AE567BC((v1 + 11), &qword_27EFBEA28, &qword_24AE87188);

  return MEMORY[0x2822009F8](sub_24AE7A940, v2, 0);
}

uint64_t sub_24AE7A940()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1617);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1416);
  v6 = *(v0 + 1616);
  *(v0 + 256) = *(v0 + 1408);
  *(v0 + 264) = v5;
  *(v0 + 272) = *(v0 + 1424);
  *(v0 + 288) = v4;
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  *(v0 + 312) = *(v0 + 1456);
  *(v0 + 328) = v1;
  if (v6)
  {
    sub_24AE4C4CC(v0 + 256);
  }

  else
  {
    v7 = SystemVersionNumber.description.getter();
    v9 = v8;
    sub_24AE4C4CC(v0 + 256);
    if (qword_280D7A568 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1384), qword_280D7A570);
    *(v0 + 1288) = v7;
    *(v0 + 1296) = v9;
    swift_beginAccess();
    sub_24AE83CE0();
    swift_endAccess();
  }

  sub_24AE83C40();
  if (qword_280D7A540 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 1400);
  v11 = *(v0 + 1392);
  v12 = *(v0 + 1384);
  v13 = __swift_project_value_buffer(v12, qword_280D7A548);
  swift_beginAccess();
  (*(v11 + 16))(v10, v13, v12);
  sub_24AE83CD0();
  (*(v11 + 8))(v10, v12);
  if (*(v0 + 1312))
  {
    sub_24AE83E70();
  }

  else
  {
    (*(*(v0 + 1336) + 56))(*(v0 + 1376), 1, 1, *(v0 + 1328));
  }

  v14 = *(v0 + 1376);
  v15 = *(v0 + 1368);
  v16 = *(v0 + 1336);
  v17 = *(v0 + 1328);
  (*(v16 + 16))(*(v0 + 1352), *(v0 + 1360), v17);
  sub_24AE5681C(v14, v15, &qword_27EFBEA18, &qword_24AE87170);
  if ((*(v16 + 48))(v15, 1, v17) == 1)
  {
    sub_24AE567BC(*(v0 + 1368), &qword_27EFBEA18, &qword_24AE87170);
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v18 = sub_24AE83ED0();
    __swift_project_value_buffer(v18, qword_280D7A598);
    v19 = sub_24AE83EB0();
    v20 = sub_24AE84250();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24AE43000, v19, v20, "No lastLaunchBootSessionUUID on record", v21, 2u);
      MEMORY[0x24C233A80](v21, -1, -1);
    }

    v22 = swift_task_alloc();
    *(v0 + 1592) = v22;
    *v22 = v0;
    v23 = sub_24AE7B934;
    goto LABEL_26;
  }

  (*(*(v0 + 1336) + 32))(*(v0 + 1344), *(v0 + 1368), *(v0 + 1328));
  sub_24AE83BE4(&qword_280D7A940, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  if ((sub_24AE83F90() & 1) == 0)
  {
    v22 = swift_task_alloc();
    *(v0 + 1568) = v22;
    *v22 = v0;
    v23 = sub_24AE7B6C0;
LABEL_26:
    v22[1] = v23;
    v35 = *(v0 + 1352);
    v36 = *(v0 + 1320);

    return sub_24AE82AF4(v35, v36);
  }

  v24 = *(*(v0 + 1336) + 8);
  v24(*(v0 + 1352), *(v0 + 1328));
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v25 = sub_24AE83ED0();
  __swift_project_value_buffer(v25, qword_280D7A598);
  v26 = sub_24AE83EB0();
  v27 = sub_24AE84250();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1328);
  if (v28)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24AE43000, v26, v27, "This is *NOT* the first run since reboot", v31, 2u);
    MEMORY[0x24C233A80](v31, -1, -1);
  }

  v24(v29, v30);
  v32 = *(v0 + 1376);
  v24(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v32, &qword_27EFBEA18, &qword_24AE87170);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24AE7AF78()
{
  v1 = *(*v0 + 1320);

  return MEMORY[0x2822009F8](sub_24AE7B088, v1, 0);
}

uint64_t sub_24AE7B088()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1619);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1520);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1618);
  *(v0 + 256) = *(v0 + 1488);
  *(v0 + 264) = v5;
  *(v0 + 272) = *(v0 + 1504);
  *(v0 + 288) = v4;
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  *(v0 + 312) = *(v0 + 1536);
  *(v0 + 328) = v1;
  if (v6)
  {
    sub_24AE4C4CC(v0 + 256);
  }

  else
  {
    v7 = SystemVersionNumber.description.getter();
    v9 = v8;
    sub_24AE4C4CC(v0 + 256);
    if (qword_280D7A568 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1384), qword_280D7A570);
    *(v0 + 1288) = v7;
    *(v0 + 1296) = v9;
    swift_beginAccess();
    sub_24AE83CE0();
    swift_endAccess();
  }

  sub_24AE83C40();
  if (qword_280D7A540 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 1400);
  v11 = *(v0 + 1392);
  v12 = *(v0 + 1384);
  v13 = __swift_project_value_buffer(v12, qword_280D7A548);
  swift_beginAccess();
  (*(v11 + 16))(v10, v13, v12);
  sub_24AE83CD0();
  (*(v11 + 8))(v10, v12);
  if (*(v0 + 1312))
  {
    sub_24AE83E70();
  }

  else
  {
    (*(*(v0 + 1336) + 56))(*(v0 + 1376), 1, 1, *(v0 + 1328));
  }

  v14 = *(v0 + 1376);
  v15 = *(v0 + 1368);
  v16 = *(v0 + 1336);
  v17 = *(v0 + 1328);
  (*(v16 + 16))(*(v0 + 1352), *(v0 + 1360), v17);
  sub_24AE5681C(v14, v15, &qword_27EFBEA18, &qword_24AE87170);
  if ((*(v16 + 48))(v15, 1, v17) == 1)
  {
    sub_24AE567BC(*(v0 + 1368), &qword_27EFBEA18, &qword_24AE87170);
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v18 = sub_24AE83ED0();
    __swift_project_value_buffer(v18, qword_280D7A598);
    v19 = sub_24AE83EB0();
    v20 = sub_24AE84250();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24AE43000, v19, v20, "No lastLaunchBootSessionUUID on record", v21, 2u);
      MEMORY[0x24C233A80](v21, -1, -1);
    }

    v22 = swift_task_alloc();
    *(v0 + 1592) = v22;
    *v22 = v0;
    v23 = sub_24AE7B934;
    goto LABEL_26;
  }

  (*(*(v0 + 1336) + 32))(*(v0 + 1344), *(v0 + 1368), *(v0 + 1328));
  sub_24AE83BE4(&qword_280D7A940, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  if ((sub_24AE83F90() & 1) == 0)
  {
    v22 = swift_task_alloc();
    *(v0 + 1568) = v22;
    *v22 = v0;
    v23 = sub_24AE7B6C0;
LABEL_26:
    v22[1] = v23;
    v35 = *(v0 + 1352);
    v36 = *(v0 + 1320);

    return sub_24AE82AF4(v35, v36);
  }

  v24 = *(*(v0 + 1336) + 8);
  v24(*(v0 + 1352), *(v0 + 1328));
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v25 = sub_24AE83ED0();
  __swift_project_value_buffer(v25, qword_280D7A598);
  v26 = sub_24AE83EB0();
  v27 = sub_24AE84250();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1328);
  if (v28)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24AE43000, v26, v27, "This is *NOT* the first run since reboot", v31, 2u);
    MEMORY[0x24C233A80](v31, -1, -1);
  }

  v24(v29, v30);
  v32 = *(v0 + 1376);
  v24(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v32, &qword_27EFBEA18, &qword_24AE87170);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24AE7B6C0()
{
  v1 = *v0;
  v2 = *(*v0 + 1352);
  v3 = *(*v0 + 1336);
  v4 = *(*v0 + 1328);
  v5 = *(*v0 + 1320);

  v6 = *(v3 + 8);
  *(v1 + 1576) = v6;
  *(v1 + 1584) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return MEMORY[0x2822009F8](sub_24AE7B844, v5, 0);
}

uint64_t sub_24AE7B844()
{
  (*(v0 + 1576))(*(v0 + 1344), *(v0 + 1328));
  v1 = *(v0 + 1376);
  (*(v0 + 1576))(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v1, &qword_27EFBEA18, &qword_24AE87170);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AE7B934()
{
  v1 = *v0;
  v2 = *(*v0 + 1352);
  v3 = *(*v0 + 1336);
  v4 = *(*v0 + 1328);
  v5 = *(*v0 + 1320);

  v6 = *(v3 + 8);
  *(v1 + 1600) = v6;
  *(v1 + 1608) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return MEMORY[0x2822009F8](sub_24AE7BAB8, v5, 0);
}

uint64_t sub_24AE7BAB8()
{
  v1 = *(v0 + 1376);
  (*(v0 + 1600))(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v1, &qword_27EFBEA18, &qword_24AE87170);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AE7BBB4()
{
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  __swift_project_value_buffer(v1, qword_280D7A598);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "Initial launch processing...", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  sub_24AE83BE4(&qword_280D7A510, v5, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_24AE7BD78;

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE7BD78()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AE4A7DC, v1, 0);
}

uint64_t sub_24AE7BE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7BF34, a3, 0);
}

uint64_t sub_24AE7BF34()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v24 = **(v0 + 96);
    v4 = sub_24AE84120();
    v5 = *(v4 - 8);
    v22 = *(v5 + 56);
    v21 = (v5 + 48);
    v20 = (v5 + 8);

    v6 = 32;
    v23 = v4;
    v25 = v2;
    while (1)
    {
      v26 = v3;
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      v27 = *(v2 + v6);
      v22(v10, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v27;
      sub_24AE5681C(v10, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v9) = (*v21)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v13 = *(v0 + 112);
      if (v9 == 1)
      {
        sub_24AE567BC(*(v0 + 112), &qword_27EFBE620, &qword_24AE860B0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE84110();
        (*v20)(v13, v4);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_24AE840E0();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_24AE87228;
      *(v17 + 24) = v11;

      if (v15 | v14)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v7;
      *(v0 + 88) = v24;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v8, &qword_27EFBE620, &qword_24AE860B0);
      v6 += 16;
      v2 = v25;
      v3 = v26 - 1;
      v4 = v23;
      if (v26 == 1)
      {

        break;
      }
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24AE7C288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 32) + **(a5 + 32));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_24AE4A7E0;

  return v10(ObjectType, a5);
}

uint64_t sub_24AE7C3AC(__int128 *a1, _OWORD *a2)
{
  *(v3 + 504) = a2;
  *(v3 + 512) = v2;
  *(v3 + 496) = a1;
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a1;
  *(v3 + 112) = a1[1];
  *(v3 + 128) = v4;
  v7 = a1[4];
  *(v3 + 144) = v5;
  *(v3 + 160) = v7;
  v8 = a2[3];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  return MEMORY[0x2822009F8](sub_24AE7C3FC, v2, 0);
}

uint64_t sub_24AE7C3FC()
{
  v22 = v0;
  v2 = v0[62];
  v1 = v0[63];
  v3 = v2[3];
  v20[2] = v2[2];
  v20[3] = v3;
  v4 = v2[4];
  v5 = v2[1];
  v20[0] = *v2;
  v20[1] = v5;
  v6 = v1[3];
  v21[2] = v1[2];
  v21[3] = v6;
  v21[4] = v1[4];
  v7 = *v1;
  v21[1] = v1[1];
  v20[4] = v4;
  v21[0] = v7;
  if (_s19FindMyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0(v20, v21))
  {
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v8 = sub_24AE83ED0();
    __swift_project_value_buffer(v8, qword_280D7A598);
    sub_24AE4C3C8((v0 + 12), (v0 + 42));
    sub_24AE4C3C8((v0 + 2), (v0 + 52));
    v9 = sub_24AE83EB0();
    v10 = sub_24AE84250();
    sub_24AE4C4CC((v0 + 12));
    sub_24AE4C4CC((v0 + 2));
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v21[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_24AE53C28(v0[12], v0[13], v21);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AE53C28(v0[2], v0[3], v21);
      v13 = "Migrating from %s to %s";
LABEL_10:
      _os_log_impl(&dword_24AE43000, v9, v10, v13, v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C233A80](v12, -1, -1);
      MEMORY[0x24C233A80](v11, -1, -1);
    }
  }

  else
  {
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v14 = sub_24AE83ED0();
    __swift_project_value_buffer(v14, qword_280D7A598);
    sub_24AE4C3C8((v0 + 12), (v0 + 22));
    sub_24AE4C3C8((v0 + 2), (v0 + 32));
    v9 = sub_24AE83EB0();
    v10 = sub_24AE84250();
    sub_24AE4C4CC((v0 + 12));
    sub_24AE4C4CC((v0 + 2));
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v21[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_24AE53C28(v0[12], v0[13], v21);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AE53C28(v0[2], v0[3], v21);
      v13 = "Back-migration from %s to %s";
      goto LABEL_10;
    }
  }

  v15 = v0[64];
  sub_24AE83BE4(&qword_280D7A510, v16, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
  v17 = swift_task_alloc();
  v0[65] = v17;
  v17[2] = v15;
  v17[3] = v0 + 12;
  v17[4] = v0 + 2;
  v18 = swift_task_alloc();
  v0[66] = v18;
  *v18 = v0;
  v18[1] = sub_24AE7C7B8;
  v24 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE7C7B8()
{
  v1 = *(*v0 + 512);

  return MEMORY[0x2822009F8](sub_24AE48510, v1, 0);
}

uint64_t sub_24AE7C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v5[52] = a2;
  v5[53] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7C994, a3, 0);
}

uint64_t sub_24AE7C994()
{
  v1 = *(v0 + 424);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v33 = **(v0 + 416);
    v32 = sub_24AE84120();
    v4 = *(v32 - 8);
    v31 = *(v4 + 56);
    v30 = (v4 + 48);
    v29 = (v4 + 8);

    v5 = 32;
    v34 = v2;
    while (1)
    {
      v35 = v5;
      v36 = v3;
      v9 = *(v0 + 448);
      v8 = *(v0 + 456);
      v11 = *(v0 + 432);
      v10 = *(v0 + 440);
      v37 = *(v2 + v5);
      v31(v8, 1, 1, v32);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v37;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[4];
      *(v12 + 96) = v11[3];
      *(v12 + 112) = v16;
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = *v11;
      v18 = v10[1];
      v17 = v10[2];
      v19 = v10[4];
      *(v12 + 176) = v10[3];
      *(v12 + 192) = v19;
      *(v12 + 144) = v18;
      *(v12 + 160) = v17;
      *(v12 + 128) = *v10;
      sub_24AE5681C(v8, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v10) = (*v30)(v9, 1, v32);
      swift_unknownObjectRetain_n();
      v20 = *(v0 + 440);
      v21 = *(v0 + 448);
      v22 = *(v0 + 432);
      if (v10 == 1)
      {
        sub_24AE4C3C8(v22, v0 + 16);
        sub_24AE4C3C8(v20, v0 + 96);
        sub_24AE567BC(v21, &qword_27EFBE620, &qword_24AE860B0);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE4C3C8(v22, v0 + 176);
        sub_24AE4C3C8(v20, v0 + 256);
        sub_24AE84110();
        (*v29)(v21, v32);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = sub_24AE840E0();
          v24 = v25;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v23 = 0;
      v24 = 0;
LABEL_10:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_24AE87200;
      *(v26 + 24) = v12;

      if (v24 | v23)
      {
        v6 = v0 + 336;
        *(v0 + 336) = 0;
        *(v0 + 344) = 0;
        *(v0 + 352) = v23;
        *(v0 + 360) = v24;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 456);
      *(v0 + 392) = 1;
      *(v0 + 400) = v6;
      *(v0 + 408) = v33;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v7, &qword_27EFBE620, &qword_24AE860B0);
      v5 = v35 + 16;
      v3 = v36 - 1;
      v2 = v34;
      if (v36 == 1)
      {

        break;
      }
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24AE7CD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, __int128 *a7)
{
  ObjectType = swift_getObjectType();
  v12 = a6[3];
  *(v7 + 48) = a6[2];
  *(v7 + 64) = v12;
  v13 = a6[1];
  *(v7 + 16) = *a6;
  *(v7 + 32) = v13;
  v14 = a7[4];
  *(v7 + 144) = a7[3];
  *(v7 + 160) = v14;
  v15 = a7[2];
  v16 = *a7;
  *(v7 + 112) = a7[1];
  *(v7 + 128) = v15;
  *(v7 + 80) = a6[4];
  *(v7 + 96) = v16;
  v19 = (*(a5 + 40) + **(a5 + 40));
  v17 = swift_task_alloc();
  *(v7 + 176) = v17;
  *v17 = v7;
  v17[1] = sub_24AE7CEB8;

  return v19(v7 + 16, v7 + 96, ObjectType, a5);
}

uint64_t sub_24AE7CEB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AE7CFCC()
{
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  __swift_project_value_buffer(v1, qword_280D7A598);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "First launch since reboot...", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  sub_24AE83BE4(&qword_280D7A510, v5, type metadata accessor for ActorServiceCollection, &protocol conformance descriptor for ActorServiceCollection);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_24AE498C4;

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE7D190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7D23C, a3, 0);
}

uint64_t sub_24AE7D23C()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v24 = **(v0 + 96);
    v4 = sub_24AE84120();
    v5 = *(v4 - 8);
    v22 = *(v5 + 56);
    v21 = (v5 + 48);
    v20 = (v5 + 8);

    v6 = 32;
    v23 = v4;
    v25 = v2;
    while (1)
    {
      v26 = v3;
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      v27 = *(v2 + v6);
      v22(v10, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v27;
      sub_24AE5681C(v10, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v9) = (*v21)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v13 = *(v0 + 112);
      if (v9 == 1)
      {
        sub_24AE567BC(*(v0 + 112), &qword_27EFBE620, &qword_24AE860B0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE84110();
        (*v20)(v13, v4);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_24AE840E0();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_24AE871D8;
      *(v17 + 24) = v11;

      if (v15 | v14)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v7;
      *(v0 + 88) = v24;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v8, &qword_27EFBE620, &qword_24AE860B0);
      v6 += 16;
      v2 = v25;
      v3 = v26 - 1;
      v4 = v23;
      if (v26 == 1)
      {

        break;
      }
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24AE7D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 48) + **(a5 + 48));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_24AE4A504;

  return v10(ObjectType, a5);
}

void *ActorServiceCollection.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorServiceCollection.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE7D740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v10 = sub_24AE84410();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7D810, a8, 0);
}

uint64_t sub_24AE7D810()
{
  sub_24AE845A0();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24AE7D8D0;
  v3 = v0[5];
  v2 = v0[6];

  return sub_24AE7EA44(v3, v2, 0, 0, 1);
}

uint64_t sub_24AE7D8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_24AE7DD30;
  }

  else
  {
    v7 = sub_24AE7DA58;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AE7DA58()
{
  v30 = v0;
  if ((sub_24AE84190() & 1) == 0)
  {
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v1 = sub_24AE83ED0();
    __swift_project_value_buffer(v1, qword_280D7A598);
    swift_unknownObjectRetain();
    v2 = sub_24AE83EB0();
    v3 = sub_24AE84240();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[8];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136446210;
      ObjectType = swift_getObjectType();
      v8 = (*(v4 + 24))(ObjectType, v4);
      v10 = sub_24AE53C28(v8, v9, &v29);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_24AE43000, v2, v3, "*** DEADLOCK *** in startup() for service: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C233A80](v6, -1, -1);
      MEMORY[0x24C233A80](v5, -1, -1);
    }

    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];
    swift_beginAccess();
    swift_unknownObjectRetain();
    v14 = sub_24AE830B4((v12 + 112), v13, v11);
    result = swift_unknownObjectRelease();
    v16 = *(*(v12 + 112) + 16);
    if (v16 < v14)
    {
      __break(1u);
      return result;
    }

    v17 = v0[8];
    sub_24AE833EC(v14, v16);
    swift_endAccess();
    v18 = swift_getObjectType();
    v19 = *(v17 + 24);
    v20 = v19(v18, v17);
    v22 = v21;
    v23 = v19(v18, v17);
    v25 = v24;
    sub_24AE834AC();
    v26 = swift_allocError();
    *v27 = v23;
    *(v27 + 8) = v25;
    *(v27 + 16) = 1;
    sub_24AE7DD94(v20, v22, v26);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_24AE7DD30()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24AE7DD94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8D0, &qword_24AE86540);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  swift_beginAccess();
  v12 = *(v3 + 128);
  if (*(v12 + 16))
  {

    v13 = sub_24AE475AC(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v16 = *(v15 + 16);
      if (v16)
      {
        v25 = a1;
        v26 = v4;
        v27 = a2;
        v19 = *(v9 + 16);
        v18 = v9 + 16;
        v17 = v19;
        v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
        v24 = v15;
        v21 = v15 + v20;
        v22 = *(v18 + 56);
        do
        {
          v17(v11, v21, v8);
          v28 = a3;
          v23 = a3;
          sub_24AE840F0();
          (*(v18 - 8))(v11, v8);
          v21 += v22;
          --v16;
        }

        while (v16);

        a2 = v27;
        a1 = v25;
      }

      else
      {
      }

      swift_beginAccess();

      sub_24AE502A4(0, a1, a2);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_24AE7DFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 56) + **(a3 + 56));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A504;

  return v8(ObjectType, a3);
}

void sub_24AE7E0C4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8D0, &qword_24AE86540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  swift_beginAccess();
  v9 = *(v2 + 128);
  if (*(v9 + 16))
  {

    v10 = sub_24AE475AC(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = *(v12 + 16);
      if (v13)
      {
        v21 = a1;
        v22 = a2;
        v16 = *(v6 + 16);
        v15 = v6 + 16;
        v14 = v16;
        v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
        v20[1] = v12;
        v18 = v12 + v17;
        v19 = *(v15 + 56);
        do
        {
          v14(v8, v18, v5);
          sub_24AE84100();
          (*(v15 - 8))(v8, v5);
          v18 += v19;
          --v13;
        }

        while (v13);

        a1 = v21;
        a2 = v22;
      }

      else
      {
      }

      swift_beginAccess();

      sub_24AE502A4(0, a1, a2);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_24AE7E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8D0, &qword_24AE86540);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = sub_24AE75B0C(v21);
  v13 = sub_24AE62DC4(v20, a3, a4);
  if (*v12)
  {
    v14 = v12;
    (*(v8 + 16))(v10, a1, v7);
    v15 = *v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_24AE61910(0, v15[2] + 1, 1, v15);
      *v14 = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_24AE61910((v17 > 1), v18 + 1, 1, v15);
      *v14 = v15;
    }

    v15[2] = v18 + 1;
    (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v10, v7);
    (v13)(v20, 0);
    return (v11)(v21, 0);
  }

  else
  {
    (v13)(v20, 0);
    return (v11)(v21, 0);
  }
}

uint64_t sub_24AE7E4DC()
{
  v0 = sub_24AE83D10();
  __swift_allocate_value_buffer(v0, qword_280D7A520);
  v1 = __swift_project_value_buffer(v0, qword_280D7A520);
  if (qword_280D7A5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A5C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AE7E5A4()
{
  v0 = sub_24AE83D10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  __swift_allocate_value_buffer(v4, qword_280D7A548);
  __swift_project_value_buffer(v4, qword_280D7A548);
  if (qword_280D7A518 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280D7A520);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24AE83CF0();
}

uint64_t sub_24AE7E714()
{
  v0 = sub_24AE83D10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  __swift_allocate_value_buffer(v4, qword_280D7A570);
  __swift_project_value_buffer(v4, qword_280D7A570);
  if (qword_280D7A518 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280D7A520);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24AE83CF0();
}

uint64_t sub_24AE7E884()
{
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  return sub_24AE84610();
}

uint64_t sub_24AE7E8EC(uint64_t a1)
{
  sub_24AE83FE0();

  return sub_24AE83FE0();
}

uint64_t sub_24AE7E93C(uint64_t a1)
{
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  return sub_24AE84610();
}

uint64_t sub_24AE7E9A0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24AE84540(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24AE84540();
    }
  }

  return result;
}

uint64_t sub_24AE7EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AE843F0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AE7EB44, 0, 0);
}

uint64_t sub_24AE7EB44()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24AE84410();
  v5 = sub_24AE83BE4(&qword_280D7A048, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24AE84580();
  sub_24AE83BE4(&unk_280D7A050, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24AE84420();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24AE7ECDC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24AE7ECDC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AE7EE98, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AE7EE98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AE7EF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_24AE83EA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBEA40, &qword_24AE87288);
  v47 = v4;
  result = sub_24AE84460();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_24AE83BE4(&qword_280D7A038, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24AE83F70();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24AE7F474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_24AE84460();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_24AE7F714(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v48 = v10;
  result = sub_24AE84460();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v44 = v6;
    v45 = (v11 + 16);
    v46 = v13;
    v47 = v11;
    v49 = (v11 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        (*v49)(v50, v34, v51);
      }

      else
      {
        (*v45)(v50, v34, v51);
      }

      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = (*v49)(*(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_24AE7FA98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA38, &qword_24AE87248);
  v37 = v4;
  result = sub_24AE84460();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_24AE7FDA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_24AE475AC(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_24AE81430(a5, a6, a7, a8);
      goto LABEL_9;
    }

    sub_24AE7F714(v21, a4 & 1, a5, a6, a7, a8);
    v24 = sub_24AE475AC(a2, a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_17:
    sub_24AE84570();
    __break(1u);
    return;
  }

LABEL_9:
  v26 = a1;
  v27 = *v11;
  if (v22)
  {
    v28 = v27[7];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v30 = *(v29 - 8);
    v31 = *(v30 + 40);
    v32 = v29;
    v33 = v28 + *(v30 + 72) * v18;

    v31(v33, v26, v32);
  }

  else
  {
    sub_24AE806EC(v18, a2, a3, a1, v27, a5, a6);
  }
}

void sub_24AE7FFD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_24AE475AC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_24AE7F474(v20, a4 & 1, a5, a6);
      v15 = sub_24AE475AC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_24AE84570();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_24AE80C48(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_24AE80178(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AE83EA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24AE541D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24AE8087C();
      goto LABEL_7;
    }

    sub_24AE7EF98(v17, a3 & 1);
    v28 = sub_24AE541D0(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24AE805A4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_24AE8041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24AE475AC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_24AE7FA98(v18, a5 & 1);
      v13 = sub_24AE475AC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_24AE84570();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_24AE816AC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_24AE805A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24AE83EA0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_24AE806A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_24AE806EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_24AE8087C()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_24AE83EA0();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBEA40, &qword_24AE87288);
  v4 = *v0;
  v5 = sub_24AE84450();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_24AE80C48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24AE84450();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_24AE80DCC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE7708C(a1, a2, v6, v7, v8);
}

uint64_t dispatch thunk of ActorServiceCollection.startup()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AE4A7E0;

  return v4();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AE80FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AE81044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AE81098()
{
  result = qword_280D7A738;
  if (!qword_280D7A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A738);
  }

  return result;
}

uint64_t sub_24AE810EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE7743C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AE811C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return sub_24AE7775C(a1, v4, v5, v6);
}

uint64_t sub_24AE81274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AE4A504;

  return sub_24AE7D740(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AE81360(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE7DFA0(a1, v5, v4);
}

void sub_24AE81430(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *v4;
  v10 = sub_24AE84450();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v7;
    v12 = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v14)
    {
      memmove(v12, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }
}

void sub_24AE816AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA38, &qword_24AE87248);
  v2 = *v0;
  v3 = sub_24AE84450();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_24AE81824(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AE845F0();
  sub_24AE83FE0();
  v8 = sub_24AE84610();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AE84540() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AE82030(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AE81974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  v11 = sub_24AE84610();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_24AE84540() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_24AE84540() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_24AE821B0(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_24AE81B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  result = sub_24AE84360();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AE81DAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA30, &qword_24AE87240);
  result = sub_24AE84360();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_24AE845F0();
      sub_24AE83FE0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_24AE82030(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AE81B4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24AE8237C();
      goto LABEL_16;
    }

    sub_24AE82644(v8 + 1);
  }

  v10 = *v4;
  sub_24AE845F0();
  sub_24AE83FE0();
  v11 = sub_24AE84610();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_24AE84540() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24AE84560();
  __break(1u);
}

void sub_24AE821B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_24AE81DAC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_24AE824D8();
      goto LABEL_22;
    }

    sub_24AE8287C(v12 + 1);
  }

  v14 = *v6;
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  v15 = sub_24AE84610();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == result && v20[1] == a2;
      if (v23 || (sub_24AE84540() & 1) != 0)
      {
        v24 = v21 == a3 && v22 == a4;
        if (v24 || (sub_24AE84540() & 1) != 0)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    sub_24AE84560();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }
}

void sub_24AE8237C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  v2 = *v0;
  v3 = sub_24AE84350();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24AE824D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA30, &qword_24AE87240);
  v2 = *v0;
  v3 = sub_24AE84350();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_24AE82644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  result = sub_24AE84360();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24AE845F0();

      sub_24AE83FE0();
      result = sub_24AE84610();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AE8287C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA30, &qword_24AE87240);
  result = sub_24AE84360();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_24AE845F0();

      sub_24AE83FE0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AE82AF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_24AE82B10, a2, 0);
}

uint64_t sub_24AE82B10()
{
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  __swift_project_value_buffer(v1, qword_280D7A598);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "This is the first run since reboot", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  v5 = sub_24AE83E80();
  v7 = v6;
  if (qword_280D7A540 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  __swift_project_value_buffer(v8, qword_280D7A548);
  v0[5] = v5;
  v0[6] = v7;
  swift_beginAccess();
  sub_24AE83CE0();
  swift_endAccess();
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_24AE82D00;

  return sub_24AE7CFAC();
}

uint64_t sub_24AE82D00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AE82DF4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA08, &unk_24AE87150);
  v3 = sub_24AE83FC0();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 24);
  if (v7(ObjectType, a2) == v3 && v8 == v5)
  {

LABEL_8:

    return v7(ObjectType, a2);
  }

  v10 = sub_24AE84540();

  if (v10)
  {
    goto LABEL_8;
  }

  v12 = v7(ObjectType, a2);
  MEMORY[0x24C232D80](23328, 0xE200000000000000);
  MEMORY[0x24C232D80](v3, v5);

  MEMORY[0x24C232D80](93, 0xE100000000000000);
  return v12;
}

uint64_t sub_24AE82F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *i;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 24);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    v11 = v10;
    v12 = swift_getObjectType();
    if (v9 == (*(a3 + 24))(v12, a3) && v11 == v13)
    {
      break;
    }

    v15 = sub_24AE84540();
    swift_unknownObjectRelease();

    if (v15)
    {
      return v4;
    }

    if (v17 == ++v4)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_24AE830B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_24AE82F4C(*a1, a2, a3);
  v26 = result;
  if (v3)
  {
    return v26;
  }

  if (v6)
  {
    return v4[2];
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = v4 + 2;
    v8 = v4[2];
    if (v7 == v8)
    {
      return v26;
    }

    v10 = 2 * result;
    while (v7 < v8)
    {
      v11 = v4[v10 + 7];
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 24);
      swift_unknownObjectRetain();
      v14 = v13(ObjectType, v11);
      v16 = v15;
      v17 = swift_getObjectType();
      if (v14 == (*(a3 + 24))(v17) && v16 == v18)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = sub_24AE84540();
        swift_unknownObjectRelease();

        if ((v20 & 1) == 0)
        {
          v21 = v26;
          if (v7 != v26)
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            if (v26 >= *v9)
            {
              goto LABEL_27;
            }

            if (v7 >= *v9)
            {
              goto LABEL_28;
            }

            v22 = *&v4[2 * v26 + 4];
            v23 = *&v4[v10 + 6];
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_24AE82AE0(v4);
            }

            *&v4[2 * v26 + 4] = v23;
            result = swift_unknownObjectRelease();
            if (v7 >= v4[2])
            {
              goto LABEL_29;
            }

            *&v4[v10 + 6] = v22;
            result = swift_unknownObjectRelease();
            *a1 = v4;
            v21 = v26;
          }

          v26 = v21 + 1;
        }
      }

      ++v7;
      v9 = v4 + 2;
      v8 = v4[2];
      v10 += 2;
      if (v7 == v8)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24AE8331C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
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

unint64_t sub_24AE833EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24AE617DC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_24AE8331C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_24AE834AC()
{
  result = qword_280D7A930;
  if (!qword_280D7A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A930);
  }

  return result;
}

uint64_t sub_24AE83500(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE79040(a1, a2, v7, v6);
}

uint64_t sub_24AE835B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE79448(a1, v4, v5, v6, v7);
}

uint64_t sub_24AE8367C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AE4A7E0;

  return sub_24AE6FAD4(a1, v4);
}

uint64_t sub_24AE83734(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A504;

  return sub_24AE7D190(a1, a2, v2);
}

uint64_t sub_24AE837E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE7D590(a1, v4, v5, v7, v6);
}

uint64_t sub_24AE838A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE7C8E4(a1, a2, v6, v7, v8);
}

uint64_t sub_24AE83964(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE7CD4C(a1, v4, v5, v6, v7, (v1 + 48), (v1 + 128));
}

uint64_t sub_24AE83A2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE7BE88(a1, a2, v2);
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AE83B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE7C288(a1, v4, v5, v7, v6);
}

uint64_t sub_24AE83BE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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