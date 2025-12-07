uint64_t sub_29D8160F8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = *v1;
  v3 = sub_29D937898();
  v36 = *(v3 - 8);
  v37 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v34 - v7;
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v34 - v16;
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v34 - v19;
  v21 = [objc_opt_self() heartRhythmDefaultsDomainWithHealthStore_];
  sub_29D93A318();

  sub_29D934D28();
  sub_29D6A0A20(v20, v17);
  v22 = sub_29D937878();
  v23 = sub_29D93A2A8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39[0] = v35;
    *v24 = 136446466;
    v39[2] = v2;
    swift_getMetatypeMetadata();
    v25 = sub_29D939DA8();
    v27 = sub_29D6C2364(v25, v26, v39);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    sub_29D6A0A20(v17, v13);
    v28 = sub_29D939DA8();
    v30 = v29;
    sub_29D819E6C(v17, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v31 = sub_29D6C2364(v28, v30, v39);

    *(v24 + 14) = v31;
    _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s]: Successfully fetched date of %{public}s", v24, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v32, -1, -1);
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  else
  {

    sub_29D819E6C(v17, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  (*(v36 + 8))(v8, v37);
  return sub_29D6B1204(v20, v38);
}

uint64_t sub_29D816674()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D8166BC()
{
  v1 = v0;
  sub_29D819EDC(0);
  v25 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819F9C(0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D939D68();
  v14 = v13;
  v15 = *(v1 + 16);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v14;
  v16[4] = v15;
  v16[5] = sub_29D816FF0;
  v16[6] = 0;
  v17 = v15;
  v18 = sub_29D814DAC();

  v28 = v18;

  sub_29D938228();
  v19 = MEMORY[0x29EDB89F8];
  sub_29D8198A8(0, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v19, MEMORY[0x29EDB8A00]);
  sub_29D938508();

  sub_29D938228();
  sub_29D81A0D0(0, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
  v20 = MEMORY[0x29EDB89A8];
  sub_29D819858(&qword_2A1A24B30, sub_29D819EDC, MEMORY[0x29EDB89A8]);
  sub_29D819C90();
  v21 = v25;
  sub_29D938508();
  (*(v3 + 8))(v6, v21);
  sub_29D819858(&qword_2A1A24B20, sub_29D819F9C, v20);
  v22 = v26;
  v23 = sub_29D938418();
  (*(v27 + 8))(v11, v22);
  return v23;
}

uint64_t sub_29D816A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v33 = a3;
  sub_29D8196C0(0, &qword_2A1A24A60, type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v32 - v8;
  sub_29D8198A8(0, &unk_2A1A24840, MEMORY[0x29EDB8B18]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v32 - v14;
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  v18 = MEMORY[0x2A1C7C4A8](updated, v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v32 - v22;
  sub_29D81A1B4(a1, &v32 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29D81A1B4(a1, v20);
    sub_29D938338();
    sub_29D6A0CD0();
    sub_29D938318();
    (*(v6 + 8))(v9, v5);
    sub_29D819920(&qword_2A17B5C20, &unk_2A1A24840, MEMORY[0x29EDB8B18], MEMORY[0x29EDB8B20]);
    v24 = sub_29D938418();
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v25 = sub_29D939D68();
    v27 = v26;
    v28 = *(v32 + 16);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
    v29 = swift_allocObject();
    v29[2] = v25;
    v29[3] = v27;
    v29[4] = v28;
    v29[5] = sub_29D816FF8;
    v29[6] = 0;
    v30 = v28;
    v24 = sub_29D814DAC();
  }

  *v33 = v24;
  return sub_29D81A218(v23);
}

uint64_t sub_29D816D88@<X0>(uint64_t *a1@<X8>)
{
  sub_29D81A07C(0, &qword_2A1A24A48, MEMORY[0x29EDB8AB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v16[-v6];
  sub_29D81A0D0(0, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v16[-v12];
  v16[15] = sub_29D814B98();
  sub_29D938338();
  sub_29D6A0CD0();
  sub_29D938318();
  (*(v4 + 8))(v7, v3);
  sub_29D81A140();
  v14 = sub_29D938418();
  result = (*(v10 + 8))(v13, v9);
  *a1 = v14;
  return result;
}

uint64_t sub_29D816F7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v1;
}

uint64_t sub_29D817000@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_29D9339F8();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D817090()
{
  sub_29D8196C0(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v56 = &v46 - v2;
  sub_29D819520(0, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v46 - v7;
  sub_29D819A00(0);
  v46 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819AFC(0);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819BB8(0);
  v20 = *(v19 - 8);
  v49 = v19;
  v50 = v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819D04(0);
  v54 = v24;
  v52 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819DA0(0);
  v55 = v28;
  v53 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v51 = &v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D819520(0, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  sub_29D819A88();
  sub_29D938428();
  (*(v5 + 8))(v8, v4);
  sub_29D6A0CD0();
  sub_29D819858(&qword_2A1A226F0, sub_29D819A00, MEMORY[0x29EDB88A0]);
  v31 = v46;
  sub_29D938578();
  v32 = v13;
  v33 = v27;
  (*(v10 + 8))(v32, v31);
  v57 = sub_29D8166BC();
  sub_29D81A0D0(0, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
  sub_29D819858(&qword_2A1A226A0, sub_29D819AFC, MEMORY[0x29EDB88D8]);
  sub_29D819C90();
  v34 = v47;
  sub_29D938458();

  (*(v48 + 8))(v18, v34);
  sub_29D819858(&qword_2A1A22760, sub_29D819BB8, MEMORY[0x29EDB8870]);
  v35 = v49;
  sub_29D938468();
  v36 = (*(v50 + 8))(v23, v35);
  v37 = MEMORY[0x29ED6B670](v36);
  if (!v37)
  {
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v37 = sub_29D93A468();
  }

  v57 = v37;
  v38 = v37;
  v39 = sub_29D93A448();
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  sub_29D819858(&qword_2A1A22570, sub_29D819D04, MEMORY[0x29EDB8908]);
  sub_29D706380();
  v41 = v51;
  v42 = v54;
  sub_29D938538();
  sub_29D819E6C(v40, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  (*(v52 + 8))(v33, v42);
  sub_29D819858(&qword_2A1A22458, sub_29D819DA0, MEMORY[0x29EDB89E8]);
  v43 = v55;
  v44 = sub_29D938418();
  (*(v53 + 8))(v41, v43);
  return v44;
}

id sub_29D81784C(uint64_t a1, uint64_t a2)
{
  v33[1] = a2;
  v3 = sub_29D937178();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9371A8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D937158();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x29EDC2D70])
  {
    (*(v9 + 96))(v12, v8);
    (*(v14 + 32))(v17, v12, v13);
    sub_29D937108();
    v18 = sub_29D937188();
    (*(v4 + 8))(v7, v3);
    v19 = [v18 areAllRequirementsSatisfied];

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);

    v21 = sub_29D937878();
    v22 = sub_29D93A2A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136446722;
      sub_29D8196C0(0, &qword_2A17B5C10, type metadata accessor for ElectrocardiogramUpdateAvailability, MEMORY[0x29EDC9C68]);
      v33[2] = v25;
      sub_29D819724();
      v26 = sub_29D939DA8();
      v28 = sub_29D6C2364(v26, v27, &v34);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_29D6C2364(0xD000000000000023, 0x800000029D9657B0, &v34);
      *(v23 + 22) = 2082;
      if (v19)
      {
        v29 = 1702195828;
      }

      else
      {
        v29 = 0x65736C6166;
      }

      if (v19)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      v31 = sub_29D6C2364(v29, v30, &v34);

      *(v23 + 24) = v31;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s] User onboarded. (shouldAdvertise: %{public}s).", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v19;
}

uint64_t sub_29D817D04()
{
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v13[-v3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  if (v14 != 2 && (v14 & 1) != 0)
  {
    v6 = sub_29D939D68();
    v8 = v7;
    v9 = *(v0 + 16);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
    inited = swift_initStackObject();
    inited[2] = v6;
    inited[3] = v8;
    inited[4] = v9;
    inited[5] = sub_29D816FF8;
    inited[6] = 0;
    v11 = v9;
    sub_29D8160F8(v4);

    v12 = sub_29D9339F8();
    if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
    {
      sub_29D817ED4();
    }

    return sub_29D819E6C(v4, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  return result;
}

uint64_t sub_29D817ED4()
{
  v1 = MEMORY[0x29EDB9BC8];
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = sub_29D939D68();
  v8 = v7;
  v9 = *(v0 + 16);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
  inited = swift_initStackObject();
  inited[2] = v6;
  inited[3] = v8;
  inited[4] = v9;
  inited[5] = sub_29D816FF8;
  inited[6] = 0;
  v11 = v9;
  sub_29D9339E8();
  v12 = sub_29D9339F8();
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 0, 1, v12);
  sub_29D815AC8(v5);

  sub_29D819E6C(v5, &qword_2A1A25780, v1);
  v14 = sub_29D939D68();
  v16 = v15;
  v17 = swift_initStackObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v11;
  v17[5] = sub_29D816FF0;
  v17[6] = 0;
  v13(v5, 1, 1, v12);
  sub_29D815AC8(v5);

  return sub_29D819E6C(v5, &qword_2A1A25780, v1);
}

uint64_t sub_29D8180E0()
{
  v1 = MEMORY[0x29EDB9BC8];
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = sub_29D939D68();
  v8 = v7;
  v9 = *(v0 + 16);
  type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
  inited = swift_initStackObject();
  inited[2] = v6;
  inited[3] = v8;
  inited[4] = v9;
  inited[5] = sub_29D816FF8;
  inited[6] = 0;
  v11 = sub_29D9339F8();
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = v9;
  sub_29D815AC8(v5);

  sub_29D819E6C(v5, &qword_2A1A25780, v1);
  v14 = sub_29D939D68();
  v16 = v15;
  v17 = swift_initStackObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = sub_29D816FF0;
  v17[6] = 0;
  v12(v5, 1, 1, v11);
  sub_29D815AC8(v5);

  return sub_29D819E6C(v5, &qword_2A1A25780, v1);
}

uint64_t sub_29D8182E4()
{
  v22[1] = *v0;
  sub_29D6C3320(0, &qword_2A1A22330, MEMORY[0x29EDB8AC0]);
  v22[3] = *(v1 - 8);
  v22[4] = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v22[2] = v22 - v3;
  v4 = sub_29D937898();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  sub_29D73C0A4(0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9371A8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v15 = sub_29D937288();
  sub_29D937278();
  v27 = v15;
  sub_29D8196C0(0, &qword_2A1A21F50, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9E90]);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D93DDB0;
  (*(v11 + 16))(v17 + v16, v14, v10);
  v18 = MEMORY[0x29EDB89F8];
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v18, MEMORY[0x29EDB8A00]);
  sub_29D938518();

  sub_29D819858(&qword_2A1A226D0, sub_29D73C0A4, MEMORY[0x29EDB88B0]);
  v19 = v24;
  v20 = sub_29D938418();

  (*(v23 + 8))(v9, v19);
  (*(v11 + 8))(v14, v10);
  return v20;
}

uint64_t sub_29D818954()
{
  v1 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_context;
  v2 = sub_29D9341E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability__isElectrocardiogramUpdateAvailable;
  sub_29D819520(0, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_29D818A8C(uint64_t a1)
{
  sub_29D9341E8();
  if (v1 <= 0x3F)
  {
    sub_29D819520(319, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D818BC4(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D818C24@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a2 = v4;
  return result;
}

uint64_t sub_29D818CA4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D9383D8();
}

BOOL sub_29D818D18(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D933CE8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8196C0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v23 - v18;
  sub_29D933C88();
  sub_29D933C28();
  (*(v3 + 8))(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D819E6C(v10, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    return 1;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    sub_29D9339E8();
    v21 = sub_29D9339B8();
    v22 = *(v12 + 8);
    v22(v16, v11);
    v22(v19, v11);
    return v21 == -1;
  }
}

uint64_t sub_29D818FD8(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_29D819520(0, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
  v44 = *(v6 - 8);
  v45 = v6;
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v38 = &v37 - v11;
  sub_29D81959C(0);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D819520(0, &qword_2A1A22298, MEMORY[0x29EDB8B00]);
  v18 = v17;
  v39 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v37 - v21;
  v23 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability__isElectrocardiogramUpdateAvailable;
  LOBYTE(v46[0]) = 2;
  sub_29D81A07C(0, &unk_2A1A24950, MEMORY[0x29EDC9C68]);
  sub_29D938398();
  (*(v19 + 32))(v3 + v23, v22, v18);
  v40 = a1;
  sub_29D934188();
  sub_29D693E2C(v46, v46[3]);
  *(v3 + 16) = sub_29D934118();
  sub_29D69417C(v46);
  v24 = OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_context;
  v25 = sub_29D9341E8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v3 + v24, a1, v25);
  *(v3 + OBJC_IVAR____TtC5Heart35ElectrocardiogramUpdateAvailability_featureStatusManager) = a2;
  v27 = a2;
  v46[0] = sub_29D8182E4();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_29D819684;
  *(v29 + 24) = v28;
  v30 = MEMORY[0x29EDB89F8];
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v30, MEMORY[0x29EDB8A00]);
  v31 = v16;
  sub_29D938468();

  swift_beginAccess();
  v32 = v38;
  sub_29D9383A8();
  swift_endAccess();
  sub_29D819858(&qword_2A1A225E8, sub_29D81959C, MEMORY[0x29EDB8908]);
  v33 = v41;
  sub_29D938598();
  (*(v42 + 8))(v31, v33);
  v34 = v44;
  v35 = v45;
  (*(v44 + 16))(v43, v32, v45);
  swift_beginAccess();
  sub_29D9383B8();
  swift_endAccess();
  (*(v26 + 8))(v40, v25);
  (*(v34 + 8))(v32, v35);
  return v3;
}

void sub_29D819520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D81A07C(255, &unk_2A1A24950, MEMORY[0x29EDC9C68]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D81959C(uint64_t a1)
{
  if (!qword_2A1A225E0)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D81A07C(255, &unk_2A1A24950, MEMORY[0x29EDC9C68]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D9380F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A225E0);
    }
  }
}

uint64_t sub_29D81968C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void sub_29D8196C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D819724()
{
  result = qword_2A17B5C18;
  if (!qword_2A17B5C18)
  {
    sub_29D8196C0(255, &qword_2A17B5C10, type metadata accessor for ElectrocardiogramUpdateAvailability, MEMORY[0x29EDC9C68]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B5C18);
  }

  return result;
}

void sub_29D81979C(uint64_t a1)
{
  if (!qword_2A1A24A08)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D8198A8(255, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
    sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D938388();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A24A08);
    }
  }
}

uint64_t sub_29D819858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D8198A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(255);
    v7 = sub_29D6A0CD0();
    v8 = a3(a1, updated, v7, MEMORY[0x29EDC9F20]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D819920(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D8198A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D819970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D819988(uint64_t a1)
{
  sub_29D8198A8(0, &unk_2A1A24820, MEMORY[0x29EDCA058]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D819A00(uint64_t a1)
{
  if (!qword_2A1A226E8)
  {
    sub_29D819520(255, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
    sub_29D819A88();
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A226E8);
    }
  }
}

unint64_t sub_29D819A88()
{
  result = qword_2A1A222B8;
  if (!qword_2A1A222B8)
  {
    sub_29D819520(255, &qword_2A1A222B0, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A222B8);
  }

  return result;
}

void sub_29D819AFC(uint64_t a1)
{
  if (!qword_2A1A22698)
  {
    sub_29D819A00(255);
    sub_29D6A0CD0();
    sub_29D819858(&qword_2A1A226F0, sub_29D819A00, MEMORY[0x29EDB88A0]);
    v1 = sub_29D9380B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22698);
    }
  }
}

void sub_29D819BB8(uint64_t a1)
{
  if (!qword_2A1A22758)
  {
    sub_29D819AFC(255);
    sub_29D81A0D0(255, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
    sub_29D819858(&qword_2A1A226A0, sub_29D819AFC, MEMORY[0x29EDB88D8]);
    sub_29D819C90();
    v1 = sub_29D938058();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22758);
    }
  }
}

unint64_t sub_29D819C90()
{
  result = qword_2A1A24AA0;
  if (!qword_2A1A24AA0)
  {
    sub_29D81A0D0(255, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24AA0);
  }

  return result;
}

void sub_29D819D04(uint64_t a1)
{
  if (!qword_2A1A22568)
  {
    sub_29D819BB8(255);
    sub_29D819858(&qword_2A1A22760, sub_29D819BB8, MEMORY[0x29EDB8870]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22568);
    }
  }
}

void sub_29D819DA0(uint64_t a1)
{
  if (!qword_2A1A22450)
  {
    sub_29D819D04(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D819858(&qword_2A1A22570, sub_29D819D04, MEMORY[0x29EDB8908]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22450);
    }
  }
}

uint64_t sub_29D819E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8196C0(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D819EDC(uint64_t a1)
{
  if (!qword_2A1A24B28)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D8198A8(255, &qword_2A1A24AB8, MEMORY[0x29EDB89F8]);
    sub_29D819920(&qword_2A1A24AC0, &qword_2A1A24AB8, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D938198();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A24B28);
    }
  }
}

void sub_29D819F9C(uint64_t a1)
{
  if (!qword_2A1A24B18)
  {
    sub_29D81A0D0(255, &qword_2A1A24A98, MEMORY[0x29EDB89F8]);
    sub_29D819EDC(255);
    sub_29D819C90();
    sub_29D819858(&qword_2A1A24B30, sub_29D819EDC, MEMORY[0x29EDB89A8]);
    v1 = sub_29D938198();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B18);
    }
  }
}

void sub_29D81A07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D81A0D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6A0CD0();
    v7 = a3(a1, MEMORY[0x29EDC9A98], v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D81A140()
{
  result = qword_2A1A24838;
  if (!qword_2A1A24838)
  {
    sub_29D81A0D0(255, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24838);
  }

  return result;
}

uint64_t sub_29D81A1B4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_29D81A218(uint64_t a1)
{
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemState(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_29D81A274()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934178();
  sub_29D6FD494(v5, qword_2A1A2BF88);
  sub_29D69C6C0(v5, qword_2A1A2BF88);
  sub_29D933FE8();
  sub_29D76FB80(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x29EDC3790], v6);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC3898], v0);
  return sub_29D934158();
}

void *sub_29D81A47C(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v25 = *v2;
  v5 = sub_29D9341E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v9 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE508(0);
  v26 = v10;
  v24 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_domain;
  if (qword_2A1A24790 != -1)
  {
    swift_once();
  }

  v15 = sub_29D934178();
  v16 = sub_29D69C6C0(v15, qword_2A1A2BF88);
  (*(*(v15 - 8) + 16))(v3 + v14, v16, v15);
  *(v3 + OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_result) = a1;
  v17 = v27;
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v5);
  v18 = (*(v6 + 80) + 18) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v6 + 32))(v20 + v18, v9, v5);
  *(v20 + v19) = v25;
  sub_29D6CE59C(0);
  sub_29D81C1C4(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
  sub_29D938378();
  sub_29D81C1C4(&qword_2A1A24A00, sub_29D6CE508, MEMORY[0x29EDB8AE8]);
  v21 = v26;
  v22 = sub_29D938418();
  (*(v6 + 8))(v17, v5);
  (*(v24 + 8))(v13, v21);
  v3[2] = v22;
  return v3;
}

uint64_t sub_29D81A7E0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a1;
  sub_29D6D09E0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D81A9E0(v5);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v14, qword_2A1A2BF58);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a3;
  v19 = 0;
  sub_29D935E88();
  sub_29D9371C8();

  v19 = v13;
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D81C1C4(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
  v16 = sub_29D938418();
  result = (*(v9 + 8))(v12, v8);
  *a4 = v16;
  return result;
}

uint64_t sub_29D81A9E0(int a1)
{
  v61 = a1;
  v1 = sub_29D9340F8();
  v64 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v60 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v54 - v6;
  sub_29D6C36D8(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v59 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v58 = v54 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = v54 - v18;
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v62 = v54 - v22;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = v54 - v24;
  sub_29D76FB80(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v26 = *(v9 + 80);
  v27 = (v26 + 32) & ~v26;
  v56 = *(v9 + 72);
  v57 = v28;
  v54[1] = v26;
  v29 = swift_allocObject();
  sub_29D934188();
  sub_29D693E2C(v66, v66[3]);
  v65 = sub_29D81C138(0);
  sub_29D81C158(0, &qword_2A1A23DB8, sub_29D81C138);
  sub_29D939DA8();
  sub_29D934128();
  v30 = v64;

  sub_29D69417C(v66);
  sub_29D6D0B8C(v29 + v27, v25);
  sub_29D6C37D4(v25, v19);
  v55 = *(v30 + 48);
  if (v55(v19, 1, v1) == 1)
  {
    sub_29D76FA84(v19, sub_29D6C36D8);
  }

  else
  {
    v31 = *(v30 + 32);
    v54[0] = v7;
    v31(v7, v19, v1);
    v32 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_29D68F864(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_29D68F864((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v31(&v32[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v34], v54[0], v1);
  }

  v35 = v61;
  swift_setDeallocating();
  sub_29D76FA84(v29 + v27, sub_29D6C36D8);
  swift_deallocClassInstance();
  v36 = v62;
  if (v35 > 1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v39, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v63;
    v66[0] = 0;
    sub_29D9371C8();

    v38 = 1;
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v37, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v63;
    v66[0] = 0;
    sub_29D9371C8();

    sub_29D81B574(v61, v36);
    v38 = 0;
  }

  v40 = v64;
  (*(v64 + 56))(v36, v38, 1, v1);
  v41 = swift_allocObject();
  sub_29D6D0B8C(v36, v41 + v27);
  v42 = v58;
  sub_29D6D0B8C(v41 + v27, v58);
  v43 = v42;
  v44 = v59;
  sub_29D6C37D4(v43, v59);
  if (v55(v44, 1, v1) == 1)
  {
    sub_29D76FA84(v44, sub_29D6C36D8);
  }

  else
  {
    v45 = *(v40 + 32);
    v45(v60, v44, v1);
    v46 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_29D68F864(0, *(v46 + 2) + 1, 1, v46);
    }

    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_29D68F864((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v45(&v46[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v48], v60, v1);
    v36 = v62;
  }

  swift_setDeallocating();
  sub_29D76FA84(v41 + v27, sub_29D6C36D8);
  swift_deallocClassInstance();
  v49 = sub_29D939F58();

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v50, qword_2A1A2BF58);
  v51 = swift_allocObject();
  v52 = v63;
  *(v51 + 16) = v49;
  *(v51 + 24) = v52;
  v66[0] = 0;
  sub_29D935E88();
  sub_29D9371C8();

  sub_29D76FA84(v36, sub_29D6C36D8);
  return v49;
}

uint64_t sub_29D81B2E8(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D965810);
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D965830);
  v4 = MEMORY[0x29ED6A340](a1, MEMORY[0x29EDC3A38]);
  MEMORY[0x29ED6A240](v4);

  return 91;
}

uint64_t sub_29D81B3DC(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D965980);
  return 0;
}

uint64_t sub_29D81B4AC(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD00000000000002BLL, 0x800000029D965900);
  return 91;
}

uint64_t sub_29D81B574@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v49 = a2;
  v2 = sub_29D9342D8();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v46 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9342A8();
  v47 = *(v8 - 8);
  v48 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v35 = &v33 - v13;
  v14 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v45 = sub_29D934A18();
  v43 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29D81C138(0);
  v50 = v41;
  sub_29D81C158(0, &qword_2A1A23DB8, sub_29D81C138);
  v19 = sub_29D939DA8();
  v39 = v20;
  v40 = v19;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v42 = v18;
  v21 = qword_2A1A2C038;
  sub_29D934788();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  v22 = v42;
  sub_29D9349E8();
  v50 = v41;
  sub_29D939DA8();
  v23 = sub_29D933FE8();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D93A928())
    {
      sub_29D872AC4(MEMORY[0x29EDCA190]);
    }
  }

  type metadata accessor for AFibFeaturesPromotionTileActionHandler(0);
  sub_29D81C1C4(&qword_2A17B5C28, type metadata accessor for AFibFeaturesPromotionTileActionHandler, &unk_29D951970);
  sub_29D934038();

  if (!v44)
  {
    v24 = MEMORY[0x29EDC3908];
    goto LABEL_10;
  }

  if (v44 == 1)
  {
    v24 = MEMORY[0x29EDC3900];
LABEL_10:
    v25 = v46;
    v26 = v47;
    v27 = v48;
    (*(v47 + 104))(v46, *v24, v48);
    (*(v26 + 56))(v25, 0, 1, v27);
    v28 = v35;
    (*(v26 + 32))(v35, v25, v27);
    (*(v26 + 16))(v34, v28, v27);
    v29 = v36;
    sub_29D9342E8();
    v30 = v38;
    sub_29D934068();
    (*(v37 + 8))(v29, v30);
    (*(v26 + 8))(v28, v27);
    return (*(v43 + 8))(v22, v45);
  }

  v32 = v46;
  (*(v47 + 56))(v46, 1, 1, v48);
  (*(v43 + 8))(v22, v45);
  return sub_29D76FA84(v32, sub_29D76F8C0);
}

uint64_t sub_29D81BC88(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();
  v3 = sub_29D93AF08();

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D965930);
  v4 = MEMORY[0x29ED6A340](a1, MEMORY[0x29EDC3A38]);
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_29D81BD80(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();
  v2 = sub_29D93AF08();

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95FF00);
  MEMORY[0x29ED6A240](0xD00000000000001ELL, 0x800000029D965960);
  swift_getErrorValue();
  v3 = sub_29D93ADF8();
  MEMORY[0x29ED6A240](v3);

  return v2;
}

