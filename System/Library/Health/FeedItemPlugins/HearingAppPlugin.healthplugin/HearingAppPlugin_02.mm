uint64_t sub_29D610F50(void *a1)
{
  v2 = sub_29D65FCA4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65FCC4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v12 = sub_29D6602B4();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_29D612370;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A24327F8;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_29D65FCB4();
  v17[1] = MEMORY[0x29EDCA190];
  sub_29D612390();
  sub_29D6123E8(0, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D61244C();
  sub_29D660484();
  MEMORY[0x29ED62660](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_29D611204(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  sub_29D5F3928(1u);
  v4 = objc_allocWithZone(sub_29D65E004());
  v7 = sub_29D65DFF4();
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D61142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();

  return v6;
}

uint64_t sub_29D6114E8()
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D6115B4()
{
  sub_29D6124D4(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

id sub_29D611688()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D6118C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();
  v8 = v7;

  v9 = v6 == a1 && v8 == a2;
  if (v9 || (sub_29D660694() & 1) != 0)
  {

    return 0;
  }

  return v6;
}

uint64_t sub_29D6119C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();
  v8 = v7;

  v9 = v6 == a1 && v8 == a2;
  if (v9 || (sub_29D660694() & 1) != 0)
  {

    return 0;
  }

  return v6;
}

char *sub_29D611AC0(float a1, float a2)
{
  sub_29D660554();

  v4 = sub_29D660674();
  MEMORY[0x29ED62350](v4);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v5 = sub_29D660674();
  MEMORY[0x29ED62350](v5);

  MEMORY[0x29ED62350](0x454C5449545FLL, 0xE600000000000000);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_29D65DA74();
  v29 = v10;
  v30 = v9;

  sub_29D660554();

  v11 = sub_29D660674();
  MEMORY[0x29ED62350](v11);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v12 = sub_29D660674();
  MEMORY[0x29ED62350](v12);

  MEMORY[0x29ED62350](0x45554C41565FLL, 0xE600000000000000);
  v13 = [v7 bundleForClass_];
  v14 = sub_29D65DA74();
  v16 = v15;

  sub_29D660554();

  v17 = sub_29D660674();
  MEMORY[0x29ED62350](v17);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v18 = sub_29D660674();
  MEMORY[0x29ED62350](v18);

  MEMORY[0x29ED62350](0x474E494E5241575FLL, 0xE800000000000000);
  v19 = sub_29D6118C8(0x4E4F4954434553, 0xE700000000000000);
  v21 = v20;

  v22 = objc_opt_self();
  v23 = [v22 hk_hearingHealthKeyColor];
  v24 = [v22 secondarySystemBackgroundColor];
  v25 = 0.0;
  if (a1 > 0.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = 0.0;
  }

  if (v26 > 1.0)
  {
    v26 = 1.0;
  }

  if (a2 > 0.0)
  {
    v25 = a2;
  }

  if (v25 > 1.0)
  {
    v25 = 1.0;
  }

  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v14;
  v31[3] = v16;
  v31[4] = v19;
  v31[5] = v21;
  v32 = 1;
  if ((1.0 - v26) < v25)
  {
    v25 = 1.0 - v26;
  }

  v33 = v26;
  v34 = v25;
  v35 = v23;
  v36 = v24;
  v37 = 0x4010000000000000;
  v27 = objc_allocWithZone(type metadata accessor for SoundLevelView());
  return SoundLevelView.init(model:)(v31);
}

char *sub_29D611F18(float a1, float a2)
{
  sub_29D660554();

  v4 = sub_29D660674();
  MEMORY[0x29ED62350](v4);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v5 = sub_29D660674();
  MEMORY[0x29ED62350](v5);

  MEMORY[0x29ED62350](0x454C5449545FLL, 0xE600000000000000);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_29D65DA74();
  v29 = v10;
  v30 = v9;

  sub_29D660554();

  v11 = sub_29D660674();
  MEMORY[0x29ED62350](v11);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v12 = sub_29D660674();
  MEMORY[0x29ED62350](v12);

  MEMORY[0x29ED62350](0x45554C41565FLL, 0xE600000000000000);
  v13 = [v7 bundleForClass_];
  v14 = sub_29D65DA74();
  v16 = v15;

  sub_29D660554();

  v17 = sub_29D660674();
  MEMORY[0x29ED62350](v17);

  MEMORY[0x29ED62350](0x54524148435FLL, 0xE600000000000000);
  v18 = sub_29D660674();
  MEMORY[0x29ED62350](v18);

  MEMORY[0x29ED62350](0x474E494E5241575FLL, 0xE800000000000000);
  v19 = sub_29D6119C4(0x4E4F4954434553, 0xE700000000000000);
  v21 = v20;

  v22 = objc_opt_self();
  v23 = [v22 hk_hearingHealthKeyColor];
  v24 = [v22 secondarySystemBackgroundColor];
  v25 = 0.0;
  if (a1 > 0.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = 0.0;
  }

  if (v26 > 1.0)
  {
    v26 = 1.0;
  }

  if (a2 > 0.0)
  {
    v25 = a2;
  }

  if (v25 > 1.0)
  {
    v25 = 1.0;
  }

  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v14;
  v31[3] = v16;
  v31[4] = v19;
  v31[5] = v21;
  v32 = 1;
  if ((1.0 - v26) < v25)
  {
    v25 = 1.0 - v26;
  }

  v33 = v26;
  v34 = v25;
  v35 = v23;
  v36 = v24;
  v37 = 0x4010000000000000;
  v27 = objc_allocWithZone(type metadata accessor for SoundLevelView());
  return SoundLevelView.init(model:)(v31);
}

uint64_t sub_29D612378(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D612390()
{
  result = qword_2A17AC0F0;
  if (!qword_2A17AC0F0)
  {
    sub_29D65FCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC0F0);
  }

  return result;
}

void sub_29D6123E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D61244C()
{
  result = qword_2A17AC100;
  if (!qword_2A17AC100)
  {
    sub_29D6123E8(255, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC100);
  }

  return result;
}

void sub_29D6124D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D612674(uint64_t a1)
{
  if (sub_29D65EC64() == 1)
  {
    sub_29D6128C0(a1);
    sub_29D5FA89C(0);
    sub_29D61599C(&qword_2A17AC5C8, sub_29D5FA89C, MEMORY[0x29EDC2110]);
    sub_29D65E674();

    sub_29D65E644();

    sub_29D65E5F4();

    sub_29D65E654();
  }

  else
  {
    sub_29D65E5F4();
    swift_allocObject();
    sub_29D65E5E4();
    sub_29D65E674();

    sub_29D65E644();

    sub_29D5FA89C(0);
    sub_29D61599C(&qword_2A17AC5C8, sub_29D5FA89C, MEMORY[0x29EDC2110]);

    sub_29D65E664();
  }

  sub_29D5FA990(0);
  sub_29D61599C(&qword_2A17AC5D8, sub_29D5FA990, MEMORY[0x29EDC22A8]);

  v2 = sub_29D65E644();

  return v2;
}

uint64_t sub_29D6128C0(uint64_t a1)
{
  v70 = *v1;
  v3 = v70;
  v94 = sub_29D65EC74();
  v92 = *(v94 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v94, v4);
  v91 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61535C(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v90 = &v69 - v8;
  v9 = sub_29D6601A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614D5C(0);
  v71 = v14;
  v72 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614F30(0);
  v74 = v18;
  v75 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61500C(0);
  v23 = *(v22 - 8);
  v77 = v22;
  v78 = v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6150B8(0);
  v28 = *(v27 - 8);
  v79 = v27;
  v80 = v28;
  MEMORY[0x2A1C7C4A8](v27, v29);
  v73 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D615270(0);
  v32 = *(v31 - 8);
  v83 = v31;
  v84 = v32;
  MEMORY[0x2A1C7C4A8](v31, v33);
  v76 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61553C(0);
  v86 = v35;
  v88 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v82 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61563C(0);
  v87 = v38;
  v89 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v39);
  v85 = &v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v41 = sub_29D65EC54();
  v42 = sub_29D65EC54();
  sub_29D5ED310();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  *(v43 + 32) = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_29D6601C4();

  *(swift_allocObject() + 16) = v3;
  sub_29D614E48(0);
  sub_29D61599C(&qword_2A17AC998, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29D61599C(&qword_2A17AC9A0, sub_29D614E48, MEMORY[0x29EDB8AC8]);
  sub_29D65F964();

  (*(v10 + 8))(v13, v9);
  sub_29D660194();
  sub_29D5DF210(0, &qword_2A17AC108, MEMORY[0x29EDC9F18]);
  v44 = MEMORY[0x29EDB8928];
  sub_29D61599C(&qword_2A17AC9B0, sub_29D614D5C, MEMORY[0x29EDB8928]);
  v45 = v71;
  sub_29D65F914();
  (*(v72 + 8))(v17, v45);
  *(swift_allocObject() + 16) = v41;
  sub_29D660184();
  sub_29D61599C(&qword_2A17AC9C0, sub_29D614F30, MEMORY[0x29EDC1AC0]);
  v46 = v41;
  v47 = v74;
  sub_29D65F954();

  (*(v75 + 8))(v21, v47);
  v48 = MEMORY[0x29EDB8908];
  sub_29D61599C(&qword_2A17AC9D8, sub_29D61500C, MEMORY[0x29EDB8908]);
  sub_29D61599C(&qword_2A17AC9E0, MEMORY[0x29EDC2E78], MEMORY[0x29EDC2E70]);
  v49 = v73;
  v50 = v77;
  sub_29D65F9A4();
  (*(v78 + 8))(v26, v50);
  *(swift_allocObject() + 16) = v70;
  sub_29D61535C(0, &qword_2A17AC9F8, sub_29D6153C0, MEMORY[0x29EDB8AB0]);
  sub_29D61599C(&qword_2A17ACA08, sub_29D6150B8, MEMORY[0x29EDB88E0]);
  sub_29D6154B4();
  v51 = v76;
  v52 = v79;
  sub_29D65F964();

  (*(v80 + 8))(v49, v52);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v53 = sub_29D6602B4();
  v95 = v53;
  v54 = sub_29D6602A4();
  v55 = v90;
  (*(*(v54 - 8) + 56))(v90, 1, 1, v54);
  sub_29D61599C(&qword_2A17ACA20, sub_29D615270, v44);
  sub_29D615470(&qword_2A17AC768, &qword_2A17AC0E8, 0x29EDCA548, MEMORY[0x29EDCA280]);
  v57 = v82;
  v56 = v83;
  sub_29D65F984();
  sub_29D615730(v55);

  (*(v84 + 8))(v51, v56);
  v59 = v91;
  v58 = v92;
  v60 = v94;
  (*(v92 + 16))(v91, v81, v94);
  v61 = v58;
  v62 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v63 = swift_allocObject();
  (*(v61 + 32))(v63 + v62, v59, v60);
  sub_29D61535C(0, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
  sub_29D61599C(&qword_2A17ACA30, sub_29D61553C, MEMORY[0x29EDB89E8]);
  v65 = v85;
  v64 = v86;
  sub_29D65F954();

  (*(v88 + 8))(v57, v64);
  sub_29D61599C(&qword_2A17ACA38, sub_29D61563C, v48);
  v66 = v87;
  sub_29D65F924();
  (*(v89 + 8))(v65, v66);
  sub_29D65ECB4();
  sub_29D65E6B4();

  sub_29D5FA930(0);
  sub_29D61599C(&qword_2A17AC5C0, sub_29D5FA930, MEMORY[0x29EDC1E90]);
  v67 = sub_29D65E6C4();

  return v67;
}

uint64_t sub_29D6135FC(void **a1, uint64_t a2)
{
  v3 = sub_29D65F314();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_29D6600C4();
  v9 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F2A4();
  v10 = v8;
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = v14;
    v32 = v14;
    *v13 = 136446466;
    v16 = sub_29D6607A4();
    v18 = sub_29D64A1D0(v16, v17, &v32);
    v29 = v3;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v21 = MEMORY[0x2A1C7C4A8](ErrorValue, v31);
    (*(v23 + 16))(&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v24 = sub_29D65FF84();
    v26 = sub_29D64A1D0(v24, v25, &v32);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[%{public}s] Error fetching db changes: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v15, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);

    (*(v4 + 8))(v7, v29);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_29D614EB0(0);
  sub_29D65F874();
}

double sub_29D613958()
{
  sub_29D5ED310();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  *(v0 + 32) = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_29D6601B4();

  return result;
}

uint64_t sub_29D613A08(void **a1, uint64_t a2)
{
  v3 = sub_29D65F314();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_29D6600C4();
  v9 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F2A4();
  v10 = v8;
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v9;
    v15 = v14;
    v32 = v14;
    *v13 = 136446466;
    v16 = sub_29D6607A4();
    v18 = sub_29D64A1D0(v16, v17, &v32);
    v29 = v3;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v21 = MEMORY[0x2A1C7C4A8](ErrorValue, v31);
    (*(v23 + 16))(&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v24 = sub_29D65FF84();
    v26 = sub_29D64A1D0(v24, v25, &v32);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[%{public}s] Error fetching sample counts: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v15, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);

    (*(v4 + 8))(v7, v29);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v32 = sub_29D5E23F0(MEMORY[0x29EDCA190]);
  sub_29D6153C0(0);
  sub_29D65F864();
}

uint64_t sub_29D613D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a2;
  v5 = sub_29D65EF84();
  v93 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v92 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65E974();
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v91 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29D61535C(0, &qword_2A17ACA40, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v88 = v70 - v14;
  v15 = sub_29D65EC74();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v80 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61535C(0, &qword_2A17ACA48, MEMORY[0x29EDC7770], v11);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v77 = v70 - v20;
  v79 = sub_29D65F364();
  v78 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v21);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D65F324();
  v76 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D65E9E4();
  v86 = *(v28 - 8);
  v87 = v28;
  MEMORY[0x2A1C7C4A8](v28, v29);
  v84 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29D65F414();
  v83 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94, v31);
  v95 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  sub_29D6600C4();
  v96 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  v34 = [swift_getObjCClassFromMetadata() audiogramSampleType];
  v35 = v34;
  if (!*(v33 + 16) || (v36 = sub_29D5E1C04(v34), (v37 & 1) == 0))
  {

    goto LABEL_11;
  }

  v38 = *(*(v33 + 56) + 8 * v36);

  if (v38 < 1)
  {
LABEL_11:

    v46 = MEMORY[0x29EDCA190];
    goto LABEL_12;
  }

  v71 = v24;
  v73 = v5;
  v39 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v39 setNumberStyle_];
  [v39 setMaximumFractionDigits_];
  sub_29D65F404();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v74 = a3;
  v40 = sub_29D65DA74();
  v42 = v41;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F3F4();
  v43 = sub_29D660134();
  v72 = v39;
  v44 = [v39 stringFromNumber_];

  if (v44)
  {
    sub_29D65FF64();
  }

  v47 = v95;
  sub_29D65F3B4();
  v97 = v38;
  v48 = sub_29D660674();
  v50 = v49;
  v97 = v40;
  v98 = v42;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](v48, v50);

  v70[1] = v97;
  v70[0] = v98;
  v51 = v94;
  v99 = v94;
  v100 = MEMORY[0x29EDC7800];
  v52 = sub_29D5E3C20(&v97);
  v53 = v83;
  (*(v83 + 16))(v52, v47, v51);
  v54 = MEMORY[0x29EDC9E90];
  sub_29D61535C(0, &qword_2A17ACA50, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D65F374();
  v55 = swift_allocObject();
  v75 = xmmword_29D661D90;
  *(v55 + 16) = xmmword_29D661D90;
  v56 = v76;
  v57 = v71;
  (*(v76 + 104))(v27, *MEMORY[0x29EDC7768], v71);
  v58 = sub_29D65F334();
  (*(*(v58 - 8) + 56))(v77, 1, 1, v58);
  sub_29D65F354();
  sub_29D65F344();
  (*(v78 + 8))(v23, v79);
  (*(v56 + 8))(v27, v57);
  v60 = v81;
  v59 = v82;
  v61 = v80;
  (*(v81 + 16))(v80, v85, v82);
  v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v63 = swift_allocObject();
  (*(v60 + 32))(v63 + v62, v61, v59);
  v64 = sub_29D65F3A4();
  (*(*(v64 - 8) + 56))(v88, 1, 1, v64);
  (*(v89 + 104))(v91, *MEMORY[0x29EDC22C8], v90);
  (*(v93 + 104))(v92, *MEMORY[0x29EDC2A38], v73);
  v65 = v84;
  sub_29D65E9D4();
  sub_29D61535C(0, &qword_2A17AC5E0, MEMORY[0x29EDC2240], v54);
  sub_29D65E904();
  v46 = swift_allocObject();
  *(v46 + 16) = v75;
  sub_29D615934(0);
  v66 = swift_allocObject();
  *(v66 + 16) = v75;
  v67 = v87;
  *(v66 + 56) = v87;
  *(v66 + 64) = sub_29D61599C(&qword_2A17ACA58, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
  v68 = sub_29D5E3C20((v66 + 32));
  v69 = v86;
  (*(v86 + 16))(v68, v65, v67);
  sub_29D65E8E4();

  (*(v69 + 8))(v65, v67);
  (*(v53 + 8))(v95, v94);

  a3 = v74;
LABEL_12:
  *a3 = v46;
  return result;
}

void sub_29D614968(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29D65EC54();
  v3 = objc_allocWithZone(type metadata accessor for AudiogramAllDataViewController(0));
  v6 = sub_29D630740(v2);
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D614A8C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F074();
  sub_29D660254();
}

uint64_t sub_29D614B40(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D65E9A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65E984();
  v7 = sub_29D65E994();
  (*(v3 + 8))(v6, v2);

  return v7;
}

uint64_t sub_29D614C8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D614D04()
{
  v1 = *(*v0 + 16);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

void sub_29D614D5C(uint64_t a1)
{
  if (!qword_2A17AC980)
  {
    sub_29D6601A4();
    sub_29D614E48(255);
    sub_29D61599C(&qword_2A17AC998, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
    sub_29D61599C(&qword_2A17AC9A0, sub_29D614E48, MEMORY[0x29EDB8AC8]);
    v1 = sub_29D65F7B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC980);
    }
  }
}

void sub_29D614E48(uint64_t a1)
{
  if (!qword_2A17AC988)
  {
    sub_29D614EB0(255);
    v1 = sub_29D65F884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC988);
    }
  }
}

void sub_29D614EB0(uint64_t a1)
{
  if (!qword_2A17AC990)
  {
    sub_29D660194();
    sub_29D5DF210(255, &qword_2A17AC108, MEMORY[0x29EDC9F18]);
    v1 = sub_29D660754();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC990);
    }
  }
}

void sub_29D614F30(uint64_t a1)
{
  if (!qword_2A17AC9A8)
  {
    sub_29D614D5C(255);
    sub_29D660194();
    sub_29D5DF210(255, &qword_2A17AC108, MEMORY[0x29EDC9F18]);
    sub_29D61599C(&qword_2A17AC9B0, sub_29D614D5C, MEMORY[0x29EDB8928]);
    v1 = sub_29D65F784();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC9A8);
    }
  }
}

void sub_29D61500C(uint64_t a1)
{
  if (!qword_2A17AC9B8)
  {
    sub_29D614F30(255);
    sub_29D660184();
    sub_29D61599C(&qword_2A17AC9C0, sub_29D614F30, MEMORY[0x29EDC1AC0]);
    v1 = sub_29D65F794();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC9B8);
    }
  }
}

void sub_29D6150B8(uint64_t a1)
{
  if (!qword_2A17AC9C8)
  {
    sub_29D660184();
    sub_29D6151A4(255);
    sub_29D61599C(&qword_2A17AC9E0, MEMORY[0x29EDC2E78], MEMORY[0x29EDC2E70]);
    sub_29D61599C(&qword_2A17AC9E8, sub_29D6151A4, MEMORY[0x29EDB88D8]);
    v1 = sub_29D65F774();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC9C8);
    }
  }
}

void sub_29D6151A4(uint64_t a1)
{
  if (!qword_2A17AC9D0)
  {
    sub_29D61500C(255);
    sub_29D5DF210(255, &qword_2A17AC108, MEMORY[0x29EDC9F18]);
    sub_29D61599C(&qword_2A17AC9D8, sub_29D61500C, MEMORY[0x29EDB8908]);
    v1 = sub_29D65F764();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC9D0);
    }
  }
}

void sub_29D615270(uint64_t a1)
{
  if (!qword_2A17AC9F0)
  {
    sub_29D6150B8(255);
    sub_29D61535C(255, &qword_2A17AC9F8, sub_29D6153C0, MEMORY[0x29EDB8AB0]);
    sub_29D61599C(&qword_2A17ACA08, sub_29D6150B8, MEMORY[0x29EDB88E0]);
    sub_29D6154B4();
    v1 = sub_29D65F7B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC9F0);
    }
  }
}

void sub_29D61535C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6153C0(uint64_t a1)
{
  if (!qword_2A17ACA00)
  {
    sub_29D5DF448(255, &qword_2A1A1E700, 0x29EDBAD78);
    sub_29D615470(&qword_2A1A1E6F8, &qword_2A1A1E700, 0x29EDBAD78, MEMORY[0x29EDCA2F0]);
    v1 = sub_29D65FEC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACA00);
    }
  }
}