uint64_t sub_29D81BE74()
{

  v1 = OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibFeaturesPromotionGenerator(uint64_t a1)
{
  result = qword_2A1A23E78;
  if (!qword_2A1A23E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D81BF6C(uint64_t a1)
{
  result = sub_29D934178();
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

uint64_t sub_29D81C014@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart30AFibFeaturesPromotionGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D81C090@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 18) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return sub_29D81A7E0(v5, v4, a1);
}

uint64_t sub_29D81C158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D81C1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_29D81C20C(int a1)
{
  v3 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v69 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v50 - v13;
  v57 = sub_29D935398();
  v61 = *(v57 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v57, v15);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v67 = &v50 - v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v66 = &v50 - v22;
  v59 = v1;
  v58 = a1;
  *(v1 + qword_2A17B5C30) = a1;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2BE98;
  v24 = unk_2A1A2BEA0;
  v25 = qword_2A1A2BEA8;
  v68 = *(v7 + 16);
  v68(v11, v14, v6);
  v64 = v7 + 16;
  sub_29D935E88();
  v26 = v23;
  v62 = v23;
  v27 = v26;
  sub_29D933A98();
  v63 = v24;
  v55 = sub_29D939D98();
  v51 = v28;
  v65 = *(v7 + 8);
  v65(v14, v6);
  sub_29D939D08();
  v68(v11, v14, v6);
  sub_29D935E88();
  v50 = v27;
  sub_29D933A98();
  sub_29D939D98();
  v60 = v7 + 8;
  v29 = v65;
  v65(v14, v6);
  sub_29D935388();
  sub_29D939D08();
  v30 = v68;
  v68(v11, v14, v6);
  sub_29D935E88();
  v50 = v50;
  sub_29D933A98();
  v55 = sub_29D939D98();
  v51 = v31;
  v29(v14, v6);
  sub_29D939D08();
  v30(v11, v14, v6);
  sub_29D935E88();
  v50 = v50;
  sub_29D933A98();
  sub_29D939D98();
  v29(v14, v6);
  sub_29D935388();
  sub_29D939D08();
  v32 = v68;
  v68(v11, v14, v6);
  sub_29D935E88();
  v55 = v50;
  sub_29D933A98();
  v33 = sub_29D939D98();
  v50 = v34;
  v51 = v33;
  v35 = v65;
  v65(v14, v6);
  sub_29D939D08();
  v52 = v6;
  v53 = v11;
  v32(v11, v14, v6);
  v54 = v25;
  sub_29D935E88();
  v55 = v55;
  sub_29D933A98();
  sub_29D939D98();
  v35(v14, v6);
  v36 = v56;
  sub_29D935388();
  sub_29D81D8D0(0, &qword_2A17B42F8, MEMORY[0x29EDC1F80], MEMORY[0x29EDC9E90]);
  v37 = v61;
  v38 = *(v61 + 72);
  v39 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_29D943EA0;
  v41 = v40 + v39;
  v42 = *(v37 + 16);
  v43 = v57;
  v42(v41, v66, v57);
  v42(v41 + v38, v67, v43);
  v42(v41 + 2 * v38, v36, v43);
  sub_29D939D08();
  v44 = v52;
  v68(v53, v14, v52);
  sub_29D935E88();
  v45 = v55;
  sub_29D933A98();
  sub_29D939D98();
  v65(v14, v44);
  if (v58)
  {
    v46 = sub_29D936B68();
    [v46 setAdditionalSafeAreaInsets_];
    v47 = [v46 navigationItem];
    [v47 setRightBarButtonItem_];
  }

  else
  {
    v46 = sub_29D936B68();
  }

  v48 = *(v61 + 8);
  v48(v36, v43);
  v48(v67, v43);
  v48(v66, v43);
  return v46;
}

uint64_t sub_29D81CBA0(void (*a1)(char *, char *, uint64_t))
{
  v54 = a1;
  v51 = *v1;
  v52 = v1;
  v2 = sub_29D933CC8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81D8D0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v49 - v12;
  v14 = sub_29D9339F8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v50 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v55 = &v49 - v20;
  v21 = sub_29D933AB8();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D933CE8();
  v56 = *(v26 - 8);
  v57 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v25, *MEMORY[0x29EDB9C78], v21);
  sub_29D933AC8();
  (*(v22 + 8))(v25, v21);
  (*(v3 + 104))(v6, *MEMORY[0x29EDB9CD8], v2);
  sub_29D933C38();
  (*(v3 + 8))(v6, v2);
  v30 = v15[6];
  if (v30(v13, 1, v14) == 1)
  {
    sub_29D6A0D34(v13);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v31 = sub_29D937898();
    sub_29D69C6C0(v31, qword_2A1A2C008);
    v32 = sub_29D937878();
    v33 = sub_29D93A288();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136446210;
      v36 = sub_29D93AF08();
      v38 = sub_29D6C2364(v36, v37, &v58);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s] Failed to subtract 6  months of the current date", v34, 0xCu);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    (*(v56 + 8))(v29, v57);
  }

  else
  {
    v54 = v15[4];
    v54(v55, v13, v14);
    v39 = v52[3];
    v40 = sub_29D9345F8();
    swift_allocObject();
    v41 = v39;
    v58 = sub_29D9345E8();
    v42 = v53;
    MEMORY[0x29ED64D30](v40, MEMORY[0x29EDC16C0]);
    if (v30(v42, 1, v14) != 1)
    {
      v44 = v50;
      v54(v50, v42, v14);

      v45 = v55;
      v46 = sub_29D933978();
      v47 = v15[1];
      v47(v44, v14);
      v47(v45, v14);
      (*(v56 + 8))(v29, v57);
      v43 = v46 ^ 1;
      return v43 & 1;
    }

    (v15[1])(v55, v14);
    (*(v56 + 8))(v29, v57);
    sub_29D6A0D34(v42);
  }

  v43 = 0;
  return v43 & 1;
}

void sub_29D81D22C(uint64_t a1)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 24);
  v3 = sub_29D933958();
  v4 = sub_29D939D28();
  v17[0] = 0;
  LODWORD(v2) = [v2 setDate:v3 forKey:v4 error:v17];

  v5 = v17[0];
  if (v2)
  {

    v6 = v5;
  }

  else
  {
    v7 = v17[0];
    v8 = sub_29D933598();

    swift_willThrow();
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = sub_29D937878();
    v11 = sub_29D93A288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136446210;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] Failed to set HKKeyValueDomain date value", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }
  }
}

uint64_t type metadata accessor for BloodPressureJournalBestPracticesViewController(uint64_t a1)
{
  result = qword_2A17B5C38;
  if (!qword_2A17B5C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D81D55C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BloodPressureJournalBestPracticesViewController(0);
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v2 = [v0 scrollView];
  sub_29D88BBC8(&unk_2A243E380);
  v3 = sub_29D939F18();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v5 = sub_29D939D28();

  [v2 setAccessibilityIdentifier_];

  v6 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243E3C0);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v9 = sub_29D939D28();

  [v6 setTitleAccessibilityIdentifier_];

  sub_29D88BBC8(&unk_2A243E400);
  v10 = sub_29D939F18();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    sub_29D936C58();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_29D81D7EC(void *a1)
{
  v1 = a1;
  sub_29D81D55C();
}

id sub_29D81D890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalBestPracticesViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D81D8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D81D934(uint64_t a1, uint64_t a2)
{
  sub_29D7C015C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = (*(a2 + 16))(a1, a2);
  sub_29D7C05E8(0, &qword_2A17B4F60, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  *(v10 + 32) = (*(a2 + 8))(a1, a2) & 1;
  sub_29D6AD548();
  sub_29D81E15C(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
  sub_29D938518();

  sub_29D81E15C(&qword_2A17B4F68, sub_29D7C015C, MEMORY[0x29EDB88B0]);
  v11 = sub_29D938418();
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_29D81DB44()
{
  sub_29D7061B8(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710880(0);
  v22 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81E1A4(0);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C((v0 + 16), *(v0 + 40));
  v26 = sub_29D937258();
  sub_29D6FC794();
  v15 = sub_29D93A468();
  v25 = v15;
  v16 = sub_29D93A448();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_29D6B7D8C(0);
  sub_29D81E15C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D81E15C(&qword_2A1A248E0, sub_29D6FC794, MEMORY[0x29EDCA280]);
  sub_29D938538();
  sub_29D7339C0(v4);

  sub_29D81E15C(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v17 = v22;
  sub_29D938468();
  (*(v6 + 8))(v9, v17);
  sub_29D81E15C(&qword_2A17B5C50, sub_29D81E1A4, MEMORY[0x29EDB8908]);
  v18 = v23;
  v19 = sub_29D938418();
  (*(v24 + 8))(v14, v18);
  return v19;
}

uint64_t sub_29D81DEDC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_29D937198();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29D81DF0C()
{
  sub_29D69417C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_29D81DF68()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C((v0 + 16), *(v0 + 40));
  sub_29D937238();
  v6 = sub_29D937198();
  (*(v2 + 8))(v5, v1);
  return v6 & 1;
}

uint64_t sub_29D81E0A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D81E0F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D81E15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D81E1A4(uint64_t a1)
{
  if (!qword_2A17B5C48)
  {
    sub_29D710880(255);
    sub_29D81E15C(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5C48);
    }
  }
}

uint64_t sub_29D81E240()
{
  v10 = sub_29D937898();
  MEMORY[0x2A1C7C4A8](v10, v1);
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(v0, v0[3]);
  sub_29D937238();
  v7 = sub_29D81E538(v6);
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

id sub_29D81E538(uint64_t a1)
{
  v2 = sub_29D937898();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D937158();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937178();
  v69 = *(v9 - 8);
  v70 = v9;
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v62 = &v59 - v15;
  v63 = sub_29D937118();
  v61 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63, v16);
  v60 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D9371A8();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = &v59 - v25;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v59 - v28;
  v30 = *(v19 + 16);
  v31 = a1;
  v30(&v59 - v28, a1, v18);
  v32 = (*(v19 + 88))(v29, v18);
  if (v32 == *MEMORY[0x29EDC2D70])
  {
    (*(v19 + 96))(v29, v18);
    v33 = v67;
    v34 = v68;
    (*(v67 + 32))(v8, v29, v68);
    sub_29D937108();
    v35 = sub_29D937168();
    if (*(v35 + 16) && (v36 = sub_29D6959E0(), (v37 & 1) != 0))
    {
      v38 = *(*(v35 + 56) + 8 * v36);

      v39 = [v38 areAllRequirementsSatisfied];
    }

    else
    {

      v39 = 0;
    }

    (*(v69 + 8))(v13, v70);
    (*(v33 + 8))(v8, v34);
  }

  else if (v32 == *MEMORY[0x29EDC2D68])
  {
    (*(v19 + 96))(v29, v18);
    v41 = v60;
    v40 = v61;
    v42 = v63;
    (*(v61 + 32))(v60, v29, v63);
    v43 = v62;
    sub_29D937108();
    v44 = sub_29D937168();
    if (*(v44 + 16) && (v45 = sub_29D6959E0(), (v46 & 1) != 0))
    {
      v47 = *(*(v44 + 56) + 8 * v45);

      v39 = [v47 areAllRequirementsSatisfied];
    }

    else
    {

      v39 = 0;
    }

    (*(v69 + 8))(v43, v70);
    (*(v40 + 8))(v41, v42);
  }

  else
  {
    v48 = v66;
    sub_29D937868();
    v30(v26, v31, v18);
    v49 = sub_29D937878();
    v50 = sub_29D93A288();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = v70;
      *v51 = 136315394;
      *(v51 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94C280, &v71);
      *(v51 + 12) = 2080;
      LODWORD(v69) = v50;
      v30(v59, v26, v18);
      v52 = sub_29D939DA8();
      v54 = v53;
      v55 = *(v19 + 8);
      v55(v26, v18);
      v56 = sub_29D6C2364(v52, v54, &v71);

      *(v51 + 14) = v56;
      _os_log_impl(&dword_29D677000, v49, v69, "[%s] Unknown feature status received: %s", v51, 0x16u);
      v57 = v70;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v57, -1, -1);
      MEMORY[0x29ED6BE30](v51, -1, -1);

      (*(v64 + 8))(v66, v65);
    }

    else
    {

      v55 = *(v19 + 8);
      v55(v26, v18);
      (*(v64 + 8))(v48, v65);
    }

    v55(v29, v18);
    return 0;
  }

  return v39;
}

uint64_t sub_29D81EC50()
{
  sub_29D7061B8(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710880(0);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D81E1A4(0);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(v0, v0[3]);
  *&v28[0] = sub_29D937258();
  sub_29D6FC794();
  v15 = sub_29D93A468();
  v29 = v15;
  v16 = sub_29D93A448();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_29D6B7D8C(0);
  sub_29D81E15C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D81E15C(&qword_2A1A248E0, sub_29D6FC794, MEMORY[0x29EDCA280]);
  sub_29D938538();
  sub_29D7339C0(v4);

  sub_29D81F02C(v0, v28);
  v17 = swift_allocObject();
  v18 = v28[1];
  v17[1] = v28[0];
  v17[2] = v18;
  v17[3] = v28[2];
  sub_29D81E15C(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v19 = v24;
  sub_29D938468();

  (*(v25 + 8))(v9, v19);
  sub_29D81E15C(&qword_2A17B5C50, sub_29D81E1A4, MEMORY[0x29EDB8908]);
  v20 = v26;
  v21 = sub_29D938418();
  (*(v27 + 8))(v14, v20);
  return v21;
}

id sub_29D81F064@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D81E538(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_29D81F094(void *a1, uint64_t a2, char a3)
{
  sub_29D8232D4(0, &qword_2A17B5CB0, MEMORY[0x29EDC9E88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v13 - v10;
  sub_29D693E2C(a1, a1[3]);
  sub_29D82322C();
  sub_29D93AED8();
  v13 = a2;
  v14 = a3;
  sub_29D823280();
  sub_29D93AD18();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_29D81F1FC(uint64_t a1)
{
  v2 = sub_29D82322C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D81F238(uint64_t a1)
{
  v2 = sub_29D82322C();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D81F274@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_29D822D54(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

id sub_29D81F2C4()
{
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView);
  }

  else
  {
    sub_29D936A88();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_29D81F3A4()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937858();
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29D677000, v7, v8, "CardioFitnessRetroComputeTileViewController loaded", v9, 2u);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for CardioFitnessRetroComputeTipTileViewController(0);
  v13.receiver = v1;
  v13.super_class = v10;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  sub_29D81F604();
  v11 = sub_29D81F2C4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936A48();
}

void sub_29D81F568(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29D81FEA4();
  }
}

void sub_29D81F604()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_29D81F2C4();
  [v2 addSubview_];

  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943A10;
  v5 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView] topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [*&v0[v5] bottomAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [*&v0[v5] leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [*&v0[v5] trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v26;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v27 = sub_29D939F18();

  [v24 activateConstraints_];

  v28 = sub_29D81F93C();
  sub_29D81FB20(v28, v29);

  sub_29D821F64();
}

uint64_t sub_29D81F93C()
{
  v1 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v0 + v1, &v12);
  v2 = v13;
  if (v13)
  {
    v3 = sub_29D693E2C(&v12, v13);
    v4 = *(v2 - 8);
    MEMORY[0x2A1C7C4A8](v3, v3);
    v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    sub_29D822AD8(&v12);
    v7 = sub_29D9365B8();
    v9 = v8;
    (*(v4 + 8))(v6, v2);
    if (v9 >> 60 != 15)
    {
      sub_29D9330D8();
      swift_allocObject();
      sub_29D9330C8();
      sub_29D8231C0();
      sub_29D9330B8();
      sub_29D71847C(v7, v9);

      return v12;
    }
  }

  else
  {
    sub_29D822AD8(&v12);
  }

  return 0;
}

double sub_29D81FB20(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    if (a2 >> 6)
    {
      if (a2 >> 6 != 1)
      {
        return result;
      }

      sub_29D820C70();
      sub_29D8217EC();
      type metadata accessor for HeartHealthPluginDelegate();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = objc_opt_self();
      v7 = [v6 bundleForClass_];
      sub_29D9334A8();

      v8 = sub_29D939D28();

      [v2 setTitle_];

      v9 = sub_29D81F2C4();
      sub_29D822EF4(a1, a2 & 1);
      v10 = [v6 bundleForClass_];
    }

    else
    {
      sub_29D82108C();
      type metadata accessor for HeartHealthPluginDelegate();
      v11 = swift_getObjCClassFromMetadata();
      v12 = objc_opt_self();
      v13 = [v12 bundleForClass_];
      sub_29D9334A8();

      v14 = sub_29D939D28();

      [v2 setTitle_];

      v9 = sub_29D81F2C4();
      v15 = [v12 bundleForClass_];
      sub_29D9334A8();

      v10 = [v12 bundleForClass_];
    }

    sub_29D9334A8();

    sub_29D936A58();
  }

  return result;
}

void sub_29D81FEA4()
{
  swift_getObjectType();
  sub_29D81F93C();
  if (v1 > 0xFDu)
  {
LABEL_7:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v2 = sub_29D937898();
    sub_29D69C6C0(v2, qword_2A1A2C008);
    v3 = v0;
    oslog = sub_29D937878();
    v4 = sub_29D93A298();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      sub_29D81F93C();
      sub_29D6C5040(0, qword_2A1A235B0, &type metadata for CardioFitnessRetroComputeFeedItemState, MEMORY[0x29EDC9C68]);
      v7 = sub_29D939DA8();
      v9 = sub_29D6C2364(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_29D677000, oslog, v4, "Tapped on retro compute tile with an unknown configuration state: %{public}s", v5, 0xCu);
      sub_29D69417C(v6);
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      sub_29D8AA9B4();
      sub_29D939DF8();

      return;
    }

    goto LABEL_7;
  }

  sub_29D820114();
}

void sub_29D820114()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_29D9334A8();

  v3 = [v1 &selRef:ObjCClassFromMetadata initWithIconImage:0xE000000000000000 titleText:? detailText:? tintColor:? + 3];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = sub_29D939D28();

  v25 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, 0xE000000000000000}];

  v6 = v1;
  v7 = [v1 bundleForClass_];
  sub_29D9334A8();

  v8 = swift_allocObject();
  *(v8 + 16) = v23;
  v9 = v23;
  v10 = sub_29D939D28();

  v30 = sub_29D822D28;
  v31 = v8;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29D799960;
  v29 = &unk_2A2447750;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v24 = [v12 actionWithTitle:v10 style:0 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  v13 = [v1 bundleForClass_];
  sub_29D9334A8();

  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v22 = v9;
  v15 = sub_29D939D28();

  v30 = sub_29D822D4C;
  v31 = v14;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29D799960;
  v29 = &unk_2A24477A0;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 actionWithTitle:v15 style:0 handler:{v16, 0xE000000000000000}];
  _Block_release(v16);

  v18 = [v6 bundleForClass_];
  sub_29D9334A8();

  v19 = sub_29D939D28();

  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29D799960;
  v29 = &unk_2A24477C8;
  v20 = _Block_copy(&aBlock);

  v21 = [v12 actionWithTitle:v19 style:1 handler:{v20, 0xE000000000000000}];
  _Block_release(v20);

  [v25 addAction_];
  [v25 addAction_];
  [v25 addAction_];
  [v22 presentViewController:v25 animated:1 completion:0];
}

double sub_29D8206E8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_29D8AA9B4();
  sub_29D939DF8();

  return result;
}

void sub_29D820738()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x29EDB93D0]) init];
  v3 = swift_allocObject();
  *(v3 + 16) = ObjectType;
  v10[4] = sub_29D822D08;
  v10[5] = v3;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D820C04;
  v10[3] = &unk_2A2447700;
  v4 = _Block_copy(v10);

  [v2 triggerRetrocomputeWithHandler_];
  _Block_release(v4);
  v5 = [v0 parentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
LABEL_5:

    v2 = v6;
LABEL_6:

    return;
  }

  v8 = [v7 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 _scrollToTopIfPossible_];

    v2 = v6;
    v6 = v9;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_29D8208B0(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a1;
    v6 = sub_29D937878();
    v7 = sub_29D93A288();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136446466;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v26);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      v13 = a1;
      sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v26);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Failed to trigger retrocompute: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);

      return;
    }

    v24 = a1;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    oslog = sub_29D937878();
    v18 = sub_29D93A2A8();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D677000, oslog, v18, "[%{public}s] Successfully triggered retrocompute", v19, 0xCu);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);

      return;
    }

    v24 = oslog;
  }
}