uint64_t sub_29D615470(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D5DF448(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6154B4()
{
  result = qword_2A17ACA10;
  if (!qword_2A17ACA10)
  {
    sub_29D61535C(255, &qword_2A17AC9F8, sub_29D6153C0, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA10);
  }

  return result;
}

void sub_29D61553C(uint64_t a1)
{
  if (!qword_2A17ACA18)
  {
    sub_29D615270(255);
    sub_29D5DF448(255, &qword_2A17AC0E8, 0x29EDCA548);
    sub_29D61599C(&qword_2A17ACA20, sub_29D615270, MEMORY[0x29EDB8928]);
    sub_29D615470(&qword_2A17AC768, &qword_2A17AC0E8, 0x29EDCA548, MEMORY[0x29EDCA280]);
    v1 = sub_29D65F804();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACA18);
    }
  }
}

void sub_29D61563C(uint64_t a1)
{
  if (!qword_2A17ACA28)
  {
    sub_29D61553C(255);
    sub_29D61535C(255, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
    sub_29D61599C(&qword_2A17ACA30, sub_29D61553C, MEMORY[0x29EDB89E8]);
    v1 = sub_29D65F794();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACA28);
    }
  }
}

uint64_t sub_29D615730(uint64_t a1)
{
  sub_29D61535C(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D6157BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D65EC74() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D613D64(a1, v6, a2);
}

uint64_t sub_29D61583C()
{
  v1 = sub_29D65EC74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

void sub_29D6158C4(void *a1)
{
  sub_29D65EC74();

  sub_29D614968(a1);
}

void sub_29D615934(uint64_t a1)
{
  if (!qword_2A17AC570)
  {
    sub_29D5DF210(255, &qword_2A17AC578, MEMORY[0x29EDC18F8]);
    v1 = sub_29D660684();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC570);
    }
  }
}

uint64_t sub_29D61599C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6159E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D65F414();
  v3 = MEMORY[0x29EDC7800];
  a1[3] = v2;
  a1[4] = v3;
  sub_29D5E3C20(a1);
  sub_29D65F3E4();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return sub_29D65F3F4();
}

uint64_t sub_29D615A50()
{
  v1 = *(v0 + 8);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D615A80(uint64_t a1)
{
  v2 = sub_29D607148();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D615ACC(void *a1, void *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a2[5];
  v5 = a2[6];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v6 || (v7 = sub_29D660694(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_29D660694();
    }
  }

  return result;
}

uint64_t sub_29D615B70()
{
  sub_29D660724();
  sub_29D65FFA4();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D615BD8(uint64_t a1)
{
  sub_29D65FFA4();

  return sub_29D65FFA4();
}

uint64_t sub_29D615C28(uint64_t a1)
{
  sub_29D660724();
  sub_29D65FFA4();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D615C8C()
{
  sub_29D616138(0, &qword_2A17ACA48, MEMORY[0x29EDC7770], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_29D65F364();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65F324();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D616138(0, &qword_2A17ACA50, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D65F374();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D661D90;
  (*(v10 + 104))(v13, *MEMORY[0x29EDC7768], v9);
  v15 = sub_29D65F334();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_29D65F354();
  sub_29D65F344();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_29D615F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  a2[3] = a1;
  a2[4] = sub_29D61619C();
  v11 = swift_allocObject();
  *a2 = v11;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v11[7] = v9;
  v11[8] = v10;
  v12 = v4;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  return _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
}

unint64_t sub_29D61608C()
{
  result = qword_2A17ACA60;
  if (!qword_2A17ACA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA60);
  }

  return result;
}

unint64_t sub_29D6160E4()
{
  result = qword_2A17ACA68;
  if (!qword_2A17ACA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA68);
  }

  return result;
}

void sub_29D616138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D61619C()
{
  result = qword_2A17ACA70;
  if (!qword_2A17ACA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA70);
  }

  return result;
}

uint64_t sub_29D6161F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29D65F074();
  v4 = sub_29D65E564();
  v6 = v5;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = 0xD000000000000014;
  a2[4] = 0x800000029D663960;
  a2[5] = result;
  a2[6] = v8;
  return result;
}

uint64_t sub_29D6162F0(void *a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65FE04();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v20 - v14;
  sub_29D65F2E4();
  sub_29D65FDF4();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 16))(v11, v15, v7);
  sub_29D6164E8(0);
  v17 = objc_allocWithZone(v16);
  v18 = sub_29D65FD04();
  [a1 showAdaptively:v18 sender:0];

  return (*(v8 + 8))(v15, v7);
}

void sub_29D6164E8(uint64_t a1)
{
  if (!qword_2A17ACA78)
  {
    sub_29D65FE04();
    sub_29D61654C();
    v1 = sub_29D65FD14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACA78);
    }
  }
}

unint64_t sub_29D61654C()
{
  result = qword_2A17ACA80;
  if (!qword_2A17ACA80)
  {
    sub_29D65FE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA80);
  }

  return result;
}

__n128 sub_29D6165A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29D6165C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D616608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for HearingTestRescindedFeedItemProvider(uint64_t a1)
{
  result = qword_2A1A1E430;
  if (!qword_2A1A1E430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6166DC(uint64_t a1, uint64_t a2)
{
  sub_29D5F9D2C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F2A28(0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v20 - v14;
  v16 = sub_29D65DEF4();
  v17 = sub_29D6480B4();
  sub_29D644F5C(v17, v15);

  sub_29D5F2D70(v15, v11);
  sub_29D65F864();
  sub_29D5F9DC4(&qword_2A1A1DDE8, sub_29D5F9D2C, MEMORY[0x29EDB8AB8]);
  v18 = sub_29D65F934();
  (*(v4 + 8))(v7, v3);
  sub_29D5F9E0C(v15);
  return v18;
}

uint64_t sub_29D6168BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A20C18;
  v3 = sub_29D65FF24();
  v4 = sub_29D65FF24();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    sub_29D65DAD4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_29D65DAF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_29D6169E8()
{
  v0 = MEMORY[0x29EDC9E90];
  sub_29D61804C(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v141 = sub_29D65DFE4();
  v1 = *(v141 - 8);
  v142 = *(v1 + 72);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_29D663250;
  sub_29D617E70(0, v3);
  v5 = v133 + v2;
  v6 = (v133 + v2 + v4[16]);
  v7 = (v133 + v2 + v4[20]);
  v8 = v133 + v2 + v4[24];
  v9 = v5;
  sub_29D6168BC(v5);
  v10 = MEMORY[0x29EDC1650];
  sub_29D61804C(0, &qword_2A17ACA90, MEMORY[0x29EDC1650], v0);
  sub_29D65E084();
  *(swift_allocObject() + 16) = xmmword_29D661D20;
  sub_29D65E064();
  sub_29D65E074();
  sub_29D617FF4();
  sub_29D61804C(0, &qword_2A17ACAA0, v10, MEMORY[0x29EDC9A40]);
  sub_29D6180B0();
  sub_29D660484();
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0x3FD3333333333333;
  *(v8 + 8) = 0;
  v139 = *(v1 + 104);
  (v139)(v9, *MEMORY[0x29EDC1618], v141);
  v11 = (v9 + v142);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v135 = objc_opt_self();
  v140 = ObjCClassFromMetadata;
  v13 = [v135 bundleForClass_];
  v14 = sub_29D65DA74();
  v16 = v15;

  *v11 = v14;
  v11[1] = v16;
  (v139)(v9 + v142, *MEMORY[0x29EDC1610], v141);
  v17 = v9 + 2 * v142;
  v18 = [v135 bundleForClass_];
  v19 = sub_29D65DA74();
  v21 = v20;

  *v17 = v19;
  *(v17 + 8) = v21;
  *(v17 + 16) = 0;
  v22 = *MEMORY[0x29EDC1630];
  v137 = *MEMORY[0x29EDC1630];
  (v139)(v17, v22, v141);
  v23 = v9 + 3 * v142;
  v24 = [v135 bundleForClass_];
  v25 = sub_29D65DA74();
  v27 = v26;

  *v23 = v25;
  *(v23 + 8) = v27;
  *(v23 + 16) = 0;
  (v139)(v23, v22, v141);
  v28 = v9 + 4 * v142;
  v29 = [v135 bundleForClass_];
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  *(v28 + 8) = v32;
  *(v28 + 16) = 0;
  (v139)(v28, v137, v141);
  v33 = (v9 + 5 * v142);
  v34 = [v135 bundleForClass_];
  v35 = sub_29D65DA74();
  v37 = v36;

  *v33 = v35;
  v33[1] = v37;
  v33[2] = 0;
  v134 = *MEMORY[0x29EDC15D0];
  v139(v33);
  v38 = v9 + 6 * v142;
  v39 = [v135 bundleForClass_];
  v40 = sub_29D65DA74();
  v42 = v41;

  *v38 = v40;
  *(v38 + 8) = v42;
  *(v38 + 16) = 0;
  (v139)(v38, v137, v141);
  v43 = v9 + 7 * v142;
  v44 = [v135 bundleForClass_];
  v45 = sub_29D65DA74();
  v47 = v46;

  *v43 = v45;
  *(v43 + 8) = v47;
  *(v43 + 16) = 0;
  (v139)(v43, v137, v141);
  v48 = v9 + 8 * v142;
  v49 = [v135 bundleForClass_];
  v50 = sub_29D65DA74();
  v52 = v51;

  *v48 = v50;
  *(v48 + 8) = v52;
  *(v48 + 16) = 0;
  (v139)(v48, v137, v141);
  v53 = v9 + 9 * v142;
  v54 = [v135 bundleForClass_];
  v55 = sub_29D65DA74();
  v57 = v56;

  *v53 = v55;
  *(v53 + 8) = v57;
  *(v53 + 16) = 0;
  (v139)(v53, v137, v141);
  v58 = (v9 + 10 * v142);
  v59 = [v135 bundleForClass_];
  v60 = sub_29D65DA74();
  v62 = v61;

  *v58 = v60;
  v58[1] = v62;
  v58[2] = 0;
  (v139)(v58, v134, v141);
  v63 = v9 + 11 * v142;
  v64 = [v135 bundleForClass_];
  v65 = sub_29D65DA74();
  v67 = v66;

  *v63 = v65;
  *(v63 + 8) = v67;
  *(v63 + 16) = 0;
  (v139)(v63, v137, v141);
  v68 = v9 + 12 * v142;
  v69 = [v135 bundleForClass_];
  v70 = sub_29D65DA74();
  v72 = v71;

  *v68 = v70;
  *(v68 + 8) = v72;
  *(v68 + 16) = 0;
  (v139)(v68, v137, v141);
  v73 = v9 + 13 * v142;
  v74 = [v135 bundleForClass_];
  v75 = sub_29D65DA74();
  v77 = v76;

  *v73 = v75;
  *(v73 + 8) = v77;
  *(v73 + 16) = 0;
  (v139)(v73, v137, v141);
  v78 = v9 + 14 * v142;
  v79 = [v135 bundleForClass_];
  v80 = sub_29D65DA74();
  v82 = v81;

  *v78 = v80;
  *(v78 + 8) = v82;
  *(v78 + 16) = 0;
  (v139)(v78, v137, v141);
  v83 = (v9 + 15 * v142);
  v84 = [v135 bundleForClass_];
  v85 = sub_29D65DA74();
  v87 = v86;

  *v83 = v85;
  v83[1] = v87;
  v83[2] = 0;
  (v139)(v83, v134, v141);
  v88 = v9 + 16 * v142;
  v89 = [v135 bundleForClass_];
  v90 = sub_29D65DA74();
  v92 = v91;

  *v88 = v90;
  *(v88 + 8) = v92;
  *(v88 + 16) = 0;
  (v139)(v88, v137, v141);
  v136 = (v9 + 17 * v142);
  v93 = [v135 bundleForClass_];
  v143 = sub_29D65DA74();
  v138 = v94;

  sub_29D618138(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_29D663A60;
  v96 = [v135 bundleForClass_];
  v97 = sub_29D65DA74();
  v99 = v98;

  *(v95 + 32) = v97;
  *(v95 + 40) = v99;
  v100 = [v135 bundleForClass_];
  v101 = sub_29D65DA74();
  v103 = v102;

  *(v95 + 48) = v101;
  *(v95 + 56) = v103;
  v104 = [v135 bundleForClass_];
  v105 = sub_29D65DA74();
  v107 = v106;

  *(v95 + 64) = v105;
  *(v95 + 72) = v107;
  v108 = [v135 bundleForClass_];
  v109 = sub_29D65DA74();
  v111 = v110;

  *(v95 + 80) = v109;
  *(v95 + 88) = v111;
  v112 = [v135 bundleForClass_];
  v113 = sub_29D65DA74();
  v115 = v114;

  *(v95 + 96) = v113;
  *(v95 + 104) = v115;
  v116 = [v135 bundleForClass_];
  v117 = sub_29D65DA74();
  v119 = v118;

  *(v95 + 112) = v117;
  *(v95 + 120) = v119;
  v120 = [v135 bundleForClass_];
  v121 = sub_29D65DA74();
  v123 = v122;

  *(v95 + 128) = v121;
  *(v95 + 136) = v123;
  v124 = [v135 bundleForClass_];
  v125 = sub_29D65DA74();
  v127 = v126;

  *(v95 + 144) = v125;
  *(v95 + 152) = v127;
  v128 = [v135 bundleForClass_];
  v129 = sub_29D65DA74();
  v131 = v130;

  *(v95 + 160) = v129;
  *(v95 + 168) = v131;
  *v136 = v143;
  v136[1] = v138;
  v136[2] = v95;
  (v139)(v136, *MEMORY[0x29EDC15F0], v141);
  return v133;
}

uint64_t sub_29D617C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();

  return v6;
}

uint64_t sub_29D617CE0()
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D617DAC()
{
  sub_29D618138(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  sub_29D5E20B8();
  *(inited + 32) = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

void sub_29D617E70(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17ACA88)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D61804C(255, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
    sub_29D65E084();
    v2 = MEMORY[0x29EDC9C68];
    sub_29D618138(255, &qword_2A17AC930, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D618138(255, &qword_2A17AC598, MEMORY[0x29EDC9AD8], v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17ACA88);
    }
  }
}

unint64_t sub_29D617FF4()
{
  result = qword_2A17ACA98;
  if (!qword_2A17ACA98)
  {
    sub_29D65E084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACA98);
  }

  return result;
}

void sub_29D61804C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D6180B0()
{
  result = qword_2A17ACAA8;
  if (!qword_2A17ACAA8)
  {
    sub_29D61804C(255, &qword_2A17ACAA0, MEMORY[0x29EDC1650], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACAA8);
  }

  return result;
}

void sub_29D618138(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_29D618188()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D618328@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A20BF8;
  v3 = [qword_2A1A20BF8 noiseEnabled];
  LODWORD(v2) = [v2 notificationsEnabled];
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x29EDC1760];
  if ((v3 & v2) == 0)
  {
    v6 = MEMORY[0x29EDC1768];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_29D618410@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  swift_getObjectType();
  v1 = sub_29D65E0E4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v24 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = v23 - v7;
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A20BF8;
  v10 = [qword_2A1A20BF8 noiseEnabled];
  v11 = [v9 notificationsEnabled];
  v12 = *(v2 + 104);
  v13 = *MEMORY[0x29EDC1760];
  v14 = *MEMORY[0x29EDC1768];
  if ((v10 & v11) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v12(v8, v15, v1);
  v23[1] = sub_29D600670(v8);
  v16 = *(v2 + 8);
  v16(v8, v1);
  v17 = [v9 noiseEnabled];
  if ((v17 & [v9 notificationsEnabled]) != 0)
  {
    v18 = v13;
  }

  else
  {
    v18 = v14;
  }

  v19 = v24;
  v12(v24, v18, v1);
  sub_29D65E194();
  sub_29D65E174();
  v16(v19, v1);
  sub_29D600654();
  v20 = v25;
  sub_29D65EE24();
  v21 = sub_29D65EE44();
  return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
}

unint64_t sub_29D6186AC()
{
  v9 = MEMORY[0x29EDCA190];
  v1 = sub_29D618814();
  sub_29D65A648(v1);
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  if ([qword_2A1A20BF8 noiseEnabled])
  {
    *(v0 + qword_2A17ACAF0) = sub_29D618ABC();

    v2 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65A648(v2);
  }

  v3 = v9;
  if (v9 >> 62)
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v8 = sub_29D6605B4();
    swift_bridgeObjectRelease_n();
    return v8;
  }

  else
  {
    v4 = v9 & 0xFFFFFFFFFFFFFF8;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6606A4();
    if (swift_dynamicCastMetatype() || (v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_7:
    }

    else
    {
      v7 = (v4 + 32);
      while (*v7)
      {
        ++v7;
        if (!--v6)
        {
          goto LABEL_7;
        }
      }

      return v4 | 1;
    }

    return v3;
  }
}

uint64_t sub_29D618814()
{
  v1 = v0;
  v2 = MEMORY[0x29EDCA190];
  v15 = MEMORY[0x29EDCA190];
  v3 = objc_opt_self();
  v4 = sub_29D65FF24();
  v5 = [v3 groupSpecifierWithID_];

  if (v5)
  {
    v6 = qword_2A17ACAD0;
    v7 = [*(v1 + qword_2A17ACAD0) environmentalMeasurementsFooterDescription];
    if (!v7)
    {
      sub_29D65FF64();
      v7 = sub_29D65FF24();
    }

    [v5 setProperty:v7 forKey:*MEMORY[0x29EDC62F8]];

    v8 = v5;
    MEMORY[0x29ED623B0]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D660064();
    }

    sub_29D660074();
    v2 = v15;
    v9 = [*(v1 + v6) environmentalMeasurementsTitleDescription];
    if (!v9)
    {
      sub_29D65FF64();
      v9 = sub_29D65FF24();
    }

    v10 = [v3 preferenceSpecifierNamed:v9 target:v1 set:sel_setEnvironmentalSoundMeasurementsWithValue_ get:sel_environmentalSoundMeasurements detail:0 cell:6 edit:0];

    if (v10)
    {
      v11 = sub_29D65FF24();
      [v10 setIdentifier_];

      v12 = sub_29D660094();
      [v10 setProperty:v12 forKey:*MEMORY[0x29EDC62A0]];

      v13 = v10;
      MEMORY[0x29ED623B0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      return v15;
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_29D618ABC()
{
  v1 = v0;
  v2 = MEMORY[0x29EDCA190];
  v28 = MEMORY[0x29EDCA190];
  v3 = objc_opt_self();
  v4 = sub_29D65FF24();
  v5 = [v3 groupSpecifierWithID_];

  if (v5)
  {
    v6 = qword_2A17ACAD0;
    v7 = [*(v1 + qword_2A17ACAD0) noiseThresholdSectionTitle];
    if (!v7)
    {
      sub_29D65FF64();
      v7 = sub_29D65FF24();
    }

    [v5 setName_];

    v8 = [*(v1 + v6) noiseThresholdFooterDescription];
    v9 = v8;
    v10 = v8;
    if (!v8)
    {
      sub_29D65FF64();
      v10 = sub_29D65FF24();

      sub_29D65FF64();
      v9 = sub_29D65FF24();
    }

    v11 = *(v1 + v6);
    v12 = v8;
    v13 = [v11 noiseThresholdFooterLinkTitle];
    if (!v13)
    {
      sub_29D65FF64();
      v13 = sub_29D65FF24();
    }

    v14 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

    v15 = [v14 localizedStandardRangeOfString_];
    v17 = v16;

    sub_29D65DCE4();
    v18 = sub_29D65FF24();
    [v5 setProperty:v18 forKey:*MEMORY[0x29EDC62D0]];

    [v5 setProperty:v10 forKey:*MEMORY[0x29EDC62F0]];
    v29.location = v15;
    v29.length = v17;
    v19 = NSStringFromRange(v29);
    if (!v19)
    {
      sub_29D65FF64();
      v19 = sub_29D65FF24();
    }

    [v5 setProperty:v19 forKey:*MEMORY[0x29EDC62E0]];

    v20 = [objc_opt_self() valueWithNonretainedObject_];
    [v5 setProperty:v20 forKey:*MEMORY[0x29EDC62E8]];
    v21 = sub_29D65FF24();

    [v5 setProperty:v21 forKey:*MEMORY[0x29EDC62D8]];

    v22 = v5;
    MEMORY[0x29ED623B0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D660064();
    }

    sub_29D660074();
    v2 = v28;
    v23 = [*(v1 + v6) noiseThresholdTitleDescription];
    if (!v23)
    {
      sub_29D65FF64();
      v23 = sub_29D65FF24();
    }

    type metadata accessor for NoiseThresholdSpecifierViewController(0);
    v24 = [v3 preferenceSpecifierNamed:v23 target:v1 set:0 get:sel_getNoiseThresholdValue detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

    if (v24)
    {
      v25 = sub_29D65FF24();
      [v24 setIdentifier_];

      [v24 setButtonAction_];
      v26 = v24;
      MEMORY[0x29ED623B0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      return v28;
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_29D618F90()
{
  sub_29D605988(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20(0);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8(0);
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D61A510(0);
  v21 = *(v20 - 8);
  v43 = v20;
  v44 = v21;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v38 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + qword_2A17ACAD8);
  swift_beginAccess();
  sub_29D61AB68(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v25 = v24;
  sub_29D65F8C4();
  swift_endAccess();

  sub_29D61AB20(&qword_2A1A1E778, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
  sub_29D65F994();
  (*(v6 + 8))(v9, v5);
  sub_29D605BAC();
  v26 = sub_29D6602B4();
  v45 = v26;
  v27 = sub_29D6602A4();
  v28 = v37;
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  sub_29D61AB20(&unk_2A17AC900, sub_29D605A20, MEMORY[0x29EDB8918]);
  sub_29D61AB20(&qword_2A17AC768, sub_29D605BAC, MEMORY[0x29EDCA280]);
  v29 = v39;
  sub_29D65F984();
  sub_29D61A5A4(v28, sub_29D605988);

  (*(v40 + 8))(v14, v29);
  swift_allocObject();
  v30 = v36;
  swift_unknownObjectWeakInit();
  sub_29D61AB20(&qword_2A17AC770, sub_29D605AB8, MEMORY[0x29EDB89E8]);
  v31 = v38;
  v32 = v41;
  sub_29D65F974();

  (*(v42 + 8))(v19, v32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D61AB20(&qword_2A17ACB50, sub_29D61A510, MEMORY[0x29EDB8968]);
  v33 = v43;
  v34 = sub_29D65F9B4();

  (*(v44 + 8))(v31, v33);
  *(v30 + qword_2A17ACAE0) = v34;
}

uint64_t sub_29D619584(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong[qword_2A17ACAE8] ^ 1;
    Strong[qword_2A17ACAE8] = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_29D6195F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_getObjectType();
      sub_29D65EE14();
      sub_29D65EE94();
    }
  }
}

uint64_t sub_29D619694(uint64_t a1)
{
  swift_getObjectType();
  sub_29D5E1A44(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6004D0(v4);
  v5 = sub_29D65DAF4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_29D61A5A4(v4, sub_29D5E1A44);
  }

  sub_29D65DAB4();
  return (*(v6 + 8))(v4, v5);
}

id sub_29D6197B8()
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v0 = [qword_2A1A20BF8 noiseEnabled];
  v1 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v1;
}

uint64_t sub_29D619848(void *a1)
{
  v2 = v1;
  *(v2 + qword_2A17ACAE8) = 1;
  v4 = *(v2 + qword_2A17ACAD0);
  [v4 setNoiseEnabled_];

  if ([a1 BOOLValue])
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_29D65EDF4();
      sub_29D65EE94();
    }

    v5 = sub_29D618ABC();
    v6 = qword_2A17ACAF0;
    *(v2 + qword_2A17ACAF0) = v5;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v2 + v6);
      if (v8 >> 62)
      {
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D6605B4();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_29D6606A4();
        if (!swift_dynamicCastMetatype())
        {
          v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
            v11 = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
            do
            {
              if (!*v11)
              {
                break;
              }

              ++v11;
              --v10;
            }

            while (v10);
          }
        }
      }

      swift_getObjectType();
      sub_29D65EDE4();

      return sub_29D65EE94();
    }
  }

  else
  {
    v9 = *(v2 + qword_2A17ACAF0);
    *(v2 + qword_2A17ACAF0) = MEMORY[0x29EDCA190];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (v9 >> 62)
      {
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D6605B4();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D6606A4();
        if (!swift_dynamicCastMetatype())
        {
          v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            v13 = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
            do
            {
              if (!*v13)
              {
                break;
              }

              ++v13;
              --v12;
            }

            while (v12);
          }
        }
      }

      swift_getObjectType();
      sub_29D65EE04();

      sub_29D65EE94();
    }

    else
    {
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_29D65EDF4();
      return sub_29D65EE94();
    }
  }

  return result;
}

void sub_29D619B98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D619848(v4);
}

id sub_29D619C00(char *a1)
{
  v2 = qword_2A17ACAD0;
  v3 = *&a1[qword_2A17ACAD0];
  v4 = a1;
  v5 = [*&a1[v2] localizedNoiseThresholdValue_];
  if (!v5)
  {
    sub_29D65FF64();
    v5 = sub_29D65FF24();
  }

  return v5;
}

void sub_29D619CA0(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x29EDCA1E8] & *Strong) + qword_2A17AD6E0 + 72);
    v5 = a1;
    v4();
  }

  else
  {
  }
}

uint64_t sub_29D619E20()
{

  sub_29D5DBB60(v0 + qword_2A17ACAF8);
  v1 = v0 + qword_2A17ACB00;

  return sub_29D5DBB60(v1);
}

uint64_t sub_29D619F08(uint64_t a1)
{

  sub_29D5DBB60(a1 + qword_2A17ACAF8);
  v2 = a1 + qword_2A17ACB00;

  return sub_29D5DBB60(v2);
}

uint64_t sub_29D61A0AC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17ACAF8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D65EE94();
}