void sub_29D820C04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_29D820C70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136446210;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, v27);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Resetting available dismissal states", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v11 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v1 + v11, v25);
  v13 = v26;
  if (v26)
  {
    v14 = sub_29D693E2C(v25, v26);
    v15 = *(v13 - 8);
    MEMORY[0x2A1C7C4A8](v14, v14);
    v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v15 + 16))(v17);
    v18 = sub_29D936588();
    (*(v15 + 8))(v17, v13);
    sub_29D934408();
    swift_allocObject();
    v19 = v18;
    v20 = sub_29D9343C8();

    v27[0] = v20;
    v27[1] = 0xD000000000000016;
    v27[2] = 0x800000029D959220;
    v27[3] = 0xD000000000000016;
    v27[4] = 0x800000029D959240;
    v27[5] = 0xD000000000000020;
    v27[6] = 0x800000029D959260;
    sub_29D69417C(v25);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v25[0] = sub_29D6AEBC8(0);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = ObjectType;
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);

    v23 = sub_29D938478();

    sub_29D822B84(v27);

    swift_beginAccess();
    *(v21 + 16) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D82108C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D822BD8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A2A8();
  v16 = os_log_type_enabled(v14, v15);
  v44 = ObjectType;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v6;
    v19 = v12;
    v20 = v9;
    v21 = v8;
    v22 = v18;
    v48[0] = v18;
    *v17 = 136446210;
    v23 = sub_29D93AF08();
    v25 = sub_29D6C2364(v23, v24, v48);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] Resetting completed dismissal and last seen dates", v17, 0xCu);
    sub_29D69417C(v22);
    v26 = v22;
    v8 = v21;
    v9 = v20;
    v12 = v19;
    v6 = v43;
    MEMORY[0x29ED6BE30](v26, -1, -1);
    MEMORY[0x29ED6BE30](v17, -1, -1);
  }

  v27 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v1 + v27, v46);
  v29 = v47;
  if (v47)
  {
    v30 = sub_29D693E2C(v46, v47);
    v31 = *(v29 - 8);
    MEMORY[0x2A1C7C4A8](v30, v30);
    v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    v34 = sub_29D936588();
    (*(v31 + 8))(v33, v29);
    sub_29D934408();
    swift_allocObject();
    v35 = v34;
    v36 = sub_29D9343C8();

    v48[0] = v36;
    v48[1] = 0xD000000000000016;
    v48[2] = 0x800000029D959220;
    v48[3] = 0xD000000000000016;
    v48[4] = 0x800000029D959240;
    v48[5] = 0xD000000000000020;
    v48[6] = 0x800000029D959260;
    sub_29D69417C(v46);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v46[0] = sub_29D6AEFFC(0);
    v38 = sub_29D9339F8();
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = sub_29D6AF430(v6);
    sub_29D6A0D34(v6);
    v45 = v39;
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);
    sub_29D938458();

    v40 = swift_allocObject();
    v41 = v44;
    *(v40 + 16) = v37;
    *(v40 + 24) = v41;
    sub_29D822C9C(&qword_2A17B5CA0, sub_29D822BD8, MEMORY[0x29EDB8870]);

    v42 = sub_29D938478();

    sub_29D822B84(v48);
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    *(v37 + 16) = v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D821660(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136446210;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D677000, v7, v8, a4, v9, 0xCu);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  swift_beginAccess();
  swift_beginAccess();
  *(a2 + 16) = 0;
}

uint64_t sub_29D8217EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v7 = sub_29D937898();
  sub_29D69C6C0(v7, qword_2A1A2C008);
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136446210;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, v33);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s] Setting last seen date if needed", v10, 0xCu);
    sub_29D69417C(v11);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  v15 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v1 + v15, v31);
  v17 = v32;
  if (v32)
  {
    v18 = sub_29D693E2C(v31, v32);
    v19 = *(v17 - 8);
    MEMORY[0x2A1C7C4A8](v18, v18);
    v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v19 + 16))(v21);
    v22 = sub_29D936588();
    (*(v19 + 8))(v21, v17);
    sub_29D934408();
    swift_allocObject();
    v23 = v22;
    v24 = sub_29D9343C8();

    v33[0] = v24;
    v33[1] = 0xD000000000000016;
    v33[2] = 0x800000029D959220;
    v33[3] = 0xD000000000000016;
    v33[4] = 0x800000029D959240;
    v33[5] = 0xD000000000000020;
    v33[6] = 0x800000029D959260;
    sub_29D69417C(v31);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    sub_29D9339E8();
    v26 = sub_29D9339F8();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
    v27 = sub_29D6AF798(v6);
    sub_29D6A0D34(v6);
    v31[0] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = ObjectType;
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);

    v29 = sub_29D938478();

    sub_29D822B84(v33);

    swift_beginAccess();
    *(v25 + 16) = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D821CA4()
{
  sub_29D81F93C();
  if (v1 <= 0xFDu)
  {
    if (!(v1 >> 6))
    {
      if (qword_2A1A22218 != -1)
      {
        swift_once();
      }

      v2 = qword_2A1A2BCD0;
      goto LABEL_14;
    }

    if (v1 >> 6 == 1)
    {
      if (qword_2A1A22210 != -1)
      {
        swift_once();
      }

      v2 = qword_2A1A2BCC8;
LABEL_14:
      v11 = objc_allocWithZone(sub_29D934AF8());
      v12 = v2;
      v13 = sub_29D934AE8();
      sub_29D69567C(0, &qword_2A17B5C90, 0x29EDBA088);
      oslog = sub_29D93A328();
      [oslog addOperation:v13];

      goto LABEL_15;
    }
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = v0;
  oslog = sub_29D937878();
  v5 = sub_29D93A298();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    sub_29D81F93C();
    sub_29D6C5040(0, qword_2A1A235B0, &type metadata for CardioFitnessRetroComputeFeedItemState, MEMORY[0x29EDC9C68]);
    v8 = sub_29D939DA8();
    v10 = sub_29D6C2364(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29D677000, oslog, v5, "Dismissed a retro compute tile with an unknown configuration state: %{public}s", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);

    return;
  }

LABEL_15:
}

void sub_29D821F64()
{
  v1 = v0;
  v13 = sub_29D939D68();
  v14 = v2;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D965E10);

  v3 = (v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier);
  swift_beginAccess();
  *v3 = v13;
  v3[1] = v14;
  sub_29D935E88();

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x656956656C69542ELL, 0xE900000000000077);

  v4 = sub_29D81F2C4();
  v5 = sub_29D939D28();
  [v4 setAccessibilityIdentifier_];

  v6 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView;
  v7 = *(v1 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView);
  v8 = sub_29D936A78();

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x62614C79646F422ELL, 0xEA00000000006C65);
  v9 = sub_29D939D28();

  [v8 setAccessibilityIdentifier_];

  v10 = *(v1 + v6);
  v11 = sub_29D936A68();

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x426E6F697463412ELL, 0xED00006E6F747475);

  v12 = sub_29D939D28();

  [v11 setAccessibilityIdentifier_];
}

id sub_29D822198(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView] = 0;
  v8 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_detail;
  v9 = *MEMORY[0x29EDC2198];
  v10 = sub_29D935878();
  (*(*(v10 - 8) + 104))(&v3[v8], v9, v10);
  v3[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_showsSeparator] = 0;
  if (a2)
  {
    v11 = sub_29D939D28();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for CardioFitnessRetroComputeTipTileViewController(0);
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_29D822320(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController____lazy_storage___tileView] = 0;
  v5 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_detail;
  v6 = *MEMORY[0x29EDC2198];
  v7 = sub_29D935878();
  (*(*(v7 - 8) + 104))(&v1[v5], v6, v7);
  v1[OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_showsSeparator] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CardioFitnessRetroComputeTipTileViewController(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_29D822444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessRetroComputeTipTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CardioFitnessRetroComputeTipTileViewController(uint64_t a1)
{
  result = qword_2A17B5C70;
  if (!qword_2A17B5C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D822570(uint64_t a1)
{
  result = sub_29D935878();
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

uint64_t sub_29D822628@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D822680(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_context;
  swift_beginAccess();
  sub_29D718124(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    v4 = sub_29D81F93C();
    sub_29D81FB20(v4, v5);
  }

  return sub_29D822AD8(a1);
}

double (*sub_29D822704(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D822768;
}

double sub_29D822768(uint64_t a1, char a2)
{
  swift_endAccess();
  if (a2 & 1) == 0 && ([*(a1 + 24) isViewLoaded])
  {
    v5 = sub_29D81F93C();
    return sub_29D81FB20(v5, v6);
  }

  return result;
}

uint64_t sub_29D8227DC()
{
  v1 = (*v0 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_29D935E88();
  return v2;
}

double sub_29D822838(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_29D822910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63158](a1, WitnessTable);
}

uint64_t sub_29D82297C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart46CardioFitnessRetroComputeTipTileViewController_detail;
  v5 = sub_29D935878();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D8229F8()
{
  v0 = sub_29D81F93C();
  if (v1 <= 0xFDu)
  {
    if (v1 >> 6)
    {
      if (v1 >> 6 == 1)
      {
        return 0;
      }
    }

    else if (v0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29D822AD8(uint64_t a1)
{
  sub_29D823158(0, &qword_2A17B8190, &qword_2A17B2D88, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D822BD8(uint64_t a1)
{
  if (!qword_2A17B5C98)
  {
    sub_29D700D5C();
    sub_29D822C9C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938058();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5C98);
    }
  }
}

uint64_t sub_29D822C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D822D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_29D822D54(void *a1)
{
  sub_29D8232D4(0, &qword_2A17B5CC8, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v11 - v7;
  v9 = sub_29D693E2C(a1, a1[3]);
  sub_29D82322C();
  sub_29D93AEC8();
  if (!v1)
  {
    sub_29D823338();
    sub_29D93AC88();
    (*(v5 + 8))(v8, v4);
    v9 = v11;
  }

  sub_29D69417C(a1);
  return v9;
}

uint64_t sub_29D822EF4(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *&a1 == 0.0)
  {
    type metadata accessor for HeartHealthPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_29D9334A8();

    return v4;
  }

  else
  {
    v6 = fabs(*&a1);
    v7 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
    [v7 setMaximumFractionDigits_];
    v8 = sub_29D751228(v6);
    v10 = v9;
    type metadata accessor for HeartHealthPluginDelegate();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_29D9334A8();

    sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_29D93DDB0;
    *(v13 + 56) = MEMORY[0x29EDC99B0];
    *(v13 + 64) = sub_29D69AD24();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    v14 = sub_29D939D38();

    return v14;
  }
}

void sub_29D823158(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D8231C0()
{
  result = qword_2A17B5CA8;
  if (!qword_2A17B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CA8);
  }

  return result;
}

unint64_t sub_29D82322C()
{
  result = qword_2A17B5CB8;
  if (!qword_2A17B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CB8);
  }

  return result;
}

unint64_t sub_29D823280()
{
  result = qword_2A17B5CC0;
  if (!qword_2A17B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CC0);
  }

  return result;
}

void sub_29D8232D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D82322C();
    v7 = a3(a1, &type metadata for CardioFitnessRetroComputeFeedItemConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D823338()
{
  result = qword_2A17B5CD0;
  if (!qword_2A17B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CD0);
  }

  return result;
}

unint64_t sub_29D8233A0()
{
  result = qword_2A17B5CD8;
  if (!qword_2A17B5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CD8);
  }

  return result;
}

unint64_t sub_29D8233F8()
{
  result = qword_2A17B5CE0;
  if (!qword_2A17B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CE0);
  }

  return result;
}

unint64_t sub_29D823450()
{
  result = qword_2A17B5CE8;
  if (!qword_2A17B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5CE8);
  }

  return result;
}

uint64_t type metadata accessor for ConfirmDetailsDataSource(uint64_t a1)
{
  result = qword_2A17B5D10;
  if (!qword_2A17B5D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D82356C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x29EDCA190];
    sub_29D7EE570(0, v5, 0);
    v8 = v15;
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;
      sub_29D935E88();
      a1(&v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v14;
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29D7EE570((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29D823698(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x29EDCA190];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x29EDCA190];
  sub_29D7EE6B0(0, v5, 0);
  v6 = v16;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_29D7EE6B0((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    sub_29D679D3C(v15, v6 + 40 * v12 + 32);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8237B0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_29D9339F8();
  v6 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x29EDCA190];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x29EDCA190];
  sub_29D7EE818(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_29D7EE818((v14 > 1), v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_29D82396C(uint64_t a1, uint64_t a2)
{
  v88 = sub_29D9359D8();
  v5 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88, v6);
  v82 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8258DC(0, &unk_2A1A248F0, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v77 = v69 - v10;
  v73 = sub_29D939978();
  v72 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73, v11);
  v71 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8257AC(0);
  v76 = v13;
  v75 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v74 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D825930(0);
  v80 = v16;
  v79 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v78 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29D933A58();
  v19 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90, v20);
  v89 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x29EDC2268];
  sub_29D8258DC(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v26 = v69 - v25;
  *(v2 + qword_2A17B5CF0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_2A17B5D08) = 0;
  *(v2 + qword_2A17B5CF8) = a1;
  v70 = v2;
  *(v2 + qword_2A17B5D00) = a2;
  v27 = sub_29D935AB8();
  v28 = *(*(v27 - 8) + 56);
  v69[3] = v27;
  v28(v26, 1, 1);
  v95 = a2;
  v96 = v26;

  sub_29D82356C(sub_29D825A44, v94, &unk_2A243DE48);
  v30 = v29;
  sub_29D7DA43C();
  swift_arrayDestroy();
  sub_29D825A64(v26, &qword_2A17B52E8, v22);
  v31 = *(v30 + 16);
  if (v31)
  {
    v69[1] = a1;
    v69[2] = a2;
    v102 = MEMORY[0x29EDCA190];
    result = sub_29D7EE5B0(0, v31, 0);
    v33 = v102;
    v85 = v30 + 32;
    v84 = (v19 + 8);
    v83 = v5 + 32;
    v34 = MEMORY[0x29EDC1910];
    v35 = MEMORY[0x29EDC18F8];
    v36 = v82;
    v69[0] = v19;
    v37 = 0;
    v81 = v5;
    v87 = v30;
    v86 = v31;
    while (v37 < *(v30 + 16))
    {
      v92 = v37;
      v93 = v33;
      v38 = *(v85 + 8 * v37);
      v39 = *(v38 + 16);
      if (v39)
      {
        v101 = MEMORY[0x29EDCA190];
        sub_29D935E88();
        sub_29D7EE538(0, v39, 0);
        v40 = v101;
        v91 = v38;
        v41 = v38 + 32;
        do
        {
          sub_29D6945AC(v41, v97);
          sub_29D6B7370(0, &qword_2A17B1080, v34);
          sub_29D6B7370(0, &qword_2A17B1140, v35);
          swift_dynamicCast();
          v101 = v40;
          v43 = *(v40 + 16);
          v42 = *(v40 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_29D7EE538((v42 > 1), v43 + 1, 1);
          }

          v44 = v99;
          v45 = v100;
          v46 = sub_29D693DDC(v98, v99);
          MEMORY[0x2A1C7C4A8](v46, v46);
          v48 = v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v49 + 16))(v48);
          sub_29D778AC4(v43, v48, &v101, v44, v45);
          sub_29D69417C(v98);
          v40 = v101;
          v41 += 40;
          --v39;
        }

        while (v39);
        v5 = v81;
        v36 = v82;
      }

      else
      {
        sub_29D935E88();
      }

      v50 = v89;
      sub_29D933A48();
      sub_29D933A18();
      (*v84)(v50, v90);
      sub_29D9359C8();

      v33 = v93;
      v102 = v93;
      v52 = *(v93 + 16);
      v51 = *(v93 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_29D7EE5B0((v51 > 1), v52 + 1, 1);
        v33 = v102;
      }

      v37 = v92 + 1;
      *(v33 + 16) = v52 + 1;
      result = (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v52, v36, v88);
      v30 = v87;
      if (v37 == v86)
      {

        v19 = v69[0];
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    v98[0] = 0;
    v98[1] = 0xE000000000000000;
    sub_29D93AA18();

    strcpy(v98, "MutableArray<");
    HIWORD(v98[1]) = -4864;
    v53 = v89;
    sub_29D933A48();
    v54 = sub_29D933A18();
    v56 = v55;
    (*(v19 + 8))(v53, v90);
    MEMORY[0x29ED6A240](v54, v56);

    MEMORY[0x29ED6A240](62, 0xE100000000000000);
    v57 = sub_29D935B28();
    *(*(v57 + qword_2A17B5D00) + 24) = &off_2A2447938;
    swift_unknownObjectWeakAssign();
    swift_retain_n();
    v98[0] = sub_29D935AC8();
    sub_29D825858(0);
    sub_29D8259FC(&qword_2A17B5D30, sub_29D825858, MEMORY[0x29EDB8A00]);
    v58 = v74;
    sub_29D938428();

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v59 = v72;
    v60 = v71;
    v61 = v73;
    (*(v72 + 104))(v71, *MEMORY[0x29EDCA260], v73);
    v62 = sub_29D93A4A8();
    (*(v59 + 8))(v60, v61);
    v98[0] = v62;
    v63 = sub_29D93A448();
    v64 = v77;
    (*(*(v63 - 8) + 56))(v77, 1, 1, v63);
    sub_29D8259FC(&qword_2A17B5D40, sub_29D8257AC, MEMORY[0x29EDB88A0]);
    sub_29D706380();
    v65 = v78;
    v66 = v76;
    sub_29D938538();
    sub_29D825A64(v64, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

    (*(v75 + 8))(v58, v66);
    swift_allocObject();
    swift_weakInit();

    sub_29D8259FC(&qword_2A17B5D48, sub_29D825930, MEMORY[0x29EDB89E8]);
    v67 = v80;
    v68 = sub_29D938588();

    (*(v79 + 8))(v65, v67);
    *(v57 + qword_2A17B5D08) = v68;

    return v57;
  }

  return result;
}

uint64_t sub_29D8245B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D7D6A84(a1);
  }

  return result;
}

uint64_t sub_29D824654()
{
  sub_29D68B77C(v0 + qword_2A17B5CF0);
}

uint64_t sub_29D8246B4()
{
  sub_29D935BA8();
  v0 = qword_2A17B5CF0;

  sub_29D68B77C(v1 + v0);

  return swift_deallocClassInstance();
}

void sub_29D82474C(void *a1)
{
  v1 = a1[2];
  if (v1 == 2)
  {
    sub_29D935E88();
    sub_29D935B48();

    sub_29D935E88();
    sub_29D935B48();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + qword_2A17B3480);
      if (v3)
      {
        v4 = v3;
        [v4 setEnabled_];
      }

      sub_29D936978();
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    swift_bridgeObjectRetain_n();
    v6 = sub_29D937878();
    v7 = sub_29D93A298();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446722;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000019, 0x800000029D9662F0, &v13);
      *(v8 + 22) = 2048;

      *(v8 + 24) = v1;

      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Received unexpected number of sections: %ld", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t sub_29D824A1C()
{
  sub_29D935D18();
  sub_29D93A1E8();
  sub_29D935DE8();
  sub_29D93A1E8();
  sub_29D935738();
  sub_29D93A1E8();
  sub_29D935F08();
  return sub_29D93A1E8();
}

id sub_29D824ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D937B88();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D771308(0);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_29D933DA8();
  v15 = *(v10 + 56);
  *v13 = v14;
  v16 = sub_29D934B78();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13 + v15, a1, v16);
  v18 = (*(v17 + 88))(v13 + v15, v16);
  if (v18 != *MEMORY[0x29EDC1B58])
  {
    if (v18 == *MEMORY[0x29EDC1B50] && v14 == 1)
    {
      type metadata accessor for HeartHealthPluginDelegate();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      sub_29D9334A8();

      v23 = MEMORY[0x29EDC7800];
      *(a2 + 24) = v4;
      *(a2 + 32) = v23;
      sub_29D693F78(a2);
      sub_29D937B58();
      sub_29D937B48();
      return (*(v17 + 8))(v13 + v15, v16);
    }

    goto LABEL_9;
  }

  if (v14 != 1)
  {
    if (!v14)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return (*(v17 + 8))(v13 + v15, v16);
    }

LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29D771370(v13);
  }

  v43 = v5;
  v45 = "DVERTISEMENT_TITLE";
  type metadata accessor for HeartHealthPluginDelegate();
  v24 = swift_getObjCClassFromMetadata();
  v44 = v24;
  v25 = objc_opt_self();
  v47 = v4;
  v26 = v25;
  v27 = [v25 bundleForClass_];
  v46 = sub_29D9334A8();
  v29 = v28;

  v30 = [v26 bundleForClass_];
  v42 = sub_29D9334A8();
  v45 = v31;

  v32 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v47;
  *(a2 + 32) = v32;
  v44 = sub_29D693F78(a2);
  sub_29D937B18();
  sub_29D935E88();
  v46 = v29;
  sub_29D937B48();
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v33 = sub_29D937A98();
  sub_29D937A58();
  v33(v48, 0);
  v34 = objc_opt_self();
  v35 = [v34 labelColor];
  v36 = sub_29D937A98();
  sub_29D937A68();
  v36(v48, 0);
  sub_29D935E88();
  sub_29D937A08();
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  sub_29D93A658();
  v37 = sub_29D937AB8();
  sub_29D937A58();
  v37(v48, 0);
  v38 = [v34 labelColor];
  v39 = sub_29D937AB8();
  sub_29D937A68();
  v39(v48, 0);
  v40 = sub_29D937AD8();
  *(v41 + 16) = 0x4032000000000000;
  v40(v48, 0);
  sub_29D937B28();
  (*(v43 + 32))(v44, v8, v47);

  return (*(v17 + 8))(v13 + v15, v16);
}

char *sub_29D82512C(uint64_t a1, double a2)
{
  v5 = sub_29D937B88();
  v38 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v37 - v11;
  v13 = sub_29D934B78();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);
  LODWORD(a1) = (*(v14 + 88))(v17, v13);
  v18 = *MEMORY[0x29EDC1B58];
  (*(v14 + 8))(v17, v13);
  if (a1 != v18)
  {
    return 0;
  }

  v37[2] = v2;
  if (sub_29D933DA8())
  {
    return 0;
  }

  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  sub_29D9334A8();
  v24 = v23;

  v25 = [v21 bundleForClass_];
  sub_29D9334A8();

  sub_29D937B18();
  sub_29D935E88();
  v37[1] = v24;
  sub_29D937B48();
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v26 = sub_29D937A98();
    sub_29D937A58();
    v26(v39, 0);
    v27 = objc_opt_self();
    v28 = [v27 labelColor];
    v29 = sub_29D937A98();
    sub_29D937A68();
    v29(v39, 0);
    sub_29D935E88();
    sub_29D937A08();
    sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
    sub_29D93A658();
    v30 = sub_29D937AB8();
    sub_29D937A58();
    v30(v39, 0);
    v31 = [v27 labelColor];
    v32 = sub_29D937AB8();
    sub_29D937A68();
    v32(v39, 0);
    v33 = sub_29D937AD8();
    *(v34 + 16) = 0x4032000000000000;
    v33(v39, 0);
    sub_29D937B28();

    (*(v38 + 32))(v12, v9, v5);
    v35 = objc_allocWithZone(type metadata accessor for ConfirmDetailsLearnMoreView(0));
    v36 = sub_29D6D2DB8(v12, a2);
    *&v36[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_delegate + 8] = &off_2A2447928;
    swift_unknownObjectWeakAssign();
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8256BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[3] = a4;
  v12[4] = a5;
  v7 = sub_29D693F78(v12);
  (*(*(a4 - 8) + 16))(v7, a2, a4);
  sub_29D935B88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + qword_2A17B3480);
    if (v9)
    {
      v10 = v9;
      [v10 setEnabled_];
    }

    sub_29D936978();
  }

  return sub_29D69417C(v12);
}

void sub_29D8257AC(uint64_t a1)
{
  if (!qword_2A17B5D20)
  {
    sub_29D825858(255);
    sub_29D935AB8();
    sub_29D8259FC(&qword_2A17B5D30, sub_29D825858, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5D20);
    }
  }
}

void sub_29D825858(uint64_t a1)
{
  if (!qword_2A17B5D28)
  {
    sub_29D8258DC(255, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5D28);
    }
  }
}

void sub_29D8258DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D825930(uint64_t a1)
{
  if (!qword_2A17B5D38)
  {
    sub_29D8257AC(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8259FC(&qword_2A17B5D40, sub_29D8257AC, MEMORY[0x29EDB88A0]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5D38);
    }
  }
}

uint64_t sub_29D8259FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D825A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8258DC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D825AC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v37 = sub_29D936698();
  v36 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9366A8();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7568EC();
  v10 = *a1;
  v41 = a1;
  if (v10)
  {
    goto LABEL_2;
  }

  if (qword_2A17B0C30 != -1)
  {
    swift_once();
  }

  v12 = qword_2A17D0978;
  type metadata accessor for AFibBurdenPDFChartHeaderContentProvider(0);
  v13 = sub_29D933148();
  v14 = [v12 stringFromDateInterval_];

  if (!v14)
  {
LABEL_2:
    v35 = 0;
    v11 = 0;
  }

  else
  {
    v35 = sub_29D939D68();
    v11 = v15;
  }

  sub_29D934F48();
  v16 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v17 = sub_29D939D28();
  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v18 = sub_29D939C58();

  v19 = [v16 initWithString:v17 attributes:v18];

  v20 = 0;
  if (v19)
  {
    v20 = sub_29D7DB54C();
    v21 = MEMORY[0x29EDC2CE0];
  }

  else
  {
    v21 = 0;
    v49 = 0;
    v50 = 0;
  }

  v48 = v19;
  v51 = v20;
  v52 = v21;
  v47 = 0;
  v22 = 0uLL;
  v45 = 0u;
  v46 = 0u;
  if (v11 && (sub_29D934F58(), v23 = objc_allocWithZone(MEMORY[0x29EDB9F30]), v24 = sub_29D939D28(), v25 = sub_29D939C58(), , v26 = [v23 initWithString:v24 attributes:v25], v24, v25, , v22 = 0uLL, v26))
  {
    v27 = MEMORY[0x29EDC2CE0];
    *(&v43 + 1) = sub_29D7DB54C();
    v44 = v27;
    *&v42 = v26;
  }

  else
  {
    v44 = 0;
    v42 = v22;
    v43 = v22;
  }

  (*(v36 + 104))(v5, *MEMORY[0x29EDC2878], v37);
  v28 = sub_29D936688();
  MEMORY[0x2A1C7C4A8](v28, v29);
  *(&v34 - 2) = v9;
  v30 = sub_29D9370F8();
  v31 = MEMORY[0x29EDC2C70];
  v32 = v40;
  v40[3] = v30;
  v32[4] = v31;
  sub_29D693F78(v32);
  sub_29D9370E8();
  sub_29D8263A8(v41);
  return (*(v38 + 8))(v9, v39);
}

uint64_t sub_29D825F10(uint64_t a1)
{
  v2 = sub_29D9366A8();
  v10 = v2;
  v11 = MEMORY[0x29EDC2880];
  v3 = sub_29D693F78(v9);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  v4 = sub_29D935808();
  sub_29D69417C(v9);
  v10 = sub_29D935488();
  v11 = MEMORY[0x29EDC1FC0];
  sub_29D693F78(v9);
  sub_29D935498();
  v5 = sub_29D935808();
  sub_29D69417C(v9);
  sub_29D826404(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93F680;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = MEMORY[0x29ED65BE0]();

  return v7;
}

uint64_t sub_29D82604C(uint64_t a1)
{
  v2 = v1;
  sub_29D934E48();
  sub_29D934DC8();
  CGRectGetWidth(v13);
  sub_29D934E18();
  sub_29D693E2C(v2, v2[3]);
  sub_29D935128();
  sub_29D693E2C(v2, v2[3]);
  sub_29D934E48();
  sub_29D934DC8();
  CGRectGetWidth(v14);
  sub_29D934E18();
  sub_29D935118();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetHeight(v15);
  sub_29D934E38();
}

double sub_29D8261C8(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4[3];
  v7 = v4[4];
  sub_29D693E2C(v4, v6);
  v8 = sub_29D934E48();
  sub_29D934DC8();
  CGRectGetWidth(v11);
  sub_29D934E18();
  v9 = a4(v8, v6, v7);

  return v9;
}

uint64_t sub_29D82628C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D804708();
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29D82633C()
{
  result = qword_2A17B5D50;
  if (!qword_2A17B5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5D50);
  }

  return result;
}

uint64_t sub_29D8263A8(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenPDFChartHeaderContentProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D826404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D826468@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v117 = sub_29D937178();
  v5 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117, v6);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937158();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9371A8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v114 = v18;
  v115 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v108 - v20;
  v22 = *(v15 + 16);
  v116 = a1;
  v112 = v22;
  v113 = v15 + 16;
  v22(&v108 - v20, a1, v14);
  if ((*(v15 + 88))(v21, v14) != *MEMORY[0x29EDC2D70])
  {
    (*(v15 + 8))(v21, v14);
    v50 = a3;
    goto LABEL_7;
  }

  v110 = a3;
  (*(v15 + 96))(v21, v14);
  v108 = v10;
  v109 = v9;
  (*(v10 + 32))(v13, v21, v9);
  sub_29D937108();
  v23 = sub_29D937188();
  v24 = *(v5 + 8);
  v24(v8, v117);
  v25 = [v23 areAllRequirementsSatisfied];

  if (!v25)
  {
    sub_29D937108();
    v63 = sub_29D937188();
    v24(v8, v117);
    v64 = [v63 unsatisfiedRequirementIdentifiers];

    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v65 = sub_29D939F38();

    sub_29D82762C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    v67 = *MEMORY[0x29EDBA608];
    *(inited + 32) = *MEMORY[0x29EDBA608];
    v68 = v67;
    sub_29D6971AC(v65, inited);
    v69 = v13;
    v71 = v70;

    swift_setDeallocating();
    swift_arrayDestroy();
    if (v71)
    {
      v117 = v69;
      v72 = *MEMORY[0x29EDC1768];
      v73 = sub_29D9346E8();
      v74 = v110;
      (*(*(v73 - 8) + 104))(v110, v72, v73);
      v75 = sub_29D87D7B4();
      v116 = v76;
      if (qword_2A17B0D48 != -1)
      {
        swift_once();
      }

      v77 = sub_29D9334A8();
      v79 = v78;
      v80 = sub_29D9334A8();
      v82 = v81;
      v83 = [objc_opt_self() aFibBurdenArticleLinkURL];
      v84 = sub_29D939D68();
      v86 = v85;

      (*(v108 + 8))(v117, v109);
      v43 = _s14descr2A243C641C15SettingsContentVMa(0);
      *(v74 + v43[5]) = 256;
      *(v74 + v43[6]) = 0;
      v87 = (v74 + v43[7]);
      v88 = v116;
      *v87 = v75;
      v87[1] = v88;
      v89 = (v74 + v43[8]);
      *v89 = v77;
      v89[1] = v79;
      v89[2] = v80;
      v89[3] = v82;
      v89[4] = v84;
      v89[5] = v86;
      v48 = *(*(v43 - 1) + 56);
      v49 = v74;
      return v48(v49, 0, 1, v43);
    }

    (*(v108 + 8))(v69, v109);
    v50 = v110;
LABEL_7:
    v51 = v116;
    v52 = sub_29D9371B8();
    v53 = [v52 isRequirementSatisfiedWithIdentifier_];

    v54 = sub_29D937198();
    if (v53 && (v54 & 1) != 0)
    {
      v55 = sub_29D9371B8();
      v56 = [v55 areAllRequirementsSatisfied];

      if (!v56)
      {
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4(0);
        sub_29D69C6C0(v90, qword_2A1A2BF58);
        v118 = 0;
        sub_29D9371C8();
        v91 = *MEMORY[0x29EDC1768];
        v92 = sub_29D9346E8();
        (*(*(v92 - 8) + 104))(v50, v91, v92);
        v93 = sub_29D87D7B4();
        v95 = v94;
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v96 = sub_29D9334A8();
        v98 = v97;
        v99 = sub_29D9334A8();
        v101 = v100;
        v102 = [objc_opt_self() aFibBurdenArticleLinkURL];
        v103 = sub_29D939D68();
        v105 = v104;

        v43 = _s14descr2A243C641C15SettingsContentVMa(0);
        *(v50 + v43[5]) = 0;
        *(v50 + v43[6]) = 0;
        v106 = (v50 + v43[7]);
        *v106 = v93;
        v106[1] = v95;
        v107 = (v50 + v43[8]);
        *v107 = v96;
        v107[1] = v98;
        v107[2] = v99;
        v107[3] = v101;
        v107[4] = v103;
        v107[5] = v105;
        v48 = *(*(v43 - 1) + 56);
        v49 = v50;
        return v48(v49, 0, 1, v43);
      }

      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }
    }

    else if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v57, qword_2A1A2BF58);
    v58 = v115;
    v112(v115, v51, v14);
    v59 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v60 = swift_allocObject();
    (*(v15 + 32))(v60 + v59, v58, v14);
    v118 = 0;
    sub_29D9371F8();

    v61 = _s14descr2A243C641C15SettingsContentVMa(0);
    return (*(*(v61 - 8) + 56))(v50, 1, 1, v61);
  }

  v26 = sub_29D693E2C(v111, v111[3]);
  v27 = sub_29D82745C(v13, *v26);
  v28 = *MEMORY[0x29EDC1760];
  v29 = sub_29D9346E8();
  v30 = v110;
  (*(*(v29 - 8) + 104))(v110, v28, v29);
  v31 = v27;
  v115 = sub_29D87D57C(v27);
  v116 = v32;
  v117 = v13;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v33 = sub_29D9334A8();
  v35 = v34;
  v36 = sub_29D9334A8();
  v38 = v37;
  v39 = [objc_opt_self() aFibBurdenArticleLinkURL];
  v40 = sub_29D939D68();
  v42 = v41;

  (*(v108 + 8))(v117, v109);
  v43 = _s14descr2A243C641C15SettingsContentVMa(0);
  *(v30 + v43[5]) = 257;
  v44 = (v30 + v43[6]);
  *v44 = v31;
  v44[1] = 1;
  v45 = (v30 + v43[7]);
  v46 = v116;
  *v45 = v115;
  v45[1] = v46;
  v47 = (v30 + v43[8]);
  *v47 = v33;
  v47[1] = v35;
  v47[2] = v36;
  v47[3] = v38;
  v47[4] = v40;
  v47[5] = v42;
  v48 = *(*(v43 - 1) + 56);
  v49 = v30;
  return v48(v49, 0, 1, v43);
}