void (*sub_29D61A118(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17ACAF8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D60AC44;
}

void (*sub_29D61A1B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D65EE74();
  return sub_29D60AD5C;
}

uint64_t sub_29D61A248(uint64_t a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_2A17ACB30;
  v3 = objc_allocWithZone(type metadata accessor for NoiseAvailability(0));
  *(a1 + v2) = sub_29D5E98A4(0);
  result = sub_29D660594();
  __break(1u);
  return result;
}

void sub_29D61A32C()
{
  sub_29D65ED74();
  v1 = *&v0[qword_2A17ACB28];
  v2 = *&v0[qword_2A17ACB30];
  v3 = objc_allocWithZone(type metadata accessor for NoiseThresholdSpecifierViewController(0));
  v6 = sub_29D64F030(v1, v2);
  v4 = [v0 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }
}

void sub_29D61A424()
{
  v1 = *(v0 + qword_2A17ACB30);
}

id sub_29D61A47C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D61A4BC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17ACB30);
}

void sub_29D61A510(uint64_t a1)
{
  if (!qword_2A17ACB48)
  {
    sub_29D605AB8(255);
    sub_29D61AB20(&qword_2A17AC770, sub_29D605AB8, MEMORY[0x29EDB89E8]);
    v1 = sub_29D65F7E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACB48);
    }
  }
}

uint64_t sub_29D61A5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D61A614(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  sub_29D61AB68(0, &unk_2A17AC838, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v21 - v9;
  v11 = (v3 + qword_2A17ACAB0);
  *v11 = 0xD000000000000029;
  v11[1] = 0x800000029D668420;
  v12 = (v3 + qword_2A17ACAB8);
  *v12 = 0xD00000000000002ALL;
  v12[1] = 0x800000029D668450;
  v13 = (v3 + qword_2A17ACAC0);
  *v13 = 0xD000000000000018;
  v13[1] = 0x800000029D668480;
  v14 = (v3 + qword_2A17ACAC8);
  *v14 = 0xD00000000000001CLL;
  v14[1] = 0x800000029D6684A0;
  *(v3 + qword_2A17ACAE0) = 0;
  *(v3 + qword_2A17ACAE8) = 0;
  *(v3 + qword_2A17ACAF0) = MEMORY[0x29EDCA190];
  *(v3 + qword_2A17ACAF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17ACB00 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17ACAD0) = a1;
  *(v3 + qword_2A17ACAD8) = a2;
  sub_29D600638();
  v15 = sub_29D65E314();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, a3, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  v17 = a1;
  v18 = a2;
  v19 = sub_29D65E304();
  sub_29D618F90();

  (*(v16 + 8))(a3, v15);
  return v19;
}

id sub_29D61A8C8(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v23[3] = a3;
  swift_getObjectType();
  v7 = sub_29D65E314();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_2A17ACB30;
  v13 = objc_allocWithZone(type metadata accessor for NoiseAvailability(0));
  v14 = sub_29D5E98A4(0);
  *(v4 + v12) = v14;
  *(v4 + qword_2A17ACB28) = a1;
  (*(v8 + 16))(v11, a2, v7);
  objc_allocWithZone(type metadata accessor for NoiseNotificationsSpecifierDataSource(0));
  v15 = a1;
  v16 = v14;
  v17 = sub_29D61A614(v15, v16, v11);

  sub_29D61AB20(&qword_2A17ACB58, type metadata accessor for NoiseNotificationsSpecifierDataSource, &unk_29D663C6C);
  v18 = v17;
  v19 = sub_29D65ED84();
  *&v18[qword_2A17ACB00 + 8] = &off_2A2432B60;
  swift_unknownObjectWeakAssign();
  v20 = v19;
  sub_29D600598();
  v21 = sub_29D65FF24();

  [v20 setTitle_];

  (*(v8 + 8))(a2, v7);
  return v20;
}

uint64_t sub_29D61AB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D61AB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_29D61ABCC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_29D65FF64();
  v6 = v5;

  v7 = v4 == 0xD00000000000002ALL && 0x800000029D665B90 == v6;
  if (v7 || (sub_29D660694() & 1) != 0)
  {

    v8 = type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider();
    v9 = [objc_allocWithZone(v8) init];
    *(a2 + 24) = v8;
    v10 = &unk_2A17ACB68;
    v11 = type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider;
    v12 = &unk_29D662E48;
LABEL_7:
    *(a2 + 32) = sub_29D61AD90(v10, v11, v12);
    *a2 = v9;
    return result;
  }

  if (v4 == 0xD000000000000033 && 0x800000029D665BC0 == v6)
  {

    goto LABEL_15;
  }

  v15 = sub_29D660694();

  if (v15)
  {
LABEL_15:
    v16 = type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider(0);
    v9 = [objc_allocWithZone(v16) init];
    *(a2 + 24) = v16;
    v10 = &unk_2A17ACB60;
    v11 = type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider;
    v12 = &unk_29D661478;
    goto LABEL_7;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_29D61AD90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D61ADD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for AudiogramPDFProviderRequest(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D61AEC8, 0, 0);
}

uint64_t sub_29D61AEC8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];
  v4 = *(v2 + 20);
  v5 = sub_29D65DBC4();
  v6 = *(*(v5 - 8) + 56);
  v6(&v1[v4], 1, 1, v5);
  v7 = *(v2 + 24);
  sub_29D65DBA4();
  v6(&v1[v7], 0, 1, v5);
  *v1 = v3;
  sub_29D61B87C(v3);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_29D61B010;
  v9 = v0[8];

  return sub_29D5EC6BC(v9);
}

uint64_t sub_29D61B010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_29D61B7DC;
  }

  else
  {
    v4 = sub_29D61B124;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

void *sub_29D61B124()
{
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_140;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v90 = MEMORY[0x29EDCA190];
      result = sub_29D5F9060(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v4 = 0;
      v89 = v0[4];
      v5 = v90;
      v81 = v2;
      v82 = v1 & 0xC000000000000001;
      v79 = v1 & 0xFFFFFFFFFFFFFF8;
      v80 = v0[5];
      v78 = v0[10] + 32;
      v1 = &qword_2A2431300;
      v84 = v0;
      while (1)
      {
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v88 = v5;
        if (v82)
        {
          v7 = MEMORY[0x29ED62900]();
        }

        else
        {
          if (v4 >= *(v79 + 16))
          {
            goto LABEL_139;
          }

          v7 = *(v78 + 8 * v4);
        }

        v86 = v6;
        v87 = v6;
        v8 = v0[6];
        v85 = v7;
        sub_29D5E03E4(v85, v8);
        v9 = 0;
        v10 = *(v8 + *(type metadata accessor for AudiogramPDFChartData(0) + 36));
        v11 = *(v10 + 16);
        v12 = MEMORY[0x29EDCA190];
LABEL_11:
        v13 = fmax(*&qword_2A2431300, 62.5);
        if (v13 < unk_2A2431308)
        {
          v13 = unk_2A2431308;
        }

        if (v13 < *&qword_2A2431310)
        {
          v13 = *&qword_2A2431310;
        }

        if (v13 < unk_2A2431318)
        {
          v13 = unk_2A2431318;
        }

        if (v13 < *&qword_2A2431320)
        {
          v13 = *&qword_2A2431320;
        }

        if (v13 < unk_2A2431328)
        {
          v13 = unk_2A2431328;
        }

        if (v13 < *&qword_2A2431330)
        {
          v13 = *&qword_2A2431330;
        }

        v14 = fmin(*&qword_2A2431300, 62.5);
        if (unk_2A2431308 < v14)
        {
          v14 = unk_2A2431308;
        }

        if (*&qword_2A2431310 < v14)
        {
          v14 = *&qword_2A2431310;
        }

        if (unk_2A2431318 < v14)
        {
          v14 = unk_2A2431318;
        }

        if (*&qword_2A2431320 < v14)
        {
          v14 = *&qword_2A2431320;
        }

        if (unk_2A2431328 < v14)
        {
          v14 = unk_2A2431328;
        }

        if (*&qword_2A2431330 < v14)
        {
          v14 = *&qword_2A2431330;
        }

        if (unk_2A2431338 >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = unk_2A2431338;
        }

        if (v13 >= unk_2A2431338)
        {
          v16 = v13;
        }

        else
        {
          v16 = unk_2A2431338;
        }

        v17 = round(v16);
        v18 = round(v15);
        v19 = v10 + 40 * v9;
        while (v11 != v9)
        {
          if (v9 >= *(v10 + 16))
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (v18 > v17)
          {
            goto LABEL_135;
          }

          v20 = (v19 + 40);
          ++v9;
          v21 = *(v19 + 32);
          v22 = v18 > v21 || v21 > v17;
          v19 += 40;
          if (!v22)
          {
            v83 = *v20;
            v23 = *(v20 + 4);
            v24 = v20[2];
            v25 = *(v20 + 12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_29D65B21C(0, *(v12 + 2) + 1, 1, v12);
            }

            v27 = *(v12 + 2);
            v26 = *(v12 + 3);
            if (v27 >= v26 >> 1)
            {
              v12 = sub_29D65B21C((v26 > 1), v27 + 1, 1, v12);
            }

            *(v12 + 2) = v27 + 1;
            v28 = &v12[40 * v27];
            *(v28 + 4) = v21;
            *(v28 + 5) = v83;
            *(v28 + 24) = v23;
            *(v28 + 7) = v24;
            *(v28 + 32) = v25;
            v0 = v84;
            goto LABEL_11;
          }
        }

        v29 = *(v12 + 2);
        if (v29)
        {
          v30 = (v12 + 64);
          while (1)
          {
            v31 = *(v30 - 8);
            v32 = *v30;
            if (v31 != 2)
            {
              v33 = v31 & 0xFF00;
              v34 = v31 & 0x100;
              if (v33 != 512 && v34 == 0)
              {
                break;
              }
            }

            if (*v30 != 2)
            {
              v36 = v32 & 0xFF00;
              v37 = v32 & 0x100;
              if (v36 != 512 && v37 == 0)
              {
                break;
              }
            }

            v30 += 20;
            if (!--v29)
            {
              goto LABEL_69;
            }
          }

          v39 = 1;
        }

        else
        {
LABEL_69:
          v39 = 0;
        }

        v40 = v0[6];

        v41 = 0;
        *(v40 + v89[5]) = v39;
        v42 = *(v10 + 16);
        v43 = MEMORY[0x29EDCA190];
LABEL_71:
        v44 = fmax(*&qword_2A2431300, 62.5);
        if (v44 < unk_2A2431308)
        {
          v44 = unk_2A2431308;
        }

        if (v44 < *&qword_2A2431310)
        {
          v44 = *&qword_2A2431310;
        }

        if (v44 < unk_2A2431318)
        {
          v44 = unk_2A2431318;
        }

        if (v44 < *&qword_2A2431320)
        {
          v44 = *&qword_2A2431320;
        }

        if (v44 < unk_2A2431328)
        {
          v44 = unk_2A2431328;
        }

        if (v44 < *&qword_2A2431330)
        {
          v44 = *&qword_2A2431330;
        }

        v45 = fmin(*&qword_2A2431300, 62.5);
        if (unk_2A2431308 < v45)
        {
          v45 = unk_2A2431308;
        }

        if (*&qword_2A2431310 < v45)
        {
          v45 = *&qword_2A2431310;
        }

        if (unk_2A2431318 < v45)
        {
          v45 = unk_2A2431318;
        }

        if (*&qword_2A2431320 < v45)
        {
          v45 = *&qword_2A2431320;
        }

        if (unk_2A2431328 < v45)
        {
          v45 = unk_2A2431328;
        }

        if (*&qword_2A2431330 < v45)
        {
          v45 = *&qword_2A2431330;
        }

        if (unk_2A2431338 >= v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = unk_2A2431338;
        }

        if (v44 >= unk_2A2431338)
        {
          v47 = v44;
        }

        else
        {
          v47 = unk_2A2431338;
        }

        v48 = round(v47);
        v49 = round(v46);
        v50 = v10 + 40 * v41;
        while (v42 != v41)
        {
          if (v41 >= *(v10 + 16))
          {
            goto LABEL_136;
          }

          if (v49 > v48)
          {
            goto LABEL_137;
          }

          v51 = (v50 + 40);
          ++v41;
          v52 = *(v50 + 32);
          v53 = v49 > v52 || v52 > v48;
          v50 += 40;
          if (!v53)
          {
            v54 = *v51;
            v55 = *(v51 + 4);
            v56 = v51[2];
            v57 = *(v51 + 12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_29D65B21C(0, *(v43 + 2) + 1, 1, v43);
            }

            v59 = *(v43 + 2);
            v58 = *(v43 + 3);
            if (v59 >= v58 >> 1)
            {
              v43 = sub_29D65B21C((v58 > 1), v59 + 1, 1, v43);
            }

            *(v43 + 2) = v59 + 1;
            v60 = &v43[40 * v59];
            *(v60 + 4) = v52;
            *(v60 + 5) = v54;
            *(v60 + 24) = v55;
            *(v60 + 7) = v56;
            *(v60 + 32) = v57;
            v0 = v84;
            v1 = &qword_2A2431300;
            goto LABEL_71;
          }
        }

        v61 = *(v43 + 2);
        if (v61)
        {
          v62 = v43 + 64;
          v63 = v81;
          v5 = v88;
          while (*(v62 - 8) == 2 || (*(v62 - 8) & 0x100) == 0)
          {
            if (*v62 != 2 && (*v62 & 0x100) != 0)
            {
              break;
            }

            v62 += 20;
            if (!--v61)
            {
              v66 = 0;
              goto LABEL_130;
            }
          }

          v66 = 1;
        }

        else
        {
          v66 = 0;
          v63 = v81;
          v5 = v88;
        }

LABEL_130:
        v67 = v0[6];

        *(v67 + v89[6]) = v66;
        *(v67 + v89[7]) = sub_29D62C128(v85) & 1;
        v68 = [v85 localizedIngestionSource];
        v69 = sub_29D65FF64();
        v71 = v70;

        v72 = (v67 + v89[8]);
        *v72 = v69;
        v72[1] = v71;
        v74 = *(v5 + 16);
        v73 = *(v5 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_29D5F9060((v73 > 1), v74 + 1, 1);
        }

        v75 = v0[6];
        *(v5 + 16) = v74 + 1;
        sub_29D61B8E8(v75, v5 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v74);
        v4 = v87;
        if (v86 == v63)
        {
          sub_29D61B88C(v0[8]);

          goto LABEL_142;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v2 = sub_29D6604B4();
      if (!v2)
      {
        goto LABEL_141;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_141:
    v76 = v0[8];

    sub_29D61B88C(v76);
    v5 = MEMORY[0x29EDCA190];
LABEL_142:

    v77 = v0[1];

    return v77(v5);
  }

  return result;
}

uint64_t sub_29D61B7DC()
{
  sub_29D61B88C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

id sub_29D61B87C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_29D61B88C(uint64_t a1)
{
  v2 = type metadata accessor for AudiogramPDFProviderRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D61B8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D61B95C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_29D61DC2C(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v36 - v6;
  if (a1)
  {
    type metadata accessor for HearingAppPluginDelegate(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    v11 = sub_29D65DA74();
    v13 = v12;

    *a2 = v11;
    a2[1] = v13;
    v14 = [v9 bundleForClass_];
    v15 = sub_29D65DA74();
    v17 = v16;

    a2[2] = v15;
    a2[3] = v17;
    a2[4] = 0;
    a2[5] = 0;
    sub_29D65DAE4();
    v18 = sub_29D65DAF4();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v7, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_29D60E298(0, v21);
      v23 = *(v22 + 80);
      (*(v19 + 32))(a2 + v23, v7, v18);
      v24 = *MEMORY[0x29EDC15C0];
      v25 = sub_29D65DFD4();
      (*(*(v25 - 8) + 104))(a2 + v23, v24, v25);
      v26 = *MEMORY[0x29EDC15E8];
      v27 = sub_29D65DFE4();
      return (*(*(v27 - 8) + 104))(a2, v26, v27);
    }
  }

  else
  {
    type metadata accessor for HearingAppPluginDelegate(0);
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_29D65DA74();
    v32 = v31;

    *a2 = v30;
    a2[1] = v32;
    *(a2 + 16) = 0;
    v33 = *MEMORY[0x29EDC1630];
    v34 = sub_29D65DFE4();
    v35 = *(*(v34 - 8) + 104);

    return v35(a2, v33, v34);
  }

  return result;
}

uint64_t sub_29D61BD64(void *a1)
{
  v2 = sub_29D65FCA4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65FCC4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v12 = sub_29D6602B4();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_29D61DC0C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A2432C20;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_29D65FCB4();
  v17[1] = MEMORY[0x29EDCA190];
  sub_29D612390();
  sub_29D61DC2C(0, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D61244C();
  sub_29D660484();
  MEMORY[0x29ED62660](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_29D61C018(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  sub_29D5F3928(2u);
  v4 = objc_allocWithZone(sub_29D65E004());
  v7 = sub_29D65DFF4();
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D61C1D0()
{
  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  return sub_29D61C534(&unk_2A1A20BA8);
}

uint64_t sub_29D61C288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();

  return v6;
}

uint64_t sub_29D61C344()
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D61C410()
{
  sub_29D6124D4(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D61C4E4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_29D5E32A8(a1, v1);

  return sub_29D61CF8C(v3, v1, v2);
}

uint64_t sub_29D61C534(uint64_t a1)
{
  sub_29D5F4278(a1, v84);
  sub_29D5EAD50(v84, v81);
  v1 = v82;
  if (v82)
  {
    v2 = v83;
    sub_29D5E32A8(v81, v82);
    v71 = (*(v2 + 8))(v1, v2);
    sub_29D61CF38(v84);
    sub_29D5DF1C4(v81);
  }

  else
  {
    sub_29D61CF38(v84);
    sub_29D5EADE0(v81);
    v71 = 0;
  }

  sub_29D61DC2C(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v80 = sub_29D65DFE4();
  v3 = *(v80 - 8);
  v79 = *(v3 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v73 = v4;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_29D663D50;
  v5 = v72 + v4;
  *v5 = sub_29D61DA2C();
  *(v5 + 8) = 0;
  v70 = *MEMORY[0x29EDC1608];
  v6 = *(v3 + 104);
  v76 = v72 + v4;
  v6(v72 + v4);
  v7 = (v72 + v4 + v79);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  v9 = [v75 bundleForClass_];
  v10 = sub_29D65DA74();
  v12 = v11;

  *v7 = v10;
  v7[1] = v12;
  (v6)(v7, *MEMORY[0x29EDC1610], v80);
  v13 = (v76 + 2 * v79);
  v14 = [v75 bundleForClass_];
  v15 = sub_29D65DA74();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  v13[2] = 0;
  v74 = *MEMORY[0x29EDC15D0];
  v6(v13);
  v18 = v76 + 3 * v79;
  v19 = [v75 bundleForClass_];
  v20 = sub_29D65DA74();
  v22 = v21;

  *v18 = v20;
  *(v18 + 8) = v22;
  *(v18 + 16) = 0;
  v78 = *MEMORY[0x29EDC1630];
  v6(v18);
  v23 = v76 + 4 * v79;
  v24 = [v75 bundleForClass_];
  v25 = sub_29D65DA74();
  v27 = v26;

  *v23 = v25;
  *(v23 + 8) = v27;
  *(v23 + 16) = 0;
  (v6)(v23, v78, v80);
  v28 = (v76 + 5 * v79);
  v29 = [v75 bundleForClass_];
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  v28[1] = v32;
  v28[2] = 0;
  (v6)(v28, v74, v80);
  v33 = v76 + 6 * v79;
  v34 = [v75 bundleForClass_];
  v35 = sub_29D65DA74();
  v37 = v36;

  *v33 = v35;
  *(v33 + 8) = v37;
  *(v33 + 16) = 0;
  (v6)(v33, v78, v80);
  sub_29D61B95C(v71 & 1, (v76 + 7 * v79));
  v38 = v76 + 8 * v79;
  *v38 = sub_29D61DB1C();
  *(v38 + 8) = 1;
  (v6)(v38, v70, v80);
  v39 = v76 + 9 * v79;
  v40 = [v75 bundleForClass_];
  v41 = sub_29D65DA74();
  v43 = v42;

  *v39 = v41;
  *(v39 + 8) = v43;
  *(v39 + 16) = 0;
  (v6)(v39, v78, v80);
  v44 = sub_29D60F644(3);
  sub_29D65A3F0(v44);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_29D661ED0;
  v45 = (v77 + v73);
  v46 = [v75 bundleForClass_];
  v47 = sub_29D65DA74();
  v49 = v48;

  *v45 = v47;
  v45[1] = v49;
  v45[2] = 0;
  (v6)(v77 + v73, v74, v80);
  v50 = (v77 + v73 + v79);
  sub_29D60E298(0, v51);
  v53 = (v50 + *(v52 + 80));
  v54 = [v75 bundleForClass_];
  v55 = sub_29D65DA74();
  v57 = v56;

  *v50 = v55;
  v50[1] = v57;
  v58 = [v75 bundleForClass_];
  v59 = sub_29D65DA74();
  v61 = v60;

  v50[2] = v59;
  v50[3] = v61;
  v50[4] = 0;
  v50[5] = 0;
  *v53 = sub_29D61BD64;
  v53[1] = 0;
  v62 = *MEMORY[0x29EDC15B8];
  v63 = sub_29D65DFD4();
  (*(*(v63 - 8) + 104))(v53, v62, v63);
  (v6)(v50, *MEMORY[0x29EDC15E8], v80);
  v64 = v77 + v73 + 2 * v79;
  v65 = [v75 bundleForClass_];
  v66 = sub_29D65DA74();
  v68 = v67;

  *v64 = v66;
  *(v64 + 8) = v68;
  *(v64 + 16) = 0;
  (v6)(v64, v78, v80);
  sub_29D65A3F0(v77);
  return v72;
}

uint64_t sub_29D61CF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v113 = a2;
  v114 = v5;
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = *(v8 + 16);
  v112 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  v106 = (*(a3 + 8))(a2, a3);
  sub_29D61DC2C(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v110 = v10;
  v11 = sub_29D65DFE4();
  v12 = *(*(v11 - 8) + 80);
  v13 = *(v11 - 8);
  v14 = *(v13 + 72);
  v15 = (v12 + 32) & ~v12;
  v108 = v15;
  v109 = v12;
  v16 = swift_allocObject();
  v107 = v16;
  *(v16 + 16) = xmmword_29D663D50;
  v17 = v16 + v15;
  *v17 = sub_29D61DA2C();
  *(v17 + 8) = 0;
  v105 = *MEMORY[0x29EDC1608];
  v125 = *(v13 + 104);
  v125(v17);
  v124 = v13 + 104;
  v18 = (v17 + v14);
  v121 = v17;
  v119 = v14;
  v117 = "headphone_listening_hero_image";
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v123 = objc_opt_self();
  v116 = ObjCClassFromMetadata;
  v20 = [v123 bundleForClass_];
  v21 = sub_29D65DA74();
  v23 = v22;

  *v18 = v21;
  v18[1] = v23;
  v24 = *MEMORY[0x29EDC1610];
  v118 = v11;
  v25 = v125;
  (v125)(v17 + v14, v24, v11);
  v14 *= 2;
  v26 = (v17 + v14);
  v111 = v14;
  v27 = v123;
  v28 = [v123 bundleForClass_];
  v29 = sub_29D65DA74();
  v31 = v30;

  *v26 = v29;
  v26[1] = v31;
  v26[2] = 0;
  v115 = *MEMORY[0x29EDC15D0];
  v25(v26);
  v32 = v119;
  v104[1] = v14 + v119;
  v33 = v121 + v14 + v119;
  v34 = v116;
  v35 = [v27 bundleForClass_];
  v120 = 0xD000000000000013;
  v36 = sub_29D65DA74();
  v38 = v37;

  *v33 = v36;
  *(v33 + 8) = v38;
  *(v33 + 16) = 0;
  v122 = *MEMORY[0x29EDC1630];
  v125(v33);
  v39 = v121;
  v40 = v121 + 4 * v32;
  v41 = v123;
  v42 = [v123 bundleForClass_];
  v43 = sub_29D65DA74();
  v45 = v44;

  *v40 = v43;
  *(v40 + 8) = v45;
  *(v40 + 16) = 0;
  v46 = v118;
  v47 = v125;
  (v125)(v39 + 4 * v32, v122, v118);
  v48 = (v39 + 5 * v32);
  v49 = v116;
  v50 = [v41 bundleForClass_];
  v51 = sub_29D65DA74();
  v53 = v52;

  *v48 = v51;
  v48[1] = v53;
  v48[2] = 0;
  (v47)(v48, v115, v46);
  v54 = v119;
  v55 = v121 + 6 * v119;
  v56 = [v41 bundleForClass_];
  v57 = sub_29D65DA74();
  v59 = v58;

  *v55 = v57;
  *(v55 + 8) = v59;
  *(v55 + 16) = 0;
  v60 = v46;
  v61 = v125;
  (v125)(v55, v122, v46);
  v62 = v121;
  sub_29D61B95C(v106 & 1, (v121 + 7 * v54));
  v63 = v62 + 8 * v54;
  *v63 = sub_29D61DB1C();
  *(v63 + 8) = 1;
  (v61)(v63, v105, v46);
  v64 = v61;
  v65 = v62 + 9 * v54;
  v66 = v123;
  v67 = v116;
  v68 = [v123 bundleForClass_];
  v69 = sub_29D65DA74();
  v71 = v70;

  *v65 = v69;
  *(v65 + 8) = v71;
  *(v65 + 16) = 0;
  (v64)(v65, v122, v60);
  v72 = sub_29D60F644(3);
  v126 = v107;
  sub_29D65A3F0(v72);
  v73 = v108;
  v74 = swift_allocObject();
  v121 = v74;
  *(v74 + 16) = xmmword_29D661ED0;
  v75 = (v74 + v73);
  v76 = [v66 bundleForClass_];
  v77 = sub_29D65DA74();
  v79 = v78;

  *v75 = v77;
  v75[1] = v79;
  v75[2] = 0;
  (v64)(v75, v115, v60);
  v80 = (v75 + v119);
  sub_29D60E298(0, v81);
  v83 = (v80 + *(v82 + 80));
  v84 = v123;
  v85 = [v123 bundleForClass_];
  v86 = sub_29D65DA74();
  v88 = v87;

  *v80 = v86;
  v80[1] = v88;
  v89 = [v84 bundleForClass_];
  v90 = sub_29D65DA74();
  v92 = v91;

  v80[2] = v90;
  v80[3] = v92;
  v80[4] = 0;
  v80[5] = 0;
  *v83 = sub_29D61BD64;
  v83[1] = 0;
  v93 = *MEMORY[0x29EDC15B8];
  v94 = sub_29D65DFD4();
  (*(*(v94 - 8) + 104))(v83, v93, v94);
  v95 = v118;
  v96 = v125;
  (v125)(v80, *MEMORY[0x29EDC15E8], v118);
  v97 = v75 + v111;
  v98 = [v123 bundleForClass_];
  v99 = sub_29D65DA74();
  v101 = v100;

  *v97 = v99;
  *(v97 + 1) = v101;
  v97[16] = 0;
  (v96)(v97, v122, v95);
  sub_29D65A3F0(v121);
  v102 = v126;
  (*(v114 + 8))(v112, v113);
  return v102;
}

id sub_29D61DA2C()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

id sub_29D61DB1C()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D61DC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D61DC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D61DC9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = HKCurrentLocaleCountryCodeIfUnknown();
  v3 = sub_29D65FF64();
  v5 = v4;
  if (v3 == sub_29D65FF64() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_29D660694();

    if ((v8 & 1) == 0)
    {
      v9 = sub_29D65E774();
      goto LABEL_9;
    }
  }

  v9 = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage(0);
LABEL_9:
  *a1 = v9;
  v10 = *MEMORY[0x29EDC20A8];
  v11 = sub_29D65E764();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_29D61DDCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v34 = a2;
  v33 = sub_29D65E954();
  v4 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65E764();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_29D65E604();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D65ECA4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E8E70(v3 + 24, v35);
  sub_29D65EC94();
  v21 = sub_29D65E8D4();
  (*(v17 + 8))(v20, v16);
  sub_29D61F348();
  v22 = sub_29D65E8D4();
  (*(v12 + 104))(v15, *MEMORY[0x29EDC1F40], v11);
  sub_29D61DC9C(v10);
  v23 = swift_allocObject();
  v25 = v31;
  v24 = v32;
  v23[2] = v32;
  v23[3] = v3;
  v23[4] = v21;
  v23[5] = v22;
  (*(v4 + 104))(v25, *MEMORY[0x29EDC22A0], v33);
  v26 = sub_29D65E624();
  v27 = MEMORY[0x29EDC1F50];
  v28 = v34;
  v34[3] = v26;
  v28[4] = v27;
  sub_29D5E3C20(v28);
  sub_29D61B87C(v24);

  return sub_29D65E614();
}

uint64_t sub_29D61E108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_29D61F3A8(0);
    v9 = v8;
    v43 = v8;
    v10 = sub_29D61F484(&qword_2A17ACBA0, sub_29D61F3A8, MEMORY[0x29EDC1B40]);
    v44 = v10;
    v41 = v10;
    v42[0] = a3;
    v40 = v9;
    v39[0] = a4;
    v11 = *(a2 + 16);
    sub_29D5E8C84(v42, &v45);
    sub_29D5E8C84(v39, &v36);
    v12 = type metadata accessor for AudiogramPDFAudiogramSectionProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    type metadata accessor for AudiogramPDFChartDataSource();
    v14 = swift_allocObject();
    v15 = v46;
    *(v13 + 32) = v45;
    *(v13 + 48) = v15;
    v16 = v37;
    *(v13 + 72) = v36;
    *(v14 + 16) = v11;
    *(v13 + 24) = v14;
    *(v13 + 64) = v47;
    *(v13 + 88) = v16;
    *(v13 + 104) = v38;
    *(&v46 + 1) = v12;
    v47 = sub_29D61F484(&qword_2A17ACBA8, type metadata accessor for AudiogramPDFAudiogramSectionProvider, &unk_29D663FC0);
    *&v45 = v13;

    v17 = v11;
    sub_29D61B87C(a1);
    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v18 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    v43 = v9;
    v44 = v10;
    v41 = v10;
    v42[0] = a3;
    v40 = v9;
    v39[0] = a4;
    sub_29D61E590(v42, v39, &v45);

    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v19 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    sub_29D61F4CC(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29D661D20;
    *(v20 + 32) = v18;
  }

  else
  {
    sub_29D61F3A8(0);
    v22 = v21;
    v43 = v21;
    v23 = sub_29D61F484(&qword_2A17ACBA0, sub_29D61F3A8, MEMORY[0x29EDC1B40]);
    v44 = v23;
    v41 = v23;
    v42[0] = a3;
    v40 = v22;
    v39[0] = a4;
    sub_29D61E590(v42, v39, &v45);

    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v24 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    v43 = v22;
    v44 = v23;
    v41 = v23;
    v42[0] = a3;
    v40 = v22;
    v39[0] = a4;
    v25 = *(a2 + 16);
    sub_29D5E8C84(v42, &v45);
    sub_29D5E8C84(v39, &v36);
    v26 = type metadata accessor for AudiogramPDFAudiogramSectionProvider();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    type metadata accessor for AudiogramPDFChartDataSource();
    v28 = swift_allocObject();
    v29 = v46;
    *(v27 + 32) = v45;
    *(v27 + 48) = v29;
    v30 = v37;
    *(v27 + 72) = v36;
    *(v28 + 16) = v25;
    *(v27 + 24) = v28;
    *(v27 + 64) = v47;
    *(v27 + 88) = v30;
    *(v27 + 104) = v38;
    *(&v46 + 1) = v26;
    v47 = sub_29D61F484(&qword_2A17ACBA8, type metadata accessor for AudiogramPDFAudiogramSectionProvider, &unk_29D663FC0);
    *&v45 = v27;

    v31 = v25;
    sub_29D5E8D7C(v39);
    sub_29D5E8D7C(v42);
    v19 = sub_29D65EA74();
    sub_29D5DF1C4(&v45);
    sub_29D61F4CC(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29D661D20;
    *(v20 + 32) = v24;
  }

  *(v20 + 40) = v19;
  sub_29D65EA44();

  v32 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  sub_29D61F4CC(0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D661D90;
  *(v33 + 32) = v32;
  v34 = sub_29D65EA44();

  return v34;
}

id sub_29D61E590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  sub_29D5E8C84(a1, v16);
  sub_29D5E8C84(a2, v14);
  v7 = type metadata accessor for AudiogramPDFOverviewSectionProvider();
  v8 = swift_allocObject();
  *(v8 + 24) = v6;
  type metadata accessor for AudiogramPDFLongitudinalChartDataSource();
  v9 = swift_allocObject();
  v10 = v16[1];
  *(v8 + 32) = v16[0];
  *(v8 + 48) = v10;
  v11 = v14[1];
  *(v8 + 72) = v14[0];
  *(v9 + 16) = v6;
  *(v8 + 16) = v9;
  *(v8 + 64) = v17;
  *(v8 + 88) = v11;
  *(v8 + 104) = v15;
  a3[3] = v7;
  a3[4] = sub_29D61F484(&qword_2A17ACBC8, type metadata accessor for AudiogramPDFOverviewSectionProvider, &unk_29D661F40);
  *a3 = v8;
  v12 = v6;

  return v12;
}

uint64_t sub_29D61E694(void *a1)
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v3 = sub_29D61EF70(*(v1 + 16));
  v6[8] = sub_29D65E754();
  v6[9] = MEMORY[0x29EDC20A0];
  v6[5] = v3;
  sub_29D61DDCC(a1, v6);
  v4 = objc_allocWithZone(sub_29D65E924());
  return sub_29D65E914();
}

uint64_t sub_29D61E7AC()
{
  sub_29D5DF1C4((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudiogramPDFProviderRequest(uint64_t a1)
{
  result = qword_2A17ACB70;
  if (!qword_2A17ACB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D61E884(uint64_t a1)
{
  sub_29D61F2E4(319, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D61E930(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D61E948(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D61E99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_29D61E9F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_29D61EA28()
{
  sub_29D65E454();
  v0 = sub_29D65E444();
  v1 = [v0 CGColor];

  v9 = sub_29D65E944();
  v10 = MEMORY[0x29EDC2290];
  sub_29D5E3C20(v8);
  sub_29D65E934();
  v2 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  v9 = sub_29D65E684();
  v10 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(v8);
  sub_29D65E694();
  v3 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D61EB84(v8);
  v4 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D61F564(0, &qword_2A17AC348, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661ED0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  v6 = MEMORY[0x29ED60BF0]();

  return v6;
}

uint64_t sub_29D61EB84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D65E634();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = HKCurrentLocaleCountryCodeIfUnknown();
  v8 = sub_29D65FF64();
  v10 = v9;
  if (v8 == sub_29D65FF64() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_29D660694();

    if ((v13 & 1) == 0)
    {
      v14 = sub_29D65E584();
      v15 = MEMORY[0x29EDC1DD0];
      a1[3] = v14;
      a1[4] = v15;
      sub_29D5E3C20(a1);
      return sub_29D65E574();
    }
  }

  if (qword_2A17AC038 != -1)
  {
    swift_once();
  }

  v17 = qword_2A17AD698;
  v18 = *MEMORY[0x29EDC7640];
  v19 = objc_opt_self();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v20 = [v19 clearColor];
  v31 = sub_29D5ED468();
  *&v30 = v20;
  sub_29D5E20A8(&v30, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v17;
  sub_29D62B790(v29, v18, isUniquelyReferenced_nonNull_native);
  v22 = v28;
  if (qword_2A17AC030 != -1)
  {
    swift_once();
  }

  v23 = qword_2A17AD688;
  v24 = unk_2A17AD690;
  (*(v3 + 104))(v6, *MEMORY[0x29EDC1F60], v2);
  v25 = sub_29D65F124();
  v26 = MEMORY[0x29EDC2C00];
  a1[3] = v25;
  a1[4] = v26;
  sub_29D5E3C20(a1);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return MEMORY[0x29ED614D0](v23, v24, v6, v22);
}

uint64_t sub_29D61EE80()
{
  sub_29D61F41C(0, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D661D90;
  v2 = sub_29D65F1F4();
  v3 = MEMORY[0x29EDC2C70];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  sub_29D5E3C20((v1 + 32));
  sub_29D65F1E4();
  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_29D61EF70(void *a1)
{
  v2 = sub_29D65DC34();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65DCC4();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v22[2] = sub_29D65E754();
  v9 = sub_29D65EAA4();
  v10 = a1;
  v11 = sub_29D65EA94();
  v22[6] = v9;
  v22[7] = MEMORY[0x29EDC24D0];
  v22[3] = v11;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v12 = sub_29D65DA74();
  v22[0] = v13;
  v22[1] = v12;
  sub_29D61F2E4(0, &qword_2A17ACB80, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v14 = sub_29D65E844();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D661D20;
  v19 = v18 + v17;
  v20 = *(v15 + 104);
  v20(v19, *MEMORY[0x29EDC2138], v14);
  v20(v19 + v16, *MEMORY[0x29EDC2140], v14);
  sub_29D63D1C8(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v3 + 104))(v6, *MEMORY[0x29EDB9C78], v2);
  sub_29D65DC44();
  (*(v3 + 8))(v6, v2);
  return sub_29D65E744();
}

void sub_29D61F2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D61F348()
{
  result = qword_2A17ACB88;
  if (!qword_2A17ACB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACB88);
  }

  return result;
}

void sub_29D61F3A8(uint64_t a1)
{
  if (!qword_2A17ACB90)
  {
    sub_29D61F564(255, &qword_2A17ACB98, MEMORY[0x29EDC9C68]);
    v1 = sub_29D65E0A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACB90);
    }
  }
}

void sub_29D61F41C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D61F484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D61F4CC(uint64_t a1)
{
  if (!qword_2A17ACBB0)
  {
    sub_29D61F41C(255, &qword_2A17ACBB8, &qword_2A17ACBC0, MEMORY[0x29EDC2038], MEMORY[0x29EDC9A40]);
    v1 = sub_29D660684();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACBB0);
    }
  }
}

void sub_29D61F564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D61F41C(255, &qword_2A17AC350, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D61F5F0(uint64_t a1)
{
  v2 = sub_29D65F1F4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29D5F90A0(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D5F90A0((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x29EDC2C70];
      v15 = sub_29D5E3C20(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_29D5DBB48(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29D61F7BC(uint64_t a1)
{
  v2 = sub_29D65E9E4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29D5F90D8(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29D5F90D8((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_29D622C34(&qword_2A17ACA58, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
      v15 = sub_29D5E3C20(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_29D5DBB48(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29D61F9B4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  v2[20] = *(type metadata accessor for AudiogramPDFAudiogramChart.Model(0) - 8);
  v2[21] = swift_task_alloc();
  sub_29D622A88(0, &qword_2A17AC318, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D61FAF4, 0, 0);
}

uint64_t sub_29D61FAF4()
{
  sub_29D5E8C84(v0[18] + 32, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_29D5E32A8(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v4 = sub_29D61FCBC;
LABEL_5:
    v3[1] = v4;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  sub_29D5E8D7C((v0 + 2));
  v0[26] = 0;
  sub_29D5E8C84(v0[18] + 72, (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    sub_29D5E32A8(v0 + 7, v0[10]);
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v4 = sub_29D61FF40;
    goto LABEL_5;
  }

  sub_29D5E8D7C((v0 + 7));
  v0[30] = 0;
  v5 = *(v0[18] + 16);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_29D620118;

  return sub_29D61ADD8(v5);
}

uint64_t sub_29D61FCBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_29D620700;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_29D61FDE4;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D61FDE4()
{
  sub_29D5DF1C4(v0 + 2);
  v0[26] = v0[25];
  sub_29D5E8C84(v0[18] + 72, (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    sub_29D5E32A8(v0 + 7, v0[10]);
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_29D61FF40;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  else
  {
    sub_29D5E8D7C((v0 + 7));
    v0[30] = 0;
    v4 = *(v0[18] + 16);
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_29D620118;

    return sub_29D61ADD8(v4);
  }
}

uint64_t sub_29D61FF40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {

    v5 = sub_29D620774;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_29D620070;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D620070()
{
  sub_29D5DF1C4(v0 + 7);
  v0[30] = v0[29];
  v1 = *(v0[18] + 16);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_29D620118;

  return sub_29D61ADD8(v1);
}

uint64_t sub_29D620118(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_29D6207E8;
  }

  else
  {
    v4 = sub_29D62022C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D62022C()
{
  v36 = v0;
  if (qword_2A17AC040 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v1 = v0[32];
    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v0[20];
    v35[0] = MEMORY[0x29EDCA190];
    sub_29D5F90A0(0, v2, 0);
    if (*(v1 + 16))
    {
      v4 = v35[0];
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = v0[33];
      v7 = *(v3 + 72);
      sub_29D6227FC(v1 + v5, v0[21]);
      sub_29D620868(v0 + 12);
      if (v6)
      {
        sub_29D622954(v0[21], type metadata accessor for AudiogramPDFAudiogramChart.Model);
      }

      v34 = v7;
      sub_29D622954(v0[21], type metadata accessor for AudiogramPDFAudiogramChart.Model);
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_29D5F90A0((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[15];
      v12 = v0[16];
      v13 = sub_29D6228F8((v0 + 12), v11);
      v14 = *(v11 - 8);
      v15 = swift_task_alloc();
      (*(v14 + 16))(v15, v13, v11);
      sub_29D622860(v10, v15, v35, v11, v12);
      sub_29D5DF1C4(v0 + 12);

      v16 = v35[0];
      if (v2 == 1)
      {
        break;
      }

      v22 = v1 + v34 + v5;
      v23 = 1;
      v33 = v1;
      while (v23 < *(v1 + 16))
      {
        sub_29D6227FC(v22, v0[21]);
        sub_29D620868(v0 + 12);
        v24 = v2;
        sub_29D622954(v0[21], type metadata accessor for AudiogramPDFAudiogramChart.Model);
        v35[0] = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_29D5F90A0((v25 > 1), v26 + 1, 1);
        }

        ++v23;
        v27 = v0[15];
        v28 = v0[16];
        v29 = sub_29D6228F8((v0 + 12), v27);
        v30 = *(v27 - 8);
        v31 = swift_task_alloc();
        (*(v30 + 16))(v31, v29, v27);
        sub_29D622860(v26, v31, v35, v27, v28);
        sub_29D5DF1C4(v0 + 12);

        v16 = v35[0];
        v22 += v34;
        v2 = v24;
        v32 = v24 == v23;
        v1 = v33;
        if (v32)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_12:

  v17 = v0[22];
  v18 = v0[17];
  v19 = sub_29D65E374();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_29D65E404();
  v20 = sub_29D65E414();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_29D620700()
{
  sub_29D5DF1C4((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D620774()
{
  sub_29D5DF1C4((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D6207E8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_29D620868@<X0>(uint64_t *a4@<X8>)
{
  sub_29D622A88(0, &qword_2A17ACBD8, MEMORY[0x29EDC2C78], MEMORY[0x29EDC9E90]);
  v5 = sub_29D65F1F4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D661D90;
  sub_29D65F1E4();
  v9 = sub_29D61F5F0(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  a4[3] = &type metadata for AudiogramPDFPage;
  result = sub_29D6012D8();
  a4[4] = result;
  *a4 = v9;
  return result;
}

uint64_t sub_29D6209FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v49 = a2;
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudiogramPDFOverlayContextPills(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65E634();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D65E684();
  v59 = v17;
  v60 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(&v57);
  sub_29D65E694();
  v54 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v18 = sub_29D65DA74();
  v20 = v19;
  v21 = sub_29D65E494();
  (*(v13 + 104))(v16, *MEMORY[0x29EDC1F60], v12);
  v59 = sub_29D65F124();
  v60 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(&v57);
  MEMORY[0x29ED614D0](v18, v20, v16, v21);
  v53 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  v59 = v17;
  v22 = MEMORY[0x29EDC1FC0];
  v60 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(&v57);
  sub_29D65E694();
  v52 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  sub_29D6227FC(a1, v11);
  v23 = sub_29D659AD4(v11);
  v59 = &type metadata for PDFHStackWithEqualWidth;
  v60 = sub_29D5F95B8();
  v57 = v23;
  v58 = xmmword_29D663F60;
  sub_29D622954(v11, type metadata accessor for AudiogramPDFOverlayContextPills);
  v51 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  v59 = v17;
  v60 = v22;
  sub_29D5E3C20(&v57);
  sub_29D65E694();
  v50 = sub_29D65E884();
  v24 = sub_29D5DF1C4(&v57);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v26 = sub_29D65F1F4();
  v27 = MEMORY[0x29EDC2C70];
  v59 = v26;
  v60 = MEMORY[0x29EDC2C70];
  sub_29D5E3C20(&v57);
  sub_29D65F1E4();
  v49 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  v59 = v17;
  v60 = v22;
  sub_29D5E3C20(&v57);
  sub_29D65E694();
  v48 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  sub_29D6227FC(a1, v7);
  v28 = type metadata accessor for AudiogramPDFAudiogramChart(0);
  swift_allocObject();
  v29 = sub_29D624FF0(v7);
  v59 = v28;
  v30 = sub_29D622C34(&qword_2A17ACBE0, type metadata accessor for AudiogramPDFAudiogramChart, &unk_29D664220);
  v60 = v30;
  v57 = v29;
  v31 = sub_29D5E32A8(&v57, v28);
  v56[3] = v28;
  v56[4] = *(v30 + 8);
  v32 = sub_29D5E3C20(v56);
  (*(*(v28 - 8) + 16))(v32, v31, v28);
  v33 = sub_29D65E884();
  sub_29D5DF1C4(v56);
  sub_29D5DF1C4(&v57);
  v59 = v17;
  v60 = v22;
  sub_29D5E3C20(&v57);
  sub_29D65E694();
  v34 = sub_29D65E884();
  v35 = sub_29D5DF1C4(&v57);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v59 = v26;
  v60 = v27;
  sub_29D5E3C20(&v57);
  sub_29D65F1E4();
  v37 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  v59 = v17;
  v60 = v22;
  sub_29D5E3C20(&v57);
  sub_29D65E694();
  v38 = sub_29D65E884();
  v39 = sub_29D5DF1C4(&v57);
  MEMORY[0x2A1C7C4A8](v39, v40);
  v59 = v26;
  v60 = v27;
  sub_29D5E3C20(&v57);
  sub_29D65F1E4();
  v41 = sub_29D65E884();
  sub_29D5DF1C4(&v57);
  sub_29D5E8F38(0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_29D663690;
  v43 = v53;
  *(v42 + 32) = v54;
  *(v42 + 40) = v43;
  v44 = v51;
  *(v42 + 48) = v52;
  *(v42 + 56) = v44;
  v45 = v49;
  *(v42 + 64) = v50;
  *(v42 + 72) = v45;
  *(v42 + 80) = v48;
  *(v42 + 88) = v33;
  *(v42 + 96) = v34;
  *(v42 + 104) = v37;
  *(v42 + 112) = v38;
  *(v42 + 120) = v41;
  v46 = MEMORY[0x29ED60BF0]();

  return v46;
}

uint64_t sub_29D62109C(void *a1, uint64_t a2)
{
  v4 = sub_29D65E634();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudiogramPDFChartData(0);
  v9 = sub_29D65DB84();
  v10 = [a1 stringFromDate_];

  v11 = sub_29D65FF64();
  v13 = v12;

  v14 = sub_29D65E4B4();
  v15 = *MEMORY[0x29EDC1F60];
  v16 = *(v5 + 104);
  v32 = v4;
  v16(v8, v15, v4);
  v17 = sub_29D65F124();
  v34 = v17;
  v35 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v33);
  MEMORY[0x29ED614D0](v11, v13, v8, v14);
  v31 = sub_29D65E884();
  sub_29D5DF1C4(v33);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D622730(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D661D90;
  v19 = (a2 + *(type metadata accessor for AudiogramPDFAudiogramChart.Model(0) + 32));
  v20 = *v19;
  v21 = v19[1];
  *(v18 + 56) = MEMORY[0x29EDC99B0];
  *(v18 + 64) = sub_29D5E3BCC();
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v22 = sub_29D65FF74();
  v24 = v23;

  v25 = sub_29D65E4B4();
  v16(v8, v15, v32);
  v34 = v17;
  v35 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v33);
  MEMORY[0x29ED614D0](v22, v24, v8, v25);
  v26 = sub_29D65E884();
  sub_29D5DF1C4(v33);
  sub_29D5E8F38(0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D661D20;
  *(v27 + 32) = v31;
  *(v27 + 40) = v26;
  v28 = MEMORY[0x29ED60BF0]();

  return v28;
}

uint64_t sub_29D621408(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D65E634();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v79 = qword_2A1A20C18;
  sub_29D65DA74();
  v80 = "HEARING_TEST_RESCINDED_LINK";
  sub_29D622730(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v9 = v8;
  v10 = swift_allocObject();
  v78 = xmmword_29D661D90;
  *(v10 + 16) = xmmword_29D661D90;
  v11 = (a2 + *(type metadata accessor for AudiogramPDFChartData(0) + 32));
  v12 = *v11;
  v13 = v11[1];
  v69 = v11[2];
  v14 = v11[3];
  v67 = v13;
  v68 = v14;
  v70 = *(v11 + 32);
  v76 = v12;
  v15 = v12 == 3;
  if (v12 == 3)
  {
    v16 = 2;
  }

  else
  {
    v16 = v12;
  }

  v17 = v12 >> 8;
  if (v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17;
  }

  LODWORD(v75) = v18;
  v19 = sub_29D622AEC(v16);
  v21 = v20;
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v22 = sub_29D5E3BCC();
  *(v10 + 64) = v22;
  *(v10 + 32) = v19;
  *(v10 + 40) = v21;
  v23 = sub_29D65FF74();
  v25 = v24;

  v26 = sub_29D65E4B4();
  v27 = *MEMORY[0x29EDC1F60];
  v28 = *(v4 + 104);
  v28(v7, v27, v3);
  v29 = sub_29D65F124();
  v74 = v3;
  v30 = v29;
  v82 = v29;
  v83 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v81);
  MEMORY[0x29ED614D0](v23, v25, v7, v26);
  v77 = sub_29D65E884();
  sub_29D5DF1C4(v81);
  sub_29D65DA74();
  v73 = v9;
  v31 = swift_allocObject();
  *(v31 + 16) = v78;
  v32 = sub_29D622AEC(v75);
  *(v31 + 56) = MEMORY[0x29EDC99B0];
  *(v31 + 64) = v22;
  v75 = v22;
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = sub_29D65FF74();
  v36 = v35;

  v37 = sub_29D65E4B4();
  v71 = v27;
  v38 = v74;
  v72 = v28;
  v28(v7, v27, v74);
  v39 = v30;
  v40 = v76;
  v82 = v39;
  v83 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v81);
  MEMORY[0x29ED614D0](v34, v36, v7, v37);
  v41 = sub_29D65E884();
  sub_29D5DF1C4(v81);
  v42 = MEMORY[0x29EDC1DD0];
  v43 = v7;
  if (v40 == 3 || (v69 & 1) != 0)
  {
    v82 = sub_29D65E584();
    v83 = v42;
    sub_29D5E3C20(v81);
    sub_29D65E574();
  }

  else
  {
    sub_29D65DA74();
    v44 = v38;
    v45 = swift_allocObject();
    *(v45 + 16) = v78;
    v81[0] = v67;
    v46 = sub_29D660674();
    v47 = v75;
    *(v45 + 56) = MEMORY[0x29EDC99B0];
    *(v45 + 64) = v47;
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v38 = v44;
    v49 = sub_29D65FF74();
    v51 = v50;

    v52 = sub_29D65E4B4();
    v72(v43, v71, v44);
    v82 = v39;
    v83 = MEMORY[0x29EDC2C00];
    sub_29D5E3C20(v81);
    v53 = v49;
    v42 = MEMORY[0x29EDC1DD0];
    MEMORY[0x29ED614D0](v53, v51, v43, v52);
  }

  v54 = sub_29D65E884();
  sub_29D5DF1C4(v81);
  if (v40 == 3 || (v70 & 1) != 0)
  {
    v82 = sub_29D65E584();
    v83 = v42;
    sub_29D5E3C20(v81);
    sub_29D65E574();
  }

  else
  {
    sub_29D65DA74();
    v55 = swift_allocObject();
    *(v55 + 16) = v78;
    v81[0] = v68;
    v56 = sub_29D660674();
    v57 = v75;
    *(v55 + 56) = MEMORY[0x29EDC99B0];
    *(v55 + 64) = v57;
    *(v55 + 32) = v56;
    *(v55 + 40) = v58;
    v59 = sub_29D65FF74();
    v61 = v60;

    v62 = sub_29D65E4B4();
    v72(v43, v71, v38);
    v82 = v39;
    v83 = MEMORY[0x29EDC2C00];
    sub_29D5E3C20(v81);
    MEMORY[0x29ED614D0](v59, v61, v43, v62);
  }

  v63 = sub_29D65E884();
  sub_29D5DF1C4(v81);
  sub_29D5E8F38(0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29D663260;
  *(v64 + 32) = v77;
  *(v64 + 40) = v41;
  *(v64 + 48) = v54;
  *(v64 + 56) = v63;
  v65 = MEMORY[0x29ED60BF0]();

  return v65;
}

uint64_t sub_29D621B34(uint64_t a1, uint64_t a2)
{
  sub_29D621BE4(a2, v8);
  v3 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D621F78(a2, v8);
  v4 = sub_29D65E884();
  sub_29D5DF1C4(v8);
  sub_29D5E8F38(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661D20;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = MEMORY[0x29ED60BF0]();

  return v6;
}

double sub_29D621BE4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65E634();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  if (*(a1 + *(v9 + 24)) == 1)
  {
    v10 = v9;
    v30 = v5;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v27 = 0xE000000000000000;
    v29 = sub_29D65DA74();
    v12 = v11;
    if (*(a1 + *(v10 + 28)))
    {
      v13 = 0x5453524946;
    }

    else
    {
      v13 = 0x4452494854;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29D660554();

    v31 = 0xD00000000000001ALL;
    v32 = 0x800000029D668770;
    MEMORY[0x29ED62350](v13, 0xE500000000000000);

    MEMORY[0x29ED62350](0xD000000000000015, 0x800000029D6687F0);
    v27 = 0xE000000000000000;
    v14 = sub_29D65DA74();
    v16 = v15;

    v17 = sub_29D6229CC();
    v19 = MEMORY[0x2A1C7C4A8](v17, v18);
    v20 = (v30 + 104);
    if (v21)
    {
      *(&v29 - 4) = v14;
      *(&v29 - 3) = v16;
      v27 = v29;
      v28 = v12;
    }

    else
    {
      *(&v29 - 4) = v29;
      *(&v29 - 3) = v12;
      v27 = v14;
      v28 = v16;
    }

    (*v20)(v8, *MEMORY[0x29EDC1F60], v4, v19);
    v22 = sub_29D65E834();
    v23 = MEMORY[0x29EDC2130];
    a2[3] = v22;
    a2[4] = v23;
    sub_29D5E3C20(a2);
    sub_29D65E824();
  }

  else
  {
    v24 = sub_29D65E584();
    v25 = MEMORY[0x29EDC1DD0];
    a2[3] = v24;
    a2[4] = v25;
    sub_29D5E3C20(a2);
    sub_29D65E574();
  }

  return result;
}

double sub_29D621F78@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65E634();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  if (*(a1 + *(v9 + 20)) == 1)
  {
    v10 = v9;
    v30 = v5;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v27 = 0xE000000000000000;
    v29 = sub_29D65DA74();
    v12 = v11;
    if (*(a1 + *(v10 + 28)))
    {
      v13 = 0x5453524946;
    }

    else
    {
      v13 = 0x4452494854;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_29D660554();

    v31 = 0xD00000000000001ALL;
    v32 = 0x800000029D668770;
    MEMORY[0x29ED62350](v13, 0xE500000000000000);

    MEMORY[0x29ED62350](0xD000000000000015, 0x800000029D668790);
    v27 = 0xE000000000000000;
    v14 = sub_29D65DA74();
    v16 = v15;

    v17 = sub_29D6229CC();
    v19 = MEMORY[0x2A1C7C4A8](v17, v18);
    v20 = (v30 + 104);
    if (v21)
    {
      *(&v29 - 4) = v14;
      *(&v29 - 3) = v16;
      v27 = v29;
      v28 = v12;
    }

    else
    {
      *(&v29 - 4) = v29;
      *(&v29 - 3) = v12;
      v27 = v14;
      v28 = v16;
    }

    (*v20)(v8, *MEMORY[0x29EDC1F60], v4, v19);
    v22 = sub_29D65E834();
    v23 = MEMORY[0x29EDC2130];
    a2[3] = v22;
    a2[4] = v23;
    sub_29D5E3C20(a2);
    sub_29D65E824();
  }

  else
  {
    v24 = sub_29D65E584();
    v25 = MEMORY[0x29EDC1DD0];
    a2[3] = v24;
    a2[4] = v25;
    sub_29D5E3C20(a2);
    sub_29D65E574();
  }

  return result;
}

uint64_t sub_29D62230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v42 = a4;
  v43 = a6;
  v44 = a3;
  v40 = a1;
  v8 = sub_29D65E634();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65F124();
  v41 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v39 = &v39 - v19;
  v20 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v21 = a5(v20);
  v22 = *MEMORY[0x29EDC1F60];
  v23 = *(v9 + 104);
  v23(v12, v22, v8);
  MEMORY[0x29ED614D0](v40, a2, v12, v21);
  v24 = v42;
  v25 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v26 = v43(v25);
  v23(v12, v22, v8);
  v27 = v16;
  MEMORY[0x29ED614D0](v44, v24, v12, v26);
  sub_29D622A88(0, &qword_2A17AC370, sub_29D5E9624, MEMORY[0x29EDC9E90]);
  v28 = swift_allocObject();
  v29 = MEMORY[0x29EDC2C08];
  *(v28 + 16) = xmmword_29D661D20;
  *(v28 + 56) = v13;
  *(v28 + 64) = v29;
  v30 = MEMORY[0x29EDC2C00];
  *(v28 + 72) = MEMORY[0x29EDC2C00];
  v31 = sub_29D5E3C20((v28 + 32));
  v32 = v41;
  v33 = *(v41 + 16);
  v34 = v39;
  v33(v31, v39, v13);
  *(v28 + 104) = v13;
  *(v28 + 112) = v29;
  *(v28 + 120) = v30;
  v35 = sub_29D5E3C20((v28 + 80));
  v33(v35, v27, v13);
  v36 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  v37 = *(v32 + 8);
  v37(v27, v13);
  v37(v34, v13);
  return v36;
}

uint64_t sub_29D622620()
{
  sub_29D622C24(*(v0 + 16));

  sub_29D5E8D7C(v0 + 32);
  sub_29D5E8D7C(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D622694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D5E8B90;

  return sub_29D61F9B4(a1);
}

void sub_29D622730(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_29D622798()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_2A17ACBD0 = v0;
  return result;
}

uint64_t sub_29D6227FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D622860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29D5E3C20(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29D5DBB48(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29D6228F8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_29D622954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D622A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D622AEC(char a1)
{
  if (a1 == 2)
  {
    return 45;
  }

  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      return sub_29D65DA74();
    }

    goto LABEL_8;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_29D65DA74();
}

void sub_29D622C24(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_29D622C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall HUNoiseSettings.setUpNoiseNotifications()()
{
  [v0 setOnboardingCompleted_];
  [v0 setNoiseEnabled_];
  [v0 setNotificationsEnabled_];

  [v0 setNotificationThreshold_];
}

uint64_t sub_29D622D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29D65F314();
  sub_29D5EDFD0(v4, a2);
  sub_29D5DE6EC(v4, a2);
  sub_29D65FFC4();
  sub_29D65FFC4();
  return sub_29D65F304();
}

void sub_29D622DF0(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 getActivePairedDevice];

    if (v4)
    {
      if ([v4 valueForProperty:*MEMORY[0x29EDC5E00]])
      {
        sub_29D660474();
        sub_29D65EE94();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      v31[0] = v29;
      v31[1] = v30;
      if (*(&v30 + 1))
      {
        if (swift_dynamicCast())
        {
          v5 = a1;
          _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
          v6 = sub_29D65F2F4();
          v7 = sub_29D660204();

          if (os_log_type_enabled(v6, v7))
          {
            v8 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            *&v31[0] = v9;
            *v8 = 136446722;
            v10 = sub_29D6607A4();
            v12 = sub_29D64A1D0(v10, v11, v31);

            *(v8 + 4) = v12;
            *(v8 + 12) = 2082;
            swift_getErrorValue();
            v13 = sub_29D6606D4();
            v15 = sub_29D64A1D0(v13, v14, v31);

            *(v8 + 14) = v15;
            *(v8 + 22) = 2082;
            v16 = sub_29D64A1D0(v27, v28, v31);

            *(v8 + 24) = v16;
            _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Could not access isHeadphoneExposureNotificationsEnabledOnActiveWatch. Error: %{public}s Watch Software %{public}s", v8, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x29ED63350](v9, -1, -1);
            MEMORY[0x29ED63350](v8, -1, -1);
          }

          else
          {
          }

          goto LABEL_14;
        }
      }

      else
      {

        sub_29D624B14(v31);
      }
    }
  }

  v17 = a1;
  v4 = sub_29D65F2F4();
  v18 = sub_29D660204();

  if (os_log_type_enabled(v4, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v31[0] = v20;
    *v19 = 136446466;
    v21 = sub_29D6607A4();
    v23 = sub_29D64A1D0(v21, v22, v31);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    swift_getErrorValue();
    v24 = sub_29D6606D4();
    v26 = sub_29D64A1D0(v24, v25, v31);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_29D5D7000, v4, v18, "[%{public}s] Could not access isHeadphoneExposureNotificationsEnabledOnActiveWatch. Error: %{public}s Could not access active device properties.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v20, -1, -1);
    MEMORY[0x29ED63350](v19, -1, -1);
  }

LABEL_14:
}

uint64_t sub_29D6231B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();

  return v1;
}

uint64_t sub_29D623228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();
}

uint64_t sub_29D6232A0()
{
  v1 = MEMORY[0x29EDB8B00];
  sub_29D605E70(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v29 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v28 - v5;
  sub_29D5EA87C(0);
  v28[1] = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = v28 - v13;
  sub_29D624B98(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], v1);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v28 - v19;
  v21 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__promotionVisibility;
  v31 = 0;
  sub_29D65F8B4();
  (*(v17 + 32))(v0 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__featureStatus;
  v23 = sub_29D65E0E4();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_29D5EA900(v14, v10);
  sub_29D65F8B4();
  sub_29D5EA964(v14);
  (*(v3 + 32))(v0 + v22, v6, v29);
  v24 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger;
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v25 = sub_29D65F314();
  v26 = sub_29D5DE6EC(v25, qword_2A1A20C00);
  (*(*(v25 - 8) + 16))(v0 + v24, v26, v25);
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_notificationsCancellable) = 0;
  sub_29D62362C();
  LOBYTE(v25) = sub_29D623808();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v25 & 1;

  sub_29D65F8E4();
  sub_29D623F7C();
  return v0;
}

uint64_t sub_29D62362C()
{
  sub_29D5EA87C(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v16 - v6;
  if ((sub_29D623BB8() & 1) == 0)
  {
    v11 = MEMORY[0x29EDC1758];
    goto LABEL_8;
  }

  v8 = [objc_opt_self() isHeadphoneExposureNotificationsEnabled];
  v9 = v8;
  v10 = sub_29D623A88(v8);
  if (v10 != 2)
  {
    if (((v9 | v10) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = MEMORY[0x29EDC1760];
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = MEMORY[0x29EDC1768];
LABEL_8:
  v12 = *v11;
  v13 = sub_29D65E0E4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  sub_29D65E0E4();
  (*(v14 + 56))(v7, 0, 1, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v7, v3);

  sub_29D65F8E4();
  return sub_29D5EA964(v7);
}

uint64_t sub_29D623808()
{
  v1 = sub_29D65F314();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() isHeadphoneExposureNotificationsEnabled];
  v7 = v6;
  v8 = sub_29D623A88(v6);
  if (v8 == 2)
  {
    if (!v7)
    {
      v9 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v9 = 1;
    goto LABEL_7;
  }

  v9 = v8;
LABEL_7:
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger, v1);
  v10 = sub_29D65F2F4();
  v11 = sub_29D660214();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446722;
    v14 = sub_29D6607A4();
    v16 = sub_29D64A1D0(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v9 & 1;
    *(v12 + 18) = 1024;
    v17 = v9 ^ 1;
    *(v12 + 20) = (v9 ^ 1) & 1;
    _os_log_impl(&dword_29D5D7000, v10, v11, "[%{public}s] Feature Enabled %{BOOL}d. Promotion Visble: %{BOOL}d", v12, 0x18u);
    sub_29D5DF1C4(v13);
    MEMORY[0x29ED63350](v13, -1, -1);
    MEMORY[0x29ED63350](v12, -1, -1);

    (*(v2 + 8))(v5, v1);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
    v17 = v9 ^ 1;
  }

  return v17 & 1;
}

uint64_t sub_29D623A88(uint64_t a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if (sub_29D65E194())
  {
    v1 = objc_opt_self();
    if ([v1 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
    {
      v7[0] = 0;
      result = [v1 isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError_];
      v3 = v7[0];
      if (!v7[0])
      {
        return result;
      }

      swift_willThrow();
      v4 = qword_2A1A1EA68;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_29D65F314();
      sub_29D5DE6EC(v6, qword_2A1A20C00);
      sub_29D622DF0(v5);
    }
  }

  return 2;
}

uint64_t sub_29D623BB8()
{
  v0 = objc_opt_self();
  v1 = [v0 isHeadphoneExposureNotificationsEnabled];
  if (v1)
  {
    v2 = [v0 isHeadphoneExposureMeasureLevelsEnabled];
    v3 = v2;
    v4 = sub_29D623A88(v2);
    if (v4 == 2)
    {
      if ((v3 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v4;
      v8 = sub_29D623C74();
      if (v8 == 2)
      {
        if (!v3)
        {
LABEL_11:
          v5 = 0;
          return v5 & 1;
        }
      }

      else if ((v3 & 1) == 0)
      {
        v5 = v7 ^ 1 | v8;
        return v5 & 1;
      }
    }
  }

  else if (sub_29D623A88(v1) != 2)
  {
    sub_29D623C74();
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_29D623C74()
{
  v23[1] = *MEMORY[0x29EDCA608];
  v1 = sub_29D65F314();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ((sub_29D65E194() & 1) == 0)
  {
    return 2;
  }

  v6 = objc_opt_self();
  if (![v6 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    return 2;
  }

  v23[0] = 0;
  v7 = [v6 isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError_];
  v8 = v23[0];
  if (!v23[0])
  {
    return v7;
  }

  swift_willThrow();
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger, v1);
  v9 = v8;
  v10 = sub_29D65F2F4();
  v11 = sub_29D660204();

  if (!os_log_type_enabled(v10, v11))
  {

    (*(v2 + 8))(v5, v1);
    return 2;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v23[0] = v13;
  *v12 = 136446466;
  v14 = sub_29D6607A4();
  v16 = sub_29D64A1D0(v14, v15, v23);

  *(v12 + 4) = v16;
  *(v12 + 12) = 2082;
  swift_getErrorValue();
  v17 = sub_29D6606D4();
  v19 = sub_29D64A1D0(v17, v18, v23);

  *(v12 + 14) = v19;
  _os_log_impl(&dword_29D5D7000, v10, v11, "[%{public}s] Could not access isHeadphoneExposureMeasureLevelsEnabledOnActiveWatch. Error: %{public}s", v12, 0x16u);
  v20 = 2;
  swift_arrayDestroy();
  MEMORY[0x29ED63350](v13, -1, -1);
  MEMORY[0x29ED63350](v12, -1, -1);

  (*(v2 + 8))(v5, v1);
  return v20;
}

uint64_t sub_29D623F7C()
{
  v1 = v0;
  sub_29D6247F8(0);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D6602F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v21 - v14;
  sub_29D624954(&qword_2A1A1E348, type metadata accessor for HeadphoneNotificationsAvailability, &unk_29D6640B0);
  v16 = sub_29D65E284();
  [objc_opt_self() startObservingForChanges];
  v17 = [objc_opt_self() defaultCenter];
  sub_29D660304();

  (*(v8 + 16))(v11, v15, v7);
  v24 = v16;
  sub_29D6248E4(0);
  sub_29D624954(&qword_2A1A1DDD0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  sub_29D624954(&qword_2A1A1DDF8, sub_29D6248E4, MEMORY[0x29EDB8A00]);

  sub_29D65F7D4();
  swift_allocObject();
  swift_weakInit();
  sub_29D624954(&qword_2A1A1DE08, sub_29D6247F8, MEMORY[0x29EDB8948]);
  v18 = v22;
  v19 = sub_29D65F9B4();

  (*(v23 + 8))(v6, v18);
  (*(v8 + 8))(v15, v7);
  *(v1 + OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_notificationsCancellable) = v19;
}

uint64_t sub_29D62433C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D62362C();
    sub_29D623808();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_29D65F8E4();
  }

  return result;
}

uint64_t sub_29D6243D4()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__promotionVisibility;
  v2 = MEMORY[0x29EDB8B00];
  sub_29D624B98(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability__featureStatus;
  sub_29D605E70(0, &qword_2A1A1E750, sub_29D5EA87C, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16HearingAppPlugin34HeadphoneNotificationsAvailability_logger;
  v7 = sub_29D65F314();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneNotificationsAvailability(uint64_t a1)
{
  result = qword_2A1A1E9E8;
  if (!qword_2A1A1E9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6245A4(uint64_t a1)
{
  sub_29D624B98(319, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    sub_29D605E70(319, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
    if (v2 <= 0x3F)
    {
      sub_29D65F314();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_29D624704@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();

  *a2 = v4;
  return result;
}

uint64_t sub_29D624784(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D65F8E4();
}

void sub_29D6247F8(uint64_t a1)
{
  if (!qword_2A1A1DE00)
  {
    sub_29D6602F4();
    sub_29D6248E4(255);
    sub_29D624954(&qword_2A1A1DDD0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    sub_29D624954(&qword_2A1A1DDF8, sub_29D6248E4, MEMORY[0x29EDB8A00]);
    v1 = sub_29D65F7C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1DE00);
    }
  }
}

void sub_29D6248E4(uint64_t a1)
{
  if (!qword_2A1A1DDF0)
  {
    sub_29D65D9B4();
    v1 = sub_29D65F814();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1DDF0);
    }
  }
}

uint64_t sub_29D624954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D62499C(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();
}

uint64_t sub_29D624A18(uint64_t a1, uint64_t *a2)
{
  sub_29D5EA87C(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v12 - v9;
  sub_29D5EA900(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v10, v6);

  sub_29D65F8E4();
  return sub_29D5EA964(v10);
}

uint64_t sub_29D624B14(uint64_t a1)
{
  sub_29D624B98(0, &qword_2A17AC310, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D624B98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D624BE8()
{
  result = type metadata accessor for AudiogramPDFChartData(0);
  v2 = 0;
  v3 = *(v0 + *(result + 36));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x29EDCA190];
LABEL_2:
  v6 = fmax(*&qword_2A2431300, 62.5);
  if (v6 < unk_2A2431308)
  {
    v6 = unk_2A2431308;
  }

  if (v6 < *&qword_2A2431310)
  {
    v6 = *&qword_2A2431310;
  }

  if (v6 < unk_2A2431318)
  {
    v6 = unk_2A2431318;
  }

  if (v6 < *&qword_2A2431320)
  {
    v6 = *&qword_2A2431320;
  }

  if (v6 < unk_2A2431328)
  {
    v6 = unk_2A2431328;
  }

  if (v6 < *&qword_2A2431330)
  {
    v6 = *&qword_2A2431330;
  }

  v7 = fmin(*&qword_2A2431300, 62.5);
  if (unk_2A2431308 < v7)
  {
    v7 = unk_2A2431308;
  }

  if (*&qword_2A2431310 < v7)
  {
    v7 = *&qword_2A2431310;
  }

  if (unk_2A2431318 < v7)
  {
    v7 = unk_2A2431318;
  }

  if (*&qword_2A2431320 < v7)
  {
    v7 = *&qword_2A2431320;
  }

  if (unk_2A2431328 < v7)
  {
    v7 = unk_2A2431328;
  }

  if (*&qword_2A2431330 < v7)
  {
    v7 = *&qword_2A2431330;
  }

  if (unk_2A2431338 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = unk_2A2431338;
  }

  if (v6 >= unk_2A2431338)
  {
    v9 = v6;
  }

  else
  {
    v9 = unk_2A2431338;
  }

  v10 = round(v9);
  v11 = round(v8);
  v12 = v3 + 16 + 40 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      return v5;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    if (v11 > v10)
    {
      goto LABEL_47;
    }

    ++v2;
    v13 = v12 + 40;
    v14 = *(v12 + 16);
    v15 = v11 > v14 || v14 > v10;
    v12 += 40;
    if (!v15)
    {
      v16 = *(v13 - 16);
      v17 = *(v13 - 8);
      v22 = *v13;
      v21 = *(v13 + 8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D65B21C(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_29D65B21C((v18 > 1), v19 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + 40 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      *(v20 + 48) = v17;
      *(v20 + 56) = v22;
      *(v20 + 64) = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_29D624DE8()
{
  v0 = sub_29D624BE8();
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_12:

    return 0;
  }

  v2 = (v0 + 64);
  while (1)
  {
    v3 = *(v2 - 3);
    if (*(v2 - 16) == 2)
    {
      v3 = 0.0;
    }

    if (*v2 != 2)
    {
      break;
    }

LABEL_9:
    if (v3 < -15.0 || v3 > 115.0)
    {
      goto LABEL_13;
    }

    v2 += 5;
    if (!--v1)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= -15.0 && v3 <= 115.0)
  {
    v3 = *(v2 - 1);
    goto LABEL_9;
  }

LABEL_13:

  return 1;
}

uint64_t sub_29D624E88()
{
  sub_29D62F160(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65FB24();
  v4 = *MEMORY[0x29EDBC980];
  v5 = sub_29D65FB14();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = sub_29D65FB44();
  result = sub_29D62EED4(v3, sub_29D62F160);
  qword_2A17AD708 = v7;
  return result;
}

id sub_29D624FC0()
{
  result = HKNumberFormatterWithDecimalPrecision();
  qword_2A17ACBE8 = result;
  return result;
}

uint64_t sub_29D624FF0(uint64_t a1)
{
  v2 = v1;
  sub_29D62F768(a1, v2 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_chartModel, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  v4 = sub_29D6229CC();
  v5 = sub_29D624BE8();
  v6 = *(v5 + 16);
  if (v4)
  {
    v7 = (v5 + 40 * v6 + 8);
    do
    {
      v8 = v6 == 0;
      if (!v6)
      {
        break;
      }

      --v6;
      v9 = *v7;
      v7 -= 40;
    }

    while (v9 == 2);
  }

  else if (v6)
  {
    v10 = 0;
    v11 = (v5 + 48);
    do
    {
      v12 = *v11;
      v11 += 40;
      v8 = v12 == 2;
      if (v12 != 2)
      {
        v6 = v10;
        goto LABEL_13;
      }

      ++v10;
    }

    while (v6 != v10);
    v6 = 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_13:

  v13 = v2 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_leftEarAnnotationIndex;
  *v13 = v6;
  *(v13 + 8) = v8;
  v14 = sub_29D6229CC();
  v15 = sub_29D624BE8();
  v16 = *(v15 + 16);
  if (!v14)
  {
    v20 = 40 * v16 + 24;
    while (v16)
    {
      --v16;
      v21 = *(v15 + v20);
      v20 -= 40;
      if (v21 != 2)
      {

        sub_29D62EED4(a1, type metadata accessor for AudiogramPDFAudiogramChart.Model);
        v19 = 0;
        v17 = v16;
        goto LABEL_24;
      }
    }

    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_18:
    sub_29D62EED4(a1, type metadata accessor for AudiogramPDFAudiogramChart.Model);

    v17 = 0;
    v19 = 1;
    goto LABEL_24;
  }

  v17 = 0;
  v18 = 64;
  while (*(v15 + v18) == 2)
  {
    ++v17;
    v18 += 40;
    if (v16 == v17)
    {
      goto LABEL_18;
    }
  }

  sub_29D62EED4(a1, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  v19 = 0;
LABEL_24:
  v22 = v2 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_rightEarAnnotationIndex;
  *v22 = v17;
  *(v22 + 8) = v19;
  return v2;
}

uint64_t sub_29D62524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v87 = a4;
  LODWORD(v86) = a3;
  v88 = a1;
  v106 = a6;
  v105 = sub_29D65FA04();
  v104 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105, v10);
  v103 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C234(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C268(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62D4E8(0);
  v89 = v22;
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62D51C(0);
  v91 = v26;
  v92 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v27);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62D768(0);
  v94 = v30;
  v95 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v108 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E218(0);
  v97 = v33;
  v98 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v34);
  v90 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E3A8(0);
  v99 = v36;
  v100 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v93 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62EC38();
  v102 = v39;
  v101 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v40);
  v96 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v6;
  v113 = a1;
  v114 = a2;
  v115 = v86 & 1;
  v116 = v87;
  v117 = a5 & 1;
  sub_29D62C2B0(0);
  sub_29D62CE50();
  sub_29D65F614();
  v120 = sub_29D65FF64();
  v121 = v42;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0xD000000000000022, 0x800000029D668A20);

  sub_29D62B1D4(&qword_2A17ACD48, sub_29D62C268, MEMORY[0x29EDB8690]);
  sub_29D65FBC4();

  (*(v18 + 8))(v21, v17);
  v124 = xmmword_29D664160;
  v43 = v15;
  sub_29D65F734();
  v44 = sub_29D65F744();
  v45 = *(v44 - 8);
  v86 = *(v45 + 56);
  v87 = v45 + 56;
  v86(v15, 0, 1, v44);
  sub_29D62F654(0, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v47 = v46;
  v48 = sub_29D62D5EC();
  v49 = sub_29D62D6CC();
  v50 = v89;
  sub_29D65FB94();
  v85 = sub_29D62C234;
  sub_29D62EED4(v43, sub_29D62C234);
  sub_29D62F0F0(v25, sub_29D62D4E8);
  v111 = v107;
  sub_29D62D8B8(0);
  v52 = v51;
  v120 = v50;
  v121 = v47;
  v122 = v48;
  v123 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = MEMORY[0x29EDB86F8];
  v54 = sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8, MEMORY[0x29EDB86F8]);
  v55 = v91;
  sub_29D65FB74();
  (*(v92 + 8))(v29, v55);
  v56 = v88;
  v57 = sub_29D624DE8();
  v58 = -120.0;
  if (v57)
  {
    v58 = -200.0;
  }

  v59 = 50.0;
  if ((v57 & 1) == 0)
  {
    v59 = 20.0;
  }

  v118 = v58;
  v119 = v59;
  v86(v43, 1, 1, v44);
  v120 = v55;
  v121 = v52;
  v122 = OpaqueTypeConformance2;
  v123 = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v90;
  v62 = v94;
  v63 = v108;
  sub_29D65FBA4();
  sub_29D62EED4(v43, v85);
  v64 = v63;
  v65 = v62;
  (*(v95 + 8))(v64, v62);
  v109 = v56;
  v110 = v107;
  sub_29D62E5AC(0);
  v67 = v66;
  v120 = v65;
  v121 = v47;
  v122 = v60;
  v123 = v49;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC, v89);
  v70 = v93;
  v71 = v97;
  sub_29D65FB84();
  (*(v98 + 8))(v61, v71);
  sub_29D65F574();
  v120 = v71;
  v121 = v67;
  v122 = v68;
  v123 = v69;
  swift_getOpaqueTypeConformance2();
  sub_29D62B1D4(&qword_2A17ACE90, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
  v72 = v96;
  v73 = v99;
  sub_29D65FBB4();
  (*(v100 + 8))(v70, v73);
  KeyPath = swift_getKeyPath();
  v75 = sub_29D6229CC();
  v76 = v104;
  v77 = MEMORY[0x29EDBC548];
  if (!v75)
  {
    v77 = MEMORY[0x29EDBC540];
  }

  v78 = v103;
  v79 = v105;
  (*(v104 + 104))(v103, *v77, v105);
  sub_29D62EF7C(0, &qword_2A17ACE98, sub_29D62EC38, sub_29D62EFF0);
  v81 = v106;
  v82 = (v106 + *(v80 + 36));
  sub_29D62EFF0(0);
  (*(v76 + 32))(v82 + *(v83 + 28), v78, v79);
  *v82 = KeyPath;
  return (*(v101 + 32))(v81, v72, v102);
}

uint64_t sub_29D625DDC@<X0>(char *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, char *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v79 = a4;
  v68 = a1;
  v78 = a6;
  sub_29D62F654(0, &qword_2A17ACEC8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v64 - v11;
  v13 = sub_29D65F6B4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v66 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
  v73 = v17;
  v71 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v67 = v64 - v19;
  sub_29D62CD58(0);
  v76 = *(v20 - 8);
  v77 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v75 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v74 = v64 - v25;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v69 = v64 - v28;
  MEMORY[0x2A1C7C4A8](v29, v30);
  v81 = v64 - v31;
  sub_29D62C324(0);
  v72 = v32;
  v70 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v33);
  v80 = v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v38 = v64 - v37;
  v39 = sub_29D624BE8();
  v86 = sub_29D62BC08(v39);
  swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v79;
  *(v40 + 24) = a5 & 1;
  *(v40 + 32) = v68;
  *(v40 + 40) = a2;
  *(v40 + 48) = a3 & 1;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_29D62F558;
  *(v41 + 24) = v40;
  sub_29D62C408(0);
  sub_29D62FAFC(0, &qword_2A17ACC68, sub_29D62C504);
  sub_29D62B1D4(&qword_2A17ACCE0, sub_29D62C408, MEMORY[0x29EDC9A80]);
  sub_29D62CFC0();
  v79 = v38;
  sub_29D65FC44();

  sub_29D65FAC4();
  *&v87 = 0x404F400000000000;
  sub_29D65F544();

  v42 = v66;

  v68 = v12;
  sub_29D65F6A4();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v43 = qword_2A17AD730;
  *&v87 = qword_2A17AD730;

  v44 = MEMORY[0x29EDBCA98];
  v45 = MEMORY[0x29EDB86E0];
  v46 = MEMORY[0x29EDBCA88];
  v47 = v67;
  sub_29D65F484();
  v48 = *(v14 + 8);
  v64[1] = v14 + 8;
  v65 = v48;
  v48(v42, v13);
  v49 = v47;
  if (qword_2A17AC078 != -1)
  {
    swift_once();
  }

  v87 = xmmword_2A17AD738;
  v88 = *&qword_2A17AD748;
  v89 = qword_2A17AD758;
  v82 = v13;
  v83 = v44;
  v84 = v45;
  v85 = v46;
  v64[0] = swift_getOpaqueTypeConformance2();
  v50 = v73;
  sub_29D65F4A4();
  v71 = *(v71 + 8);
  (v71)(v49, v50);
  sub_29D65FAC4();
  v82 = 0x40CF400000000000;
  sub_29D65F544();

  sub_29D65F6A4();
  v82 = v43;
  sub_29D65F484();

  v65(v42, v13);
  v51 = v69;
  sub_29D65F4A4();
  (v71)(v49, v50);
  v52 = v70;
  v53 = v80;
  v54 = v72;
  (*(v70 + 16))(v80, v79, v72);
  v82 = v53;
  v56 = v76;
  v55 = v77;
  v57 = *(v76 + 16);
  v58 = v74;
  v59 = v81;
  v57(v74, v81, v77);
  v83 = v58;
  v60 = v75;
  v57(v75, v51, v55);
  v84 = v60;
  sub_29D6266D4(&v82, v78);
  v61 = *(v56 + 8);
  v61(v51, v55);
  v61(v59, v55);
  v62 = *(v52 + 8);
  v62(v79, v54);
  v61(v60, v55);
  v61(v58, v55);
  return (v62)(v80, v54);
}

uint64_t sub_29D6266D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_29D62F900(0, &qword_2A17ACED0, sub_29D62C324);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v21 - v6;
  sub_29D62C324(0);
  v9 = v8;
  sub_29D62D0A0(&qword_2A17ACD00, sub_29D62C324, sub_29D62CFC0, MEMORY[0x29EDB8778]);
  v10 = *a1;
  v21 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v7, v10, v9);
  sub_29D62CD58(0);
  v13 = v12;
  sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
  sub_29D65F6B4();
  v14 = *(v4 + 56);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v16(&v7[v14], a1[1], v13);
  v17 = *(v4 + 72);
  v16(&v7[v17], a1[2], v13);
  v18 = v22;
  (*(v11 + 32))(v22, v7, v21);
  v19 = *(v15 + 32);
  v19(v18 + *(v4 + 56), &v7[v14], v13);
  return (v19)(v18 + *(v4 + 72), &v7[v17], v13);
}

uint64_t sub_29D626934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D62F7D8(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C5B8(0);
  v10 = v9;
  sub_29D62C6FC(255);
  sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
  sub_29D65F694();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, *a1, v10);
  sub_29D62C7F4(0);
  v13 = v12;
  sub_29D62C954(255);
  sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
  sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
  sub_29D65F724();
  sub_29D62CAC4();
  v14 = *(v5 + 56);
  v15 = *(v13 - 8);
  (*(v15 + 16))(&v8[v14], a1[1], v13);
  sub_29D62CBE0(0);
  sub_29D62D380();
  v16 = *(v5 + 72);
  sub_29D62F47C(a1[2], &v8[v16], sub_29D62CBE0);
  (*(v11 + 32))(a2, v8, v10);
  (*(v15 + 32))(a2 + *(v5 + 56), &v8[v14], v13);
  return sub_29D62F4E4(&v8[v16], a2 + *(v5 + 72), sub_29D62CBE0);
}

uint64_t sub_29D626BC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_29D62F900(0, &qword_2A17ACF10, sub_29D62F978);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v21 - v6;
  sub_29D62F978(0);
  v9 = v8;
  sub_29D62D0A0(&qword_2A17ACF98, sub_29D62F978, sub_29D630018, MEMORY[0x29EDB8778]);
  v10 = *a1;
  v21 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v7, v10, v9);
  sub_29D62CD58(0);
  v13 = v12;
  sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
  sub_29D65F6B4();
  v14 = *(v4 + 56);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v16(&v7[v14], a1[1], v13);
  v17 = *(v4 + 72);
  v16(&v7[v17], a1[2], v13);
  v18 = v22;
  (*(v11 + 32))(v22, v7, v21);
  v19 = *(v15 + 32);
  v19(v18 + *(v4 + 56), &v7[v14], v13);
  return (v19)(v18 + *(v4 + 72), &v7[v17], v13);
}

uint64_t sub_29D626E24()
{
  v1 = sub_29D65F564();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D65F4D4();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  sub_29D65F4B4();
  *(swift_allocObject() + 16) = v0;
  sub_29D65F554();
  sub_29D62D980(0);
  sub_29D62DFF4();
  return sub_29D65F6D4();
}

uint64_t sub_29D626F6C()
{
  v1 = sub_29D65F564();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D65F4D4();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v5 = sub_29D65F4F4();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  sub_29D624DE8();
  sub_29D62F024();
  sub_29D65F4E4();
  *(swift_allocObject() + 16) = v0;
  sub_29D65F4C4();
  sub_29D65F554();
  sub_29D62E5F4(0);
  sub_29D62EA54();
  return sub_29D65F6C4();
}

uint64_t sub_29D627124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65F574();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_29D6271B4(uint64_t a1)
{
  v2 = sub_29D65FA04();
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_29D65FA54();
}

uint64_t sub_29D62727C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v72 = a4;
  v73 = a7;
  v71 = a6;
  v69 = a3;
  v80 = a8;
  sub_29D62F5BC(0);
  v79 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v76 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D62C538(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v77 = &v66[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D62F620(0);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v75 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = &v66[-v24];
  sub_29D62C504(0);
  MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v78 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v29, v30);
  v32 = &v66[-v31];
  MEMORY[0x2A1C7C4A8](v33, v34);
  v36 = &v66[-v35];
  v40.n128_f64[0] = MEMORY[0x2A1C7C4A8](v37, v38);
  v41 = &v66[-v39];
  v42 = *(a2 + 32);
  v74 = a5;
  v70 = a1;
  if (v42 == 2)
  {
    v43 = *(v16 + 56);
    v44 = &v66[-v39];
    v45 = 1;
  }

  else
  {
    v46 = *(a2 + 24);
    v67 = *(a2 + 33) << 8;
    if ((v72 & 1) != 0 || a1 != v69)
    {
      v47 = sub_29D65F5C4();
      (*(*(v47 - 8) + 56))(v25, 1, 1, v47);
    }

    else
    {
      if (sub_29D6229CC())
      {
        sub_29D65F5A4();
      }

      else
      {
        sub_29D65F5B4();
      }

      v48 = sub_29D65F5C4();
      (*(*(v48 - 8) + 56))(v25, 0, 1, v48);
    }

    v49 = v77;
    sub_29D62787C(v67 | v42 & 1, a2, 1u, v25, v77, v46);
    sub_29D62EED4(v25, sub_29D62F620);
    sub_29D62F4E4(v49, v41, sub_29D62C538);
    v43 = *(v16 + 56);
    v44 = v41;
    v45 = 0;
  }

  v50 = v15;
  v43(v44, v45, 1, v15, v40);
  v51 = *(a2 + 16);
  if (v51 == 2)
  {
    v52 = 1;
  }

  else
  {
    v53 = *(a2 + 8);
    v54 = *(a2 + 17) << 8;
    v55 = 1;
    v68 = v32;
    if ((v73 & 1) == 0 && v70 == v71)
    {
      if (sub_29D6229CC())
      {
        sub_29D65F5B4();
      }

      else
      {
        sub_29D65F5A4();
      }

      v55 = 0;
    }

    v56 = sub_29D65F5C4();
    v57 = v75;
    (*(*(v56 - 8) + 56))(v75, v55, 1, v56);
    v58 = v54 | v51 & 1;
    v59 = v77;
    sub_29D62787C(v58, a2, 0, v57, v77, v53);
    sub_29D62EED4(v57, sub_29D62F620);
    sub_29D62F4E4(v59, v36, sub_29D62C538);
    v52 = 0;
    v32 = v68;
  }

  (v43)(v36, v52, 1, v50);
  sub_29D62F47C(v41, v32, sub_29D62C504);
  v60 = v78;
  sub_29D62F47C(v36, v78, sub_29D62C504);
  sub_29D62D0A0(&qword_2A17ACD10, sub_29D62C504, sub_29D62D110, MEMORY[0x29EDB87B0]);
  v61 = v76;
  sub_29D62F47C(v32, v76, sub_29D62C504);
  v62 = v79;
  v63 = *(v79 + 48);
  sub_29D62F47C(v60, &v61[v63], sub_29D62C504);
  v64 = v80;
  sub_29D62F4E4(v61, v80, sub_29D62C504);
  sub_29D62F4E4(&v61[v63], v64 + *(v62 + 48), sub_29D62C504);
  sub_29D62F0F0(v36, sub_29D62C504);
  sub_29D62F0F0(v41, sub_29D62C504);
  sub_29D62F0F0(v60, sub_29D62C504);
  return sub_29D62F0F0(v32, sub_29D62C504);
}

uint64_t sub_29D62787C@<X0>(unsigned int a1@<W0>, double *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v152 = a4;
  v171 = a3;
  v141 = a2;
  LODWORD(v142) = a1;
  v160 = a5;
  LODWORD(v143) = a1 >> 8;
  sub_29D62CC14(0);
  v158 = v8;
  v157 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v131 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62F620(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v148 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62CBE0(0);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v159 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v156 = &v130 - v19;
  v163 = sub_29D65F5C4();
  v146 = *(v163 - 8);
  MEMORY[0x2A1C7C4A8](v163, v20);
  v130 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v145 = &v130 - v24;
  *&v168 = COERCE_DOUBLE(sub_29D65F724());
  v173 = *(v168 - 8);
  MEMORY[0x2A1C7C4A8](v168, v25);
  v165 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = MEMORY[0x29EDB8580];
  sub_29D62CA4C(0, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
  v166 = v27;
  v172 = *(*&v27 - 8);
  MEMORY[0x2A1C7C4A8](*&v27, v28);
  v164 = &v130 - v29;
  sub_29D62C954(0);
  v169 = v30;
  v174 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v167 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C7F4(0);
  v155 = v33;
  v154 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v34);
  v153 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v170 = &v130 - v38;
  v39 = MEMORY[0x29EDB8620];
  sub_29D62F654(0, &qword_2A17ACEE8, MEMORY[0x29EDC99B0], MEMORY[0x29EDB8788], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v40 - 8, v41);
  sub_29D62F654(0, &qword_2A17ACEC8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], v39);
  MEMORY[0x2A1C7C4A8](v42 - 8, v43);
  v45 = &v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v46, v47);
  v49 = &v130 - v48;
  *&v134 = COERCE_DOUBLE(sub_29D65F694());
  v135 = *(v134 - 8);
  MEMORY[0x2A1C7C4A8](v134, v50);
  v52 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x29EDB85E8];
  sub_29D62CA4C(0, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
  v137 = v53;
  v138 = *(*&v53 - 8);
  MEMORY[0x2A1C7C4A8](*&v53, v54);
  v132 = &v130 - v55;
  sub_29D62C6FC(0);
  v139 = v56;
  v140 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v57);
  v133 = &v130 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62C5B8(0);
  v151 = v59;
  v150 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59, v60);
  v149 = &v130 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v62, v63);
  v175 = &v130 - v64;
  v65 = *a2;
  sub_29D65FAC4();
  v190[0] = v65;
  v161 = v49;
  sub_29D65F544();

  sub_29D65FAC4();
  v190[0] = -a6;
  v162 = v45;
  sub_29D65F544();

  sub_29D65FAC4();
  v66 = (v171 & 1) == 0;
  v171 &= 1u;
  v67 = 1.63587128e-306;
  if (v66)
  {
    v68 = -1.39234638e188;
  }

  else
  {
    v67 = 9.21322621e242;
    v68 = -9.12488124e192;
  }

  v190[0] = v67;
  v190[1] = v68;
  if (v66)
  {
    v69 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  else
  {
    v69 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  }

  sub_29D65F544();

  sub_29D65F684();
  sub_29D65F9E4();
  v70 = v132;
  v71 = *&v134;
  v72 = MEMORY[0x29EDB86D0];
  sub_29D65F4A4();
  sub_29D62F6A8(v190);
  (*(v135 + 8))(v52, COERCE_DOUBLE(*&v71));
  v73 = [objc_opt_self() *v69];
  v189 = sub_29D65FBD4();
  v185 = v71;
  v186 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x29EDBCA98];
  v76 = v133;
  v77 = v137;
  v78 = MEMORY[0x29EDBCA88];
  sub_29D65F484();
  v79 = v77;
  (*(v138 + 8))(v70, COERCE_DOUBLE(*&v77));

  v181 = v171;
  v182 = a6;
  LODWORD(v138) = v142 & 1;
  v183 = v142 & 1;
  LOBYTE(v77) = v143;
  v184 = v143;
  v185 = v79;
  v186 = v75;
  v187 = OpaqueTypeConformance2;
  v188 = v78;
  v142 = MEMORY[0x29EDB8598];
  swift_getOpaqueTypeConformance2();
  v80 = v139;
  sub_29D65F494();
  (*(v140 + 1))(v76, v80);
  sub_29D65FAC4();
  v185 = v65;
  sub_29D65F544();

  sub_29D65FAC4();
  v185 = -a6;
  sub_29D65F544();

  v81 = v165;
  sub_29D65F714();
  v82 = v164;
  v83 = *&v168;
  v84 = MEMORY[0x29EDB8700];
  sub_29D65F474();
  v85 = *(v173 + 8);
  v173 += 8;
  v140 = v85;
  v85(v81, *&v83);
  v189 = sub_29D65FC04();
  v185 = v83;
  v186 = v84;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v167;
  v88 = v166;
  sub_29D65F484();
  v89 = *(v172 + 8);
  v172 += 8;
  v144 = v89;
  v89(v82, *&v88);

  v90 = v145;
  LOBYTE(v80) = v171;
  v91 = v147;
  sub_29D628D70(v141, v171, v92);
  v176 = v91;
  v177 = a6;
  v178 = v138;
  v179 = LOBYTE(v77);
  v180 = v80;
  sub_29D65FC64();
  sub_29D62DD10(0, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
  v185 = v88;
  v186 = v75;
  v147 = v86;
  v187 = v86;
  v188 = MEMORY[0x29EDBCA88];
  v93 = v146;
  v94 = swift_getOpaqueTypeConformance2();
  sub_29D62CAC4();
  v143 = v94;
  v95 = v148;
  v96 = v169;
  v97 = v87;
  sub_29D65F464();
  v98 = *(v93 + 8);
  v99 = v163;
  v98(v90, v163);
  v100 = *(v174 + 8);
  v174 += 8;
  v100(v97, v96);
  sub_29D62F768(v152, v95, sub_29D62F620);
  if ((*(v93 + 48))(v95, 1, v99) == 1)
  {
    sub_29D62EED4(v95, sub_29D62F620);
    v101 = 1;
    v102 = v158;
    v103 = v157;
    v104 = v156;
  }

  else
  {
    v105 = v130;
    (*(v93 + 32))(v130, v95, v99);
    sub_29D65FAC4();
    v185 = v65;
    sub_29D65F544();

    sub_29D65FAC4();
    v185 = -a6;
    sub_29D65F544();

    v106 = v165;
    sub_29D65F714();
    v107 = v164;
    v108 = v168;
    sub_29D65F474();
    v140(v106, v108);
    v185 = COERCE_DOUBLE(sub_29D65FC04());
    v109 = v167;
    v110 = v166;
    sub_29D65F484();
    v144(v107, *&v110);

    MEMORY[0x2A1C7C4A8](v111, v112);
    sub_29D65FC64();
    v113 = v131;
    v114 = v169;
    sub_29D65F464();
    v100(v109, v114);
    v98(v105, v163);
    v115 = v157;
    v116 = v156;
    v117 = v113;
    v118 = v158;
    (*(v157 + 32))(v156, v117, v158);
    v101 = 0;
    v102 = v118;
    v103 = v115;
    v104 = v116;
  }

  (*(v103 + 56))(v104, v101, 1, v102);
  v119 = v150;
  v120 = v149;
  v121 = v151;
  (*(v150 + 16))(v149, v175, v151);
  v185 = *&v120;
  v122 = v154;
  v123 = v153;
  v124 = v170;
  v125 = v155;
  (*(v154 + 16))(v153, v170, v155);
  v186 = v123;
  v126 = v159;
  sub_29D62F47C(v104, v159, sub_29D62CBE0);
  v187 = v126;
  sub_29D626934(&v185, v160);
  sub_29D62F0F0(v104, sub_29D62CBE0);
  v127 = *(v122 + 8);
  v127(v124, v125);
  v128 = *(v119 + 8);
  v128(v175, v121);
  sub_29D62F0F0(v126, sub_29D62CBE0);
  v127(v123, v125);
  return (v128)(v120, v121);
}

uint64_t sub_29D628CD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65DA44();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D602DBC(a1 & 1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29D65FB54();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_29D628D70(uint64_t a1, char a2, __n128 a3)
{
  a3.n128_u64[0] = *(a1 + 8);
  v3 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3 != 2 && *(a1 + 32) != 2 && *(a1 + 24) <= a3.n128_f64[0])
    {
      return MEMORY[0x2A1C584A8]();
    }

    return MEMORY[0x2A1C584A0](a3);
  }

  if (v3 == 2 || *(a1 + 32) == 2 || *(a1 + 24) <= a3.n128_f64[0])
  {
    return MEMORY[0x2A1C584A0](a3);
  }

  return MEMORY[0x2A1C584A8]();
}

uint64_t sub_29D628DC4@<X0>(int a1@<W1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_29D65DA44();
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  sub_29D628EA8(a1 & 0xFFFFFF01, a2 & 1, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v11 = sub_29D65FB54();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = swift_getKeyPath();
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  *(a3 + 32) = result;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_29D628EA8@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a1;
  v7 = sub_29D65DA84();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v9 = sub_29D65DA44();
  v41 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v40 = &v37 - v15;
  v16 = sub_29D65E4D4();
  v17 = *MEMORY[0x29EDC7640];
  v18 = objc_opt_self();
  v19 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a2 & 1) == 0)
  {
    v19 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v20 = [v18 *v19];
  sub_29D65FBD4();
  v21 = sub_29D5DF448(0, &qword_2A17AC3D0, 0x29EDC7A00);
  v22 = sub_29D660344();
  v45 = v21;
  *&v44 = v22;
  sub_29D5E20A8(&v44, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v16;
  sub_29D62B790(v43, v17, isUniquelyReferenced_nonNull_native);
  v24 = round(a4);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_10:
    sub_29D65DA74();
    sub_29D65DA94();
    sub_29D65DA54();
    sub_29D62B1D4(&qword_2A17ACEF8, MEMORY[0x29EDB9A78], MEMORY[0x29EDB9A70]);
    v28 = v40;
    sub_29D65DA34();
    (*(v41 + 8))(v12, v9);
    return (*(v41 + 32))(a3, v28, v9);
  }

  v37 = v17;
  v38 = v12;
  v25 = v9;
  v26 = a3;
  v27 = BYTE1(v39);
  *&v44 = v24;
  sub_29D660674();
  sub_29D65DA94();
  v28 = v40;
  sub_29D65DA54();
  v29 = v27 == 2;
  a3 = v26;
  v9 = v25;
  if (!v29)
  {
    v30 = sub_29D65E494();
    v31 = objc_opt_self();
    v32 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
    if ((a2 & 1) == 0)
    {
      v32 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
    }

    v33 = [v31 *v32];
    sub_29D65FBD4();
    v34 = sub_29D660344();
    v45 = v21;
    *&v44 = v34;
    sub_29D5E20A8(&v44, v43);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v30;
    sub_29D62B790(v43, v37, v35);
    v12 = v38;
    if (qword_2A1A1EAA0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  return (*(v41 + 32))(a3, v28, v9);
}

uint64_t sub_29D629324@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71[2] = a2;
  v86 = a3;
  sub_29D62F3D4(0);
  v85 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v84 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65F5E4();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v71[1] = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65F604();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v71[0] = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DC20(0);
  v78 = v13;
  v74 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v72 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E810(0, &qword_2A17ACD90, sub_29D62DC20, &qword_2A17ACDF8, sub_29D62DC20);
  v76 = *(v16 - 8);
  v77 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v75 = v71 - v18;
  sub_29D62DAEC(0);
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v73 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DAB8(0);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v83 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v82 = v71 - v27;
  v28 = sub_29D65F444();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39, v40);
  v42 = v71 - v41;
  v43 = sub_29D65F704();
  if (v43)
  {
    if (qword_2A17AC080 != -1)
    {
      swift_once();
    }

    v79 = xmmword_2A17AD760;
    v44 = qword_2A17AD770;
    v45 = qword_2A17AD780;
    v43 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v46 = v79;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0uLL;
  }

  v90 = v46;
  v91 = v44;
  v92 = v43;
  v93 = v45;
  sub_29D65F434();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v87 = qword_2A17AD730;
  sub_29D65F624();
  (*(v29 + 8))(v32, v28);
  if (!sub_29D65F704())
  {
    sub_29D65F6E4();
    goto LABEL_14;
  }

  v47 = sub_29D65F704();
  v48 = sub_29D65F6F4();
  v49 = v48 - 1;
  if (__OFSUB__(v48, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  v50 = sub_29D65F6E4();
  if (v88)
  {
LABEL_14:
    v52 = 1;
    a1 = v82;
    goto LABEL_15;
  }

  a1 = v82;
  if (v47 == v49)
  {
    v52 = 1;
LABEL_15:
    v54 = v80;
    v53 = v81;
    goto LABEL_16;
  }

  *&v79 = v71;
  MEMORY[0x2A1C7C4A8](v50, v51);
  sub_29D65F5F4();
  sub_29D65F5D4();
  sub_29D62DC68(0);
  v70[2] = v63;
  v70[3] = sub_29D62DE50();
  v70[0] = sub_29D62F54C;
  v70[1] = v70;
  v32 = v72;
  sub_29D65F514();
  if (qword_2A17AC058 != -1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v64 = sub_29D62B1D4(&qword_2A17ACDF8, sub_29D62DC20, MEMORY[0x29EDB8618]);
  v65 = v75;
  v66 = v78;
  sub_29D65F634();
  (*(v74 + 8))(v32, v66);
  if (qword_2A17AC088 != -1)
  {
    swift_once();
  }

  v88 = v64;
  v89 = qword_2A17AD788;
  v87 = v66;
  swift_getOpaqueTypeConformance2();
  v67 = v73;
  v68 = v77;
  sub_29D65F624();
  (*(v76 + 8))(v65, v68);
  v54 = v80;
  v69 = v81;
  (*(v80 + 32))(a1, v67, v81);
  v53 = v69;
  v52 = 0;
LABEL_16:
  (*(v54 + 56))(a1, v52, 1, v53);
  v55 = *(v35 + 16);
  v55(v38, v42, v34);
  v56 = v83;
  sub_29D62F47C(a1, v83, sub_29D62DAB8);
  v57 = v84;
  v55(v84, v38, v34);
  sub_29D62E0C0();
  v58 = v85;
  v59 = *(v85 + 48);
  sub_29D62F47C(v56, &v57[v59], sub_29D62DAB8);
  v60 = v86;
  (*(v35 + 32))(v86, v57, v34);
  sub_29D62F4E4(&v57[v59], v60 + *(v58 + 48), sub_29D62DAB8);
  sub_29D62F0F0(a1, sub_29D62DAB8);
  v61 = *(v35 + 8);
  v61(v42, v34);
  sub_29D62F0F0(v56, sub_29D62DAB8);
  return (v61)(v38, v34);
}

__n128 sub_29D629D04@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v15 = sub_29D629E1C(a2);
  *(&v15 + 1) = v3;
  sub_29D60C02C();
  v4 = sub_29D65FB64();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_29D65FC64();
  sub_29D65F9F4();
  *&v14[39] = v17;
  *&v14[23] = v16;
  *&v14[7] = v15;
  *(a1 + 65) = *v14;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0x3FE0000000000000;
  *(a1 + 48) = v12;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 81) = *&v14[16];
  result = *&v14[32];
  *(a1 + 97) = *&v14[32];
  *(a1 + 112) = *(&v17 + 1);
  return result;
}

uint64_t sub_29D629E1C(double a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17AC060 != -1)
  {
    swift_once();
  }

  if (qword_2A17ACBE8)
  {
    v7 = qword_2A17ACBE8;
    sub_29D62A03C(v7, a1);
    v9 = v8;
  }

  else
  {
    sub_29D65F2E4();
    v10 = sub_29D65F2F4();
    v11 = sub_29D6601F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = sub_29D6607A4();
      v16 = sub_29D64A1D0(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D5D7000, v10, v11, "%{public}s: Failed to create frequency formatter", v12, 0xCu);
      sub_29D5DF1C4(v13);
      MEMORY[0x29ED63350](v13, -1, -1);
      MEMORY[0x29ED63350](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v9;
}

void sub_29D62A03C(id a1, double a2)
{
  v3 = a2 / 1000.0;
  sub_29D5DF448(0, &qword_2A17AC258, 0x29EDBA070);
  if (v3 < 1.0)
  {
    v4 = sub_29D660354();
    a1 = [a1 stringFromNumber_];

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v5 = sub_29D65FF24();

    v6 = HKFormatValueAndUnit();

    if (v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v7 = sub_29D660354();
  v8 = [a1 stringFromNumber_];

  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v9 = sub_29D65FF24();

  v6 = HKFormatValueAndUnit();

  if (v6)
  {
LABEL_9:
    sub_29D65FF64();

    return;
  }

  __break(1u);
}

uint64_t sub_29D62A29C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a1;
  v87 = a2;
  sub_29D62F080(0);
  v3 = v2;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65F5E4();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65F604();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E8C4(0);
  v82 = v13;
  v78 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v76 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E810(0, &qword_2A17ACE48, sub_29D62E8C4, &qword_2A17ACE68, sub_29D62E8C4);
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v79 = &v69 - v18;
  sub_29D62E6DC(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v77 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62E6A8(0);
  MEMORY[0x2A1C7C4A8](v24 - 8, v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v31 = &v69 - v30;
  v32 = sub_29D65F444();
  v84 = *(v32 - 8);
  v85 = v32;
  MEMORY[0x2A1C7C4A8](v32, v33);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v39 = &v69 - v38;
  if (qword_2A17AC078 != -1)
  {
    swift_once();
  }

  v91 = xmmword_2A17AD738;
  v92 = qword_2A17AD748;
  v93 = qword_2A17AD750;
  v94 = qword_2A17AD758;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v40 = v39;
  sub_29D65F434();
  sub_29D65F6E4();
  v86 = v6;
  if (v89)
  {
    v41 = 1;
LABEL_12:
    v83 = v39;
    (*(v21 + 56))(v31, v41, 1, v20);
    v54 = v84;
    v55 = v85;
    v56 = *(v84 + 16);
    v56(v35, v39, v85);
    v57 = v35;
    sub_29D62F47C(v31, v27, sub_29D62E6A8);
    v58 = v27;
    v59 = v86;
    v56(v86, v35, v55);
    sub_29D62EAE0();
    v60 = *(v3 + 48);
    sub_29D62F47C(v58, &v59[v60], sub_29D62E6A8);
    v61 = v87;
    (*(v54 + 32))(v87, v59, v55);
    sub_29D62F4E4(&v59[v60], v61 + *(v3 + 48), sub_29D62E6A8);
    sub_29D62F0F0(v31, sub_29D62E6A8);
    v62 = *(v54 + 8);
    v62(v83, v55);
    sub_29D62F0F0(v58, sub_29D62E6A8);
    return (v62)(v57, v55);
  }

  v70 = v20;
  v69 = v35;
  v42 = sub_29D65F704();
  v72 = v3;
  v71 = v27;
  if (!v42 || (sub_29D65F704(), result = sub_29D65F6F4(), !__OFSUB__(result, 1)))
  {
    v44 = sub_29D65FC74();
    MEMORY[0x2A1C7C4A8](v44, v45);
    sub_29D65F5F4();
    sub_29D65F5D4();
    sub_29D62E90C(0);
    v67 = v46;
    v68 = sub_29D62E998();
    v65 = sub_29D62F150;
    v66 = &v63;
    LOBYTE(v64) = 0;
    v63 = 0;
    v47 = v76;
    sub_29D65F514();
    v48 = v79;
    if (qword_2A17AC058 != -1)
    {
      swift_once();
    }

    v49 = sub_29D62B1D4(&qword_2A17ACE68, sub_29D62E8C4, MEMORY[0x29EDB8618]);
    v50 = v82;
    sub_29D65F634();
    (*(v78 + 8))(v47, v50);
    v51 = v48;
    v3 = v72;
    v27 = v71;
    v39 = v40;
    if (qword_2A17AC088 != -1)
    {
      swift_once();
    }

    v89 = v49;
    v90 = qword_2A17AD788;
    v88 = v50;
    swift_getOpaqueTypeConformance2();
    v52 = v77;
    v53 = v81;
    sub_29D65F624();
    (*(v80 + 8))(v51, v53);
    v20 = v70;
    (*(v21 + 32))(v31, v52, v70);
    v41 = 0;
    v35 = v69;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_29D62AB38(uint64_t a1@<X8>, double a2@<D0>, uint64_t a3@<X0>)
{
  *&v21 = sub_29D62F194(a3, -a2);
  *(&v21 + 1) = v4;
  sub_29D60C02C();
  v5 = sub_29D65FB64();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v9 & 1;
  sub_29D65FC74();
  sub_29D65F9F4();
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v15 = sub_29D65FB04();
  sub_29D65F9C4();
  *(a1 + 65) = *v20;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v14;
  *(a1 + 24) = v11;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0x3FE0000000000000;
  *(a1 + 48) = v13;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 81) = *&v20[16];
  *(a1 + 97) = *&v20[32];
  *(a1 + 112) = *(&v23 + 1);
  *(a1 + 120) = v15;
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  *(a1 + 160) = 0;
}

uint64_t sub_29D62AC78()
{
  sub_29D62EED4(v0 + OBJC_IVAR____TtC16HearingAppPlugin26AudiogramPDFAudiogramChart_chartModel, type metadata accessor for AudiogramPDFAudiogramChart.Model);

  return swift_deallocClassInstance();
}

uint64_t sub_29D62AD18(uint64_t a1)
{
  result = type metadata accessor for AudiogramPDFAudiogramChart.Model(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D62ADFC(uint64_t a1)
{
  result = type metadata accessor for AudiogramPDFChartData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D62AEB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D65E734();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29D62AF24(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_29D62B1D4(&qword_2A17ACBE0, type metadata accessor for AudiogramPDFAudiogramChart, &unk_29D664220);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v7);
}

uint64_t sub_29D62AFD8(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_29D62B1D4(&qword_2A17ACBE0, type metadata accessor for AudiogramPDFAudiogramChart, &unk_29D664220);

  return a5(a1, a2, v7);
}

uint64_t sub_29D62B068(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D62B1D4(&qword_2A17ACC30, type metadata accessor for AudiogramPDFAudiogramChart, &unk_29D6641E0);
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D62B1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D62B238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29D62F860(0);
  v35 = v4;
  v6 = sub_29D6605F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_29D5E20A8(v22, v36);
      }

      else
      {
        sub_29D5E0D1C(v22, v36);
        v23 = v21;
      }

      sub_29D65FF64();
      sub_29D660724();
      sub_29D65FFA4();
      v24 = sub_29D660744();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_29D5E20A8(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

uint64_t sub_29D62B4FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29D63032C();
  v34 = v4;
  result = sub_29D6605F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      }

      sub_29D660724();
      sub_29D65FFA4();
      result = sub_29D660744();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_29D62B790(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_29D5E1B70(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_29D62B938();
      v8 = v16;
      goto LABEL_8;
    }

    sub_29D62B238(v13, a3 & 1);
    v8 = sub_29D5E1B70(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_29D6606C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_29D5DF1C4(v19);

    return sub_29D5E20A8(a1, v19);
  }

  else
  {
    sub_29D62B8D0(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_29D62B8D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_29D5E20A8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_29D62B938()
{
  v1 = v0;
  sub_29D62F860(0);
  v2 = *v0;
  v3 = sub_29D6605E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_29D5E0D1C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_29D5E20A8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

  return result;
}

void *sub_29D62BAAC()
{
  v1 = v0;
  sub_29D63032C();
  v2 = *v0;
  v3 = sub_29D6605E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
        result = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
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

  return result;
}

void *sub_29D62BC08(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x29EDCA190];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x29EDCA190] + 32;
    v6 = result + 8;
    v26 = result[2];
    while (1)
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 8);
      v10 = *(v6 - 1);
      v11 = *v6;
      if (!v3)
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v27 = *(v6 - 8);
        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        v28 = v2;
        sub_29D62C43C(0, &qword_2A17ACF08, sub_29D62C4A0, MEMORY[0x29EDC9E90]);
        v2 = swift_allocObject();
        v15 = j__malloc_size(v2);
        v16 = v28;
        v17 = (v15 - 32) / 48;
        v2[2] = v14;
        v2[3] = 2 * v17;
        v18 = (v2 + 4);
        v19 = v28[3] >> 1;
        v20 = 6 * v19;
        if (v28[2])
        {
          if (v2 != v28 || v18 >= &v28[v20 + 4])
          {
            memmove(v2 + 4, v28 + 4, 48 * v19);
            v16 = v28;
          }

          v16[2] = 0;
        }

        v5 = v18 + v20 * 8;
        v3 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v1 = v26;
        v9 = v27;
      }

      v22 = __OFSUB__(v3--, 1);
      if (v22)
      {
        break;
      }

      v6 += 20;
      *v5 = v4;
      *(v5 + 8) = v7;
      *(v5 + 16) = v8;
      *(v5 + 24) = v9;
      *(v5 + 32) = v10;
      *(v5 + 40) = v11;
      v5 += 48;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v23 = v2[3];
  if (v23 < 2)
  {
    return v2;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v3);
  v25 = v24 - v3;
  if (!v22)
  {
    v2[2] = v25;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_29D62BDF0(uint64_t a1)
{
  sub_29D62FA90(0);
  v45 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v40 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x29EDCA190];
  if (v11)
  {
    v13 = *(v3 + 80);
    v42 = v13;
    v43 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x29EDCA190] + v43;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for AudiogramLongitudinalPDFChartData(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v44 = *(v17 + 72);
    v19 = v12;
    v40 = v11;
    v41 = v3;
    while (1)
    {
      v21 = *(v45 + 48);
      *v6 = v15;
      sub_29D62F768(v18, v6 + v21, type metadata accessor for AudiogramLongitudinalPDFChartData);
      sub_29D6302C8(v6, v10);
      if (v16)
      {
        v12 = v19;
        v20 = __OFSUB__(v16--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v19[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v23 = v10;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_29D62C43C(0, &qword_2A17ACFB8, sub_29D62FA90, MEMORY[0x29EDC9E90]);
        v26 = *(v3 + 72);
        v27 = v43;
        v12 = swift_allocObject();
        v28 = j__malloc_size(v12);
        if (!v26)
        {
          goto LABEL_34;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v26;
        v12[2] = v25;
        v12[3] = 2 * (v29 / v26);
        v32 = v12 + v27;
        v33 = v19[3] >> 1;
        v34 = v33 * v26;
        if (v19[2])
        {
          if (v12 < v19 || v32 >= v19 + v43 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v10 = v23;
        v11 = v40;
        v3 = v41;
        v20 = __OFSUB__(v36, 1);
        v16 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_29D6302C8(v10, v14);
      v14 += *(v3 + 72);
      v18 += v44;
      v19 = v12;
      if (v11 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v37 = v12[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v16);
    v39 = v38 - v16;
    if (v20)
    {
      goto LABEL_36;
    }

    v12[2] = v39;
  }
}

id sub_29D62C128(void *a1)
{
  result = [a1 metadata];
  if (result)
  {
    v2 = result;
    v3 = sub_29D65FEB4();

    v4 = sub_29D65FF64();
    if (*(v3 + 16))
    {
      v6 = sub_29D5E1AF8(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_29D5E0D1C(*(v3 + 56) + 32 * v6, v10);

        if (swift_dynamicCast())
        {
          return v9;
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_29D62C2B0(uint64_t a1)
{
  if (!qword_2A17ACC48)
  {
    sub_29D62C324(255);
    sub_29D62CD58(255);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACC48);
    }
  }
}

void sub_29D62C324(uint64_t a1)
{
  if (!qword_2A17ACC50)
  {
    sub_29D62C408(255);
    sub_29D62FAFC(255, &qword_2A17ACC68, sub_29D62C504);
    sub_29D62B1D4(&qword_2A17ACCE0, sub_29D62C408, MEMORY[0x29EDC9A80]);
    v1 = sub_29D65FC54();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACC50);
    }
  }
}

void sub_29D62C43C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D62C4A0()
{
  if (!qword_2A17ACC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACC60);
    }
  }
}

void sub_29D62C538(uint64_t a1)
{
  if (!qword_2A17ACC78)
  {
    sub_29D62C5B8(255);
    sub_29D62C7F4(255);
    sub_29D62CBE0(255);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACC78);
    }
  }
}

void sub_29D62C5B8(uint64_t a1)
{
  if (!qword_2A17ACC80)
  {
    sub_29D62C6FC(255);
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACC80);
    }
  }
}

void sub_29D62C6FC(uint64_t a1)
{
  if (!qword_2A17ACC88)
  {
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACC88);
    }
  }
}

void sub_29D62C7F4(uint64_t a1)
{
  if (!qword_2A17ACC98)
  {
    sub_29D62C954(255);
    sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62CAC4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACC98);
    }
  }
}

void sub_29D62C954(uint64_t a1)
{
  if (!qword_2A17ACCA0)
  {
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACCA0);
    }
  }
}

void sub_29D62CA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D62CAC4()
{
  result = qword_2A17ACCC0;
  if (!qword_2A17ACCC0)
  {
    v1 = MEMORY[0x29EDBC400];
    sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
    sub_29D62CB7C(&qword_2A17ACCC8, &qword_2A17ACCB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACCC0);
  }

  return result;
}

uint64_t sub_29D62CB7C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D62DE00(255, a2, a3, MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D62CC14(uint64_t a1)
{
  if (!qword_2A17ACCD8)
  {
    sub_29D62C954(255);
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACCD8);
    }
  }
}

void sub_29D62CD58(uint64_t a1)
{
  if (!qword_2A17ACCE8)
  {
    sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
    sub_29D65F6B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACCE8);
    }
  }
}

unint64_t sub_29D62CE50()
{
  result = qword_2A17ACCF8;
  if (!qword_2A17ACCF8)
  {
    sub_29D62C2B0(255);
    sub_29D62D0A0(&qword_2A17ACD00, sub_29D62C324, sub_29D62CFC0, MEMORY[0x29EDB8778]);
    sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
    sub_29D65F6B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACCF8);
  }

  return result;
}

unint64_t sub_29D62CFC0()
{
  result = qword_2A17ACD08;
  if (!qword_2A17ACD08)
  {
    sub_29D62FAFC(255, &qword_2A17ACC68, sub_29D62C504);
    sub_29D62D0A0(&qword_2A17ACD10, sub_29D62C504, sub_29D62D110, MEMORY[0x29EDB87B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD08);
  }

  return result;
}

uint64_t sub_29D62D0A0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D62D110()
{
  result = qword_2A17ACD18;
  if (!qword_2A17ACD18)
  {
    sub_29D62C538(255);
    sub_29D62C6FC(255);
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62C954(255);
    sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62CAC4();
    swift_getOpaqueTypeConformance2();
    sub_29D62D380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD18);
  }

  return result;
}

unint64_t sub_29D62D380()
{
  result = qword_2A17ACD20;
  if (!qword_2A17ACD20)
  {
    sub_29D62CBE0(255);
    sub_29D62C954(255);
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD20);
  }

  return result;
}

void sub_29D62D51C(uint64_t a1)
{
  if (!qword_2A17ACD30)
  {
    sub_29D62D4E8(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D5EC();
    sub_29D62D6CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACD30);
    }
  }
}

unint64_t sub_29D62D5EC()
{
  result = qword_2A17ACD40;
  if (!qword_2A17ACD40)
  {
    sub_29D62D4E8(255);
    sub_29D62B1D4(&qword_2A17ACD48, sub_29D62C268, MEMORY[0x29EDB8690]);
    sub_29D62B1D4(&qword_2A17ACD50, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD40);
  }

  return result;
}

unint64_t sub_29D62D6CC()
{
  result = qword_2A17ACD58;
  if (!qword_2A17ACD58)
  {
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD58);
  }

  return result;
}

void sub_29D62D768(uint64_t a1)
{
  if (!qword_2A17ACD60)
  {
    sub_29D62D51C(255);
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACD60);
    }
  }
}

void sub_29D62D900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D62D980(uint64_t a1)
{
  if (!qword_2A17ACD70)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
    sub_29D62DAB8(255);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACD70);
    }
  }
}

void sub_29D62DA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D62DAEC(uint64_t a1)
{
  if (!qword_2A17ACD88)
  {
    sub_29D62E810(255, &qword_2A17ACD90, sub_29D62DC20, &qword_2A17ACDF8, sub_29D62DC20);
    sub_29D62DC20(255);
    sub_29D62B1D4(&qword_2A17ACDF8, sub_29D62DC20, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACD88);
    }
  }
}

void sub_29D62DC90(uint64_t a1)
{
  if (!qword_2A17ACDA8)
  {
    sub_29D62DD10(255, &qword_2A17ACDB0, &qword_2A17ACDB8, MEMORY[0x29EDCA210]);
    sub_29D62DD84(255);
    v1 = sub_29D65FA14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACDA8);
    }
  }
}

void sub_29D62DD10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D62DE00(255, a3, a4, MEMORY[0x29EDBC938]);
    v5 = sub_29D65FA14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D62DD84(uint64_t a1)
{
  if (!qword_2A17ACDC0)
  {
    sub_29D62DE00(255, &qword_2A17ACDC8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v1 = sub_29D65FAE4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACDC0);
    }
  }
}

void sub_29D62DE00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}