uint64_t sub_29D827094(uint64_t a1)
{
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D966340);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D966360);
  MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D966430);
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v7);

  return v9[0];
}

uint64_t sub_29D827220(uint64_t a1)
{
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D966340);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D966360);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9663B0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v7);

  return v9[0];
}

uint64_t sub_29D827398()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D966340);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D966360);
  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D9663F0);
  return 0;
}

BOOL sub_29D82745C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933F18();
  v10[3] = v3;
  v10[4] = &off_2A2447A08;
  v10[0] = a2;

  v4 = sub_29D937148();
  v5 = HKHRAFibBurdenNotificationsEnabledWithFeatureSettings();

  if (v5)
  {
    sub_29D693E2C(v10, v3);
    v6 = sub_29D933EF8();
    v7 = [v6 authorizationStatus];

    v8 = v7 == 2;
  }

  else
  {
    v8 = 0;
  }

  sub_29D69417C(v10);
  return v8;
}

uint64_t sub_29D827518()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D8275B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_29D9371A8() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_29D82762C(uint64_t a1)
{
  if (!qword_2A17B18F0)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B18F0);
    }
  }
}

uint64_t sub_29D827684()
{
  v0 = sub_29D8AA8CC();
  sub_29D8E8608(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_29D8277AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1868];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D827820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C61018](a1, a2, a3, WitnessTable);
}

uint64_t sub_29D82788C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_29D934D08();
}

uint64_t sub_29D827918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C61000](a1, WitnessTable);
}

uint64_t sub_29D82797C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, WitnessTable);
}

uint64_t sub_29D827BA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_29D827BF4(void *a1, char a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_coordinator] = 0;
  v3[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = a2;
  v27 = sub_29D69567C(0, &qword_2A1A22230, 0x29EDBABE8);
  v28 = MEMORY[0x29EDC2CD8];
  v26 = a1;
  sub_29D935AE8();
  swift_allocObject();
  v5 = a1;
  v6 = sub_29D935AD8();
  type metadata accessor for CardioFitnessOnboardingMostRecentValueProvider(0);
  v7 = swift_allocObject();
  v8 = v5;
  v9 = sub_29D82BAFC(v8, v7);
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6C0] healthStore:v8];

  v11 = sub_29D6B74EC();
  v12 = [v10 featureAvailabilityProviding];
  v13 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingModel());
  v14 = sub_29D82C20C(v11, v12, v6, v9, sub_29D68B82C, 0, v13);

  sub_29D936978();

  type metadata accessor for CardioFitnessOnboardingViewControllerFactory();
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v6;
  v15[4] = v14;
  v16 = objc_allocWithZone(MEMORY[0x29EDC5218]);
  v17 = v8;

  v18 = v14;
  v19 = [v16 initWithHealthStore_];
  v20 = [objc_allocWithZone(MEMORY[0x29EDC5220]) initWithSignalSource_];

  v25.receiver = v3;
  v25.super_class = type metadata accessor for CardioFitnessOnboardingViewController();
  v21 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  [v21 setModalPresentationStyle_];
  v22 = sub_29D82B9FC(v21, v18, v15, v20);

  v23 = *&v21[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_coordinator];
  *&v21[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_coordinator] = v22;

  return v21;
}

void sub_29D827F3C(char a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v62 = a3;
  ObjectType = swift_getObjectType();
  sub_29D82C864(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v56 - v9;
  v11 = sub_29D9336F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v56 - v18;
  if ((a1 & 1) == 0 || v63[OBJC_IVAR____TtC5Heart37CardioFitnessOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] != 1)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v40 = sub_29D937898();
    sub_29D69C6C0(v40, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136446466;
      v45 = sub_29D93AF08();
      v47 = sub_29D6C2364(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v41, v42, "[%{public}s.%{public}s]: Dismissing onboarding and landing back where user was before", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v44, -1, -1);
      MEMORY[0x29ED6BE30](v43, -1, -1);
    }

    if (v62)
    {
      v68 = v62;
      v69 = a4;
      aBlock = MEMORY[0x29EDCA5F8];
      v65 = 1107296256;
      v66 = sub_29D6C1F10;
      v67 = &unk_2A2447DE8;
      v39 = _Block_copy(&aBlock);
      goto LABEL_18;
    }

LABEL_19:
    v39 = 0;
    goto LABEL_20;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v20 = sub_29D937898();
  v59 = sub_29D69C6C0(v20, qword_2A1A2C008);
  v21 = sub_29D937878();
  v22 = sub_29D93A2A8();
  v23 = os_log_type_enabled(v21, v22);
  v60 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v58 = v12;
    v25 = v24;
    v57 = swift_slowAlloc();
    aBlock = v57;
    *v25 = 136446466;
    v26 = sub_29D93AF08();
    v28 = sub_29D6C2364(v26, v27, &aBlock);
    v56 = v21;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
    v21 = v56;
    _os_log_impl(&dword_29D677000, v56, v22, "[%{public}s.%{public}s]: Dismissing onboarding and navigating to Cardio Fitness detail room", v25, 0x16u);
    v30 = v57;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v30, -1, -1);
    v31 = v25;
    v12 = v58;
    MEMORY[0x29ED6BE30](v31, -1, -1);
  }

  sub_29D6D962C(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D82D094(v10, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D82C864);
    v32 = sub_29D937878();
    v33 = sub_29D93A298();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136446466;
      v36 = sub_29D93AF08();
      v38 = sub_29D6C2364(v36, v37, &aBlock);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s.%{public}s]: Failed to construct deep link URL to go to detail room after onboarding completed", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    if (v62)
    {
      v68 = v62;
      v69 = v60;
      aBlock = MEMORY[0x29EDCA5F8];
      v65 = 1107296256;
      v66 = sub_29D6C1F10;
      v67 = &unk_2A2447E10;
      v39 = _Block_copy(&aBlock);
LABEL_18:

LABEL_20:
      [v63 dismissViewControllerAnimated:1 completion:v39];
      _Block_release(v39);
      return;
    }

    goto LABEL_19;
  }

  v48 = v12;
  v49 = *(v12 + 32);
  v49(v19, v10, v11);
  (*(v48 + 16))(v16, v19, v11);
  v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v51 = swift_allocObject();
  v49((v51 + v50), v16, v11);
  v52 = (v51 + ((v13 + v50 + 7) & 0xFFFFFFFFFFFFFFF8));
  v53 = v62;
  v54 = v60;
  *v52 = v62;
  v52[1] = v54;
  v68 = sub_29D82D5DC;
  v69 = v51;
  aBlock = MEMORY[0x29EDCA5F8];
  v65 = 1107296256;
  v66 = sub_29D6C1F10;
  v67 = &unk_2A2447E60;
  v55 = _Block_copy(&aBlock);
  sub_29D695554(v53, v54);

  [v63 dismissViewControllerAnimated:1 completion:v55];
  _Block_release(v55);
  (*(v48 + 8))(v19, v11);
}

void sub_29D828764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D82D66C(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
  v7 = sub_29D939C58();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_29D82D6B4;
  v10[5] = v8;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D73C804;
  v10[3] = &unk_2A2447EB0;
  v9 = _Block_copy(v10);
  sub_29D695554(a2, a3);

  [v5 openURL:v6 options:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_29D8289F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2447B90;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D828ACC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2447B68;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D828B9C()
{
  v10 = sub_29D828D08(0);
  v1 = v0 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_29D82D58C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_29D940030;
    *(v4 + 32) = v10;
    v5 = *(v2 + 24);
    v6 = v10;
    v5(v4, 0, ObjectType, v2);

    sub_29D936978();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 8);
    v8 = swift_getObjectType();
    v9 = (*(v7 + 8))(v8, v7);
    sub_29D936978();
    if (v9)
    {
      [v9 setDelegate_];
    }
  }
}

id sub_29D828D08(unsigned __int8 a1)
{
  v1 = sub_29D91C3E0(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = [v1 navigationItem];
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v8 = sub_29D939D28();

  [v5 setBackButtonTitle_];

  v9 = *(v3 + 24);
  v10 = swift_unknownObjectRetain();
  v9(v10, &off_2A2447A70, ObjectType, v3);
  return v1;
}

id sub_29D828ECC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D828F94(char *a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_29D82B91C(a1, a2, a3, a5 & 1, a6, ObjectType, a4);
}

void sub_29D82900C(char a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = a3;
  v55 = a2;
  v12 = sub_29D939968();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_29D939998();
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v22 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 == 2)
  {
    sub_29D829634(v10, a4 & 1, 0, 0);
  }

  else if (a1 == 3)
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v10;
    *(v24 + 25) = a4 & 1;

    sub_29D82CB84(a5, a6, sub_29D82C918, v24);
  }

  else
  {
    v52 = v20;
    v53 = v13;
    v54 = v19;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v26 = a5;
    v27 = sub_29D937878();
    v28 = sub_29D93A2A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v29 = 136446978;
      v30 = sub_29D93AF08();
      v50 = v28;
      v32 = sub_29D6C2364(v30, v31, aBlock);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_29D6C2364(0xD000000000000028, 0x800000029D966620, aBlock);
      *(v29 + 22) = 2080;
      ObjectType = swift_getObjectType();
      LOBYTE(v56) = (*(a6 + 8))(ObjectType, a6);
      v34 = sub_29D939DA8();
      v36 = sub_29D6C2364(v34, v35, aBlock);

      *(v29 + 24) = v36;
      *(v29 + 32) = 2080;
      v37 = a1 & 1;
      LOBYTE(v56) = v37;
      v38 = sub_29D939DA8();
      v40 = sub_29D6C2364(v38, v39, aBlock);

      *(v29 + 34) = v40;
      _os_log_impl(&dword_29D677000, v27, v50, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v29, 0x2Au);
      v41 = v51;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v41, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    else
    {

      v37 = a1 & 1;
    }

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v42 = sub_29D93A468();
    v43 = swift_allocObject();
    v44 = v55;
    *(v43 + 16) = v55;
    *(v43 + 24) = v37;
    *(v43 + 32) = v26;
    *(v43 + 40) = a6;
    aBlock[4] = sub_29D82C8E8;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447C08;
    v45 = _Block_copy(aBlock);
    v46 = v26;
    v47 = v44;
    sub_29D939988();
    v56 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    v48 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v48);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v22, v16, v45);
    _Block_release(v45);

    (*(v53 + 8))(v16, v12);
    (*(v52 + 8))(v22, v54);
  }
}

void sub_29D829634(unsigned __int8 a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v8) = a2;
  swift_getObjectType();
  v10 = sub_29D939968();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_29D939998();
  MEMORY[0x2A1C7C4A8](v15, v16);
  if (a1 <= 1u)
  {
    v67 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v68 = v18;
    if (a1)
    {
      LODWORD(v19) = 2;
    }

    else
    {
      LODWORD(v19) = 1;
    }

    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v67 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v68 = v18;
    LODWORD(v19) = 3;
LABEL_7:
    v20 = a1;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v69 = v14;
    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2C008);
    v22 = sub_29D937878();
    v23 = sub_29D93A268();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v66 = v19;
      v19 = v24;
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v19 = 136446978;
      v25 = sub_29D93AF08();
      v63 = v23;
      v27 = sub_29D6C2364(v25, v26, aBlock);
      v65 = v8;
      v28 = v27;

      *(v19 + 4) = v28;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966650, aBlock);
      *(v19 + 22) = 2080;
      v29 = v20;
      LOBYTE(v70) = v20;
      v30 = sub_29D939DA8();
      v32 = v11;
      v33 = v5;
      v34 = sub_29D6C2364(v30, v31, aBlock);

      *(v19 + 24) = v34;
      v5 = v33;
      v11 = v32;
      *(v19 + 32) = 2080;
      LOBYTE(v70) = v66;
      v35 = sub_29D939DA8();
      v8 = sub_29D6C2364(v35, v36, aBlock);

      *(v19 + 34) = v8;
      LOBYTE(v8) = v65;
      _os_log_impl(&dword_29D677000, v22, v63, "[%{public}s.%{public}s]: Transitioning from %s to %s", v19, 0x2Au);
      v37 = v64;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v37, -1, -1);
      v38 = v19;
      LOBYTE(v19) = v66;
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }

    else
    {

      v29 = v20;
    }

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v39 = sub_29D93A468();
    v40 = swift_allocObject();
    *(v40 + 16) = v5;
    *(v40 + 24) = v19;
    *(v40 + 25) = v29;
    *(v40 + 26) = v8 & 1;
    aBlock[4] = sub_29D82D054;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447CA8;
    v41 = _Block_copy(aBlock);
    v42 = v5;
    v43 = v67;
    sub_29D939988();
    v70 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    v44 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v44);
    v45 = v69;
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v43, v45, v41);
    _Block_release(v41);

    (*(v11 + 8))(v45, v10);
    (*(v68 + 8))(v43, v15);

    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v46 = sub_29D937898();
  sub_29D69C6C0(v46, qword_2A1A2C008);
  v47 = sub_29D937878();
  v48 = sub_29D93A2A8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136446722;
    v51 = sub_29D93AF08();
    v53 = sub_29D6C2364(v51, v52, aBlock);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966650, aBlock);
    *(v49 + 22) = 2080;
    LOBYTE(v70) = 3;
    v54 = sub_29D939DA8();
    v56 = sub_29D6C2364(v54, v55, aBlock);

    *(v49 + 24) = v56;
    _os_log_impl(&dword_29D677000, v47, v48, "[%{public}s.%{public}s]: No stage after %s, finishing", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v50, -1, -1);
    MEMORY[0x29ED6BE30](v49, -1, -1);
  }

  v57 = *&v5[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_analyticsManager];
  v58 = sub_29D939D28();
  v59 = *(*&v5[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model] + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode);

  os_unfair_lock_lock((v59 + 32));
  v60 = *(v59 + 24);
  sub_29D935E88();
  os_unfair_lock_unlock((v59 + 32));

  if (v60)
  {
    v61 = sub_29D939D28();
  }

  else
  {
    v61 = 0;
  }

  sub_29D82A174(1, 1, a3, a4);
}

void sub_29D829E04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_29D829634(a4, a5 & 1, a1, a2);
  }
}

double sub_29D829E8C(char a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D9334A8();
  v8 = v7;

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2C008);
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446722;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D966800, &v23);
    *(v12 + 22) = 2082;
    v17 = sub_29D939DA8();
    v19 = sub_29D6C2364(v17, v18, &v23);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s]: Showing blocking alert due to reason %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    v20 = v13;
    a2 = v22;
    MEMORY[0x29ED6BE30](v20, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  sub_29D82D23C(v6, v8, a2);

  return result;
}

uint64_t sub_29D82A144(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

void sub_29D82A174(int a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v44 = a1;
  swift_getObjectType();
  v7 = sub_29D939968();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29D939998();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A1A2C008);
  v17 = sub_29D937878();
  v18 = sub_29D93A268();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v6;
    v6 = v19;
    v20 = swift_slowAlloc();
    v39 = v11;
    v40 = v15;
    v21 = a4;
    v22 = v20;
    aBlock[0] = v20;
    *v6 = 136446466;
    v23 = sub_29D93AF08();
    v25 = a3;
    v26 = v7;
    v27 = v8;
    v28 = sub_29D6C2364(v23, v24, aBlock);

    *(v6 + 4) = v28;
    v8 = v27;
    v7 = v26;
    a3 = v25;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966690, aBlock);
    _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s.%{public}s]: Onboarding finished", v6, 0x16u);
    swift_arrayDestroy();
    v29 = v22;
    a4 = v21;
    v11 = v39;
    v15 = v40;
    MEMORY[0x29ED6BE30](v29, -1, -1);
    v30 = v6;
    LOBYTE(v6) = v38;
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  if (v44)
  {
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v31 = sub_29D93A468();
    v32 = swift_allocObject();
    v33 = v41;
    *(v32 + 16) = v41;
    *(v32 + 24) = v6 & 1;
    *(v32 + 32) = a3;
    *(v32 + 40) = a4;
    aBlock[4] = sub_29D82D084;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447CF8;
    v34 = _Block_copy(aBlock);
    v35 = v33;
    sub_29D695554(a3, a4);
    sub_29D939988();
    v45 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    v36 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v36);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v15, v11, v34);
    _Block_release(v34);

    (*(v8 + 8))(v11, v7);
    (*(v42 + 8))(v15, v43);
  }
}

uint64_t sub_29D82A628(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  sub_29D82C864(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_29D9336F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v35 - v17;
  sub_29D9336E8();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D82D094(v9, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D82C864);
  }

  else
  {
    v37 = a3;
    v19 = *(v11 + 32);
    v19(v18, v9, v10);
    v20 = [objc_opt_self() defaultWorkspace];
    if (v20)
    {
      v21 = v20;
      (*(v11 + 16))(v15, v18, v10);
      v22 = *(v11 + 80);
      v36 = a2;
      v23 = (v22 + 24) & ~v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      v19((v24 + v23), v15, v10);
      v25 = v21;
      v36(sub_29D82D1A4, v24);

      return (*(v11 + 8))(v18, v10);
    }

    (*(v11 + 8))(v18, v10);
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v27 = sub_29D937898();
  sub_29D69C6C0(v27, qword_2A1A2C008);
  v28 = sub_29D937878();
  v29 = sub_29D93A298();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136446466;
    v32 = sub_29D93AF08();
    v34 = sub_29D6C2364(v32, v33, &v38);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D966790, &v38);
    _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]: Failed to construct deep link URL to passcode settings", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v31, -1, -1);
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  return (a2)(nullsub_1, 0);
}

void sub_29D82AAB4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v55 = a5;
  v13 = sub_29D939968();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D939998();
  v20 = MEMORY[0x2A1C7C4A8](v18, v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v49 = a3;
    v50 = v21;
    v51 = v20;
    v53 = a7;
    v24 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v52 = v14;
    v54 = a6;
    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v26 = a2;
    v27 = sub_29D937878();
    v28 = sub_29D93A288();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = a4;
      v31 = v30;
      aBlock[0] = v30;
      *v29 = 136446722;
      v32 = sub_29D93AF08();
      v34 = sub_29D6C2364(v32, v33, aBlock);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D966910, aBlock);
      *(v29 + 22) = 2082;
      v56 = a2;
      v35 = a2;
      sub_29D6A0CD0();
      v36 = sub_29D939DA8();
      v38 = sub_29D6C2364(v36, v37, aBlock);

      *(v29 + 24) = v38;
      _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s.%{public}s]: Attempted to complete onboarding but received error: %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      v39 = v31;
      a4 = v48;
      MEMORY[0x29ED6BE30](v39, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v40 = sub_29D93A468();
    v41 = swift_allocObject();
    v42 = v49;
    v41[2] = v49;
    v41[3] = a4;
    v41[4] = v55;
    aBlock[4] = sub_29D82D6E4;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2447F00;
    v43 = _Block_copy(aBlock);
    v44 = v42;
    v45 = a4;
    sub_29D939988();
    v56 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    v46 = MEMORY[0x29EDCA248];
    sub_29D82C864(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A1A24980, &qword_2A1A24990, v46);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v23, v17, v43);
    _Block_release(v43);

    (*(v52 + 8))(v17, v13);
    (*(v50 + 8))(v23, v51);

    v54(0);
  }

  else
  {
    a6(1);
  }
}

double sub_29D82AFC4(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D9334A8();
  v8 = v7;

  sub_29D82D23C(v6, v8, a2);

  return result;
}

uint64_t sub_29D82B0BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_29D82C864(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = a1 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    sub_29D82B228(v11);
    (*(v14 + 40))(a2 & 1, v11, a3, a4, ObjectType, v14);
    sub_29D936978();
    return sub_29D82D094(v11, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D82C864);
  }

  return result;
}

uint64_t sub_29D82B228@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_29D935018();
  MEMORY[0x2A1C7C4A8](v1, v2);
  v3 = MEMORY[0x29EDC9C68];
  sub_29D82C864(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = sub_29D9336F8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D82C864(0, &qword_2A17B5E70, MEMORY[0x29EDB9940], v3);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = v32 - v13;
  v15 = sub_29D933278();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v33 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = HKHRCardioFitnessDetailRoomBaseLink();
  sub_29D9336D8();

  sub_29D933248();
  (*(v7 + 8))(v10, v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29D82D094(v14, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68], sub_29D82C864);
    return (*(v7 + 56))(v34, 1, 1, v6);
  }

  else
  {
    (*(v16 + 32))(v33, v14, v15);
    sub_29D935038();
    v21 = (*(v32[1] + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model) + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_mostRecentSampleDateProvider);
    v22 = v21[3];
    v23 = v21[4];
    sub_29D693E2C(v21, v22);
    (*(v23 + 8))(v22, v23);
    v35 = MEMORY[0x29EDCA190];
    sub_29D82D66C(&qword_2A17B5E78, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC1CE0]);
    v24 = MEMORY[0x29EDC1CD0];
    sub_29D82C864(0, &qword_2A17B5E80, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC9A40]);
    sub_29D82D0F4(&qword_2A17B5E88, &qword_2A17B5E80, v24);
    sub_29D93A888();
    v25 = sub_29D935028();
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    v35 = v25;
    sub_29D82D66C(&qword_2A17B5E90, MEMORY[0x29EDC1CE8], MEMORY[0x29EDC1CF0]);
    v26 = sub_29D9330E8();
    v28 = v27;

    sub_29D82C864(0, &qword_2A17B5E98, MEMORY[0x29EDB9920], MEMORY[0x29EDC9E90]);
    sub_29D933218();
    v29 = v15;
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    v30 = HKHRCardioFitnessChartContextQueryName();
    sub_29D939D68();

    sub_29D933728();
    sub_29D9331E8();

    v31 = v33;
    sub_29D933238();
    sub_29D933258();
    sub_29D6AA284(v26, v28);

    return (*(v16 + 8))(v31, v29);
  }
}

uint64_t sub_29D82B91C(char *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v14 = *&a1[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v12;
  *(v15 + 25) = a4 & 1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a7;
  *(v15 + 48) = a5;
  v16 = a1;
  sub_29D9001A8(v12, a3, sub_29D82C8D0, v15, v14, a6, a7);
}

id sub_29D82B9FC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CardioFitnessOnboardingCoordinator();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A2447A90;
  swift_unknownObjectWeakAssign();

  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model] = a2;
  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_factory] = a3;
  *&v9[OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_analyticsManager] = a4;
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = a2;

  v11 = a4;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_29D828B9C();

  return v12;
}

uint64_t sub_29D82BAFC(uint64_t a1, uint64_t a2)
{
  v47 = MEMORY[0x29EDCA298];
  v46 = MEMORY[0x29EDC9C68];
  sub_29D82C864(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v43 = v37 - v6;
  sub_29D82C67C(0);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D82C798(0);
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v42 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D93A458();
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D93A438();
  MEMORY[0x2A1C7C4A8](v19, v20);
  v21 = sub_29D939998();
  MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v51[3] = sub_29D69567C(0, &qword_2A1A22230, 0x29EDBABE8);
  v51[4] = &off_2A2440508;
  v51[0] = a1;
  v23 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue_mostRecentSampleDate;
  v24 = sub_29D9339F8();
  (*(*(v24 - 8) + 56))(a2 + v23, 1, 1, v24);
  *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_mostRecentSampleDateCancellationToken) = 0;
  v38 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue;
  v25 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v37[1] = "eOnboardingRecord8@NSError16";
  v37[2] = v25;
  sub_29D939988();
  v50 = MEMORY[0x29EDCA190];
  sub_29D82D66C(&unk_2A1A24900, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  v26 = MEMORY[0x29EDCA288];
  sub_29D82C864(0, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29D82D0F4(&qword_2A1A24960, &unk_2A1A24970, v26);
  sub_29D93A888();
  (*(v39 + 104))(v18, *MEMORY[0x29EDCA2A8], v40);
  *(a2 + v38) = sub_29D93A498();
  *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider____lazy_storage___lastSampleQueryPublisher) = 0;
  sub_29D6945AC(v51, a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queryExecutor);
  v50 = sub_29D69FF7C();
  sub_29D82C734(0, &qword_2A17B5E28, sub_29D6A0B58);
  sub_29D82C62C(&qword_2A17B5E40, &qword_2A17B5E28, sub_29D6A0B58);
  v27 = v41;
  sub_29D938428();

  v50 = *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_queue);
  v28 = v50;
  v29 = sub_29D93A448();
  v30 = v43;
  (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
  sub_29D82D66C(&qword_2A17B5E58, sub_29D82C67C, MEMORY[0x29EDB88A0]);
  sub_29D706380();
  v31 = v28;
  v32 = v42;
  v33 = v44;
  sub_29D938538();
  sub_29D82D094(v30, &unk_2A1A248F0, v47, v46, sub_29D82C864);
  (*(v45 + 8))(v27, v33);

  swift_allocObject();
  swift_weakInit();
  sub_29D82D66C(&unk_2A17B5E60, sub_29D82C798, MEMORY[0x29EDB89E8]);
  v34 = v48;
  v35 = sub_29D938588();

  (*(v49 + 8))(v32, v34);
  sub_29D69417C(v51);
  *(a2 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingMostRecentValueProvider_mostRecentSampleDateCancellationToken) = v35;

  return a2;
}

char *sub_29D82C20C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v29[3] = type metadata accessor for CardioFitnessOnboardingMostRecentValueProvider(0);
  v29[4] = &off_2A2440518;
  v29[0] = a4;
  v15 = OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode;
  sub_29D82C580(0, &unk_2A17B5E08, &qword_2A1A22290, MEMORY[0x29EDC99B0]);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *&a7[v15] = v16;
  v17 = OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_wristDetectEnabled;
  sub_29D82C580(0, &qword_2A17B5E18, &unk_2A1A24950, MEMORY[0x29EDC9A98]);
  v18 = swift_allocObject();
  *(v18 + 20) = 0;
  *(v18 + 16) = 2;
  *&a7[v17] = v18;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v19 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v19 = MEMORY[0x29EDCA1A0];
  }

  *&a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_cancellables] = v19;
  a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsChanged] = 2;
  *&a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_featureAvailabilityProvider] = a2;
  *&a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsProvider] = a3;
  sub_29D6945AC(v29, &a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_mostRecentSampleDateProvider]);
  v20 = &a7[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_dateProvider];
  *v20 = a5;
  v20[1] = a6;
  v28.receiver = a7;
  v28.super_class = type metadata accessor for CardioFitnessOnboardingModel();
  swift_unknownObjectRetain();

  v21 = objc_msgSendSuper2(&v28, sel_init);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = ObjectType;
  aBlock[4] = sub_29D82C604;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F54;
  aBlock[3] = &unk_2A2447AF0;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  [a2 getFeatureOnboardingRecordWithCompletion_];
  _Block_release(v23);
  aBlock[0] = a1;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = MEMORY[0x29EDC2D78];
  sub_29D82C734(0, &qword_2A1A22410, MEMORY[0x29EDC2D78]);
  sub_29D82C62C(&qword_2A1A22420, &qword_2A1A22410, v25);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69417C(v29);
  return v24;
}

void sub_29D82C580(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D82D58C(255, a3, a4, MEMORY[0x29EDC9C68]);
    type metadata accessor for os_unfair_lock_s(255);
    v5 = sub_29D93AA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D82C60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D82C62C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D82C734(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D82C67C(uint64_t a1)
{
  if (!qword_2A17B5E20)
  {
    sub_29D82C734(255, &qword_2A17B5E28, sub_29D6A0B58);
    sub_29D9339F8();
    sub_29D82C62C(&qword_2A17B5E40, &qword_2A17B5E28, sub_29D6A0B58);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5E20);
    }
  }
}

void sub_29D82C734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938238();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D82C798(uint64_t a1)
{
  if (!qword_2A17B5E48)
  {
    sub_29D82C67C(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D82D66C(&qword_2A17B5E58, sub_29D82C67C, MEMORY[0x29EDB88A0]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5E48);
    }
  }
}

void sub_29D82C864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D82C928(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = sub_29D828D08(a1);
  v6 = v2 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    memset(v21, 0, sizeof(v21));
    (*(v7 + 32))(v5, v21, ObjectType, v7);
    sub_29D936978();
    sub_29D82D094(v21, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D82D58C);
  }

  v9 = *(v2 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_analyticsManager);
  v10 = a2;
  v11 = sub_29D939D28();

  v12 = *(v3 + OBJC_IVAR____TtC5Heart34CardioFitnessOnboardingCoordinator_model);
  if (v10 == 1)
  {
    v13 = *(v12 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsChanged);
    v14 = v13 == 2;
    v15 = v13 ^ 1;
    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v12 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode);

  os_unfair_lock_lock((v17 + 32));
  v18 = *(v17 + 24);
  sub_29D935E88();
  os_unfair_lock_unlock((v17 + 32));

  if (v18)
  {
    v19 = sub_29D939D28();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v9 submitOnboardingEventForStep:v11 acceptDefaults:v16 & 1 countryCode:v19];
}

void sub_29D82CB84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  sub_29D9334A8();

  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = ObjectType;

  v11 = sub_29D939D28();

  v32 = sub_29D82D158;
  v33 = v10;
  aBlock = MEMORY[0x29EDCA5F8];
  v29 = 1107296256;
  v30 = sub_29D799960;
  v31 = &unk_2A2447D48;
  v12 = _Block_copy(&aBlock);

  v25 = objc_opt_self();
  v13 = [v25 actionWithTitle:v11 style:0 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  v24 = v13;
  v14 = [v8 bundleForClass_];
  sub_29D9334A8();

  v15 = [v8 bundleForClass_];
  sub_29D9334A8();

  v16 = sub_29D939D28();

  v17 = sub_29D939D28();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:{0, 0xE000000000000000}];

  v19 = [v8 bundleForClass_];
  sub_29D9334A8();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  v21 = sub_29D939D28();

  v32 = sub_29D82D164;
  v33 = v20;
  aBlock = MEMORY[0x29EDCA5F8];
  v29 = 1107296256;
  v30 = sub_29D799960;
  v31 = &unk_2A2447D98;
  v22 = _Block_copy(&aBlock);

  v23 = [v25 actionWithTitle:v21 style:1 handler:{v22, 0xE000000000000000}];
  _Block_release(v22);

  [v18 addAction_];
  [v18 addAction_];

  [a1 presentViewController:v18 animated:1 completion:0];
}

uint64_t sub_29D82D094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D82D0F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D82C864(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D82D1A4()
{
  sub_29D9336F8();
  v1 = *(v0 + 16);
  v2 = sub_29D9336B8();
  [v1 openSensitiveURL:v2 withOptions:0];
}

void sub_29D82D23C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_29D939D28();
  v9 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:1];

  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v7 = sub_29D939D28();

  v8 = [objc_opt_self() actionWithTitle:v7 style:1 handler:{0, 0xE000000000000000}];

  [v9 addAction_];
  [a3 presentViewController:v9 animated:1 completion:0];
}

void sub_29D82D3D4()
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2C008);
  v1 = sub_29D937878();
  v2 = sub_29D93A268();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_29D93AF08();
    v7 = sub_29D6C2364(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000025, 0x800000029D966850, &v8);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: User dismissed modal view", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  sub_29D82A174(0, 0, 0, 0);
}

void sub_29D82D58C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D82D5DC()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_29D828764(v0 + v2, v4, v5);
}

uint64_t sub_29D82D66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D82D6B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_29D82D804(void *a1)
{
  v2 = v1;
  if (![a1 healthDataSource])
  {
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v4 = sub_29D73F010(MEMORY[0x29EDCA190]);
  v5 = MEMORY[0x29EDC99B0];
  v64 = MEMORY[0x29EDC99B0];
  *&v63 = 3157553;
  *(&v63 + 1) = 0xE300000000000000;
  sub_29D6940E0(&v63, v62);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v4;
  sub_29D69242C(v62, 0x5665727574616566, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
  v7 = v65;
  v8 = *(v2 + 16);
  if (v8 > 3)
  {
    if (*(v2 + 16) > 5u)
    {
      if (v8 == 6)
      {
        v10 = 0xED00007365636974;
        v9 = 0x6361725074736562;
      }

      else
      {
        v10 = 0xEC0000006C616E72;
        v9 = 0x756F4A6E69676562;
      }
    }

    else if (v8 == 4)
    {
      v9 = 0x546C616E72756F6ALL;
      v10 = 0xEB00000000657079;
    }

    else
    {
      v10 = 0xEC00000065707954;
      v9 = 0x7265646E696D6572;
    }
  }

  else if (*(v2 + 16) > 1u)
  {
    if (v8 == 2)
    {
      v10 = 0xEC00000066667543;
      v9 = 0x6F54737365636361;
    }

    else
    {
      v10 = 0xEF66667543657661;
      v9 = 0x48756F5965636E6FLL;
    }
  }

  else if (*(v2 + 16))
  {
    v10 = 0xE800000000000000;
    v9 = 0x74756F62414A5042;
  }

  else
  {
    v9 = 0xD000000000000012;
    v10 = 0x800000029D957200;
  }

  v64 = v5;
  *&v63 = v9;
  *(&v63 + 1) = v10;
  sub_29D6940E0(&v63, v62);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v7;
  sub_29D69242C(v62, 1885697139, 0xE400000000000000, v11);
  v12 = v65;
  v13 = sub_29D853B20(*(v2 + 17));
  v64 = v5;
  *&v63 = v13;
  *(&v63 + 1) = v14;
  sub_29D6940E0(&v63, v62);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v62, 0x6E6F69746361, 0xE600000000000000, v15);
  v65 = v12;
  v16 = *(v2 + 18);
  if (v16 <= 1)
  {
    if (*(v2 + 18))
    {
      v17 = 0xE700000000000000;
      v18 = 0x7972616D6D7573;
    }

    else
    {
      v17 = 0xEC0000006D6F6F52;
      v18 = 0x6570795461746164;
    }

LABEL_27:
    v64 = v5;
    *&v63 = v18;
    *(&v63 + 1) = v17;
    sub_29D6940E0(&v63, v62);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, 0x6E616E65766F7270, 0xEA00000000006563, v21);
    v65 = v12;
    v19 = *(v2 + 24);
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v16 == 2)
  {
    v17 = 0x800000029D956D90;
    v18 = 0xD000000000000018;
    goto LABEL_27;
  }

  if (v16 == 3)
  {
    v17 = 0xE800000000000000;
    v18 = 0x73676E6974746573;
    goto LABEL_27;
  }

  sub_29D8C42F8(0x6E616E65766F7270, 0xEA00000000006563, &v63);
  sub_29D6FE6B0(&v63);
  v19 = *(v2 + 24);
  if (v19)
  {
LABEL_28:
    v22 = [v19 ISOCode];
    v23 = sub_29D939D68();
    v25 = v24;

    v64 = MEMORY[0x29EDC99B0];
    *&v63 = v23;
    v5 = MEMORY[0x29EDC99B0];
    *(&v63 + 1) = v25;
    sub_29D6940E0(&v63, v62);
    v20 = v65;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, 0x437972746E756F63, 0xEB0000000065646FLL, v26);
    goto LABEL_29;
  }

LABEL_25:
  sub_29D8C42F8(0x437972746E756F63, 0xEB0000000065646FLL, &v63);
  sub_29D6FE6B0(&v63);
  v20 = v65;
LABEL_29:
  v27 = *(v2 + 32) == 0;
  v28 = 0x696472616F626E6FLL;
  if (*(v2 + 32))
  {
    v28 = 0x6E72756F4A77656ELL;
  }

  v29 = 0xEA0000000000676ELL;
  v64 = v5;
  if (!v27)
  {
    v29 = 0xEA00000000006C61;
  }

  *&v63 = v28;
  *(&v63 + 1) = v29;
  sub_29D6940E0(&v63, v62);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v62, 0x65707954776F6C66, 0xE800000000000000, v30);
  v65 = v20;
  v31 = *(v2 + 33);
  if (v31 == 2)
  {
    sub_29D8C42F8(0x546C616E72756F6ALL, 0xEB00000000657079, &v63);
    sub_29D6FE6B0(&v63);
  }

  else
  {
    v32 = (v31 & 1) == 0;
    v33 = 1801807223;
    if (!v32)
    {
      v33 = 0x68746E6F6DLL;
    }

    v34 = 0xE400000000000000;
    v64 = v5;
    if (!v32)
    {
      v34 = 0xE500000000000000;
    }

    *&v63 = v33;
    *(&v63 + 1) = v34;
    sub_29D6940E0(&v63, v62);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, 0x546C616E72756F6ALL, 0xEB00000000657079, v35);
    v65 = v20;
  }

  v36 = sub_29D939D68();
  v38 = v37;
  v39 = [a1 environmentDataSource];
  v40 = [v39 activePairedDeviceProductType];

  if (v40)
  {
    v41 = sub_29D939D68();
    v43 = v42;

    v64 = MEMORY[0x29EDC99B0];
    *&v63 = v41;
    *(&v63 + 1) = v43;
    sub_29D6940E0(&v63, v62);
    v44 = v65;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, v36, v38, v45);

    v65 = v44;
  }

  else
  {
    sub_29D8C42F8(v36, v38, &v63);

    sub_29D6FE6B0(&v63);
  }

  v46 = sub_29D939D68();
  v48 = v47;
  v49 = [a1 environmentDataSource];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v50 = sub_29D937898();
  sub_29D69C6C0(v50, qword_2A1A2C008);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsEvent();
  v51 = sub_29D93A2F8();

  v64 = sub_29D6B73CC();
  *&v63 = v51;
  sub_29D6940E0(&v63, v62);
  v52 = v65;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v62, v46, v48, v53);

  v65 = v52;
  v54 = sub_29D939D68();
  v56 = v55;
  v57 = sub_29D93A308();
  v64 = MEMORY[0x29EDC99B0];
  *&v63 = v57;
  *(&v63 + 1) = v58;
  sub_29D6940E0(&v63, v62);
  v59 = v65;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v62, v54, v56, v60);

  sub_29D936978();
  return v59;
}

uint64_t sub_29D82E104()
{
  sub_29D936978();

  return swift_deallocClassInstance();
}

void sub_29D82E160(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_29D939D68();
  v6 = v5;

  v7 = v4 == 0xD000000000000030 && 0x800000029D966A50 == v6;
  if (v7 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = type metadata accessor for AFibBurdenDetailViewControllerDebugActionProviding();
    v9 = swift_allocObject();
    *(a2 + 24) = v8;
    *(a2 + 32) = sub_29D82E35C(&qword_2A17B5EA8, type metadata accessor for AFibBurdenDetailViewControllerDebugActionProviding, &unk_29D946D34);
    *a2 = v9;
    return;
  }

  if (v4 == 0xD00000000000001ELL && 0x800000029D966A90 == v6)
  {
  }

  else
  {
    v11 = sub_29D93AD78();

    if ((v11 & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v12 = type metadata accessor for CardioFitnessDataTypeDetailDataSourceProvider();
  v13 = swift_allocObject();
  v14 = [objc_opt_self() _quantityTypeWithCode_];
  if (v14)
  {
    *(v13 + 16) = v14;
    *(a2 + 24) = v12;
    *(a2 + 32) = sub_29D82E35C(&qword_2A17B5EA0, type metadata accessor for CardioFitnessDataTypeDetailDataSourceProvider, &unk_29D94B7C0);
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D82E35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for HypertensionNotificationsHeartAttackWarning(uint64_t a1)
{
  result = qword_2A17B5EB8;
  if (!qword_2A17B5EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D82E43C()
{
  v1 = (v0 + qword_2A17B5EB0);
  *v1 = 0;
  v1[1] = 0;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  return sub_29D936C78();
}

void sub_29D82E574()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E440);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E480);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E4C0);
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    v8 = sub_29D838310();
    if (v8)
    {
      v9 = v8;
      v10 = [v0 headerView];
      [v10 setAllowFullWidthIcon_];

      v11 = [v0 headerView];
      [v11 setIcon:v9 accessibilityLabel:0];
    }

    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E500);
    swift_arrayDestroy();
    sub_29D936C58();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D82E7EC(void *a1)
{
  v1 = a1;
  sub_29D82E574();
}

void sub_29D82E834()
{
  v1 = *&v0[qword_2A17B5EB0];
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_29D8FD2F0(v0, v1);

    sub_29D936978();
  }
}

void sub_29D82E894(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  v5 = *&v4[qword_2A17B5EB0];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_29D8FD2F0(v4, v5);

    sub_29D936978();
    sub_29D69417C(v6);
  }

  else
  {
    sub_29D69417C(v6);
  }
}

uint64_t sub_29D82E98C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B5EB0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t type metadata accessor for BloodPressureJournalHypertensiveCrisisViewController(uint64_t a1)
{
  result = qword_2A17B5F00;
  if (!qword_2A17B5F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D82EA60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D8320F4();
  sub_29D933E18();

  v4 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
  *a2 = v4;

  return v4;
}

void sub_29D82EAF0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_29D7B150C(v1);
}

uint64_t sub_29D82EB20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F74706D79536F6ELL;
  v4 = 0xEA0000000000736DLL;
  if (v2 != 1)
  {
    v3 = 0x736E7265636E6F63;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736D6F74706D7973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6F74706D79536F6ELL;
  v8 = 0xEA0000000000736DLL;
  if (*a2 != 1)
  {
    v7 = 0x736E7265636E6F63;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736D6F74706D7973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D82EC2C()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D82ECD4(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D82ED68(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D82EE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D831F44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D82EE3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA0000000000736DLL;
  v5 = 0x6F74706D79536F6ELL;
  if (v2 != 1)
  {
    v5 = 0x736E7265636E6F63;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736D6F74706D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_29D82EEA0()
{
  v1 = qword_2A17B5EE0;
  v2 = *(v0 + qword_2A17B5EE0);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EE0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_nextButtonTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D82EF28()
{
  v1 = qword_2A17B5EE8;
  v2 = *(v0 + qword_2A17B5EE8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EE8);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
    v6 = sub_29D93A658();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    [v5 setAdjustsFontForContentSizeCategory_];
    [v5 setTextAlignment_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29D82F058()
{
  v1 = qword_2A17B5EF0;
  v2 = *(v0 + qword_2A17B5EF0);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EF0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D82F108()
{
  v1 = qword_2A17B5EF8;
  v2 = *(v0 + qword_2A17B5EF8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B5EF8);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + qword_2A17B5ED0);
    swift_getKeyPath();
    sub_29D8320F4();
    sub_29D933E18();

    v6 = *(v5 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
    if (v6)
    {
      v7 = *(v5 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
    }

    else
    {
      v7 = *MEMORY[0x29EDBA420];
      v6 = 0;
    }

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v9 = v6;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D82F1F4(uint64_t a1)
{
  v3 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v30 - v13;
  v15 = (v1 + qword_2A17B5EC8);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + qword_2A17B5EE0) = 0;
  *(v1 + qword_2A17B5EE8) = 0;
  *(v1 + qword_2A17B5EF0) = 0;
  *(v1 + qword_2A17B5EF8) = 0;
  *(v1 + qword_2A17B5ED0) = a1;
  v16 = *(a1 + 16);
  type metadata accessor for BloodPressureSampleFormatter();
  swift_allocObject();
  v35 = a1;

  v17 = sub_29D7C07C4(v16);
  v36 = v1;
  *(v1 + qword_2A17B5ED8) = v17;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2BE98;
  v30 = unk_2A1A2BEA0;
  v19 = *(v7 + 16);
  v19(v11, v14, v6);
  sub_29D935E88();
  v31 = v18;
  sub_29D933A98();
  v20 = sub_29D939D98();
  v32 = v21;
  v33 = v20;
  v22 = *(v7 + 8);
  v22(v14, v6);
  sub_29D939D08();
  v19(v11, v14, v6);
  sub_29D935E88();
  v23 = v31;
  sub_29D933A98();
  sub_29D939D98();
  v22(v14, v6);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  v25 = sub_29D939D28();
  v26 = [objc_opt_self() imageNamed:v25 inBundle:v24];

  v27 = sub_29D936C78();
  v28 = [v27 headerView];
  [v28 setAllowFullWidthIcon_];

  [v27 setModalInPresentation_];

  return v27;
}

void sub_29D82F63C()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BloodPressureJournalHypertensiveCrisisViewController(0);
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_29D82FCA8();
  v2 = [v0 contentView];
  v3 = sub_29D82EF28();
  [v2 addSubview_];

  sub_29D8306E0();
  v4 = [v1 navigationItem];
  v5 = sub_29D82EEA0();
  [v4 setRightBarButtonItem_];

  sub_29D936C68();
  sub_29D936C48();
  v6 = *&v1[qword_2A17B5EE0];
  sub_29D88BBC8(&unk_2A243E5A8);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v9 = sub_29D939D28();

    [v6 setAccessibilityIdentifier_];

    sub_29D7B2224(3, 2u);
    sub_29D82F85C();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D82F814(void *a1)
{
  v1 = a1;
  sub_29D82F63C();
}

void sub_29D82F85C()
{
  v33 = objc_opt_self();
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D9403C0;
  v2 = sub_29D82EF28();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = qword_2A17B5EE8;
  v8 = [*&v0[qword_2A17B5EE8] trailingAnchor];
  v9 = [v0 &selRef_dateForKey_completion_];
  v10 = [v9 &selRef_setRightBarButtonItems_ + 4];

  v11 = [v8 &selRef:v10 showAdaptively:? sender:? animated:? + 5];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] topAnchor];
  v13 = [v0 headerView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:16.0];
  *(v1 + 48) = v15;
  v16 = sub_29D82F058();
  v17 = [v16 leadingAnchor];

  v18 = [v0 &selRef_dateForKey_completion_];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v1 + 56) = v20;
  v21 = qword_2A17B5EF0;
  v22 = [*&v0[qword_2A17B5EF0] trailingAnchor];
  v23 = [v0 &selRef_dateForKey_completion_];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v1 + 64) = v25;
  v26 = [*&v0[v21] topAnchor];
  v27 = [*&v0[v7] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:32.0];

  *(v1 + 72) = v28;
  v29 = [*&v0[v21] bottomAnchor];
  v30 = [v0 &selRef_dateForKey_completion_];
  v31 = [v30 bottomAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v1 + 80) = v32;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v34 = sub_29D939F18();

  [v33 activateConstraints_];
}

void sub_29D82FCA8()
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939D18();
  v58 = *(v5 - 8);
  v59 = v5;
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v48 - v11;
  v13 = sub_29D9339F8();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + qword_2A17B5ED0);
  swift_getKeyPath();
  v62 = v17;
  sub_29D8320F4();
  sub_29D933E18();

  v18 = *(v17 + 48);
  if (v18)
  {
    v57 = v4;
    swift_getKeyPath();
    v62 = v17;
    v19 = v18;
    sub_29D933E18();

    v20 = *(v17 + 56);
    if (v20)
    {
      v56 = v9;
      swift_getKeyPath();
      v62 = v17;
      v21 = v20;
      sub_29D933E18();

      v22 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
      swift_beginAccess();
      (*(v60 + 16))(v16, v17 + v22, v61);
      v23 = sub_29D7C08CC(v19);
      v53 = v24;
      v54 = v23;
      v55 = v21;
      v25 = sub_29D7C08CC(v21);
      v51 = v26;
      v52 = v25;
      if (sub_29D745C20())
      {
        if (qword_2A17B0C20 != -1)
        {
          swift_once();
        }

        v27 = qword_2A17D0928;
        v28 = sub_29D933958();
        v29 = [v27 stringFromDate_];

        v30 = sub_29D939D68();
        v49 = v31;
        v50 = v30;
      }

      else
      {
        v32 = sub_29D745710();
        v49 = v33;
        v50 = v32;
      }

      v34 = v56;
      v56 = v19;
      v35 = sub_29D82EF28();
      sub_29D939D08();
      if (qword_2A1A242C0 != -1)
      {
        swift_once();
      }

      v36 = qword_2A1A2BE98;
      v38 = v58;
      v37 = v59;
      (*(v58 + 16))(v34, v12, v59);
      sub_29D935E88();
      v39 = v36;
      sub_29D933A98();
      sub_29D939D98();
      (*(v38 + 8))(v12, v37);
      sub_29D6CC0B8(0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_29D943EA0;
      v41 = MEMORY[0x29EDC99B0];
      *(v40 + 56) = MEMORY[0x29EDC99B0];
      v42 = sub_29D69AD24();
      v43 = v53;
      *(v40 + 32) = v54;
      *(v40 + 40) = v43;
      *(v40 + 96) = v41;
      *(v40 + 104) = v42;
      v44 = v51;
      v45 = v52;
      *(v40 + 64) = v42;
      *(v40 + 72) = v45;
      *(v40 + 80) = v44;
      *(v40 + 136) = v41;
      *(v40 + 144) = v42;
      v46 = v49;
      *(v40 + 112) = v50;
      *(v40 + 120) = v46;
      sub_29D939D38();

      v47 = sub_29D939D28();

      [v35 setText_];

      (*(v60 + 8))(v16, v61);
    }

    else
    {
    }
  }
}

uint64_t sub_29D8301DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v35 - v14;
  v35[1] = v6;
  v36 = a1;
  if (a1 > 1u)
  {
    v19 = v7;
    v18 = 0;
  }

  else
  {
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A2BE98;
    (*(v8 + 16))(v12, v15, v7);
    sub_29D935E88();
    v17 = v16;
    sub_29D933A98();
    v18 = sub_29D939D98();
    v19 = v7;
    (*(v8 + 8))(v15, v7);
  }

  v20 = sub_29D939D68();
  v22 = v21;
  if (v20 == sub_29D939D68() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_29D93AD78();

    if ((v25 & 1) == 0)
    {
      v27 = sub_29D939D68();
      v29 = v28;
      if (v27 == sub_29D939D68() && v29 == v30)
      {
      }

      else
      {
        v34 = sub_29D93AD78();

        if ((v34 & 1) == 0)
        {
          return v18;
        }
      }

      if (!v36)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  if (v36)
  {
    v26 = v19;
    sub_29D939D08();
    if (qword_2A1A242C0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_29D939D08();
  v26 = v19;
  if (qword_2A1A242C0 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_21:
  v31 = qword_2A1A2BE98;
  (*(v8 + 16))(v12, v15, v26);
  sub_29D935E88();
  v32 = v31;
  sub_29D933A98();
  v18 = sub_29D939D98();
  (*(v8 + 8))(v15, v26);
  return v18;
}

void sub_29D8306E0()
{
  v1 = v0;
  v59 = MEMORY[0x29EDCA190];
  v2 = sub_29D82F108();
  v3 = sub_29D939D68();
  v5 = v4;
  if (v3 == sub_29D939D68() && v5 == v6)
  {

LABEL_15:
    v9 = qword_2A17B5EF8;
    v24 = *&v1[qword_2A17B5EF8];
    v25 = sub_29D8301DC(0, v24);
    v27 = v26;
    v20 = type metadata accessor for BulletView();
    v28 = objc_allocWithZone(v20);
    v29 = sub_29D831488(0x69662E656E6F6870, 0xEA00000000006C6CLL, v25, v27);
    sub_29D831F90(0);
    v30 = sub_29D939D28();

    [v29 setAccessibilityIdentifier_];

    MEMORY[0x29ED6A300]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();
    v31 = *&v1[v9];
    v32 = sub_29D8301DC(2, v31);
    v34 = v33;
    v35 = objc_allocWithZone(v20);
    v36 = sub_29D831488(0xD00000000000001DLL, 0x800000029D966E50, v32, v34);
    sub_29D831F90(2);
    v37 = sub_29D939D28();

    [v36 setAccessibilityIdentifier_];

    MEMORY[0x29ED6A300]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v8 = sub_29D93AD78();

  if (v8)
  {
    goto LABEL_15;
  }

  v9 = qword_2A17B5EF8;
  v10 = sub_29D939D68();
  v12 = v11;
  if (v10 == sub_29D939D68() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_29D93AD78();

    if ((v15 & 1) == 0)
    {
      v16 = *&v1[v9];
      v17 = sub_29D8301DC(0, v16);
      v19 = v18;
      v20 = type metadata accessor for BulletView();
      v21 = objc_allocWithZone(v20);
      v22 = sub_29D831488(0x69662E656E6F6870, 0xEA00000000006C6CLL, v17, v19);
      sub_29D831F90(0);
      v23 = sub_29D939D28();

      [v22 setAccessibilityIdentifier_];

      MEMORY[0x29ED6A300]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      goto LABEL_19;
    }
  }

  v50 = *&v1[v9];
  v51 = sub_29D8301DC(2, v50);
  v53 = v52;
  v20 = type metadata accessor for BulletView();
  v54 = objc_allocWithZone(v20);
  v55 = sub_29D831488(0xD00000000000001DLL, 0x800000029D966E50, v51, v53);
  sub_29D831F90(2);
  v56 = sub_29D939D28();

  [v55 setAccessibilityIdentifier_];

  MEMORY[0x29ED6A300]();
  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
LABEL_19:
    sub_29D939FA8();
    v38 = *&v1[v9];
    v39 = sub_29D8301DC(1, v38);
    v41 = v40;
    v42 = objc_allocWithZone(v20);
    v43 = sub_29D831488(0x63736F6874657473, 0xEB0000000065706FLL, v39, v41);
    sub_29D831F90(1);
    v44 = sub_29D939D28();

    [v43 setAccessibilityIdentifier_];

    MEMORY[0x29ED6A300]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();
    v20 = v59;
    if (v59 >> 62)
    {
      v45 = sub_29D93A928();
      if (!v45)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v45 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_33;
      }
    }

    if (v45 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_18:
    sub_29D939F78();
  }

  v46 = 0;
  do
  {
    if ((v59 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x29ED6AE30](v46, v59);
    }

    else
    {
      v47 = *(v59 + v46 + 4);
    }

    v48 = v47;
    ++v46;
    v49 = sub_29D82F058();
    [v49 addArrangedSubview_];
  }

  while (v45 != v46);
LABEL_33:

  v57 = [v1 contentView];
  v58 = sub_29D82F058();
  [v57 addSubview_];
}

uint64_t sub_29D830E98()
{
  v1 = v0;
  result = sub_29D7B2224(3, 3u);
  v3 = *&v0[qword_2A17B5EC8];
  if (v3)
  {
    swift_unknownObjectRetain();
    ObjectType = swift_getObjectType();
    sub_29D74129C(2, v3, v1, &off_2A2447F50, ObjectType);

    return sub_29D936978();
  }

  return result;
}

uint64_t sub_29D830F28(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  sub_29D7B2224(3, 3u);
  v5 = *&v4[qword_2A17B5EC8];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_29D831E6C(v4, v5);

    sub_29D936978();
  }

  else
  {
  }

  return sub_29D69417C(v7);
}

void sub_29D831000()
{
  sub_29D936978();

  v1 = *(v0 + qword_2A17B5EF8);
}

void sub_29D8310A8(uint64_t a1)
{
  sub_29D936978();

  v2 = *(a1 + qword_2A17B5EF8);
}

uint64_t sub_29D83114C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B5EC8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

id sub_29D831168()
{
  v1 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    [v4 setContentMode_];
    v5 = [objc_opt_self() systemBlueColor];
    [v4 setTintColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_29D83124C()
{
  v1 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel);
  }

  else
  {
    v4 = sub_29D8312AC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D8312AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setNumberOfLines_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v1 = sub_29D93A658();
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_29D8313C4()
{
  v1 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D831488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView] = 0;
  *&v4[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___textLabel] = 0;
  *&v4[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BulletView();
  v5 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_29D83124C();
  v7 = sub_29D939D28();

  [v6 setText_];

  v8 = [objc_opt_self() configurationWithTextStyle_];
  v9 = sub_29D831168();
  v10 = v8;
  v11 = sub_29D939D28();

  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  [v9 setImage_];
  v13 = sub_29D8313C4();
  [v13 addArrangedSubview_];

  v14 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView;
  [*&v5[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView] addArrangedSubview_];
  [v5 addSubview_];
  sub_29D8316FC();

  return v5;
}

void sub_29D8316FC()
{
  v1 = objc_opt_self();
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D940A00;
  v3 = sub_29D831168();
  v4 = [v3 widthAnchor];

  v5 = [v4 constraintEqualToConstant_];
  *(v2 + 32) = v5;
  v6 = [*&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___iconView] heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v2 + 40) = v7;
  v8 = sub_29D8313C4();
  v9 = [v8 topAnchor];

  v10 = [v0 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 48) = v11;
  v12 = OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView;
  v13 = [*&v0[OBJC_IVAR____TtC5HeartP33_355A5E0DDBA7E813E0D08FE23866485010BulletView____lazy_storage___stackView] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 56) = v15;
  v16 = [*&v0[v12] leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v2 + 64) = v18;
  v19 = [*&v0[v12] trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v2 + 72) = v21;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v22 = sub_29D939F18();

  [v1 activateConstraints_];
}

id sub_29D831A4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D831B0C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_29D9339F8();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a2[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = &off_2A2444C58;
  v10[5] = ObjectType;
  v27 = ObjectType;
  swift_getKeyPath();
  aBlock[0] = v9;
  sub_29D8320F4();
  v11 = a1;
  v12 = a2;
  sub_29D933E18();

  v13 = *(v9 + 6);
  if (v13)
  {
    swift_getKeyPath();
    aBlock[0] = v9;
    v14 = v13;
    sub_29D933E18();

    v15 = *(v9 + 7);
    if (v15)
    {
      v27 = *(v9 + 5);
      swift_getKeyPath();
      aBlock[0] = v9;
      v16 = v15;
      sub_29D933E18();

      v17 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
      swift_beginAccess();
      v19 = v25;
      v18 = v26;
      (*(v25 + 16))(v8, &v9[v17], v26);
      v20 = sub_29D933958();
      (*(v19 + 8))(v8, v18);
      v21 = swift_allocObject();
      v21[2] = v9;
      v21[3] = v14;
      v21[4] = v16;
      v21[5] = sub_29D83214C;
      v21[6] = v10;
      aBlock[4] = sub_29D832158;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D83C0B4;
      aBlock[3] = &unk_2A2447FC8;
      v22 = _Block_copy(aBlock);
      v23 = v14;
      v24 = v16;

      [v27 classificationGuidelinesOnDate:v20 completionHandler:v22];

      _Block_release(v22);

      return;
    }
  }

  sub_29D74129C(1, v12, v11, &off_2A2444C58, v27);
}

uint64_t sub_29D831E6C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();

  return sub_29D74129C(2, a2, a1, &off_2A2447F50, ObjectType);
}

void sub_29D831EC0(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = a1;
  v6 = a2;
  sub_29D74129C(2, v6, v5, &off_2A2441CA8, ObjectType);
}

unint64_t sub_29D831F44(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_29D831F90(char a1)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_29D943EA0;
  *(inited + 40) = 0x800000029D957090;
  *(inited + 48) = 2036625218;
  *(inited + 56) = 0xE400000000000000;
  sub_29D93AB08();
  *(inited + 64) = 0;
  *(inited + 72) = 0xE000000000000000;
  v2 = sub_29D935E88();
  sub_29D88BBC8(v2);
  v3 = sub_29D939F18();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    sub_29D939D68();

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_29D8320F4()
{
  result = qword_2A17B3830;
  if (!qword_2A17B3830)
  {
    type metadata accessor for BloodPressureJournalLoggingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3830);
  }

  return result;
}

uint64_t sub_29D832168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D832194()
{
  result = qword_2A17B5F28;
  if (!qword_2A17B5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5F28);
  }

  return result;
}

id sub_29D8321E8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5Heart47HypertensionNotificationsCompleteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v2 = sub_29D939D28();

  v3 = sub_29D939D28();

  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithTitle_detailText_icon_contentLayout_, v2, v3, 0, 3, 0xE000000000000000);

  return v4;
}

void sub_29D83237C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E5E8);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E628);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E668);
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    v8 = [v0 navigationItem];
    [v8 setHidesBackButton_];

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A2C038;
    v10 = sub_29D939D28();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

    if (v11)
    {
      v12 = [v0 headerView];
      [v12 setAllowFullWidthIcon_];

      v13 = [v0 headerView];
      [v13 setIcon:v11 accessibilityLabel:0];
    }

    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243E6A8);
    swift_arrayDestroy();
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v14 = sub_29D939D28();

    v15 = sub_29D939D28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D8328C8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart47HypertensionNotificationsCompleteViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D832940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = sub_29D937B88();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v33[2] = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D933A58();
  v7 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v8);
  v34 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D936338();
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = v10;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = 0;
  v11[3] = v12;
  v13 = MEMORY[0x29EDC9E90];
  sub_29D834574(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D93DDB0;
  sub_29D834574(0, &qword_2A17B1138, sub_29D6FC5F4, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D93F680;
  v16 = v10;
  v33[3] = a1;
  v17 = sub_29D936338();
  v18 = sub_29D935DA8();
  *(v15 + 56) = v18;
  v19 = sub_29D8343FC(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
  *(v15 + 64) = v19;
  v20 = sub_29D693F78((v15 + 32));
  sub_29D832FEC(v17, v11, v20);

  *(v15 + 96) = v18;
  *(v15 + 104) = v19;
  v21 = sub_29D693F78((v15 + 72));
  v33[0] = v11;
  v22 = v34;
  sub_29D833750(v11, v21);
  sub_29D933A48();
  sub_29D933A18();
  v23 = *(v7 + 8);
  v35 = v7 + 8;
  v23(v22, v36);
  v33[1] = v14;
  sub_29D9359C8();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v37[0] = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243E768);
  v24 = sub_29D939F18();
  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    sub_29D937B18();
    v26 = sub_29D934D58();
    swift_allocObject();
    v27 = sub_29D934D38();
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_29D93AA18();

    strcpy(v37, "MutableArray<");
    HIWORD(v37[1]) = -4864;
    sub_29D933A48();
    v28 = sub_29D933A18();
    v30 = v29;
    v23(v22, v36);
    MEMORY[0x29ED6A240](v28, v30);

    MEMORY[0x29ED6A240](62, 0xE100000000000000);
    sub_29D935B98();
    swift_allocObject();
    sub_29D935B28();
    sub_29D9355C8();

    v37[3] = v26;
    v37[4] = sub_29D8343FC(&qword_2A17B2C98, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
    v37[0] = v27;
    sub_29D6FC6EC(0);
    sub_29D8343FC(&qword_2A17B2720, sub_29D6FC6EC, MEMORY[0x29EDC2110]);

    v31 = sub_29D935598();

    sub_29D69417C(v37);
    v32 = sub_29D936338();
    sub_29D834444(0);
    swift_allocObject();
    sub_29D88C9BC(v31, v32, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D832FEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v54 = a1;
  v47 = a3;
  v3 = sub_29D936BE8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D834574(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v52 = &v42 - v9;
  v10 = sub_29D935C78();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v51 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D834574(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v6);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v42 - v15;
  v48 = sub_29D937928();
  v17 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D9378C8();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D937B88();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v56[3] = v26;
  v56[4] = MEMORY[0x29EDC7800];
  v31 = sub_29D693F78(v56);
  (*(v27 + 16))(v31, v30, v26);
  sub_29D834574(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  v43 = v27;
  v32 = swift_allocObject();
  v42 = v26;
  *(v32 + 16) = xmmword_29D93DDB0;
  (*(v22 + 104))(v25, *MEMORY[0x29EDC7768], v21);
  v33 = sub_29D9378D8();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  sub_29D937918();
  sub_29D937908();
  (*(v17 + 8))(v20, v48);
  (*(v22 + 8))(v25, v21);
  v34 = swift_allocObject();
  v35 = v54;
  *(v34 + 16) = v53;
  *(v34 + 24) = v35;
  v36 = v50;
  v37 = v51;
  *v51 = 1;
  (*(v49 + 104))(v37, *MEMORY[0x29EDC22C0], v36);
  v38 = sub_29D9379E8();
  (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  v55 = &unk_2A243D870;

  v39 = v35;
  sub_29D88BBC8(&unk_2A243E6E8);
  v40 = sub_29D939F18();
  v41 = HKUIJoinStringsForAutomationIdentifier();

  if (v41)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    (*(v45 + 104))(v44, *MEMORY[0x29EDC2A38], v46);
    sub_29D935D98();
    (*(v43 + 8))(v30, v42);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D833750(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v43 = a2;
  v2 = sub_29D936BE8();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D834574(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v48 = &v38 - v8;
  v9 = sub_29D935C78();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D834574(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v5);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v38 - v14;
  v44 = sub_29D937928();
  v16 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D9378C8();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D937B88();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v51[3] = v25;
  v51[4] = MEMORY[0x29EDC7800];
  v30 = sub_29D693F78(v51);
  (*(v26 + 16))(v30, v29, v25);
  sub_29D834574(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  v39 = v25;
  v31 = swift_allocObject();
  v38 = v26;
  *(v31 + 16) = xmmword_29D93DDB0;
  (*(v21 + 104))(v24, *MEMORY[0x29EDC7768], v20);
  v32 = sub_29D9378D8();
  (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  sub_29D937918();
  sub_29D937908();
  (*(v16 + 8))(v19, v44);
  (*(v21 + 8))(v24, v20);
  v33 = v46;
  v34 = v47;
  *v47 = 1;
  (*(v45 + 104))(v34, *MEMORY[0x29EDC22C0], v33);
  v35 = sub_29D9379E8();
  (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
  v50 = &unk_2A243D870;

  sub_29D88BBC8(&unk_2A243E728);
  v36 = sub_29D939F18();
  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    (*(v41 + 104))(v40, *MEMORY[0x29EDC2A38], v42);
    sub_29D935D98();
    (*(v38 + 8))(v29, v39);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D833E94(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_29D833F68(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v5 = sub_29D7D0C64();
  }

  else
  {
    v5 = 5;
  }

  sub_29D6AA594(v5, 6);
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v8 = a3;
  v9 = sub_29D939D28();
  v10 = [v7 initWithCategory:2 domainName:v9 healthStore:v8];

  *(v6 + 24) = v10;
  type metadata accessor for BloodPressureJournalLoggingModel(0);
  swift_allocObject();
  v11 = v8;

  v12 = sub_29D7B28C8(v11, v6, 4);

  v13 = objc_allocWithZone(type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController(0));
  v14 = &v13[qword_2A17B22E8];
  *v14 = 0;
  v14[1] = 0;
  *&v13[qword_2A17B22F0] = v12;
  v13[qword_2A17B22F8] = 1;
  *&v13[qword_2A17B2300] = *(v12 + 24);

  v15 = sub_29D81C20C(1);
  [a1 showViewController:v15 sender:0];
}

uint64_t sub_29D834148(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D834574(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v19 - v7;
  sub_29D834574(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v4);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v19 - v11;
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v13 = sub_29D7D0C64();
  }

  else
  {
    v13 = 5;
  }

  v14 = sub_29D93A028();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v13;
  *(v15 + 41) = 6;
  *(v15 + 48) = v3;

  sub_29D6BEBA4(0, 0, v12, &unk_29D9402C0, v15);

  sub_29D9336E8();
  v16 = sub_29D9336F8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    return sub_29D6D96C0(v8);
  }

  sub_29D9336A8();
  return (*(v17 + 8))(v8, v16);
}

uint64_t sub_29D8343FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D834444(uint64_t a1)
{
  if (!qword_2A17B5F38)
  {
    sub_29D8344D8(255);
    v3 = v2;
    v4 = sub_29D8343FC(&qword_2A17B5F48, sub_29D8344D8, MEMORY[0x29EDC1E08]);
    v6 = type metadata accessor for BloodPressureJournalHideableDataSource(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_2A17B5F38);
    }
  }
}

void sub_29D8344D8(uint64_t a1)
{
  if (!qword_2A17B5F40)
  {
    sub_29D6FC6EC(255);
    sub_29D8343FC(&qword_2A17B2720, sub_29D6FC6EC, MEMORY[0x29EDC2110]);
    v1 = sub_29D935158();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5F40);
    }
  }
}

void sub_29D834574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *sub_29D8345E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_29D6CE508(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29D934178();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D751814(v17);
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_domain, v17, v13);
  v18 = *a1;
  v26 = *(a1 + 8);
  v25 = *(a1 + 16);
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 56) = a2;
  *(v19 + 64) = v6;
  v21 = v18;
  sub_29D753C5C(&v26, v24);
  sub_29D738808(&v25, v24);
  sub_29D6CE59C(0);
  sub_29D835168(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);

  sub_29D938378();
  sub_29D835168(&qword_2A1A24A00, sub_29D6CE508, MEMORY[0x29EDB8AE8]);
  v22 = sub_29D938418();
  (*(v9 + 8))(v12, v8);
  *(v3 + OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_publisher) = v22;

  sub_29D8351B0(&v26, sub_29D835088);
  sub_29D6AA360(&v25);
  return v3;
}

uint64_t sub_29D8348E4(uint64_t a1, uint64_t a2)
{
  sub_29D6D09E0(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C((a2 + 24), *(a2 + 48));
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = off_2A2443F00;
  sub_29D935E88();
  v14(v12, v13);
  v15 = sub_29D9340F8();
  if ((*(*(v15 - 8) + 48))(v11, 1, v15) == 1)
  {

    sub_29D8351B0(v11, sub_29D6C36D8);
    v16 = *a1;
    v45 = *(a1 + 8);
    sub_29D935E88();
    v17 = v16;
    sub_29D753C5C(&v45, &v44);
    v18 = sub_29D937878();
    v19 = sub_29D93A268();

    sub_29D8351B0(&v45, sub_29D835088);

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136446466;
      v43 = v40;
      v44 = v21;
      sub_29D835210();
      v22 = sub_29D939DA8();
      v24 = sub_29D6C2364(v22, v23, &v44);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29D6C2364(v12, v13, &v44);
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s(%{public}s]: No previous feed item found, no changes necessary", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v25 = MEMORY[0x29EDCA190];
  }

  else
  {
    sub_29D8351B0(v11, sub_29D6C36D8);
    v26 = *a1;
    v45 = *(a1 + 8);
    sub_29D935E88();
    v27 = v26;
    sub_29D753C5C(&v45, &v44);
    v28 = sub_29D937878();
    v29 = sub_29D93A268();

    sub_29D8351B0(&v45, sub_29D835088);

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136446466;
      v43 = v40;
      v44 = v31;
      sub_29D835210();
      v32 = sub_29D939DA8();
      v34 = sub_29D6C2364(v32, v33, &v44);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_29D6C2364(v12, v13, &v44);
      _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s(%{public}s]: Previous feed item found, removing identifier", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    v35 = MEMORY[0x29EDC9E90];
    sub_29D7546B8(0, &qword_2A1A21F60, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v25 = swift_allocObject();
    v40 = xmmword_29D93DDB0;
    *(v25 + 16) = xmmword_29D93DDB0;
    sub_29D7546B8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], v35);
    v36 = swift_allocObject();
    *(v36 + 16) = v40;
    *(v36 + 32) = v12;
    *(v36 + 40) = v13;
    *(v25 + 32) = v36;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 32;
  }

  v44 = v25;
  sub_29D7546B8(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D938338();
  sub_29D835168(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
  v37 = v42;
  v38 = sub_29D938418();
  (*(v41 + 8))(v7, v37);
  return v38;
}

uint64_t sub_29D834EC4()
{
  v1 = OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyRelatedSampleTypesGenerator(uint64_t a1)
{
  result = qword_2A1A23D68;
  if (!qword_2A1A23D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D834FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart32EmptyRelatedSampleTypesGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D835054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D8348E4(v1 + 16, *(v1 + 56));
  *a1 = result;
  return result;
}

void sub_29D835088(uint64_t a1)
{
  if (!qword_2A1A22248)
  {
    sub_29D83511C();
    sub_29D835168(&qword_2A1A24920, sub_29D83511C, MEMORY[0x29EDCA2F0]);
    v1 = sub_29D93A128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22248);
    }
  }
}

unint64_t sub_29D83511C()
{
  result = qword_2A1A24930;
  if (!qword_2A1A24930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24930);
  }

  return result;
}

uint64_t sub_29D835168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D8351B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D835210()
{
  result = qword_2A1A23CB8[0];
  if (!qword_2A1A23CB8[0])
  {
    type metadata accessor for EmptyRelatedSampleTypesGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A23CB8);
  }

  return result;
}

uint64_t sub_29D835258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D836558(0, &qword_2A17B7AC0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC2EA0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v16 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:a2];
  sub_29D93A408();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  sub_29D6CA084();
  sub_29D93A608();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_29D835400()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D83548C(char a1, char a2)
{
  sub_29D836558(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  if (a1)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_2A1A257A0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  *(v4 + 32) = sub_29D9334A8();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_29D9334A8();
  *(v4 + 56) = v6;
  return v4;
}

uint64_t sub_29D8356A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v33 = a3;
  sub_29D8364A0(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v31[-v8];
  v10 = sub_29D9371A8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  swift_beginAccess();
  sub_29D6E8508(a1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D8364F4(v9, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    v17 = sub_29D937878();
    v18 = sub_29D93A288();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s]: No status available for IRN; reporting 'available'", v19, 0xCu);
      sub_29D69417C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    v24 = 0;
    v25 = 1;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v26 = sub_29D9371B8();
    v32 = sub_29D93A648();
    v27 = sub_29D93A648();

    v25 = v32 & v27;
    v28 = sub_29D9371B8();
    v29 = sub_29D93A648();

    (*(v11 + 8))(v14, v10);
    v24 = v29 ^ 1;
  }

  return sub_29D835AC4(v25 & 1, v24 & 1, x8_0);
}

uint64_t sub_29D835A38()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D835AC4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t x8_0@<X8>)
{
  if (a2)
  {
    return sub_29D835AF0(x8_0);
  }

  if (a1)
  {
    return sub_29D835FF4(x8_0);
  }

  return sub_29D835D8C(x8_0);
}

uint64_t sub_29D835AF0@<X0>(uint64_t a2@<X8>)
{
  sub_29D8364A0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() seedExpiredLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_29D8364F4(v7, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  v18[1] = v2;
  swift_getMetatypeMetadata();
  v13 = sub_29D939DA8();
  v15 = v14;
  v16 = MEMORY[0x29EDC99B0];
  *(v12 + 56) = MEMORY[0x29EDC99B0];
  v17 = sub_29D69AD24();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0xD00000000000001DLL;
  *(v12 + 80) = 0x800000029D960EC0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D835D8C@<X0>(uint64_t a2@<X8>)
{
  sub_29D8364A0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v17 - v6;
  sub_29D9336E8();
  v8 = sub_29D9336F8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_29D8364F4(v7, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93F680;
  v17[1] = v2;
  swift_getMetatypeMetadata();
  v12 = sub_29D939DA8();
  v14 = v13;
  v15 = MEMORY[0x29EDC99B0];
  *(v11 + 56) = MEMORY[0x29EDC99B0];
  v16 = sub_29D69AD24();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 64) = v16;
  *(v11 + 72) = 0xD000000000000025;
  *(v11 + 80) = 0x800000029D960E90;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D835FF4@<X0>(uint64_t a2@<X8>)
{
  sub_29D8364A0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() irregularHeartRhythmFooterLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_29D8364F4(v7, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  sub_29D823158(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93F680;
  v18[1] = v2;
  swift_getMetatypeMetadata();
  v13 = sub_29D939DA8();
  v15 = v14;
  v16 = MEMORY[0x29EDC99B0];
  *(v12 + 56) = MEMORY[0x29EDC99B0];
  v17 = sub_29D69AD24();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0xD00000000000001BLL;
  *(v12 + 80) = 0x800000029D960EE0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

void sub_29D836290(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a2;
    oslog = sub_29D937878();
    v6 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315394;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v17);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = a2;
      sub_29D823158(0, &qword_2A17B7AF0, &qword_2A1A24850, MEMORY[0x29EDC9F18], MEMORY[0x29EDC9C68]);
      v13 = sub_29D939DB8();
      v15 = sub_29D6C2364(v13, v14, &v17);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_29D677000, oslog, v6, "[%s]: Unable to change IRN setting: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D8364A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D8364F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8364A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D836558(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D8365A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    v5 = sub_29D939F18();
  }

  if (a2)
  {
    v6 = sub_29D933588();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_29D836654()
{
  v1 = OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_store);
    sub_29D6945AC(v0 + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_healthExperienceStore, v12);
    v5 = objc_allocWithZone(type metadata accessor for SummariesElectrocardiogramDataFetcher());
    v6 = v4;
    v7 = v0;
    v8 = sub_29D837C18(v6, v12, 0, 0);

    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_29D8369C8()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_queryData);
  if (v7)
  {
    v43 = v7;
    v8 = [v43 samples];
    if (v8)
    {
      v9 = v8;
      v45 = 0;
      sub_29D69567C(0, &unk_2A17B6020, 0x29EDC44C0);
      sub_29D939F28();

      v10 = v45;
      if (v45)
      {
        v11 = v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler;
        v12 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler);
        if (v12)
        {
          v13 = *(v11 + 8);
          v45 = MEMORY[0x29EDCA190];
          if (v10 >> 62)
          {
            goto LABEL_36;
          }

          for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D93A928())
          {

            if (!i)
            {
              break;
            }

            v41 = v13;
            v42 = v12;
            v15 = 0;
            while (1)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x29ED6AE30](v15, v10);
              }

              else
              {
                if (v15 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_35;
                }

                v16 = *(v10 + 8 * v15 + 32);
              }

              v13 = v16;
              v12 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
                break;
              }

              v17 = [objc_opt_self() createWithCodableECG_];

              v13 = &v45;
              MEMORY[0x29ED6A300]();
              if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v40 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_29D939F78();
              }

              sub_29D939FA8();
              ++v15;
              if (v12 == i)
              {
                v39 = v45;
                v13 = v41;
                v12 = v42;
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            ;
          }

          v39 = MEMORY[0x29EDCA190];
LABEL_30:

          v12(v39, 0);
          sub_29D694784(v12, v13);
        }

        v38 = v43;

        goto LABEL_25;
      }
    }

    sub_29D937818();
    v18 = v43;
    v19 = sub_29D937878();
    v20 = sub_29D93A288();

    v21 = os_log_type_enabled(v19, v20);
    v43 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v18;
      v45 = v23;
      *v22 = 136315138;
      sub_29D69567C(0, &qword_2A17B6018, 0x29EDC44B8);
      v24 = v18;
      v25 = sub_29D939DB8();
      v27 = sub_29D6C2364(v25, v26, &v45);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_29D677000, v19, v20, "Cound not decode samples from query data %s", v22, 0xCu);
      sub_29D69417C(v23);
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v28 = v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler;
    v29 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler);
    if (v29)
    {
      v30 = *(v28 + 8);
      sub_29D83774C();
      v31 = swift_allocError();
      *v32 = 4;

      v29(0, v31);

      sub_29D694784(v29, v30);
    }

    else
    {
    }
  }

  else
  {
    v33 = v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler;
    v34 = *(v1 + OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler);
    if (v34)
    {
      v35 = *(v33 + 8);
      sub_29D83774C();
      v36 = swift_allocError();
      *v37 = 4;

      v34(0, v36);
      sub_29D694784(v34, v35);
      v38 = v36;

LABEL_25:
    }
  }
}