void sub_29D746368()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v76 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_29D934C58();
  v87 = *(v89 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v89, v4);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v86 = &v73 - v8;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v84 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v79 = &v73 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v73 - v19;
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v73 - v22;
  v24 = sub_29D936638();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v0;
  sub_29D936B88();
  sub_29D9369E8();
  v29 = MEMORY[0x29EDC2970];
  sub_29D7474C0(&qword_2A17B1E40, MEMORY[0x29EDC2970], MEMORY[0x29EDC2980]);
  sub_29D7474C0(&qword_2A17B3920, v29, MEMORY[0x29EDC2978]);
  sub_29D936628();
  v30 = *(v25 + 8);
  v83 = v24;
  v30(v28, v24);
  if (v90)
  {
    v77 = v30;
    v78 = v90;
    sub_29D9369B8();
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v31 = sub_29D937898();
    sub_29D69C6C0(v31, qword_2A1A2BF40);
    v32 = *(v10 + 16);
    v88 = v23;
    v82 = v32;
    v32(v20, v23, v9);
    v33 = sub_29D937878();
    v34 = sub_29D93A2A8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v90 = v74;
      *v35 = 136315394;
      v36 = sub_29D93AF08();
      v75 = v10;
      v38 = sub_29D6C2364(v36, v37, &v90);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v82(v79, v20, v9);
      v39 = sub_29D939DA8();
      v41 = v40;
      ObjectType = *(v75 + 8);
      ObjectType(v20, v9);
      v42 = sub_29D6C2364(v39, v41, &v90);

      *(v35 + 14) = v42;
      v10 = v75;
      _os_log_impl(&dword_29D677000, v33, v34, "[%s] Did select cell with featureStatusKind %s", v35, 0x16u);
      v43 = v74;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v43, -1, -1);
      MEMORY[0x29ED6BE30](v35, -1, -1);
    }

    else
    {

      ObjectType = *(v10 + 8);
      ObjectType(v20, v9);
    }

    sub_29D936B88();
    v52 = sub_29D936618();
    v53 = v83;
    v54 = v77;
    v77(v28, v83);
    sub_29D936B88();
    v55 = v86;
    sub_29D9347B8();
    v54(v28, v53);
    v56 = v84;
    v82(v84, v88, v9);
    v57 = (*(v10 + 88))(v56, v9);
    if (v57 == *MEMORY[0x29EDC1760])
    {
      v58 = v87;
      v59 = v80;
      (*(v87 + 16))(v80, v55, v89);
      v60 = objc_allocWithZone(type metadata accessor for ElectrocardiogramSettingsViewController(0));
      v61 = sub_29D8D0CA0(v59, 0);
      v62 = [v52 navigationController];
      if (v62)
      {
        v63 = v62;
        [v62 pushViewController:v61 animated:1];
      }

      else
      {
      }

      (*(v58 + 8))(v55, v89);
      v67 = v88;
      goto LABEL_23;
    }

    v64 = v87;
    v65 = v52;
    if (v57 == *MEMORY[0x29EDC1768])
    {
LABEL_16:
      v66 = v88;
      sub_29D746D74(v88, v52);

      (*(v64 + 8))(v55, v89);
      v67 = v66;
LABEL_23:
      ObjectType(v67, v9);
      return;
    }

    if (v57 != *MEMORY[0x29EDC1758] && v57 != *MEMORY[0x29EDC1750])
    {
      if (v57 != *MEMORY[0x29EDC1748])
      {

        (*(v64 + 8))(v55, v89);
        v68 = ObjectType;
        ObjectType(v88, v9);
        v68(v56, v9);
        return;
      }

      goto LABEL_16;
    }

    v69 = v87;
    v70 = v76;
    sub_29D9369D8();
    v71 = sub_29D9336F8();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v70, 1, v71) == 1)
    {

      (*(v69 + 8))(v55, v89);
      ObjectType(v88, v9);
      sub_29D6D96C0(v70);
    }

    else
    {
      sub_29D9336A8();

      (*(v69 + 8))(v55, v89);
      ObjectType(v88, v9);
      (*(v72 + 8))(v70, v71);
    }
  }

  else
  {
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v44 = sub_29D937898();
    sub_29D69C6C0(v44, qword_2A1A2BF40);
    v45 = sub_29D937878();
    v46 = sub_29D93A298();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v90 = v48;
      *v47 = 136315138;
      v49 = sub_29D93AF08();
      v51 = sub_29D6C2364(v49, v50, &v90);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_29D677000, v45, v46, "[%s] Could not access action handler user data!", v47, 0xCu);
      sub_29D69417C(v48);
      MEMORY[0x29ED6BE30](v48, -1, -1);
      MEMORY[0x29ED6BE30](v47, -1, -1);
    }
  }
}

void sub_29D746D74(uint64_t a1, void *a2)
{
  v3 = v2;
  v35 = a2;
  v36 = sub_29D933CE8();
  v4 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D936638();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9346E8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x29EDC1748], v13);
  v18 = sub_29D9346D8();
  (*(v14 + 8))(v17, v13);
  v19 = type metadata accessor for ElectrocardiogramFeatureStatusOnboardingManagerDelegate();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC5HeartP33_83D08B8D42E0F7375EF54A8E4D22046B55ElectrocardiogramFeatureStatusOnboardingManagerDelegate_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A2443AA0;
  swift_unknownObjectWeakAssign();
  v38.receiver = v20;
  v38.super_class = v19;
  v21 = objc_msgSendSuper2(&v38, sel_init);
  sub_29D936B88();
  sub_29D936608();
  (*(v9 + 8))(v12, v8);
  sub_29D693E2C(v37, v37[3]);
  v22 = sub_29D936588();
  sub_29D933C88();
  v23 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v24 = sub_29D933BB8();
  v25 = [v23 initWithCalendar_];

  (*(v4 + 8))(v7, v36);
  LOBYTE(v33) = 0;
  v26 = [objc_allocWithZone(MEMORY[0x29EDC52B8]) initWithOnboardingType:v18 & 1 isFirstTimeOnboarding:(v18 & 1) == 0 healthStore:v22 dateCache:v25 provenance:4 delegate:v21 isSampleInteractive:v33];

  sub_29D69417C(v37);
  v27 = *(v3 + qword_2A1A23240);
  *(v3 + qword_2A1A23240) = v26;
  v28 = v26;

  v29 = *(v3 + qword_2A1A23238);
  *(v3 + qword_2A1A23238) = v21;
  v30 = v21;

  v31 = sub_29D74618C(v28);
  if (v31)
  {
    v32 = v31;
    [v35 presentViewController:v31 animated:1 completion:0];
  }
}

uint64_t sub_29D747144(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[qword_2A1A23240] = 0;
  *&v8[qword_2A1A23238] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

void sub_29D74725C()
{
  v1 = *(v0 + qword_2A1A23238);
}

void sub_29D7472B4(uint64_t a1)
{
  v2 = *(a1 + qword_2A1A23238);
}

void sub_29D74730C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[qword_2A1A23240];
    *&Strong[qword_2A1A23240] = 0;
  }
}

id sub_29D7473BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D7474C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D747508()
{
  result = qword_2A17B3928;
  if (!qword_2A17B3928)
  {
    type metadata accessor for ElectrocardiogramFeatureStatusActionHandler(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B3928);
  }

  return result;
}

uint64_t sub_29D747558@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C354(0);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74D860(v2, v12, sub_29D74C354);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29D938738();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_29D93A298();
    v15 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_29D74774C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v3 = sub_29D933AB8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v26 - v15;
  *a2 = swift_getKeyPath();
  sub_29D74C354(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for AFibBurdenAddDataView(0);
  v18 = (a2 + v17[7]);
  v27 = 0x3FE0000000000000;
  sub_29D939688();
  v19 = v29;
  *v18 = v28;
  v18[1] = v19;
  sub_29D9339E8();
  (*(v9 + 16))(v13, v16, v8);
  sub_29D939688();
  (*(v9 + 8))(v16, v8);
  v20 = a2 + v17[9];
  LOBYTE(v27) = 0;
  sub_29D939688();
  v21 = v29;
  *v20 = v28;
  *(v20 + 1) = v21;
  v22 = a2 + v17[10];
  LOBYTE(v27) = 0;
  sub_29D939688();
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v24 = v26;
  *(a2 + v17[5]) = v26;
  (*(v4 + 104))(v7, *MEMORY[0x29EDB9C78], v3);
  v25 = v24;
  sub_29D933AC8();
  (*(v4 + 8))(v7, v3);
  sub_29D933B08();
}

uint64_t sub_29D747A38@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  sub_29D74C618(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74D240(0);
  v31 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  v33 = v1;
  sub_29D74C798(0);
  sub_29D74C8E8(255);
  v13 = v12;
  sub_29D74C9EC(255);
  v15 = v14;
  sub_29D74CDE8(255);
  v17 = v16;
  v18 = sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC, MEMORY[0x29EDBC0F0]);
  v19 = sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8, MEMORY[0x29EDBBFF0]);
  v38 = v15;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_29D69AB60();
  v38 = v13;
  v39 = MEMORY[0x29EDC99B0];
  v40 = OpaqueTypeConformance2;
  v41 = v21;
  swift_getOpaqueTypeConformance2();
  sub_29D938848();
  v22 = sub_29D74D9E0(&qword_2A17B3A10, sub_29D74C618, MEMORY[0x29EDBBF20]);
  sub_29D939448();
  (*(v4 + 8))(v7, v3);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v36 = sub_29D9334A8();
  v37 = v23;
  v24 = (v30 + *(type metadata accessor for AFibBurdenAddDataView(0) + 36));
  v25 = *v24;
  v26 = *(v24 + 1);
  v34 = v25;
  v35 = v26;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  v38 = v3;
  v39 = v22;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  sub_29D939498();

  return (*(v29 + 8))(v11, v27);
}

id sub_29D747EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  sub_29D74C9EC(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C8E8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[8] = a1;
  sub_29D74CA9C(0);
  sub_29D74D9E0(&qword_2A17B39C0, sub_29D74CA9C, MEMORY[0x29EDBCC30]);
  sub_29D939278();
  v27[4] = a1;
  sub_29D74CDE8(0);
  v16 = v15;
  v17 = sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC, MEMORY[0x29EDBC0F0]);
  v18 = sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8, MEMORY[0x29EDBBFF0]);
  sub_29D9394C8();
  (*(v5 + 8))(v8, v4);
  result = [*(a1 + *(type metadata accessor for AFibBurdenAddDataView(0) + 20)) displayTypeController];
  if (result)
  {
    v20 = result;
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v21 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    v22 = [v20 displayTypeForObjectType_];

    if (v22)
    {
      v23 = [v22 localization];

      v24 = [v23 displayName];
      v22 = sub_29D939D68();
      v26 = v25;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27[14] = v22;
    v27[15] = v26;
    v27[10] = v4;
    v27[11] = v16;
    v27[12] = v17;
    v27[13] = v18;
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    sub_29D9393F8();

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D748274@<X0>(char *a1@<X8>)
{
  v37 = a1;
  sub_29D74CC78(0);
  v38 = *(v1 - 8);
  v39 = v1;
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v41 = &v32 - v6;
  sub_29D74CB24(0);
  v35 = v7;
  v33 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v40 = &v32 - v12;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v13 = sub_29D9334A8();
  v32 = &v32;
  v42 = v13;
  v43 = v14;
  MEMORY[0x2A1C7C4A8](v13, v14);
  sub_29D74CB44(0);
  v15 = MEMORY[0x29EDBCC30];
  sub_29D74D9E0(&qword_2A17B3A20, sub_29D74CB44, MEMORY[0x29EDBCC30]);
  sub_29D69AB60();
  v16 = v40;
  sub_29D9397F8();
  v42 = sub_29D9334A8();
  v43 = v17;
  MEMORY[0x2A1C7C4A8](v42, v17);
  sub_29D74CCFC(0);
  sub_29D74D9E0(&qword_2A17B3A28, sub_29D74CCFC, v15);
  v18 = v41;
  sub_29D9397F8();
  v20 = v33;
  v19 = v34;
  v21 = *(v33 + 16);
  v22 = v35;
  v21(v34, v16, v35);
  v23 = v38;
  v32 = *(v38 + 16);
  v24 = v36;
  v25 = v18;
  v26 = v39;
  v32(v36, v25, v39);
  v27 = v37;
  v21(v37, v19, v22);
  sub_29D74CE70(0, &qword_2A17B3978, sub_29D74CB24, sub_29D74CC78);
  v32(&v27[*(v28 + 48)], v24, v26);
  v29 = *(v23 + 8);
  v29(v41, v26);
  v30 = *(v20 + 8);
  v30(v40, v22);
  v29(v24, v26);
  return (v30)(v19, v22);
}

uint64_t sub_29D748744@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  sub_29D74CC0C();
  v4 = v3;
  v42 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v38 - v10;
  sub_29D74CF80(0, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v38 - v20;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v45 = sub_29D9334A8();
  v46 = v22;
  MEMORY[0x2A1C7C4A8](v45, v22);
  sub_29D69AB60();
  sub_29D9387A8();
  v23 = (a1 + *(type metadata accessor for AFibBurdenAddDataView(0) + 28));
  v24 = *v23;
  v25 = v23[1];
  *&v47 = v24;
  *(&v47 + 1) = v25;
  sub_29D74D170(0, &qword_2A17B3948, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  v47 = xmmword_29D945890;
  v44 = 0x3F847AE147AE147BLL;
  sub_29D74D930();
  sub_29D939738();
  v26 = v14;
  v27 = *(v14 + 16);
  v27(v18, v21, v13);
  v28 = v42;
  v40 = v11;
  v41 = v21;
  v29 = v11;
  v30 = *(v42 + 16);
  v30(v8, v29, v4);
  v39 = v8;
  v31 = v4;
  v32 = v43;
  v27(v43, v18, v13);
  sub_29D74CB78(0);
  v34 = v39;
  v30(&v32[*(v33 + 48)], v39, v31);
  v35 = *(v28 + 8);
  v35(v40, v31);
  v36 = *(v26 + 8);
  v36(v41, v13);
  v35(v34, v31);
  return (v36)(v18, v13);
}

uint64_t sub_29D748B84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D748BE8();
  sub_29D748CBC(v2, v3 & 1);
  sub_29D69AB60();
  result = sub_29D9392F8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_29D748BE8()
{
  type metadata accessor for AFibBurdenAddDataView(0);
  sub_29D74D170(0, &qword_2A17B3948, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  result = 0;
  if (v1 > 0.02)
  {
    sub_29D939698();
    return *&v1;
  }

  return result;
}

uint64_t sub_29D748CBC(uint64_t a1, char a2)
{
  v4 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D74D984(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    v13 = HKAFibBurdenClampedLowerBoundLocalizedString();

    v14 = sub_29D939D68();
    return v14;
  }

  else
  {
    v16[1] = a1;
    sub_29D933A78();
    sub_29D74D930();
    sub_29D9335C8();
    sub_29D74D9E0(&qword_2A17B3A48, sub_29D74D984, MEMORY[0x29EDB9AD0]);
    sub_29D939C48();
    (*(v8 + 8))(v11, v7);
    return v16[2];
  }
}

uint64_t sub_29D748EB4@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v1 = sub_29D938E18();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C3E8(0, &qword_2A17B3370, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D74CF80(0, &qword_2A17B2FC0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
  v42 = *(v6 - 8);
  v43 = v6;
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v45 = &v37 - v11;
  sub_29D74CF80(0, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
  v40 = v12;
  v38 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v37 - v17;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v47 = sub_29D9334A8();
  v48 = v19;
  MEMORY[0x2A1C7C4A8](v47, v19);
  sub_29D69AB60();
  v37 = v18;
  sub_29D9387A8();
  v47 = sub_29D9334A8();
  v48 = v20;
  type metadata accessor for AFibBurdenAddDataView(0);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  sub_29D938E08();
  v21 = v45;
  sub_29D9385F8();
  v23 = v38;
  v22 = v39;
  v24 = *(v38 + 16);
  v25 = v18;
  v26 = v40;
  v24(v39, v25, v40);
  v28 = v42;
  v27 = v43;
  v29 = *(v42 + 16);
  v29(v46, v21, v43);
  v30 = v44;
  v24(v44, v22, v26);
  sub_29D74CD30(0);
  v32 = &v30[*(v31 + 48)];
  v33 = v46;
  v29(v32, v46, v27);
  v34 = *(v28 + 8);
  v34(v45, v27);
  v35 = *(v23 + 8);
  v35(v37, v26);
  v34(v33, v27);
  return (v35)(v22, v26);
}

uint64_t sub_29D7493E8@<X0>(uint64_t a1@<X8>)
{
  sub_29D749444();
  sub_29D69AB60();
  result = sub_29D9392F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_29D749444()
{
  v0 = type metadata accessor for AFibBurdenAddDataView(0);
  MEMORY[0x2A1C7C4A8](v0, v1);
  v105 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29D937898();
  v103 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104, v3);
  v106 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  v132 = v5;
  v133 = v6;
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933CC8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29D9331D8();
  v15 = *(v124 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v124, v16);
  v101 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v109 = &v100 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v121 = &v100 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v100 - v26;
  sub_29D74D42C(0);
  v30 = MEMORY[0x2A1C7C4A8](v28 - 8, v29);
  v102 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v110 = &v100 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v120 = &v100 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v119 = &v100 - v40;
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v44 = &v100 - v43;
  MEMORY[0x2A1C7C4A8](v42, v45);
  v47 = &v100 - v46;
  result = [objc_opt_self() hk_mediumDateStyleIntervalFormatter];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v123 = result;
  v129 = v47;
  v49 = *(v11 + 104);
  v115 = *MEMORY[0x29EDB9CA0];
  v116 = v11 + 104;
  v114 = v49;
  v49(v14);
  v100 = v0;
  v50 = *(v0 + 32);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  v107 = v50;
  v113 = v51;
  sub_29D939698();
  sub_29D933AE8();
  v52 = *(v133 + 8);
  v108 = v9;
  v133 += 8;
  v112 = v52;
  v52(v9, v132);
  v53 = *(v11 + 8);
  v117 = v14;
  v118 = v11 + 8;
  v122 = v10;
  v111 = v53;
  v53(v14, v10);
  v54 = (v15 + 48);
  v55 = v124;
  v130 = *(v15 + 48);
  result = v130(v44, 1, v124);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v56 = objc_opt_self();
  v125 = *(v15 + 32);
  v126 = v15 + 32;
  v125(v27, v44, v55);
  v57 = sub_29D933148();
  v127 = *(v15 + 8);
  v128 = v15 + 8;
  v127(v27, v55);
  v58 = v131;
  v59 = sub_29D933BB8();
  v60 = sub_29D933BB8();
  v61 = [v56 hk:v57 julianDayDateIntervalFromOpenUpperBoundDateInterval:v59 sourceCalendar:v60 localCalendar:?];

  if (v61)
  {
    v62 = v119;
    sub_29D933168();

    v63 = 0;
    v64 = v129;
    v66 = v122;
    v65 = v123;
    v67 = v121;
  }

  else
  {
    v63 = 1;
    v64 = v129;
    v66 = v122;
    v65 = v123;
    v67 = v121;
    v62 = v119;
  }

  (*(v15 + 56))(v62, v63, 1, v55);
  sub_29D74D7F8(v62, v64, sub_29D74D42C);
  v68 = v120;
  sub_29D74D860(v64, v120, sub_29D74D42C);
  v121 = v54;
  v69 = v130(v68, 1, v55);
  v70 = v132;
  if (v69 == 1)
  {
    sub_29D74D8C8(v68, sub_29D74D42C);
  }

  else
  {
    v125(v67, v68, v55);
    v71 = v65;
    v72 = v67;
    v73 = sub_29D933148();
    v74 = [v71 stringFromDateInterval_];

    if (v74)
    {
      v75 = sub_29D939D68();

      v127(v72, v55);
LABEL_21:
      sub_29D74D8C8(v64, sub_29D74D42C);
      return v75;
    }

    v127(v72, v55);
    v65 = v71;
  }

  v76 = v117;
  v114(v117, v115, v66);
  v77 = v108;
  sub_29D939698();
  v78 = v58;
  v79 = v110;
  sub_29D933AE8();
  v112(v77, v70);
  v111(v76, v66);
  result = v130(v79, 1, v55);
  if (result == 1)
  {
    goto LABEL_24;
  }

  v80 = v109;
  v125(v109, v79, v55);
  v81 = sub_29D933148();
  v127(v80, v55);
  v82 = [v65 stringFromDateInterval_];

  if (v82)
  {
    v75 = sub_29D939D68();

    v64 = v129;
    goto LABEL_21;
  }

  v83 = v106;
  sub_29D937858();
  v84 = v105;
  sub_29D74D860(v78, v105, type metadata accessor for AFibBurdenAddDataView);
  v85 = sub_29D937878();
  v86 = sub_29D93A298();
  if (!os_log_type_enabled(v85, v86))
  {

    sub_29D74D8C8(v84, type metadata accessor for AFibBurdenAddDataView);
    (*(v103 + 8))(v83, v104);
    v64 = v129;
    goto LABEL_18;
  }

  v87 = v77;
  v88 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v134 = v89;
  *v88 = 136446466;
  *(v88 + 4) = sub_29D6C2364(0xD000000000000015, 0x800000029D9458C0, &v134);
  *(v88 + 12) = 2080;
  v90 = v117;
  v91 = v122;
  v114(v117, v115, v122);
  sub_29D939698();
  v92 = v102;
  sub_29D933AE8();
  v93 = v87;
  v94 = v124;
  v112(v93, v132);
  v111(v90, v91);
  result = v130(v92, 1, v94);
  if (result != 1)
  {
    v95 = v101;
    v125(v101, v92, v94);
    sub_29D74D9E0(&qword_2A17B3A30, MEMORY[0x29EDB98E8], MEMORY[0x29EDB9910]);
    v96 = sub_29D93AD38();
    v98 = v97;
    v127(v95, v94);
    sub_29D74D8C8(v84, type metadata accessor for AFibBurdenAddDataView);
    v99 = sub_29D6C2364(v96, v98, &v134);

    *(v88 + 14) = v99;
    _os_log_impl(&dword_29D677000, v85, v86, "[%{public}s] Unable to format date interval of %s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v89, -1, -1);
    MEMORY[0x29ED6BE30](v88, -1, -1);

    (*(v103 + 8))(v106, v104);
    v65 = v123;
    v64 = v129;
LABEL_18:
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v75 = sub_29D9334A8();

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_29D74A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  sub_29D74CE70(0, &qword_2A17B39D0, sub_29D74CEEC, sub_29D74D050);
  v23[0] = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = v23 - v5;
  sub_29D74D050(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D938E68();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  sub_29D74CEEC(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938E38();
  v23[8] = a1;
  sub_29D74CF80(0, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  sub_29D74CFD4();
  sub_29D9386E8();
  sub_29D938E48();
  v23[4] = a1;
  sub_29D74D0C0(0);
  sub_29D74D1C0();
  sub_29D9386E8();
  v21 = *(v23[0] + 48);
  (*(v17 + 16))(v6, v20, v16);
  (*(v9 + 16))(&v6[v21], v12, v8);
  sub_29D938CD8();
  (*(v9 + 8))(v12, v8);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_29D74A460(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenAddDataView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v5);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v10[0] = sub_29D9334A8();
  v10[1] = v6;
  sub_29D74D860(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFibBurdenAddDataView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_29D74D7F8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AFibBurdenAddDataView);
  sub_29D69AB60();
  return sub_29D939708();
}

uint64_t sub_29D74A61C(uint64_t a1)
{
  v2 = sub_29D938B68();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C354(0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D938738();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74D860(a1, v10, sub_29D74C354);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    sub_29D93A298();
    v16 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_29D938728();
  return (*(v12 + 8))(v15, v11);
}

void sub_29D74A890(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AFibBurdenAddDataView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v20 = sub_29D9334A8();
  v21 = v8;
  sub_29D74D860(a1, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AFibBurdenAddDataView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_29D74D7F8(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for AFibBurdenAddDataView);
  sub_29D69AB60();
  sub_29D939708();
  v11 = (a1 + *(v4 + 40));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v20) = v12;
  v21 = v13;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  v14 = v19[15];
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_29D74D0C0(0);
  v18 = (a2 + *(v17 + 36));
  *v18 = KeyPath;
  v18[1] = sub_29D74D334;
  v18[2] = v16;
}

uint64_t sub_29D74AAFC(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenAddDataView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v7 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D74C3E8(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v21[-v10];
  v12 = (a1 + *(v3 + 48));
  v13 = *v12;
  v14 = *(v12 + 1);
  v21[16] = v13;
  v22 = v14;
  v21[15] = 1;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396A8();
  v15 = sub_29D93A028();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_29D74D860(a1, v7, type metadata accessor for AFibBurdenAddDataView);
  sub_29D939FF8();
  v16 = sub_29D939FE8();
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x29EDCA390];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_29D74D7F8(v7, v18 + v17, type metadata accessor for AFibBurdenAddDataView);
  sub_29D6BEBA4(0, 0, v11, &unk_29D945980, v18);
}

uint64_t sub_29D74AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_29D938738();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_29D937898();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = sub_29D939FF8();
  v4[15] = sub_29D939FE8();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_29D74AED8;

  return sub_29D74B778();
}

uint64_t sub_29D74AED8()
{
  v2 = *v1;
  v2[17] = v0;

  v4 = sub_29D939FD8();
  v2[18] = v4;
  v2[19] = v3;
  if (v0)
  {
    v5 = sub_29D74B344;
  }

  else
  {
    v5 = sub_29D74B038;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D74B038(uint64_t a1)
{
  v12 = v1;
  sub_29D937858();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_29D6C2364(0xD000000000000015, 0x800000029D9458C0, &v11);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Successfully saved sample", v8, 0xCu);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  return MEMORY[0x2A1C73D48](sub_29D74B1A0, 0, 0);
}

uint64_t sub_29D74B1A0(uint64_t a1)
{
  *(v1 + 160) = sub_29D939FE8();
  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D74B22C, v3, v2);
}

uint64_t sub_29D74B22C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_29D747558(v1);
  sub_29D938728();
  (*(v2 + 8))(v1, v3);
  v4 = v0[18];
  v5 = v0[19];

  return MEMORY[0x2A1C73D48](sub_29D74B2C8, v4, v5);
}

uint64_t sub_29D74B2C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D74B344(uint64_t a1)
{
  v20 = v1;
  v2 = v1[17];
  sub_29D937858();
  v3 = v2;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[17];
    v8 = v1[11];
    v7 = v1[12];
    v9 = v1[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_29D6C2364(0xD000000000000015, 0x800000029D9458C0, &v19);
    *(v10 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Error when saving sample: %@", v10, 0x16u);
    sub_29D74D8C8(v11, sub_29D6ACA98);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v1[11];
    v15 = v1[12];
    v17 = v1[10];

    (*(v16 + 8))(v15, v17);
  }

  return MEMORY[0x2A1C73D48](sub_29D74B550, 0, 0);
}

uint64_t sub_29D74B550(uint64_t a1)
{
  *(v1 + 168) = sub_29D939FE8();
  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D74B5DC, v3, v2);
}

uint64_t sub_29D74B5DC()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for AFibBurdenAddDataView(0);
  v3 = (v1 + *(v2 + 36));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 176) = 1;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396A8();
  v6 = (v1 + *(v2 + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 177) = 0;
  sub_29D9396A8();
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);

  return MEMORY[0x2A1C73D48](sub_29D74B6F0, v9, v10);
}

uint64_t sub_29D74B6F0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D74B778()
{
  v1[36] = v0;
  v2 = sub_29D933D38();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v3 = sub_29D9339F8();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v4 = sub_29D933CC8();
  v1[44] = v4;
  v1[45] = *(v4 - 8);
  v1[46] = swift_task_alloc();
  sub_29D74D42C(0);
  v1[47] = swift_task_alloc();
  v5 = sub_29D9331D8();
  v1[48] = v5;
  v1[49] = *(v5 - 8);
  v1[50] = swift_task_alloc();
  sub_29D939FF8();
  v1[51] = sub_29D939FE8();
  v7 = sub_29D939FD8();
  v1[52] = v7;
  v1[53] = v6;

  return MEMORY[0x2A1C73D48](sub_29D74B9B8, v7, v6);
}

uint64_t sub_29D74B9B8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v46 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  v47 = *(v0 + 320);
  v48 = *(v0 + 384);
  v7 = type metadata accessor for AFibBurdenAddDataView(0);
  (*(v3 + 104))(v2, *MEMORY[0x29EDB9CA0], v4);
  v45 = v7;
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  sub_29D933AE8();
  v44 = *(v6 + 8);
  v44(v5, v47);
  (*(v3 + 8))(v2, v4);
  v8 = (*(v1 + 48))(v46, 1, v48);
  if (v8 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 296);
    (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 376), *(v0 + 384));
    sub_29D74C3E8(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    *(inited + 32) = sub_29D939D68();
    *(inited + 40) = v13;
    sub_29D933CA8();
    v14 = sub_29D933D08();
    (*(v10 + 8))(v9, v11);
    v15 = [v14 name];

    v16 = sub_29D939D68();
    v18 = v17;

    *(inited + 72) = MEMORY[0x29EDC99B0];
    *(inited + 48) = v16;
    *(inited + 56) = v18;
    sub_29D73F010(inited);
    swift_setDeallocating();
    sub_29D74D8C8(inited + 32, sub_29D74D460);
    sub_29D748BE8();
    if (v19)
    {
      v20 = sub_29D939D68();
      v22 = v21;
      v23 = sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
      v24 = sub_29D93A6D8();
      *(v0 + 248) = v23;
      *(v0 + 224) = v24;
      sub_29D6940E0((v0 + 224), (v0 + 256));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C((v0 + 256), v20, v22, isUniquelyReferenced_nonNull_native);
    }

    v27 = *(v0 + 336);
    v26 = *(v0 + 344);
    v42 = *(v0 + 288);
    v43 = *(v0 + 320);
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v28 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    v29 = [objc_opt_self() percentUnit];
    v30 = COERCE_DOUBLE(sub_29D748BE8());
    if (v31)
    {
      v32 = 0.02;
    }

    else
    {
      v32 = v30;
    }

    v33 = [objc_opt_self() quantityWithUnit:v29 doubleValue:v32];

    sub_29D9331A8();
    sub_29D933178();
    v34 = sub_29D933958();
    v35 = sub_29D933958();
    v36 = sub_29D939C58();

    v37 = [objc_opt_self() quantitySampleWithType:v28 quantity:v33 startDate:v34 endDate:v35 metadata:v36];
    *(v0 + 432) = v37;

    v44(v27, v43);
    v44(v26, v43);
    v38 = *(v42 + *(v45 + 20));
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_29D74BF68;
    v39 = swift_continuation_init();
    sub_29D74D4C4(0);
    *(v0 + 216) = v40;
    *(v0 + 160) = MEMORY[0x29EDCA5F8];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_29D806FD4;
    *(v0 + 184) = &unk_2A2443B50;
    *(v0 + 192) = v39;
    [v38 saveObject:v37 withCompletion:?];
    v8 = v0 + 16;
  }

  return MEMORY[0x2A1C73CC0](v8);
}

uint64_t sub_29D74BF68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  v3 = *(v1 + 424);
  v4 = *(v1 + 416);
  if (v2)
  {
    v5 = sub_29D74C17C;
  }

  else
  {
    v5 = sub_29D74C098;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D74C098()
{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[49];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D74C17C()
{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[49];

  swift_willThrow();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D74C268@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D69AB60();
  result = sub_29D9392F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t type metadata accessor for AFibBurdenAddDataView(uint64_t a1)
{
  result = qword_2A17B3938;
  if (!qword_2A17B3938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D74C3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D74C460(uint64_t a1)
{
  sub_29D74C3E8(319, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v2 <= 0x3F)
    {
      sub_29D933CE8();
      if (v3 <= 0x3F)
      {
        sub_29D74D170(319, &qword_2A17B3948, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
        if (v4 <= 0x3F)
        {
          sub_29D74C3E8(319, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
          if (v5 <= 0x3F)
          {
            sub_29D74D170(319, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_29D74C618(uint64_t a1)
{
  if (!qword_2A17B3950)
  {
    sub_29D9387D8();
    sub_29D74C798(255);
    sub_29D74C8E8(255);
    sub_29D74C9EC(255);
    sub_29D74CDE8(255);
    sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC, MEMORY[0x29EDBC0F0]);
    sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8, MEMORY[0x29EDBBFF0]);
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29D938858();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3950);
    }
  }
}

void sub_29D74C798(uint64_t a1)
{
  if (!qword_2A17B3958)
  {
    sub_29D74C8E8(255);
    sub_29D74C9EC(255);
    sub_29D74CDE8(255);
    sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC, MEMORY[0x29EDBC0F0]);
    sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8, MEMORY[0x29EDBBFF0]);
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3958);
    }
  }
}

void sub_29D74C8E8(uint64_t a1)
{
  if (!qword_2A17B3960)
  {
    sub_29D74C9EC(255);
    sub_29D74CDE8(255);
    sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC, MEMORY[0x29EDBC0F0]);
    sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8, MEMORY[0x29EDBBFF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3960);
    }
  }
}

void sub_29D74C9EC(uint64_t a1)
{
  if (!qword_2A17B3968)
  {
    sub_29D74CA9C(255);
    sub_29D74D9E0(&qword_2A17B39C0, sub_29D74CA9C, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939288();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3968);
    }
  }
}

void sub_29D74CA9C(uint64_t a1)
{
  if (!qword_2A17B3970)
  {
    sub_29D74CE70(255, &qword_2A17B3978, sub_29D74CB24, sub_29D74CC78);
    v1 = sub_29D9398E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3970);
    }
  }
}

void sub_29D74CB78(uint64_t a1)
{
  if (!qword_2A17B3990)
  {
    sub_29D74CF80(255, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29D74CC0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3990);
    }
  }
}

void sub_29D74CC0C()
{
  if (!qword_2A17B39A0)
  {
    v0 = sub_29D939748();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B39A0);
    }
  }
}

void sub_29D74CC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D939838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D74CD30(uint64_t a1)
{
  if (!qword_2A17B39B8)
  {
    sub_29D74CF80(255, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29D74CF80(255, &qword_2A17B2FC0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B39B8);
    }
  }
}

void sub_29D74CDE8(uint64_t a1)
{
  if (!qword_2A17B39C8)
  {
    sub_29D74CE70(255, &qword_2A17B39D0, sub_29D74CEEC, sub_29D74D050);
    v1 = sub_29D938CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B39C8);
    }
  }
}

void sub_29D74CE70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D74CEEC(uint64_t a1)
{
  if (!qword_2A17B39D8)
  {
    sub_29D74CF80(255, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29D74CFD4();
    v1 = sub_29D9386F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B39D8);
    }
  }
}

void sub_29D74CF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x29EDBCA18], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D74CFD4()
{
  result = qword_2A17B3618;
  if (!qword_2A17B3618)
  {
    sub_29D74CF80(255, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3618);
  }

  return result;
}

void sub_29D74D050(uint64_t a1)
{
  if (!qword_2A17B39E0)
  {
    sub_29D74D0C0(255);
    sub_29D74D1C0();
    v1 = sub_29D9386F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B39E0);
    }
  }
}

void sub_29D74D0C0(uint64_t a1)
{
  if (!qword_2A17B39E8)
  {
    sub_29D74CF80(255, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29D74D170(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B39E8);
    }
  }
}

void sub_29D74D170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D74D1C0()
{
  result = qword_2A17B39F0;
  if (!qword_2A17B39F0)
  {
    sub_29D74D0C0(255);
    sub_29D74CFD4();
    sub_29D72883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B39F0);
  }

  return result;
}

void sub_29D74D240(uint64_t a1)
{
  if (!qword_2A17B3A08)
  {
    sub_29D74C618(255);
    sub_29D74D9E0(&qword_2A17B3A10, sub_29D74C618, MEMORY[0x29EDBBF20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3A08);
    }
  }
}

uint64_t sub_29D74D33C(uint64_t a1)
{
  v4 = *(type metadata accessor for AFibBurdenAddDataView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D74AD64(a1, v6, v7, v1 + v5);
}

void sub_29D74D460()
{
  if (!qword_2A17B3750)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3750);
    }
  }
}

void sub_29D74D4C4(uint64_t a1)
{
  if (!qword_2A17B72C0)
  {
    sub_29D6A0CD0();
    v1 = sub_29D93A038();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B72C0);
    }
  }
}

uint64_t sub_29D74D548()
{
  v1 = type metadata accessor for AFibBurdenAddDataView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_29D74C354(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D938738();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[6];
  v8 = sub_29D933CE8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v5 + v1[8];
  v10 = sub_29D9339F8();
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D74D76C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AFibBurdenAddDataView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_29D74D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D74D860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D74D8C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D74D930()
{
  result = qword_2A17B3A38;
  if (!qword_2A17B3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3A38);
  }

  return result;
}

void sub_29D74D984(uint64_t a1)
{
  if (!qword_2A17B3A40)
  {
    sub_29D74D930();
    v1 = sub_29D9335D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3A40);
    }
  }
}

uint64_t sub_29D74D9E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D74DA28(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29D74EBE8(a1);
  if ((v9 & 1) == 0)
  {
    v34 = v8;
    if ([v3 selectedIndex] != v8)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v35 = sub_29D937898();
      sub_29D69C6C0(v35, qword_2A1A2C008);
      v36 = v3;
      v37 = a1;
      v38 = sub_29D937878();
      v39 = sub_29D93A2A8();

      if (os_log_type_enabled(v38, v39))
      {
        v88 = a3;
        v40 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v90 = v87;
        *v40 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v41 = sub_29D939DA8();
        v86 = v39;
        v43 = a2;
        v44 = sub_29D6C2364(v41, v42, &v90);

        *(v40 + 4) = v44;
        a2 = v43;
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
        *(v40 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v45 = sub_29D939DA8();
        v47 = sub_29D6C2364(v45, v46, &v90);

        *(v40 + 24) = v47;
        _os_log_impl(&dword_29D677000, v38, v86, "[%{public}s.%{public}s] %{public}s already presented in a different tab. Switching to that tab.", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v87, -1, -1);
        v48 = v40;
        a3 = v88;
        MEMORY[0x29ED6BE30](v48, -1, -1);
      }

      [v36 setSelectedIndex_];
    }

    if (sub_29D74EE40(a1, v34))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v49 = sub_29D937898();
      sub_29D69C6C0(v49, qword_2A1A2C008);
      v50 = v4;
      v51 = a1;
      sub_29D935E88();
      v52 = sub_29D937878();
      v53 = sub_29D93A2A8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = v89;
        *v54 = 136446978;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v55 = sub_29D939DA8();
        v57 = sub_29D6C2364(v55, v56, &v90);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2082;
        *(v54 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
        *(v54 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v58 = sub_29D939DA8();
        v60 = a3;
        v61 = sub_29D6C2364(v58, v59, &v90);

        *(v54 + 24) = v61;
        a3 = v60;
        *(v54 + 32) = 2082;
        v62 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
        v63 = MEMORY[0x29ED6A340](a2, v62);
        v65 = sub_29D6C2364(v63, v64, &v90);

        *(v54 + 34) = v65;
        _os_log_impl(&dword_29D677000, v52, v53, "[%{public}s.%{public}s] %{public}s is the topmost VC. Presenting %{public}s ontop.", v54, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v89, -1, -1);
        MEMORY[0x29ED6BE30](v54, -1, -1);
      }

      v66 = [v50 selectedViewController];
      if (!v66)
      {
        return;
      }

      v67 = v66;
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v69 = v68;
        v70 = v67;
        v71 = [v69 viewControllers];
        sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
        v72 = sub_29D939F38();

        v90 = v72;
        v73 = sub_29D935E88();
        sub_29D88BCD4(v73);
        v33 = sub_29D939F18();

        [v69 setViewControllers:v33 animated:a3 & 1];

        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v74 = sub_29D937898();
      sub_29D69C6C0(v74, qword_2A1A2C008);
      v75 = v4;
      v76 = a1;
      v67 = sub_29D937878();
      v77 = sub_29D93A2A8();

      if (os_log_type_enabled(v67, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v90 = v79;
        *v78 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v80 = sub_29D939DA8();
        v82 = sub_29D6C2364(v80, v81, &v90);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2082;
        *(v78 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
        *(v78 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v83 = sub_29D939DA8();
        v85 = sub_29D6C2364(v83, v84, &v90);

        *(v78 + 24) = v85;
        _os_log_impl(&dword_29D677000, v67, v77, "[%{public}s.%{public}s] %{public}s is not the topmost VC. We will not mess with the view hierarchy.", v78, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v79, -1, -1);
        MEMORY[0x29ED6BE30](v78, -1, -1);
      }
    }

    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2C008);
  v11 = v3;
  v12 = a1;
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v90 = v16;
    *v15 = 136446722;
    swift_getObjectType();
    sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
    v17 = sub_29D939DA8();
    v19 = sub_29D6C2364(v17, v18, &v90);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
    *(v15 + 22) = 2082;
    swift_getObjectType();
    sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
    v20 = sub_29D939DA8();
    v22 = sub_29D6C2364(v20, v21, &v90);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s.%{public}s] %{public}s not already presented. Presenting now.", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  v23 = [v11 selectedViewController];
  if (v23)
  {
    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      sub_29D6A0C58();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D940030;
      *(inited + 32) = v12;
      v90 = inited;
      v28 = v12;
      sub_29D935E88();
      v29 = v24;
      sub_29D88BCD4(a2);
      v30 = v90;
      v31 = [v26 viewControllers];
      sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
      v32 = sub_29D939F38();

      v90 = v32;
      sub_29D88BCD4(v30);
      v33 = sub_29D939F18();

      [v26 setViewControllers:v33 animated:a3 & 1];

LABEL_23:
      return;
    }
  }
}

void sub_29D74E500(void *a1, char a2)
{
  v5 = sub_29D74EBE8(a1);
  if (v6)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v2;
    v9 = a1;
    v10 = sub_29D937878();
    v11 = sub_29D93A2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v50 = v13;
      *v12 = 136446722;
      swift_getObjectType();
      sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v50);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_29D6C2364(0xD00000000000001CLL, 0x800000029D95E5A0, &v50);
      *(v12 + 22) = 2082;
      swift_getObjectType();
      sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
      v17 = sub_29D939DA8();
      v19 = sub_29D6C2364(v17, v18, &v50);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s] %{public}s not already presented. Presenting now.", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    v20 = [v8 selectedViewController];
    if (v20)
    {
      v21 = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (!v22)
      {
      }
    }

    else
    {
      v22 = 0;
    }

    [v22 pushViewController:v9 animated:a2 & 1];
  }

  else
  {
    v23 = v5;
    if ([v2 selectedIndex] == v5)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v24 = sub_29D937898();
      sub_29D69C6C0(v24, qword_2A1A2C008);
      v25 = v2;
      v26 = a1;
      oslog = sub_29D937878();
      v27 = sub_29D93A2A8();

      if (os_log_type_enabled(oslog, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50 = v29;
        *v28 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v30 = sub_29D939DA8();
        v32 = sub_29D6C2364(v30, v31, &v50);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        *(v28 + 14) = sub_29D6C2364(0xD00000000000001CLL, 0x800000029D95E5A0, &v50);
        *(v28 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v33 = sub_29D939DA8();
        v35 = sub_29D6C2364(v33, v34, &v50);

        *(v28 + 24) = v35;
        _os_log_impl(&dword_29D677000, oslog, v27, "[%{public}s.%{public}s] %{public}s already presented.", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v29, -1, -1);
        MEMORY[0x29ED6BE30](v28, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v36 = sub_29D937898();
      sub_29D69C6C0(v36, qword_2A1A2C008);
      v37 = v2;
      v38 = a1;
      v39 = sub_29D937878();
      v40 = sub_29D93A2A8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50 = v42;
        *v41 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v43 = sub_29D939DA8();
        v45 = sub_29D6C2364(v43, v44, &v50);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        *(v41 + 14) = sub_29D6C2364(0xD00000000000001CLL, 0x800000029D95E5A0, &v50);
        *(v41 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v46 = sub_29D939DA8();
        v48 = sub_29D6C2364(v46, v47, &v50);

        *(v41 + 24) = v48;
        _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s.%{public}s] %{public}s already presented in a different tab. Switching to that tab.", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v42, -1, -1);
        MEMORY[0x29ED6BE30](v41, -1, -1);
      }

      [v37 setSelectedIndex_];
    }
  }
}

unint64_t sub_29D74EBE8(uint64_t a1)
{
  v2 = [v1 viewControllers];
  if (v2)
  {
    v3 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
    v4 = sub_29D939F38();

    if (v4 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
    {
      v2 = 0;
      v6 = v4 & 0xC000000000000001;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = v4 + 32;
      v9 = &off_29F357000;
      v22 = v4 & 0xC000000000000001;
      v23 = i;
      v20 = v4 + 32;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = v3;
      v26 = v4;
      while (2)
      {
        if (v6)
        {
          v10 = MEMORY[0x29ED6AE30](v2, v4);
          v11 = (v2 + 1);
          if (!__OFADD__(v2, 1))
          {
LABEL_8:
            v25 = v11;
            v27 = v10;
            v12 = [v10 v9[431]];
            v13 = sub_29D939F38();

            v4 = v13 & 0xFFFFFFFFFFFFFF8;
            if (v13 >> 62)
            {
              v14 = sub_29D93A928();
            }

            else
            {
              v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            for (j = 0; v14 != j; ++j)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x29ED6AE30](j, v13);
              }

              else
              {
                if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_26;
                }

                v16 = *(v13 + 8 * j + 32);
              }

              v17 = v16;
              if (__OFADD__(j, 1))
              {
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }

              ObjectType = swift_getObjectType();
              v3 = swift_getObjectType();

              if (ObjectType == v3)
              {

                return v2;
              }
            }

            v3 = v24;
            v2 = v25;
            v6 = v22;
            v4 = v26;
            v8 = v20;
            v7 = v21;
            v9 = &off_29F357000;
            if (v25 != v23)
            {
              continue;
            }

            goto LABEL_30;
          }
        }

        else
        {
          if (v2 >= *(v7 + 16))
          {
            goto LABEL_28;
          }

          v10 = *(v8 + 8 * v2);
          v11 = (v2 + 1);
          if (!__OFADD__(v2, 1))
          {
            goto LABEL_8;
          }
        }

        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    return 0;
  }

  return v2;
}

uint64_t sub_29D74EE40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 viewControllers];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v8 = sub_29D939F38();

  if (a2 < 0)
  {
    goto LABEL_17;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a2)
    {
      goto LABEL_5;
    }

LABEL_17:

    return 0;
  }

  result = sub_29D93A928();
  if (result <= a2)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x29ED6AE30](a2, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
    {
      __break(1u);
      goto LABEL_24;
    }

    v9 = *(v8 + 8 * a2 + 32);
  }

  a2 = v9;

  v10 = [a2 childViewControllers];
  v7 = sub_29D939F38();

  if (!(v7 >> 62))
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v11 = sub_29D93A928();
  if (!v11)
  {
LABEL_22:

    return 0;
  }

LABEL_10:
  v12 = __OFSUB__(v11, 1);
  result = v11 - 1;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_25:
    MEMORY[0x29ED6AE30](result, v7);

    ObjectType = swift_getObjectType();
    sub_29D936978();
    return ObjectType == swift_getObjectType();
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v7 + 8 * result + 32);

    ObjectType = swift_getObjectType();

    return ObjectType == swift_getObjectType();
  }

  __break(1u);
  return result;
}

uint64_t sub_29D74F050(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_29D74F0A0()
{
  [*(*sub_29D693E2C(&v0[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v0[OBJC:sel_removeHeartRhythmAvailabilityObserver_ IVAR:v0 :? :? :? TtC5Heart36BradycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BradycardiaAdvertisableFeatureSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BradycardiaAdvertisableFeatureSource(uint64_t a1)
{
  result = qword_2A17B3A80;
  if (!qword_2A17B3A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D74F280()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D9334A8();
  v3 = v2;
  v4 = sub_29D9334A8();
  v6 = v5;
  v7 = v0;
  v8 = sub_29D939D28();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:{v7, 0xE000000000000000}];

  return MEMORY[0x2A1C60BA0](v1, v3, v4, v6, v9);
}

void sub_29D74F434(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29D74FD94(a2, a3);
  }
}

uint64_t sub_29D74F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D939998();
  v13 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v5 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);

  sub_29D939988();
  v26 = MEMORY[0x29EDCA190];
  sub_29D750EDC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D750EDC(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v25);
}

void *sub_29D74F7D0(uint64_t a1, void (*a2)(char *))
{
  v3 = MEMORY[0x29EDCA180];
  sub_29D750F34(0, &qword_2A17B1710, MEMORY[0x29EDCA180] + 8);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v9 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_29D934928();
    sub_29D750EDC(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    sub_29D93AEA8();
    a2(v7);
    return sub_29D750FD0(v7, &qword_2A17B1710, v3 + 8);
  }

  return result;
}

uint64_t sub_29D74F8F8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D939998();
  v13 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  aBlock[4] = sub_29D750F24;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2443C20;
  v19 = _Block_copy(aBlock);

  sub_29D939988();
  v23 = MEMORY[0x29EDCA190];
  sub_29D750EDC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D750EDC(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void *sub_29D74FC14(uint64_t a1, char a2, void (*a3)(char *))
{
  v5 = MEMORY[0x29EDCA180];
  sub_29D750F34(0, &qword_2A17B1710, MEMORY[0x29EDCA180] + 8);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a2)
    {
      [objc_opt_self() bradycardiaThresholdHeartRate];
      v11 = sub_29D93A138();
    }

    else
    {
      v11 = 0;
    }

    [objc_opt_self() setBradycardiaThresholdHeartRate_];

    sub_29D934928();
    sub_29D750EDC(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    sub_29D93AEA8();
    a3(v9);

    return sub_29D750FD0(v9, &qword_2A17B1710, v5 + 8);
  }

  return result;
}

uint64_t sub_29D74FD94(void (*a1)(uint64_t), uint64_t a2)
{
  v75 = a2;
  v76 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29D937898();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v69 = &v66 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v66 = &v66 - v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v67 = &v66 - v16;
  sub_29D750F34(0, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
  v74 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v73 = &v66 - v19;
  v20 = sub_29D9339F8();
  v68 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D933A58();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = (v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider);
  sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider), *(v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider + 24));
  sub_29D852AAC();
  if (!v30 || (v31 = v30, v32 = HKNRDeviceCapabilityHeartRateV2(), sub_29D933A38(), v32, v33 = sub_29D933A28(), (*(v25 + 8))(v28, v24), v34 = [v31 supportsCapability_], v31, v33, !v34))
  {
    sub_29D937848();
    v51 = sub_29D937878();
    v52 = sub_29D93A2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v53 = 136315394;
      v55 = sub_29D93AF08();
      v57 = sub_29D6C2364(v55, v56, &v77);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      _os_log_impl(&dword_29D677000, v51, v52, "[%s] %s -> false: heart rate motion context not supported on active watch", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v54, -1, -1);
      MEMORY[0x29ED6BE30](v53, -1, -1);
    }

    (*(v72 + 8))(v8, v71);
    goto LABEL_18;
  }

  v35 = objc_opt_self();
  if ([v35 isBackgroundHeartRateEnabled])
  {
    v36 = *sub_29D693E2C(v29, v29[3]);
    sub_29D852AAC();
    if (!v37 || (v38 = v37, v39 = *(v36 + 16), sub_29D9339E8(), v40 = sub_29D933958(), (*(v68 + 8))(v23, v20), v41 = [v39 isHeartAgeGatingEnabledOnWatch:v38 currentDate:v40], v38, v40, (v41 & 1) == 0))
    {
      if (([v35 isBradycardiaDetectionEnabled] & 1) == 0)
      {
        v64 = v73;
        *v73 = 1;
        goto LABEL_19;
      }

      v42 = v67;
      sub_29D937848();
      v43 = sub_29D937878();
      v44 = sub_29D93A2A8();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_17;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315394;
      v61 = sub_29D93AF08();
      v63 = sub_29D6C2364(v61, v62, &v77);

      *(v45 + 4) = v63;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      v50 = "[%s] %s -> false: detection already enabled";
      goto LABEL_16;
    }

    v42 = v66;
    sub_29D937848();
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315394;
      v47 = sub_29D93AF08();
      v49 = sub_29D6C2364(v47, v48, &v77);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      v50 = "[%s] %s -> false: heart age gating enabled on active watch";
LABEL_16:
      _os_log_impl(&dword_29D677000, v43, v44, v50, v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }
  }

  else
  {
    v42 = v69;
    sub_29D937848();
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315394;
      v58 = sub_29D93AF08();
      v60 = sub_29D6C2364(v58, v59, &v77);

      *(v45 + 4) = v60;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v77);
      v50 = "[%s] %s -> false: background heart rate not enabled";
      goto LABEL_16;
    }
  }

LABEL_17:

  (*(v72 + 8))(v42, v71);
LABEL_18:
  v64 = v73;
  *v73 = 0;
LABEL_19:
  swift_storeEnumTagMultiPayload();
  v76(v64);
  return sub_29D750FD0(v64, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
}

uint64_t sub_29D7505C4(uint64_t a1)
{
  result = sub_29D934718();
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

uint64_t sub_29D750678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_identifier;
  v4 = sub_29D934718();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D750740(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7507AC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

uint64_t sub_29D750870()
{
  v1 = sub_29D939968();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939998();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = *(v0 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29D750E40;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2443BD0;
  v12 = _Block_copy(aBlock);

  sub_29D939988();
  v14[1] = MEMORY[0x29EDCA190];
  sub_29D750EDC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D750EDC(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void *sub_29D750B54(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_29D74FD94(sub_29D750E60, a1);
  }

  return result;
}

void sub_29D750BD0(uint64_t a1, uint64_t a2)
{
  sub_29D750F34(0, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v9[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D750E68(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D750FD0(v6, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
LABEL_6:
        swift_getObjectType();
        sub_29D750EDC(&qword_2A17B3A98, type metadata accessor for BradycardiaAdvertisableFeatureSource, &unk_29D945A08);
        sub_29D934A38();

        sub_29D936978();
        return;
      }
    }
  }
}

uint64_t sub_29D750E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D750E68(uint64_t a1, uint64_t a2)
{
  sub_29D750F34(0, &qword_2A17B3A90, MEMORY[0x29EDC9A98]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D750EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D750F34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29D934928();
    sub_29D750EDC(&qword_2A17B1718, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    v4 = sub_29D93AEB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D750FD0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_29D750F34(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D751038()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t protocol witness for RawStringContaining.rawString.getter in conformance HKHRAFibBurdenLoggingCategory()
{
  if (*v0 > 4uLL)
  {
    return 0;
  }

  else
  {
    return sub_29D939E58();
  }
}

unint64_t sub_29D7510F4()
{
  result = qword_2A1A22260;
  if (!qword_2A1A22260)
  {
    sub_29D75114C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22260);
  }

  return result;
}

void sub_29D75114C(uint64_t a1)
{
  if (!qword_2A1A22268)
  {
    type metadata accessor for HKHRAFibBurdenLoggingCategory(255);
    v1 = sub_29D939FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22268);
    }
  }
}

id sub_29D7511A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v0 setNumberStyle_];

  [v0 setRoundingMode_];
  result = [v0 setMaximumFractionDigits_];
  qword_2A17D0950 = v0;
  return result;
}

uint64_t sub_29D751228(double a1)
{
  v3 = sub_29D93A048();
  v4 = [v1 stringFromNumber_];

  if (v4)
  {
    v5 = sub_29D939D68();

    return v5;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v1;
    v9 = sub_29D937878();
    v10 = sub_29D93A298();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 134218242;
      *(v11 + 4) = a1;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_29D677000, v9, v10, "Unable to format double %f using %@.", v11, 0x16u);
      sub_29D6ACA3C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    v14.n128_f64[0] = a1;

    return MEMORY[0x2A1C72718](v14);
  }
}

uint64_t sub_29D7513E4(uint64_t a1)
{
  v3 = sub_29D93A138();
  v4 = [v1 stringFromNumber_];

  if (v4)
  {
    v5 = sub_29D939D68();

    return v5;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v1;
    v9 = sub_29D937878();
    v10 = sub_29D93A298();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 134218242;
      *(v11 + 4) = a1;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_29D677000, v9, v10, "Unable to format int %ld using %@.", v11, 0x16u);
      sub_29D6ACA3C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    return sub_29D93AD38();
  }
}

unint64_t sub_29D751594()
{
  result = qword_2A1A21FD0;
  if (!qword_2A1A21FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A21FD0);
  }

  return result;
}

unint64_t sub_29D7515F4()
{
  result = qword_2A17B3AA0;
  if (!qword_2A17B3AA0)
  {
    sub_29D75164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3AA0);
  }

  return result;
}

void sub_29D75164C()
{
  if (!qword_2A17B3AA8)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3AA8);
    }
  }
}

unint64_t sub_29D7516B0()
{
  result = qword_2A17B3AB0;
  if (!qword_2A17B3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3AB0);
  }

  return result;
}

uint64_t sub_29D751768()
{
  sub_29D69417C((v0 + 24));
  v1 = OBJC_IVAR____TtCC5Heart27RelatedSampleTypesGenerator11Environment_logger;
  v2 = sub_29D937898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D751814@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_29D934148();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933FE8();
  sub_29D754194(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x29EDC3740], v7);
  sub_29D6E4080(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  v11 = *(v1 + 8);
  sub_29D7546B8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  v13 = *v1;
  *(inited + 32) = *v1;
  sub_29D935E88();
  v14 = v13;
  v15 = sub_29D7DB0E8(inited, v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D8E8608(v15);

  (*(v3 + 104))(v6, *MEMORY[0x29EDC3898], v2);
  return sub_29D934168();
}

uint64_t sub_29D751AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a3;
  v51 = a4;
  sub_29D753DCC(0);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D753EF0(0);
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D753F84(0);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D754054(0);
  v23 = *(v22 - 8);
  v49 = v22;
  v50 = v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v44 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = *(a1 + 8);
  v53 = *(a1 + 16);
  v28 = v26;
  sub_29D935E88();
  sub_29D738808(&v53, v52);

  sub_29D753630(v27, a3, a1, a2);
  v30 = v29;

  sub_29D6AA360(&v53);
  v52[0] = v30;
  sub_29D753E60(0);
  sub_29D754194(0, &qword_2A17B3B18, sub_29D753E60, MEMORY[0x29EDC9A40]);
  sub_29D75490C(&qword_2A17B3AE0, sub_29D753E60, MEMORY[0x29EDB8A00]);
  sub_29D7540E8();
  sub_29D9381D8();
  sub_29D75490C(&qword_2A17B3AF0, sub_29D753DCC, MEMORY[0x29EDB89D8]);
  v31 = v42;
  sub_29D9384E8();
  (*(v43 + 8))(v11, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = v41;
  v33 = *(a1 + 16);
  *(v32 + 24) = *a1;
  *(v32 + 40) = v33;
  *(v32 + 56) = *(a1 + 32);
  *(v32 + 64) = a2;
  v34 = v28;
  sub_29D935E88();
  sub_29D738808(&v53, v52);
  sub_29D7546B8(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D75490C(&qword_2A17B3B00, sub_29D753EF0, MEMORY[0x29EDB89A0]);

  v35 = v45;
  sub_29D9384C8();

  (*(v46 + 8))(v16, v35);
  v52[0] = MEMORY[0x29EDCA190];
  sub_29D75490C(&qword_2A17B3B10, sub_29D753F84, MEMORY[0x29EDB8990]);
  v36 = v44;
  v37 = v47;
  sub_29D938448();
  (*(v48 + 8))(v21, v37);
  sub_29D75490C(&qword_2A17B3B28, sub_29D754054, MEMORY[0x29EDB88C8]);
  v38 = v49;
  v39 = sub_29D938418();
  result = (*(v50 + 8))(v36, v38);
  *v51 = v39;
  return result;
}

uint64_t sub_29D752070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[0] = a1;
  v6 = sub_29D93A218();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7547C8(0, &qword_2A17B3B48, sub_29D754874);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v34 - v14;
  sub_29D7548DC(0);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7546B8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D940030;
  *(v21 + 32) = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:a1 predicate:0];
  v22 = [objc_opt_self() sortDescriptorsForMostRecentSamples];
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  sub_29D939F38();

  sub_29D93A228();

  sub_29D754874(0);
  sub_29D75490C(&qword_2A17B3B58, MEMORY[0x29EDC2E58], MEMORY[0x29EDC2E50]);
  sub_29D938468();
  (*(v7 + 8))(v10, v6);
  v23 = *a2;
  v41 = *(a2 + 8);
  v40 = *(a2 + 16);
  v24 = swift_allocObject();
  v26 = v34[0];
  v25 = v34[1];
  *(v24 + 16) = a3;
  *(v24 + 24) = v25;
  v27 = *(a2 + 16);
  *(v24 + 32) = *a2;
  *(v24 + 48) = v27;
  *(v24 + 64) = *(a2 + 32);
  *(v24 + 72) = v26;

  v28 = v23;
  sub_29D753C5C(&v41, v39);
  sub_29D738808(&v40, v39);
  type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  v29 = v26;
  v30 = v35;
  sub_29D9380E8();

  (*(v36 + 8))(v15, v30);
  sub_29D75490C(&qword_2A17B3B68, sub_29D7548DC, MEMORY[0x29EDB8908]);
  v31 = v37;
  v32 = sub_29D938418();
  (*(v38 + 8))(v20, v31);
  return v32;
}

void sub_29D7524E8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v82 = a4;
  v79 = a5;
  sub_29D754194(0, &qword_2A1A25768, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v80 = &v64 - v11;
  v12 = sub_29D9340F8();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v64 - v19;
  v21 = sub_29D7541F8(*a1);
  v81 = a3;
  sub_29D752BF8(a3, v21, v20);

  if (!v5)
  {
    v72 = a2;
    v73 = v17;
    v77 = 0;
    sub_29D754194(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v22 = *(v13 + 72);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v67 = *(v13 + 80);
    v68 = v22;
    v69 = v24;
    v25 = swift_allocObject();
    v74 = xmmword_29D93DDB0;
    *(v25 + 16) = xmmword_29D93DDB0;
    v26 = *(v13 + 16);
    v70 = v23;
    v66 = v13 + 16;
    v65 = v26;
    v26(v25 + v23, v20, v12);
    v27 = sub_29D693E2C((v82 + 24), *(v82 + 48));
    v29 = v81[2];
    v28 = v81[3];
    sub_29D693E2C(v27, v27[3]);
    v30 = v80;
    v71 = v29;
    v78 = v28;
    sub_29D934128();
    v31 = (*(v13 + 48))(v30, 1, v12);
    v75 = v13;
    v76 = v20;
    if (v31 == 1)
    {
      v32 = v25;
      sub_29D754518(v30);
      v33 = *v81;
      v86 = v81[1];
      sub_29D935E88();
      v34 = v33;
      sub_29D753C5C(&v86, &v84);
      v35 = sub_29D937878();
      v36 = sub_29D93A268();

      sub_29D7545A4(&v86);

      v37 = os_log_type_enabled(v35, v36);
      v38 = v72;
      if (v37)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v83 = v38;
        v84 = v40;
        *v39 = 136446466;
        sub_29D75461C();
        v41 = sub_29D939DA8();
        v43 = sub_29D6C2364(v41, v42, &v84);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        *(v39 + 14) = sub_29D6C2364(v71, v78, &v84);
        _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s(%{public}s)]: No previous feed item found, adding new feed item.", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v40, -1, -1);
        MEMORY[0x29ED6BE30](v39, -1, -1);
      }

      v44 = v79;
      sub_29D7546B8(0, &qword_2A1A21F60, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
      v45 = swift_allocObject();
      *(v45 + 16) = v74;
      *(v45 + 32) = v32;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      (*(v75 + 8))(v76, v12);
      *v44 = v45;
    }

    else
    {
      v46 = v73;
      v47 = v12;
      (*(v13 + 32))(v73, v30, v12);
      v48 = *v81;
      v85[0] = v81[1];
      v49 = v48;
      sub_29D753C5C(v85, &v84);
      sub_29D935E88();
      v50 = sub_29D937878();
      v51 = sub_29D93A268();

      sub_29D7545A4(v85);

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 136446466;
        v83 = v72;
        v84 = v53;
        sub_29D75461C();
        v54 = sub_29D939DA8();
        v56 = sub_29D6C2364(v54, v55, &v84);
        v46 = v73;

        *(v52 + 4) = v56;
        *(v52 + 12) = 2082;
        *(v52 + 14) = sub_29D6C2364(v71, v78, &v84);
        _os_log_impl(&dword_29D677000, v50, v51, "[%{public}s(%{public}s)]: Previous feed item found, returning changes", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v53, -1, -1);
        MEMORY[0x29ED6BE30](v52, -1, -1);
      }

      v57 = v70;
      v58 = swift_allocObject();
      *(v58 + 16) = v74;
      v65(v58 + v57, v46, v47);
      v59 = v77;
      v60 = sub_29D939F58();
      if (v59)
      {

        v61 = *(v75 + 8);
        v61(v46, v47);
        v61(v76, v47);
      }

      else
      {
        v62 = v60;

        v63 = *(v75 + 8);
        v63(v46, v47);
        v63(v76, v47);
        *v79 = v62;
      }
    }
  }
}

uint64_t sub_29D752BF8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  v27 = a2;
  sub_29D754664();
  v11 = sub_29D9330E8();
  v13 = v12;

  if (!v3)
  {
    v15 = a1[2];
    v23 = v13;
    v24 = v15;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_29D935E88();
    v17 = NSStringFromClass(ObjCClassFromMetadata);
    v22 = sub_29D939D68();
    v25 = a1;

    (*(v7 + 104))(v10, *MEMORY[0x29EDC3740], v6);
    v18 = v23;
    sub_29D6AA230(v11, v23);
    sub_29D933FE8();
    sub_29D9340A8();
    sub_29D7546B8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D940030;
    v20 = *v25;
    *(inited + 32) = *v25;
    v21 = v20;
    sub_29D6E3D70(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934088();
    sub_29D934078();
    return sub_29D6AA284(v11, v18);
  }

  return result;
}

id sub_29D752E78@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_29D93A928();
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_6:
      *a2 = result;
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x29ED6AE30](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_29D752EFC@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v44 = a5;
  sub_29D754194(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v43 - v11;
  v13 = *a1;
  v14 = *a3;
  v48 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = v14;
  sub_29D753C5C(&v48, &v47);
  v18 = v13;
  v45 = a4;
  sub_29D935E88();
  v19 = sub_29D937878();
  v20 = sub_29D93A278();

  sub_29D7545A4(&v48);

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v18;
    v23 = v22;
    v46 = a2;
    v47 = v22;
    *v21 = 136446978;
    sub_29D75461C();
    v24 = sub_29D939DA8();
    v26 = sub_29D6C2364(v24, v25, &v47);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_29D6C2364(v15, v16, &v47);
    *(v21 + 22) = 2080;
    if (v13)
    {
      v27 = 0x646E756F66;
    }

    else
    {
      v27 = 0x6E756F6620746F6ELL;
    }

    if (v13)
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE900000000000064;
    }

    v29 = sub_29D6C2364(v27, v28, &v47);

    *(v21 + 24) = v29;
    *(v21 + 32) = 2080;
    v30 = [v45 identifier];
    v31 = sub_29D939D68();
    v33 = v32;

    v34 = sub_29D6C2364(v31, v33, &v47);

    *(v21 + 34) = v34;
    _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s(%{public}s)]: Recent sample %s for %s", v21, 0x2Au);
    swift_arrayDestroy();
    v35 = v23;
    v18 = v43;
    MEMORY[0x29ED6BE30](v35, -1, -1);
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  if (v13)
  {
    v36 = [v18 endDate];
    sub_29D933998();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = sub_29D9339F8();
  (*(*(v38 - 8) + 56))(v12, v37, 1, v38);
  v39 = v44;
  *v44 = v45;
  v40 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  sub_29D6B1204(v12, v39 + *(v40 + 20));
  v41 = v45;

  return v41;
}

uint64_t sub_29D753288()
{
  v1 = OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_configuration);

  return swift_deallocClassInstance();
}

uint64_t sub_29D753388(uint64_t a1)
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

uint64_t sub_29D753458(uint64_t a1)
{
  result = sub_29D937898();
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

uint64_t sub_29D753500(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29D753548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D7535B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D753630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_29D93A928();
    if (!v5)
    {
      return;
    }

    v33 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v30 = sub_29D93A8C8();
    v31 = v6;
    v32 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v33 = MEMORY[0x29EDCA190];
  sub_29D93AAD8();
  v7 = sub_29D93A898();
  v8 = *(a1 + 36);
  v30 = v7;
  v31 = v8;
  v32 = 0;
LABEL_7:
  v9 = 0;
  while (v9 < v5)
  {
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_31;
    }

    v13 = v30;
    v12 = v31;
    v14 = v32;
    sub_29D703A78(v30, v31, v32, a1);
    v16 = v15;
    sub_29D752070(v15, a3, a4);

    sub_29D93AAB8();
    sub_29D93AAE8();
    sub_29D93AAF8();
    sub_29D93AAC8();
    if (v26)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      if (sub_29D93A8E8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_29D753CDC(0, &qword_2A17B3B40, MEMORY[0x29EDC9B88]);
      v10 = sub_29D93A108();
      sub_29D93A978();
      v10(v29, 0);
      if (v9 == v5)
      {
LABEL_28:
        sub_29D703574(v30, v31, v32);
        return;
      }
    }

    else
    {
      if (v14)
      {
        goto LABEL_36;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v13 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v13 >> 6;
      v19 = *(a1 + 56 + 8 * (v13 >> 6));
      if (((v19 >> v13) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v13 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_29D703574(v13, v12, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        sub_29D703574(v13, v12, 0);
      }

LABEL_27:
      v30 = v17;
      v31 = v12;
      v32 = 0;
      if (v9 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t *sub_29D753950(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v28 = *v3;
  sub_29D6CE508(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D934178();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v31 = *(a1 + 1);
  v19 = *a1;
  v30 = a1[1];
  v18 = v30;
  v20 = v3 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_configuration;
  *v20 = v19;
  *(v20 + 1) = v18;
  *(v20 + 4) = *(a1 + 4);
  v21 = v17;
  sub_29D753C5C(&v31, v29);
  sub_29D738808(&v30, v29);
  sub_29D751814(v16);
  (*(v13 + 32))(v3 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_domain, v16, v12);
  v22 = swift_allocObject();
  v23 = a1[1];
  *(v22 + 16) = *a1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a1 + 4);
  *(v22 + 56) = a2;
  *(v22 + 64) = v28;
  v24 = v21;
  sub_29D753C5C(&v31, v29);
  sub_29D738808(&v30, v29);
  sub_29D6CE59C(0);
  sub_29D75490C(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);

  sub_29D938378();
  sub_29D75490C(&qword_2A1A24A00, sub_29D6CE508, MEMORY[0x29EDB8AE8]);
  v25 = sub_29D938418();
  (*(v8 + 8))(v11, v7);
  *(v3 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_publisher) = v25;
  return v3;
}

uint64_t sub_29D753C5C(uint64_t a1, uint64_t a2)
{
  sub_29D753CDC(0, &qword_2A1A22248, MEMORY[0x29EDC9B90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D753CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &qword_2A1A24930, 0x29EDBAD78);
    v7 = sub_29D753D58();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D753D58()
{
  result = qword_2A1A24920;
  if (!qword_2A1A24920)
  {
    sub_29D69567C(255, &qword_2A1A24930, 0x29EDBAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24920);
  }

  return result;
}

void sub_29D753DCC(uint64_t a1)
{
  if (!qword_2A17B3AD0)
  {
    sub_29D753E60(255);
    sub_29D75490C(&qword_2A17B3AE0, sub_29D753E60, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9381C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3AD0);
    }
  }
}

void sub_29D753E60(uint64_t a1)
{
  if (!qword_2A17B3AD8)
  {
    type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(255);
    sub_29D6A0CD0();
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3AD8);
    }
  }
}

void sub_29D753EF0(uint64_t a1)
{
  if (!qword_2A17B3AE8)
  {
    sub_29D753DCC(255);
    sub_29D75490C(&qword_2A17B3AF0, sub_29D753DCC, MEMORY[0x29EDB89D8]);
    v1 = sub_29D938188();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3AE8);
    }
  }
}

void sub_29D753F84(uint64_t a1)
{
  if (!qword_2A17B3AF8)
  {
    sub_29D753EF0(255);
    sub_29D7546B8(255, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D75490C(&qword_2A17B3B00, sub_29D753EF0, MEMORY[0x29EDB89A0]);
    v1 = sub_29D938178();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3AF8);
    }
  }
}

void sub_29D754054(uint64_t a1)
{
  if (!qword_2A17B3B08)
  {
    sub_29D753F84(255);
    sub_29D75490C(&qword_2A17B3B10, sub_29D753F84, MEMORY[0x29EDB8990]);
    v1 = sub_29D9380A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3B08);
    }
  }
}

unint64_t sub_29D7540E8()
{
  result = qword_2A17B3B20;
  if (!qword_2A17B3B20)
  {
    sub_29D754194(255, &qword_2A17B3B18, sub_29D753E60, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3B20);
  }

  return result;
}

void sub_29D754194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29D7541F8(uint64_t a1)
{
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v40 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_29D73F430(MEMORY[0x29EDCA190]);
  v16 = *(a1 + 16);
  if (!v16)
  {
    return v15;
  }

  v17 = *(v10 + 20);
  v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v38 = *(v11 + 72);
  v39 = v17;
  while (1)
  {
    sub_29D754708(v18, v14);
    v20 = [*v14 identifier];
    v21 = sub_29D939D68();
    v23 = v22;

    sub_29D6A0A20(v14 + v39, v9);
    sub_29D75476C(v14);
    sub_29D6943BC(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v15;
    v25 = sub_29D6907F0(v21, v23);
    v27 = v15[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v15[3] < v30)
    {
      sub_29D6913D4(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_29D6907F0(v21, v23);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v31)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v36 = v25;
    sub_29D693480();
    v25 = v36;
    if (v31)
    {
LABEL_3:
      v19 = v25;

      v15 = v41;
      sub_29D72EE5C(v6, v41[7] + *(v40 + 72) * v19);
      goto LABEL_4;
    }

LABEL_11:
    v15 = v41;
    v41[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v15[6] + 16 * v25);
    *v33 = v21;
    v33[1] = v23;
    sub_29D6943BC(v6, v15[7] + *(v40 + 72) * v25);
    v34 = v15[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    v15[2] = v35;
LABEL_4:
    v18 += v38;
    if (!--v16)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_29D93ADC8();
  __break(1u);
  return result;
}

uint64_t sub_29D754518(uint64_t a1)
{
  sub_29D754194(0, &qword_2A1A25768, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D7545A4(uint64_t a1)
{
  sub_29D753CDC(0, &qword_2A1A22248, MEMORY[0x29EDC9B90]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D75461C()
{
  result = qword_2A17B3B30;
  if (!qword_2A17B3B30)
  {
    type metadata accessor for RelatedSampleTypesGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B3B30);
  }

  return result;
}

unint64_t sub_29D754664()
{
  result = qword_2A17B3B38;
  if (!qword_2A17B3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3B38);
  }

  return result;
}

void sub_29D7546B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D754708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75476C(uint64_t a1)
{
  v2 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7547C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29D93A218();
    a3(255);
    sub_29D75490C(&qword_2A17B3B58, MEMORY[0x29EDC2E58], MEMORY[0x29EDC2E50]);
    v5 = sub_29D9380F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D754874(uint64_t a1)
{
  if (!qword_2A17B3B50)
  {
    sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3B50);
    }
  }
}

uint64_t sub_29D75490C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D75497C(uint64_t a1)
{
  sub_29D69567C(319, &qword_2A1A24930, 0x29EDBAD78);
  if (v1 <= 0x3F)
  {
    sub_29D754194(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D754A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29D754A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D754BA4()
{
  v1 = v0;
  v2 = type metadata accessor for HypertensionNotificationDetailView(0);
  v3 = (v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v26[-v9];
  v11 = sub_29D933D88();
  v12 = [v0 objectAtIndex:v11 forSection:sub_29D933DA8()];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  v14 = sub_29D6F82E0();
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = [v1 healthStore];
  *v10 = swift_getKeyPath();
  sub_29D755978(0, &qword_2A17B2398, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v17 = v10 + v3[8];
  v27 = 0;
  sub_29D939688();
  v18 = v29;
  *v17 = v28;
  *(v17 + 1) = v18;
  v19 = v10 + v3[9];
  v27 = 0;
  sub_29D939688();
  v20 = v29;
  *v19 = v28;
  *(v19 + 1) = v20;
  v21 = v10 + v3[10];
  *v21 = v15;
  *(v21 + 1) = v13;
  v21[16] = 3;
  *(v10 + v3[11]) = v16;
  *(v10 + v3[7]) = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v16];
  sub_29D7559DC(v10, v7);
  sub_29D755A40(0);
  v23 = objc_allocWithZone(v22);
  v24 = sub_29D939A28();
  swift_unknownObjectRelease_n();

  sub_29D755AFC(v10);
  return v24;
}

id sub_29D755184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionEventListDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29D7551EC(uint64_t a1, void *a2, void *a3)
{
  v56[1] = a2;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D694294(a1, v59);
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  v10 = v58;
  v11 = sub_29D939D28();
  v12 = [a3 dequeueReusableCellWithIdentifier_];

  v13 = v12;
  if (!v12)
  {
    v14 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
    v15 = sub_29D939D28();
    v16 = [v14 initWithStyle:3 reuseIdentifier:v15];

    if (v16)
    {
      v13 = v16;
      goto LABEL_5;
    }

    __break(1u);
LABEL_18:
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

LABEL_5:
  v56[0] = v10;
  v17 = v12;
  v18 = [v13 textLabel];

  if (v18)
  {
    v19 = [objc_opt_self() localizedPossibleHypertensionTitle];
    [v18 setText_];
  }

  v20 = [v13 detailTextLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [v56[0] endDate];
    sub_29D933998();

    v23 = sub_29D933958();
    (*(v6 + 8))(v9, v5);
    v24 = HKLocalizedStringForDateAndTemplate();

    [v21 setText_];
  }

  v25 = [v13 detailTextLabel];
  if (v25)
  {
    v26 = v25;
    v27 = [objc_opt_self() secondaryLabelColor];
    [v26 setTextColor_];
  }

  [v13 setAccessoryType_];
  [v13 setSelectionStyle_];
  sub_29D755978(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v28 = swift_allocObject();
  v57 = xmmword_29D93DDB0;
  *(v28 + 16) = xmmword_29D93DDB0;
  v29 = sub_29D933D98();
  v30 = MEMORY[0x29EDC9C10];
  *(v28 + 56) = MEMORY[0x29EDC9BA8];
  *(v28 + 64) = v30;
  *(v28 + 32) = v29;
  v31 = sub_29D939D88();
  v33 = v32;
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = v57;
  *(inited + 32) = v31;
  *(inited + 40) = v33;
  sub_29D935E88();
  v35 = v13;
  static String.hypertensionAccessibilityIdentifier(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v36 = sub_29D939D28();

  [v35 setAccessibilityIdentifier_];

  v37 = swift_allocObject();
  *(v37 + 16) = v57;
  v38 = sub_29D933D98();
  *(v37 + 56) = MEMORY[0x29EDC9BA8];
  *(v37 + 64) = MEMORY[0x29EDC9C10];
  *(v37 + 32) = v38;
  v39 = sub_29D939D88();
  v41 = v40;
  v42 = [v35 textLabel];
  if (v42)
  {
    v43 = v42;
    v44 = swift_initStackObject();
    *(v44 + 16) = v57;
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
    sub_29D935E88();
    static String.hypertensionAccessibilityIdentifier(_:)(v44);
    swift_setDeallocating();
    swift_arrayDestroy();
    v45 = sub_29D939D28();

    [v43 setAccessibilityIdentifier_];
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v57;
  v47 = sub_29D933D98();
  *(v46 + 56) = MEMORY[0x29EDC9BA8];
  *(v46 + 64) = MEMORY[0x29EDC9C10];
  *(v46 + 32) = v47;
  v48 = sub_29D939D88();
  v50 = v49;
  v51 = [v35 detailTextLabel];
  if (v51)
  {
    v52 = v51;
    v53 = swift_initStackObject();
    *(v53 + 16) = v57;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    sub_29D935E88();
    static String.hypertensionAccessibilityIdentifier(_:)(v53);
    swift_setDeallocating();
    swift_arrayDestroy();
    v54 = sub_29D939D28();

    [v52 setAccessibilityIdentifier_];
  }

  else
  {

    v54 = v56[0];
  }

  return v35;
}

void sub_29D755978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7559DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D755A40(uint64_t a1)
{
  if (!qword_2A17B3B88)
  {
    type metadata accessor for HypertensionNotificationDetailView(255);
    sub_29D755AA4();
    v1 = sub_29D939A38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3B88);
    }
  }
}

unint64_t sub_29D755AA4()
{
  result = qword_2A17B3B90;
  if (!qword_2A17B3B90)
  {
    type metadata accessor for HypertensionNotificationDetailView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3B90);
  }

  return result;
}

uint64_t sub_29D755AFC(uint64_t a1)
{
  v2 = type metadata accessor for HypertensionNotificationDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource(uint64_t a1)
{
  result = qword_2A17B3B98;
  if (!qword_2A17B3B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D755C44()
{
  sub_29D935BA8();

  return swift_deallocClassInstance();
}

uint64_t sub_29D755C7C()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  sub_29D935F18();
  v5 = sub_29D935CF8();
  sub_29D936978();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29D755D9C(uint64_t a1)
{
  v38 = sub_29D933A58();
  v37 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v1);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_29D9334A8();

  v6 = [v4 bundleForClass_];
  sub_29D9334A8();

  sub_29D934B38();
  v7 = objc_opt_self();
  v8 = [v7 heartbeatSeriesType];
  sub_29D934B08();

  v9 = [v7 heartbeatSeriesType];
  sub_29D934B18();

  sub_29D69F108(&v49, &v45);
  v40 = v46;
  v39 = v45;
  v41 = v47;
  if (*(&v46 + 1))
  {
    sub_29D679D3C(&v39, v42);
    v10 = MEMORY[0x29EDCA190];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_29D68FAC0(0, v10[2] + 1, 1, v10);
      v48 = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_29D68FAC0((v12 > 1), v13 + 1, 1, v10);
      v48 = v10;
    }

    v14 = v43;
    v15 = v44;
    v16 = sub_29D693DDC(v42, v43);
    MEMORY[0x2A1C7C4A8](v16, v16);
    v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_29D693D44(v13, v18, &v48, v14, v15);
    sub_29D69417C(v42);
  }

  else
  {
    sub_29D69F230(&v39);
    v10 = MEMORY[0x29EDCA190];
  }

  sub_29D69F108(&v50, &v45);
  v40 = v46;
  v39 = v45;
  v41 = v47;
  if (*(&v46 + 1))
  {
    sub_29D679D3C(&v39, v42);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    if ((v20 & 1) == 0)
    {
      v10 = sub_29D68FAC0(0, v10[2] + 1, 1, v10);
      v48 = v10;
    }

    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      v10 = sub_29D68FAC0((v21 > 1), v22 + 1, 1, v10);
      v48 = v10;
    }

    v23 = v43;
    v24 = v44;
    v25 = sub_29D693DDC(v42, v43);
    MEMORY[0x2A1C7C4A8](v25, v25);
    v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_29D693D44(v22, v27, &v48, v23, v24);
    sub_29D69417C(v42);
  }

  else
  {
    sub_29D69F230(&v39);
  }

  sub_29D756818(0, &qword_2A17B1830, sub_29D69F188, MEMORY[0x29EDC9C68]);
  swift_arrayDestroy();
  sub_29D756818(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D775BD0(v10);

  v29 = v36;
  sub_29D933A48();
  sub_29D933A18();
  v30 = *(v37 + 8);
  v31 = v38;
  v30(v29, v38);
  sub_29D9359C8();
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(&v45, "MutableArray<");
  HIWORD(v45) = -4864;
  sub_29D933A48();
  v32 = sub_29D933A18();
  v34 = v33;
  v30(v29, v31);
  MEMORY[0x29ED6A240](v32, v34);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D935B28();
}

uint64_t sub_29D756570(uint64_t a1)
{
  if (sub_29D936368() > 1u)
  {
    sub_29D935248();
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource(0);

    sub_29D935418();
  }

  else
  {
    v1 = sub_29D936338();
    type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource(0);
    swift_allocObject();
    sub_29D755D9C(v1);

    sub_29D935438();

    sub_29D9353F8();

    sub_29D935248();

    sub_29D935408();
  }

  sub_29D75673C(0);
  sub_29D7567C0();

  v2 = sub_29D9353F8();

  return v2;
}

void sub_29D75673C(uint64_t a1)
{
  if (!qword_2A17B3BA8)
  {
    type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource(255);
    sub_29D935248();
    v1 = sub_29D935C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3BA8);
    }
  }
}

unint64_t sub_29D7567C0()
{
  result = qword_2A17B3BB0;
  if (!qword_2A17B3BB0)
  {
    sub_29D75673C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3BB0);
  }

  return result;
}

void sub_29D756818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D75687C()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  v1 = sub_29D939D28();
  [v0 setDateTemplate_];

  qword_2A17D0978 = v0;
}

uint64_t sub_29D7568EC()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v1 = v0 + *(type metadata accessor for AFibBurdenPDFChartHeaderContentProvider(0) + 20);
  v2 = [*(v1 + *(type metadata accessor for AFibBurdenPDFChartViewModel(0) + 28)) localization];
  v3 = [v2 displayName];

  v4 = sub_29D939D68();
  v6 = v5;

  v7 = sub_29D756A80();
  v9 = v8;
  sub_29D6CC0B8(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  v11 = MEMORY[0x29EDC99B0];
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v12 = sub_29D69AD24();
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = v7;
  *(v10 + 80) = v9;
  v13 = sub_29D939D88();

  return v13;
}

uint64_t sub_29D756A80()
{
  v1 = &v0[*(type metadata accessor for AFibBurdenPDFChartHeaderContentProvider(0) + 20)];
  v2 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  v3 = v1[*(v2 + 32)];
  if (v3 == 2)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    return sub_29D9334A8();
  }

  else
  {
    v5 = v2;
    v6 = *&v1[*(v2 + 28)];
    v7 = [v6 presentation];
    v8 = sub_29D93A048();
    v9 = [v7 adjustedValueForDaemonValue_];

    v10 = [v6 presentation];
    v11 = sub_29D93A048();
    v12 = [v10 adjustedValueForDaemonValue_];

    if ((v3 & 1) == 0 || *v0)
    {
      v15 = sub_29D8A4D08(*v0);
      v16 = *&v1[*(v5 + 24)];
      if ([v9 isEqualToNumber_])
      {
        [v9 doubleValue];
        v18 = [objc_opt_self() quantityWithUnit:v16 doubleValue:v17];
        v19 = [v18 localizedStringForType_];
        v20 = sub_29D939D68();
      }

      else
      {
        v21 = objc_opt_self();
        [v9 doubleValue];
        v23 = v22;
        v24 = objc_opt_self();
        v25 = [v24 quantityWithUnit:v16 doubleValue:v23];
        [v12 doubleValue];
        v26 = [v24 quantityWithUnit:v16 doubleValue:?];
        v27 = [v21 inclusiveRangeWithMinimum:v25 maximum:v26];

        v28 = [v27 localizedStringForType_];
        v20 = sub_29D939D68();
      }

      return v20;
    }

    else
    {
      v13 = HKAFibBurdenClampedLowerBoundLocalizedString();
      v14 = sub_29D939D68();

      return v14;
    }
  }
}

uint64_t type metadata accessor for AFibBurdenPDFChartHeaderContentProvider(uint64_t a1)
{
  result = qword_2A17B3BB8;
  if (!qword_2A17B3BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D756E64(uint64_t a1)
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D756EE0()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC2008];
  sub_29D75AB90(0, &qword_2A17B3C58, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280], MEMORY[0x29EDC2008]);
  v65 = *(v3 - 8);
  v66 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v60 = &v56 - v8;
  sub_29D75AAFC(0);
  v63 = *(v9 - 8);
  v64 = v9;
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v59 = &v56 - v14;
  sub_29D75AB90(0, &unk_2A17B6110, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78], v2);
  v61 = v15;
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v56 = &v56 - v22;
  v62 = sub_29D9371A8();
  v67 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D75A6F4(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  v28 = MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v56 - v32;
  v34 = sub_29D9399A8();
  v35 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = (&v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D6FC794();
  *v38 = sub_29D93A468();
  (*(v35 + 104))(v38, *MEMORY[0x29EDCA278], v34);
  LOBYTE(v2) = sub_29D9399B8();
  result = (*(v35 + 8))(v38, v34);
  if (v2)
  {
    v40 = *(v1 + 32);
    v41 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
    swift_beginAccess();
    sub_29D6E8508(v1 + v41, v33);
    v42 = qword_2A17D08C0;
    swift_beginAccess();

    sub_29D70D908(v33, v40 + v42);
    swift_endAccess();
    sub_29D710DE8();

    sub_29D6AC7A0(v33);
    sub_29D6E8508(v1 + v41, v30);
    v43 = v62;
    if ((*(v67 + 48))(v30, 1, v62) == 1)
    {
      sub_29D6AC7A0(v30);
      v44 = *MEMORY[0x29EDC1FF8];
      (*(v16 + 104))(v20, v44, v61);

      sub_29D935528();

      (*(v65 + 104))(v58, v44, v66);

      sub_29D935528();

      (*(v63 + 104))(v57, v44, v64);

      sub_29D935528();
    }

    else
    {
      v45 = v67;
      (*(v67 + 32))(v25, v30, v43);
      v58 = sub_29D9371B8();
      v46 = [v58 areAllRequirementsSatisfied];
      v47 = *MEMORY[0x29EDC2000];
      v48 = *MEMORY[0x29EDC1FF8];
      if (v46)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      (*(v16 + 104))(v56, v49, v61);

      sub_29D935528();

      v50 = sub_29D9371B8();
      v51 = [v50 areAllRequirementsSatisfied];

      if (v51)
      {
        v52 = v47;
      }

      else
      {
        v52 = v48;
      }

      (*(v63 + 104))(v59, v52, v64);

      sub_29D935528();

      v53 = sub_29D9371B8();
      v54 = [v53 areAllRequirementsSatisfied];

      if (v51 & 1 | ((v54 & 1) == 0))
      {
        v55 = v48;
      }

      else
      {
        v55 = v47;
      }

      (*(v65 + 104))(v60, v55, v66);

      sub_29D935528();

      return (*(v45 + 8))(v25, v43);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29D75765C(uint64_t a1, void *a2)
{
  v58 = a2;
  v63 = a1;
  *&v69 = sub_29D936058();
  v68 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69, v3);
  v67 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29D9362D8();
  v65 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66, v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29D936D58();
  v61 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62, v7);
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29D936D68();
  v55 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v9);
  v54 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_29D936128();
  v57 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D936258();
  v14 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9364C8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v53 = sub_29D9334A8();
  v52 = v20;

  v21 = v2[7];
  v22 = MEMORY[0x29EDC2030];
  v23 = sub_29D75A88C(&qword_2A17B3BE0, sub_29D75A2F8, MEMORY[0x29EDC2030]);
  v71 = v21;
  v72 = v23;
  v24 = v2[5];
  v25 = sub_29D75A4B4(&qword_2A17B3C08, &qword_2A17B3C10, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280]);
  v73 = v24;
  v74 = v25;
  v26 = v2[8];
  v51 = v2;
  v27 = sub_29D75A88C(&qword_2A17B3C18, type metadata accessor for HypertensionNotificationsSampleListHideableDataSource, v22);
  v75 = v26;
  v76 = v27;
  v28 = v2[3];
  v29 = sub_29D75A4B4(&qword_2A17B3C20, &unk_2A17B6130, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78]);
  v77 = v28;
  v78 = v29;
  v30 = v58;

  sub_29D936238();
  v31 = sub_29D936248();
  (*(v14 + 8))(v17, v50);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = v31;
  v80 = OpaqueTypeConformance2;
  v33 = v54;
  *v54 = v30;
  (*(v55 + 104))(v33, *MEMORY[0x29EDC2B00], v56);
  (*(v61 + 104))(v60, *MEMORY[0x29EDC2AF0], v62);
  sub_29D9360F8();
  sub_29D936118();
  v34 = sub_29D936108();
  (*(v57 + 8))(v13, v59);
  v35 = swift_getOpaqueTypeConformance2();
  v81 = v34;
  v82 = v35;
  v36 = v64;
  sub_29D9362A8();
  v37 = sub_29D9362B8();
  (*(v65 + 8))(v36, v66);
  v38 = swift_getOpaqueTypeConformance2();
  v83 = v37;
  v84 = v38;

  v39 = v30;
  v40 = v67;
  sub_29D936038();
  sub_29D936048();
  (*(v68 + 8))(v40, v69);
  v41 = sub_29D758278();
  v43 = v42;
  sub_29D936978();
  v85 = v41;
  v86 = v43;
  v44 = 32;
  v45 = MEMORY[0x29EDCA190];
  do
  {
    v69 = *&v70[v44];
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_29D68FDBC(0, v45[2] + 1, 1, v45);
    }

    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_29D68FDBC((v46 > 1), v47 + 1, 1, v45);
    }

    v45[2] = v47 + 1;
    *&v45[2 * v47 + 4] = v69;
    v44 += 16;
  }

  while (v44 != 160);
  sub_29D695734(0, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
  swift_arrayDestroy();
  return v45;
}

void *sub_29D757EA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_29D936258();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_29D936228();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_29D6945AC(v3 + 88, v30);
  v15 = a2;
  sub_29D936218();
  v16 = sub_29D936208();
  (*(v11 + 8))(v14, v10);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v31 = v16;
  *(&v31 + 1) = OpaqueTypeConformance2;
  *&v32 = *(v3 + 16);
  *(&v32 + 1) = MEMORY[0x29EDC1E78];
  v18 = v15;

  sub_29D936238();
  v19 = sub_29D936248();
  (*(v6 + 8))(v9, v5);
  v20 = swift_getOpaqueTypeConformance2();
  *&v33 = v19;
  *(&v33 + 1) = v20;
  v29 = v31;
  swift_unknownObjectRetain();
  v21 = MEMORY[0x29EDCA190];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_29D68FDBC(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_29D68FDBC((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  *&v21[2 * v23 + 4] = v29;
  v29 = v32;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_29D68FDBC(0, v21[2] + 1, 1, v21);
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    v21 = sub_29D68FDBC((v24 > 1), v25 + 1, 1, v21);
  }

  v21[2] = v25 + 1;
  *&v21[2 * v25 + 4] = v29;
  v29 = v33;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_29D68FDBC(0, v21[2] + 1, 1, v21);
  }

  v27 = v21[2];
  v26 = v21[3];
  if (v27 >= v26 >> 1)
  {
    v21 = sub_29D68FDBC((v26 > 1), v27 + 1, 1, v21);
  }

  v21[2] = v27 + 1;
  *&v21[2 * v27 + 4] = v29;
  sub_29D695734(0, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
  swift_arrayDestroy();
  return v21;
}

uint64_t sub_29D758278()
{
  v1 = [objc_opt_self() dataTypeWithCode_];
  if (v1)
  {
    v2 = v1;
    sub_29D934B38();
    v3 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
    v4 = v0;
    v5 = sub_29D936338();
    sub_29D934B08();

    sub_29D75A518(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    v7 = v23;
    v8 = v24;
    v9 = sub_29D693E2C(v22, v23);
    *(v6 + 56) = v7;
    *(v6 + 64) = *(v8 + 8);
    v10 = sub_29D693F78((v6 + 32));
    (*(*(v7 - 8) + 16))(v10, v9, v7);
    sub_29D75A584(0, v11);
    swift_getOpaqueTypeConformance2();
    sub_29D935578();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93DDB0;
    *(v12 + 56) = sub_29D935DA8();
    *(v12 + 64) = sub_29D75A88C(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
    v13 = sub_29D693F78((v12 + 32));
    sub_29D758628(v4 + v3, v13);
    sub_29D75A5E4(0, v14);
    v15 = MEMORY[0x29EDC2458];
    sub_29D75A88C(&qword_2A17B3C30, sub_29D75A5E4, MEMORY[0x29EDC2458]);
    v16 = sub_29D9355F8();

    sub_29D75A88C(&qword_2A17B3C40, sub_29D75A660, v15);
    sub_29D69417C(v22);
  }

  else
  {
    sub_29D75A518(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93DDB0;
    v18 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
    *(v17 + 56) = sub_29D935DA8();
    *(v17 + 64) = sub_29D75A88C(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
    v19 = sub_29D693F78((v17 + 32));
    sub_29D758628(v0 + v18, v19);
    sub_29D75A584(0, v20);
    swift_getOpaqueTypeConformance2();
    v16 = sub_29D9355F8();

    sub_29D75A88C(&qword_2A17B3C30, sub_29D75A5E4, MEMORY[0x29EDC2458]);
  }

  return v16;
}

uint64_t sub_29D758628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v66 = a2;
  v61 = *v2;
  v3 = sub_29D936BE8();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v63 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D935C78();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v62 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D75A6F4(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v58 = v47 - v12;
  v56 = sub_29D936378();
  v52 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v13);
  v54 = v14;
  v55 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D75A6F4(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v9);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v50 = v47 - v17;
  v51 = sub_29D937928();
  v49 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v18);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D9378C8();
  v21 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48, v22);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D933A58();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29D937B88();
  v30 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53, v31);
  v33 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v67 = 0x65744974756F6241;
  v68 = 0xE90000000000006DLL;
  sub_29D933A48();
  sub_29D75A88C(&qword_2A17B3C50, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
  v34 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v34);

  (*(v26 + 8))(v29, v25);
  v47[2] = v67;
  v47[1] = v68;
  v35 = v53;
  v69 = v53;
  v70 = MEMORY[0x29EDC7800];
  v36 = sub_29D693F78(&v67);
  (*(v30 + 16))(v36, v33, v35);
  sub_29D75A6F4(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v37 = v48;
  (*(v21 + 104))(v24, *MEMORY[0x29EDC7768], v48);
  v38 = sub_29D9378D8();
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  sub_29D937918();
  sub_29D937908();
  (*(v49 + 8))(v20, v51);
  (*(v21 + 8))(v24, v37);
  v39 = v52;
  v41 = v55;
  v40 = v56;
  (*(v52 + 16))(v55, v57, v56);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v54 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  *(v44 + v43) = v61;
  v45 = sub_29D9379E8();
  (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
  (*(v59 + 104))(v62, *MEMORY[0x29EDC22C8], v60);
  (*(v64 + 104))(v63, *MEMORY[0x29EDC2A38], v65);
  sub_29D935D98();
  return (*(v30 + 8))(v33, v35);
}

void sub_29D758F40(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v35 = sub_29D937898();
  v33 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35, v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D75A6F4(0, &qword_2A17B2B20, MEMORY[0x29EDC4378], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = sub_29D939A78();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v12 = sub_29D936378();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = v31;
  *(v19 + v18) = v31;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v31 = v20;
  sub_29D936338();
  v21 = *MEMORY[0x29EDBA6F0];
  v22 = type metadata accessor for HypertensionNotificationsFeatureRegulatoryInfoTransformProvider(0);
  swift_allocObject();
  v23 = v21;
  v24 = sub_29D939A98();
  v37 = v22;
  v38 = MEMORY[0x29EDC43B8];
  v36 = v24;
  v25 = sub_29D936338();
  sub_29D7596EC(v25, v9);

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v26 = v35;
  v27 = sub_29D69C6C0(v35, qword_2A1A2C008);
  (*(v33 + 16))(v34, v27, v26);
  sub_29D939A68();
  sub_29D71B61C(0);
  v29 = objc_allocWithZone(v28);
  v30 = sub_29D939A28();
  [v31 showAdaptively:v30 sender:0];
}

void sub_29D759304(uint64_t a1, void *a2, uint64_t a3)
{
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
    v28 = v7;
    *v6 = 136446466;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v28);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D95EE60, &v28);
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s.%{public}s]: Presenting onboarding", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v11 = sub_29D936338();
  v12 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
  v13[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v11];
  type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_29D933F18();

  v16 = sub_29D933F08();
  v17 = sub_29D6C9F00(v15, v16);
  type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
  v18 = swift_allocObject();
  *(v18 + 16) = 1;
  v30.receiver = v13;
  v30.super_class = v12;
  v19 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  [v19 setModalPresentationStyle_];
  v20 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
  swift_unknownObjectWeakAssign();
  *&v21[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v17;
  *&v21[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v18;
  v22 = v17;

  v23 = HKLogHeartRateCategory();
  v24 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v23 healthDataSource:v11];

  *&v21[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v24;
  v21[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 1;
  v29.receiver = v21;
  v29.super_class = v20;
  v25 = objc_msgSendSuper2(&v29, sel_init);
  sub_29D8E53B0();
  sub_29D8E5270(0, 0, 5);

  v26 = *&v19[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
  *&v19[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v25;

  [a2 presentViewController:v19 animated:1 completion:0];
}

uint64_t sub_29D7596EC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v52[1] = *MEMORY[0x29EDCA608];
  sub_29D75A6F4(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v8 = [HKPreferredRegulatoryDomainProvider() currentEstimate];
  sub_29D936978();
  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:a1];
    v10 = [v8 ISOCode];
    if (!v10)
    {
      sub_29D939D68();
      v10 = sub_29D939D28();
    }

    v52[0] = 0;
    v11 = [v9 onboardingEligibilityForCountryCode:v10 error:v52];

    if (v11)
    {
      v12 = v52[0];
      if ([v11 isEligible])
      {
        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        sub_29D9334A8();
        sub_29D9334A8();
        sub_29D9336E8();

        sub_29D939A48();

        v13 = sub_29D939A58();
        return (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v36 = sub_29D937898();
      sub_29D69C6C0(v36, qword_2A1A2C008);
      v37 = v11;
      v38 = sub_29D937878();
      v39 = sub_29D93A2A8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52[0] = v41;
        *v40 = 136446722;
        v42 = sub_29D93AF08();
        v51 = v9;
        v44 = sub_29D6C2364(v42, v43, v52);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D95ED60, v52);
        *(v40 + 22) = 2082;
        v45 = [v37 ineligibilityReasonsDescription];
        v46 = sub_29D939D68();
        v48 = v47;

        v49 = sub_29D6C2364(v46, v48, v52);

        *(v40 + 24) = v49;
        _os_log_impl(&dword_29D677000, v38, v39, "[%{public}s.%{public}s]: Not eligible for onboarding with ineligibility reasons: %{public}s", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v41, -1, -1);
        MEMORY[0x29ED6BE30](v40, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v25 = v52[0];
      v26 = sub_29D933598();

      swift_willThrow();
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v27 = sub_29D937898();
      sub_29D69C6C0(v27, qword_2A1A2C008);
      v28 = sub_29D937878();
      v29 = sub_29D93A2A8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v52[0] = v31;
        *v30 = 136446466;
        v32 = sub_29D93AF08();
        v34 = v9;
        v35 = sub_29D6C2364(v32, v33, v52);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2082;
        *(v30 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D95ED60, v52);
        _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]: Failed to check eligibility for re-enable action", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v31, -1, -1);
        MEMORY[0x29ED6BE30](v30, -1, -1);
      }

      else
      {
      }
    }

    v50 = sub_29D939A58();
    return (*(*(v50 - 8) + 56))(a4, 1, 1, v50);
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = sub_29D937878();
  v17 = sub_29D93A288();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52[0] = v19;
    *v18 = 136446466;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, v52);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D95ED60, v52);
    _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s.%{public}s]: Failed to get current country estimate", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v19, -1, -1);
    MEMORY[0x29ED6BE30](v18, -1, -1);
  }

  v23 = sub_29D939A58();
  v24 = *(*(v23 - 8) + 56);

  return v24(a4, 1, 1, v23);
}

uint64_t sub_29D759FD8()
{

  sub_29D69417C((v0 + 88));
  v1 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D6AC7A0(v0 + OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus);
  return v0;
}

uint64_t sub_29D75A098()
{
  sub_29D759FD8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HypertensionNotificationsDataTypeDetailDataSourceProvider(uint64_t a1)
{
  result = qword_2A17B3BD0;
  if (!qword_2A17B3BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D75A144(uint64_t a1)
{
  sub_29D936378();
  if (v1 <= 0x3F)
  {
    sub_29D75A6F4(319, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D75A270(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x29EDBA6F0];
  v6 = objc_allocWithZone(sub_29D936E78());
  v7 = v5;
  v8 = sub_29D936E68();
  [a1 showViewController:v8 sender:v4];
}

void sub_29D75A2F8(uint64_t a1)
{
  if (!qword_2A17B3BE8)
  {
    sub_29D75A38C(255);
    sub_29D75A88C(&qword_2A17B3C00, sub_29D75A38C, MEMORY[0x29EDC2110]);
    v1 = sub_29D935548();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3BE8);
    }
  }
}

void sub_29D75A38C(uint64_t a1)
{
  if (!qword_2A17B3BF0)
  {
    sub_29D75A420(255);
    sub_29D75A88C(&unk_2A17B6100, sub_29D75A420, MEMORY[0x29EDC2988]);
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3BF0);
    }
  }
}

void sub_29D75A420(uint64_t a1)
{
  if (!qword_2A17B60F0)
  {
    sub_29D934528();
    sub_29D75A88C(&qword_2A17B3BF8, MEMORY[0x29EDC3C88], MEMORY[0x29EDC1B30]);
    v1 = sub_29D936A28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B60F0);
    }
  }
}

uint64_t sub_29D75A4B4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D75AB90(255, a2, a3, a4, MEMORY[0x29EDC2020]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D75A518(uint64_t a1)
{
  if (!qword_2A17B1138)
  {
    sub_29D695734(255, &qword_2A17B1140, MEMORY[0x29EDC18F8], 1);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1138);
    }
  }
}

void sub_29D75A584(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B3C28)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3C28);
    }
  }
}

void sub_29D75A5E4(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B3C38)
  {
    sub_29D75A584(255, a2);
    swift_getOpaqueTypeConformance2();
    v2 = sub_29D935E48();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B3C38);
    }
  }
}

void sub_29D75A660(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B3C48)
  {
    sub_29D75A5E4(255, a2);
    sub_29D75A88C(&qword_2A17B3C30, sub_29D75A5E4, MEMORY[0x29EDC2458]);
    v2 = sub_29D935E48();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B3C48);
    }
  }
}

void sub_29D75A6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D75A758(void *a1)
{
  v3 = *(sub_29D936378() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D758F40(a1, v1 + v4, v5);
}

void sub_29D75A7F4()
{
  v1 = *(sub_29D936378() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D759304(v0 + v2, v4, v5);
}

uint64_t sub_29D75A88C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D75A8D4()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v21[-1] - v7;
  sub_29D936318();
  sub_29D693E2C(v21, v21[3]);
  v9 = sub_29D933EC8();
  v10 = sub_29D93A598();

  sub_29D69417C(v21);
  sub_29D75A420(0);
  v12 = objc_allocWithZone(v11);
  v13 = v10;
  v14 = sub_29D936A38();
  sub_29D935658();
  sub_29D935618();
  v15 = *(v1 + 8);
  v15(v5, v0);
  v16 = sub_29D935638();
  *v17 = 0x4034000000000000;
  v16(v21, 0);
  sub_29D75A88C(&unk_2A17B6100, sub_29D75A420, MEMORY[0x29EDC2988]);
  v18 = sub_29D9355A8();

  v15(v8, v0);
  return v18;
}

void sub_29D75AAFC(uint64_t a1)
{
  if (!qword_2A17B60E0)
  {
    sub_29D75A38C(255);
    sub_29D75A88C(&qword_2A17B3C00, sub_29D75A38C, MEMORY[0x29EDC2110]);
    v1 = sub_29D935508();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B60E0);
    }
  }
}

void sub_29D75AB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D75ABFC()
{
  v29 = sub_29D933AB8();
  v1 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933CE8();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v7 = sub_29D9334A8();
  v27 = v8;
  v28 = v7;
  v26 = sub_29D9356E8();
  sub_29D6945AC(v0 + 24, v31);
  v9 = sub_29D9334A8();
  v25[0] = v10;
  v25[1] = v9;
  sub_29D75BFC4(0, &qword_2A17B3C60, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v11 = sub_29D9357D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D93F680;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x29EDC2138], v11);
  v17(v16 + v13, *MEMORY[0x29EDC2140], v11);
  sub_29D6E573C(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = v29;
  (*(v1 + 104))(v4, *MEMORY[0x29EDB9C78], v29);
  sub_29D933AC8();
  (*(v1 + 8))(v4, v18);
  v19 = v26;
  v20 = sub_29D9356D8();
  v31[3] = v19;
  v31[4] = MEMORY[0x29EDC20A0];
  v31[0] = v20;
  sub_29D75B008(v30);
  v21 = objc_allocWithZone(sub_29D935BD8());
  v22 = sub_29D935BC8();
  sub_29D75C318(&qword_2A17B3C68, v23, type metadata accessor for AFibBurdenPDFProvider, &unk_29D946018);
  swift_unknownObjectRetain();
  sub_29D935BB8();
  return v22;
}

uint64_t sub_29D75B008@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_29D935C28();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D935348();
  v6 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v7);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9356F8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_29D9363E8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6945AC(v1 + 24, v33);
  sub_29D9363D8();
  v19 = sub_29D9359A8();
  (*(v15 + 8))(v18, v14);
  sub_29D75BF64();
  v20 = sub_29D9359A8();
  *v13 = sub_29D935708();
  (*(v10 + 104))(v13, *MEMORY[0x29EDC20A8], v9);
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v19;
  v21[4] = v20;
  (*(v6 + 104))(v27, *MEMORY[0x29EDC1F40], v28);
  (*(v30 + 104))(v29, *MEMORY[0x29EDC22A0], v31);
  v22 = sub_29D935368();
  v23 = MEMORY[0x29EDC1F50];
  v24 = v32;
  v32[3] = v22;
  v24[4] = v23;
  sub_29D693F78(v24);

  return sub_29D935358();
}

uint64_t sub_29D75B398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D937898();
  v57 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v56 = &v51 - v11;
  sub_29D75BFC4(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v51 - v14;
  sub_29D75BFC4(0, &qword_2A17B3C80, sub_29D75C028, MEMORY[0x29EDC16E0]);
  v17 = v16;
  v64 = v16;
  v18 = sub_29D75C114();
  v65 = v18;
  v62 = v18;
  *&v63 = a2;
  v61 = v17;
  *&v60 = a3;

  sub_29D934DE8();
  v19 = sub_29D934DF8();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  sub_29D6945AC(&v63, v59);
  v20 = swift_allocObject();
  sub_29D679D3C(v59, v20 + 16);
  sub_29D6945AC(&v60, v58);
  v21 = swift_allocObject();
  sub_29D679D3C(v58, v21 + 16);
  *(&v67 + 1) = sub_29D9352D8();
  v68 = MEMORY[0x29EDC1EE8];
  sub_29D693F78(&v66);

  sub_29D9352C8();
  sub_29D69417C(&v60);
  sub_29D69417C(&v63);
  v55 = sub_29D935E78();
  sub_29D69417C(&v66);
  v22 = *(a1 + 16);
  *(&v67 + 1) = &type metadata for AFibBurdenPDFChartProvider;
  v68 = sub_29D75C1AC();
  v23 = swift_allocObject();
  *&v66 = v23;
  v23[7] = v17;
  v23[8] = v18;
  v23[4] = a2;
  v23[12] = v17;
  v23[13] = v18;
  v23[9] = a3;
  v24 = objc_allocWithZone(sub_29D934948());

  v23[14] = [v24 init];
  v23[2] = v22;
  v25 = objc_opt_self();
  v26 = v22;
  v27 = [v25 sharedInstanceForHealthStore_];
  v28 = [v27 createHKUnitPreferenceController];

  v23[3] = v28;
  v54 = sub_29D935E78();
  sub_29D69417C(&v66);
  sub_29D75C0AC(0, &qword_2A17B3CA0, &qword_2A17B3CA8, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v29 = swift_allocObject();
  v53 = xmmword_29D93DDB0;
  *(v29 + 16) = xmmword_29D93DDB0;
  *(v29 + 56) = v17;
  *(v29 + 64) = v18;
  *(v29 + 32) = a2;
  v30 = swift_allocObject();
  *(v30 + 16) = v53;
  *(v30 + 56) = v17;
  *(v30 + 64) = v18;
  *(v30 + 32) = a3;
  v31 = qword_2A1A24660;

  v32 = v26;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_29D69C6C0(v6, qword_2A1A2BF28);
  v34 = v57;
  v35 = *(v57 + 16);
  v36 = v56;
  v35(v56, v33, v6);
  v37 = type metadata accessor for AFibBurdenPDFHistogramSectionProvider(0);
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  v38 = swift_allocObject();
  *(v38 + 2) = v29;
  *(v38 + 3) = v30;
  *(v38 + 4) = v32;
  v35(&v38[OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger], v36, v6);
  v39 = &v38[OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_analysisBlock];
  *v39 = sub_29D918AC8;
  *(v39 + 1) = 0;
  sub_29D75C200(&v66, &v60);
  v40 = v36;
  if (v61)
  {
    sub_29D75C290(&v66);
    (*(v34 + 8))(v36, v6);
    sub_29D679D3C(&v60, &v63);
  }

  else
  {
    v41 = v52;
    v35(v52, v40, v6);
    v42 = type metadata accessor for AFibBurdenPDFHistogramRenderableFactory(0);
    swift_allocObject();
    v43 = v40;
    v44 = v32;
    v45 = sub_29D916EEC(v44, v41);

    v64 = v42;
    v65 = &off_2A244E798;
    *&v63 = v45;
    sub_29D75C290(&v66);
    (*(v34 + 8))(v43, v6);
    if (v61)
    {
      sub_29D75C290(&v60);
    }
  }

  sub_29D679D3C(&v63, &v38[OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory]);
  *(&v67 + 1) = v37;
  v68 = sub_29D75C318(&qword_2A17B3CC0, 255, type metadata accessor for AFibBurdenPDFHistogramSectionProvider, &unk_29D955988);
  *&v66 = v38;
  v46 = sub_29D935E78();
  sub_29D69417C(&v66);
  sub_29D75C360(0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_29D943EA0;
  v48 = v54;
  *(v47 + 32) = v55;
  *(v47 + 40) = v48;
  *(v47 + 48) = v46;
  v49 = sub_29D935E68();

  return v49;
}

uint64_t sub_29D75BAE4()
{
  sub_29D69417C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_29D75BB74(char a1)
{
  v3 = *v1;
  type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v1[8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v9[4] = sub_29D75C3E4;
  v9[5] = v6;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D8E44F0;
  v9[3] = &unk_2A2444040;
  v7 = _Block_copy(v9);

  [v5 submitEvent:v4 completion:v7];
  _Block_release(v7);
}

void sub_29D75BCAC(int a1, id a2, char a3, void *a4)
{
  if (a2)
  {
    v7 = a2;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A1A2BF28);
    v9 = a2;
    v10 = sub_29D937878();
    v11 = sub_29D93A288();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      v25 = a4;
      *v12 = 136446723;
      swift_getMetatypeMetadata();
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2081;
      if (a3)
      {
        if (a3 == 1)
        {
          v17 = 0x7765695620464450;
        }

        else
        {
          v17 = 0xD00000000000001ALL;
        }

        if (a3 == 1)
        {
          v18 = 0xEA00000000006465;
        }

        else
        {
          v18 = 0x800000029D95EF70;
        }
      }

      else
      {
        v17 = 0xD000000000000010;
        v18 = 0x800000029D95EF90;
      }

      v19 = sub_29D6C2364(v17, v18, &v24);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2082;
      v25 = a2;
      v20 = a2;
      sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v24);

      *(v12 + 24) = v23;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] Error when sending analytics event for interaction %{private}s): %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_29D75BF64()
{
  result = qword_2A17B3C70;
  if (!qword_2A17B3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C70);
  }

  return result;
}

void sub_29D75BFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D75C028(uint64_t a1)
{
  if (!qword_2A17B3C88)
  {
    sub_29D75C0AC(255, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3C88);
    }
  }
}

void sub_29D75C0AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_29D75C114()
{
  result = qword_2A17B3C90;
  if (!qword_2A17B3C90)
  {
    sub_29D75BFC4(255, &qword_2A17B3C80, sub_29D75C028, MEMORY[0x29EDC16E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C90);
  }

  return result;
}

unint64_t sub_29D75C1AC()
{
  result = qword_2A17B3C98;
  if (!qword_2A17B3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C98);
  }

  return result;
}

uint64_t sub_29D75C200(uint64_t a1, uint64_t a2)
{
  sub_29D75C0AC(0, &qword_2A17B3CB0, &qword_2A17B3CB8, &protocol descriptor for AFibBurdenPDFHistogramRenderableFactoryProxy, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75C290(uint64_t a1)
{
  sub_29D75C0AC(0, &qword_2A17B3CB0, &qword_2A17B3CB8, &protocol descriptor for AFibBurdenPDFHistogramRenderableFactoryProxy, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D75C318(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29D75C360(uint64_t a1)
{
  if (!qword_2A17B3CC8)
  {
    sub_29D75C0AC(255, &qword_2A17B3CD0, &qword_2A17B3CD8, MEMORY[0x29EDC2038], MEMORY[0x29EDC9A40]);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3CC8);
    }
  }
}

uint64_t sub_29D75C3F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D75C434(uint64_t a1)
{
  v2 = sub_29D9360A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D936098();
  sub_29D936088();
  sub_29D75A518(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93DDB0;
  type metadata accessor for AFibBurdenChartSection(0);
  *(v8 + 56) = sub_29D935DA8();
  *(v8 + 64) = sub_29D75C5F4(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
  v9 = sub_29D693F78((v8 + 32));
  sub_29D7B2CDC(v9);
  sub_29D6E2D58(0, v10);
  swift_getOpaqueTypeConformance2();
  v11 = sub_29D9355F8();
  sub_29D936978();

  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_29D75C5F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D75C63C(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B3CE8)
  {
    sub_29D6E2D58(255, a2);
    swift_getOpaqueTypeConformance2();
    v2 = sub_29D935E48();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B3CE8);
    }
  }
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingCompletionViewController(uint64_t a1)
{
  result = qword_2A17B3D10;
  if (!qword_2A17B3D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D75C774(unint64_t a1)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  if (a1 > 1)
  {
    return 0;
  }

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE98;
  (*(v5 + 16))(v9, v12, v4);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v5 + 8))(v12, v4);
  return v15;
}

id sub_29D75C9AC(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v30 - v12;
  v14 = (v1 + qword_2A17B3CF0);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + qword_2A17B3D00) = 0;
  *(v1 + qword_2A17B3CF8) = a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29D9383C8();

  if (v34)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2BF10);
    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29D677000, v23, v24, "[%s] Journal type must be selected.", v25, 0xCu);
      sub_29D69417C(v26);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {
    v31 = v5;
    v32 = a1;
    v15 = v33;
    *(v1 + qword_2A17B3D08) = v33;
    objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(0));
    sub_29D935F88();
    swift_allocObject();
    sub_29D935F98();
    v30 = sub_29D936D88();
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A2BE98;
    v17 = v31;
    (*(v6 + 16))(v10, v13, v31);
    sub_29D935E88();
    v18 = v16;
    sub_29D933A98();
    sub_29D939D98();
    (*(v6 + 8))(v13, v17);
    sub_29D75C774(v15);
    sub_29D74081C();
    v19 = sub_29D936A98();
    v20 = [v19 navigationItem];
    [v20 setRightBarButtonItem_];

    return v19;
  }

  return result;
}

void sub_29D75CE54()
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for BloodPressureJournalOnboardingCompletionViewController(0);
  v37.receiver = v0;
  v37.super_class = v12;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v35 = v0;
  v13 = qword_2A1A2BE98;
  v14 = unk_2A1A2BEA0;
  v32 = *(v4 + 16);
  v32(v8, v11, v3);
  sub_29D935E88();
  v30 = v13;
  sub_29D933A98();
  v33 = v14;
  v34 = v13;
  sub_29D939D98();
  v15 = *(v4 + 8);
  v29 = v4 + 8;
  v31 = v15;
  v15(v11, v3);
  v16 = sub_29D939D28();

  v36 = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243D8A0);
  v17 = sub_29D939F18();
  v18 = HKUIJoinStringsForAutomationIdentifier();

  v28 = v3;
  if (v18)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v19 = sub_29D939D28();

    v20 = v35;

    sub_29D939D08();
    v21 = v28;
    v32(v8, v11, v28);
    sub_29D935E88();
    v22 = v30;
    sub_29D933A98();
    sub_29D939D98();
    v31(v11, v21);
    v23 = sub_29D939D28();

    v36 = &unk_2A243D870;
    sub_29D88BBC8(&unk_2A243D8E0);
    v24 = sub_29D939F18();
    v25 = HKUIJoinStringsForAutomationIdentifier();

    if (v25)
    {
      sub_29D939D68();

      swift_arrayDestroy();
      v26 = sub_29D939D28();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29D75D2EC(void *a1)
{
  v1 = a1;
  sub_29D75CE54();
}

void sub_29D75D334(void *a1)
{
  v1 = a1;
  sub_29D75D388(0, 11, 5);
}

uint64_t sub_29D75D388(char a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_2A17B3D00] = a1;
  sub_29D7B7874(7, a2);
  sub_29D7B64C8();
  v12 = sub_29D9339F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_29D8D1130(0, v4, 2, v11, 2, 2);

  result = sub_29D6A0D34(v11);
  v14 = *&v3[qword_2A17B3CF0];
  if (v14)
  {
    swift_unknownObjectRetain();
    sub_29D8BA57C(v7, v14);
    return sub_29D936978();
  }

  return result;
}

void sub_29D75D4D0(void *a1)
{
  v1 = a1;
  sub_29D75D388(1, 10, 4);
}

uint64_t sub_29D75D554()
{
  sub_29D936978();
}

id sub_29D75D594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingCompletionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D75D5CC(uint64_t a1)
{
  sub_29D936978();
}

uint64_t sub_29D75D620(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B3CF0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D75D69C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9369F8();
  v3 = [v2 fetchedObjects];

  if (v3 && ((sub_29D934528(), v4 = sub_29D939F38(), v3, v4 >> 62) ? (v5 = sub_29D93A928()) : (v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v5 > 0))
  {
    v6 = MEMORY[0x29EDC1FF8];
  }

  else
  {
    v6 = MEMORY[0x29EDC2000];
  }

  v7 = *v6;
  v8 = sub_29D935508();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

uint64_t sub_29D75D7B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v29 = a4;
  v33 = a1;
  v34 = a2;
  v6 = *v4;
  v30 = a3;
  v31 = v6;
  v32 = *(v6 + qword_2A17D0998);
  v7 = sub_29D935508();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v28[-v14];
  sub_29D935518();
  v16 = *(*v4 + qword_2A17D0998 + 16);
  v17 = *(v4 + v16);
  v18 = sub_29D936A08();
  v20 = v19;

  if (v18 == v33 && v20 == v34)
  {

    goto LABEL_8;
  }

  v22 = sub_29D93AD78();

  if (v22)
  {
LABEL_8:
    v23 = *(v5 + v16);
    sub_29D75D69C(v12);

    sub_29D935528();
  }

  sub_29D935518();
  v24 = sub_29D9354F8();
  v25 = *(v8 + 8);
  v25(v12, v7);
  if (v24)
  {
    sub_29D935548();
    v26 = sub_29D935558();
    v26(v33, v34, v30, v29 & 1);
  }

  return (v25)(v15, v7);
}

uint64_t sub_29D75DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_29D75DD24();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D939D68();
  v14 = v13;
  sub_29D937BA8();

  sub_29D75D7B8(v12, v14, v11, a5);

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_29D75DBA4()
{
}

void *sub_29D75DC40()
{
  v0 = sub_29D935568();

  return v0;
}

uint64_t sub_29D75DCDC()
{
  sub_29D75DC40();

  return swift_deallocClassInstance();
}

void sub_29D75DD24()
{
  if (!qword_2A17B3DA0)
  {
    v0 = sub_29D937BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3DA0);
    }
  }
}

uint64_t sub_29D75DDEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29D936378();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v47[-v14];
  v16 = sub_29D937898();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_29D936368();
  result = 0;
  if ((v21 & 0xFE) != 2)
  {
    v51 = a4;
    v52 = v17;
    v23 = objc_opt_self();
    v24 = sub_29D936338();
    v25 = [v23 sharedInstanceForHealthStore_];

    if (v25)
    {
      v26 = [v25 displayTypeForObjectType_];
      if (v26)
      {
        v27 = v26;
        v28 = objc_opt_self();
        v29 = sub_29D936338();
        v30 = [v28 sharedInstanceForHealthStore_];

        v31 = [v30 createHKUnitPreferenceController];
        v32 = sub_29D936338();
        type metadata accessor for BloodPressureClassificationDataManagementDataSource(0);
        swift_allocObject();
        v33 = sub_29D70E474(v27, v31, v32, 3);

        return v33;
      }
    }

    v50 = v16;
    sub_29D937818();
    v34 = v8;
    v49 = *(v8 + 16);
    v49(v15, a1, v7);
    v35 = a2;
    sub_29D935E88();
    v36 = sub_29D937878();
    v37 = sub_29D93A288();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v37;
      v40 = v39;
      v51 = swift_slowAlloc();
      v53 = v51;
      *v38 = 136315650;
      *(v38 + 4) = sub_29D6C2364(0xD000000000000032, 0x800000029D9462B0, &v53);
      *(v38 + 12) = 2112;
      *(v38 + 14) = v35;
      *v40 = v35;
      *(v38 + 22) = 2080;
      v49(v12, v15, v7);
      v41 = v35;
      v42 = sub_29D939DA8();
      v44 = v43;
      (*(v34 + 8))(v15, v7);
      v45 = sub_29D6C2364(v42, v44, &v53);

      *(v38 + 24) = v45;
      _os_log_impl(&dword_29D677000, v36, v48, "[%s]: Unable to create display type controller for %@ in context: %s", v38, 0x20u);
      sub_29D6ACA3C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      v46 = v51;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v15, v7);
    }

    (*(v52 + 8))(v20, v50);
    return 0;
  }

  return result;
}

uint64_t sub_29D75E294(uint64_t a1)
{
  if (sub_29D75DDEC(a1, *v1, *(v1 + 8), *(v1 + 16)))
  {
    type metadata accessor for BloodPressureClassificationDataManagementDataSource(0);
    sub_29D935438();
    sub_29D9353F8();
    sub_29D935428();
  }

  else
  {
    type metadata accessor for BloodPressureClassificationDataManagementDataSource(0);
    sub_29D935428();
  }

  sub_29D75E390(0);
  sub_29D75E414();

  v2 = sub_29D9353F8();

  return v2;
}

void sub_29D75E390(uint64_t a1)
{
  if (!qword_2A17B3DA8)
  {
    type metadata accessor for BloodPressureClassificationDataManagementDataSource(255);
    sub_29D935248();
    v1 = sub_29D935C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3DA8);
    }
  }
}

unint64_t sub_29D75E414()
{
  result = qword_2A17B3DB0;
  if (!qword_2A17B3DB0)
  {
    sub_29D75E390(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DB0);
  }

  return result;
}

uint64_t sub_29D75E46C@<X0>(uint64_t *a1@<X8>)
{
  v45 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v3 = *(v45 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v45, v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v44 = &v42 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v42 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v42 - v15;
  result = type metadata accessor for BloodPressurePDFViewModel(0);
  v18 = *(v1 + *(result + 36));
  v19 = *(v18 + 16);
  if (v19)
  {
    v42 = v1;
    v43 = a1;
    v20 = 0;
    v21 = MEMORY[0x29EDCA190];
    v22 = v45;
    v46 = v19;
    v47 = v13;
    do
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v24 = *(v3 + 72);
      sub_29D75E868(v18 + v23 + v24 * v20, v16);
      if (v16[*(v22 + 24)] == 1)
      {
        sub_29D75E928(v16, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D7EE660(0, *(v21 + 16) + 1, 1);
          v22 = v45;
          v21 = v49;
        }

        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_29D7EE660((v26 > 1), v27 + 1, 1);
          v22 = v45;
          v21 = v49;
        }

        *(v21 + 16) = v27 + 1;
        v13 = v47;
        result = sub_29D75E928(v47, v21 + v23 + v27 * v24);
        v19 = v46;
      }

      else
      {
        result = sub_29D75E8CC(v16);
      }

      ++v20;
    }

    while (v19 != v20);
    v28 = *(v18 + 16);
    if (v28)
    {
      v29 = 0;
      v47 = v18;
      v30 = v18 + v23;
      v31 = MEMORY[0x29EDCA190];
      v32 = v44;
      while (v29 < *(v47 + 2))
      {
        sub_29D75E868(v30, v32);
        if (*(v32 + *(v22 + 24)) == 2)
        {
          sub_29D75E928(v32, v48);
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v49 = v31;
          if ((v33 & 1) == 0)
          {
            sub_29D7EE660(0, *(v31 + 16) + 1, 1);
            v22 = v45;
            v31 = v49;
          }

          v35 = *(v31 + 16);
          v34 = *(v31 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_29D7EE660((v34 > 1), v35 + 1, 1);
            v22 = v45;
            v31 = v49;
          }

          *(v31 + 16) = v35 + 1;
          result = sub_29D75E928(v48, v31 + v23 + v35 * v24);
          v32 = v44;
        }

        else
        {
          result = sub_29D75E8CC(v32);
        }

        ++v29;
        v30 += v24;
        if (v28 == v29)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v31 = MEMORY[0x29EDCA190];
LABEL_26:
    v1 = v42;
    a1 = v43;
    if (*(v21 + 16))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v21 = MEMORY[0x29EDCA190];
    v31 = MEMORY[0x29EDCA190];
    if (*(MEMORY[0x29EDCA190] + 16))
    {
LABEL_27:
      v36 = 1;
      goto LABEL_28;
    }
  }

  v36 = *(v31 + 16) != 0;
LABEL_28:
  v37 = sub_29D75F128();
  v39 = MEMORY[0x2A1C7C4A8](v37, v38);
  *(&v42 - 4) = v1;
  *(&v42 - 24) = v36;
  *(&v42 - 23) = v39;
  *(&v42 - 2) = v21;
  *(&v42 - 1) = v31;
  v40 = sub_29D9370F8();
  v41 = MEMORY[0x29EDC2C70];
  a1[3] = v40;
  a1[4] = v41;
  sub_29D693F78(a1);
  sub_29D9370E8();
}

uint64_t sub_29D75E868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75E8CC(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D75E928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75E98C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v80 = a4;
  v86 = a2;
  sub_29D75F1B4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v78 = v67 - v9;
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v75 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v74 = v67 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = v67 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v67 - v23;
  v25 = type metadata accessor for BloodPressurePDFViewModel(0);
  v26 = *(v11 + 16);
  v71 = v25[10];
  v26(v24, a1 + v71, v10);
  v70 = v25[8];
  v72 = v26;
  v26(v21, a1 + v70, v10);
  v27 = *(a1 + *(type metadata accessor for BloodPressurePDFChartSection(0) + 20));
  v28 = *(a1 + v25[22]);
  sub_29D935E88();
  sub_29D75F07C(v28);
  v84 = v29;
  v83 = v30;
  v73 = v25;
  sub_29D75F07C(*(a1 + v25[13]));
  v82 = v31;
  v81 = v32;
  v76 = a3;
  v33 = 0.0;
  if (a3)
  {
    v34 = 16.0;
  }

  else
  {
    v34 = 0.0;
  }

  v85 = ~v86;
  v35 = type metadata accessor for BloodPressurePDFChart(0);
  v88 = v35;
  v89 = sub_29D75F2B0(&qword_2A17B3DB8, type metadata accessor for BloodPressurePDFChart, &unk_29D955810);
  v36 = sub_29D693F78(v87);
  v37 = v35[13];
  v38 = sub_29D9356C8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v69 = v38;
  v68 = v40;
  v67[1] = v39 + 56;
  (v40)(v36 + v37, 1, 1);
  v41 = *(v11 + 32);
  v41(v36, v24, v10);
  v42 = v36 + v35[5];
  v43 = v21;
  v44 = v10;
  v77 = v11 + 32;
  v41(v42, v43, v10);
  *(v36 + v35[6]) = v27;
  v45 = v36 + v35[7];
  *v45 = v84;
  v45[8] = v83 & 1;
  v46 = v36 + v35[8];
  *v46 = v82;
  v46[8] = v81 & 1;
  *(v36 + v35[9]) = (v86 & 1) == 0;
  *(v36 + v35[10]) = v34;
  v47 = v36 + v35[11];
  *v47 = 0x4080900000000000;
  v47[8] = 0;
  v48 = v36 + v35[12];
  *v48 = 0x406C200000000000;
  v48[8] = 0;
  *(v36 + v35[14]) = 0x404E000000000000;
  *(v36 + v35[15]) = 0x4061800000000000;
  *(v36 + v35[16]) = 0x4024000000000000;
  v49 = sub_29D935808();
  sub_29D69417C(v87);
  if (v85)
  {
    v63 = sub_29D9357F8();
  }

  else
  {
    v50 = v74;
    v51 = v44;
    v52 = v44;
    v53 = v72;
    v72(v74, a1 + v71, v52);
    v54 = v75;
    v53(v75, a1 + v70, v51);
    v55 = v78;
    sub_29D6A0A20(a1 + v73[18], v78);
    v56 = v76 & 1;
    if (v76)
    {
      v33 = -11.0;
    }

    v57 = type metadata accessor for BloodPressurePDFPregnancyChart(0);
    v88 = v57;
    v89 = sub_29D75F2B0(&qword_2A17B2128, type metadata accessor for BloodPressurePDFPregnancyChart, &unk_29D942218);
    v58 = sub_29D693F78(v87);
    v68(v58 + v57[13], 1, 1, v69);
    v41(v58, v50, v51);
    v41((v58 + v57[5]), v54, v51);
    *(v58 + v57[6]) = v80;
    sub_29D6B1204(v55, v58 + v57[7]);
    *(v58 + v57[8]) = v79;
    *(v58 + v57[9]) = v56;
    *(v58 + v57[10]) = v33;
    v59 = v58 + v57[11];
    *v59 = 0x4080900000000000;
    v59[8] = 0;
    v60 = v58 + v57[12];
    *v60 = 0x4051800000000000;
    v60[8] = 0;
    sub_29D935E88();
    sub_29D935E88();
    v61 = sub_29D935808();
    sub_29D69417C(v87);
    sub_29D75F1B4(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_29D93DDB0;
    *(v62 + 32) = v61;
    MEMORY[0x29ED65BE0]();

    v63 = sub_29D9357F8();
  }

  sub_29D75F1B4(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29D93F680;
  *(v64 + 32) = v49;
  *(v64 + 40) = v63;
  v65 = MEMORY[0x29ED65BE0]();

  return v65;
}

void sub_29D75F07C(void *a1)
{
  if (a1)
  {
    v1 = [a1 averageQuantity];
    if (v1)
    {
      v2 = v1;
      [v1 _value];
      v4 = v3;
      v5 = v3;

      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_9;
    }
  }
}

uint64_t type metadata accessor for BloodPressurePDFChartSection(uint64_t a1)
{
  result = qword_2A17B3DC0;
  if (!qword_2A17B3DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D75F1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D75F24C()
{
  result = qword_2A17B1010;
  if (!qword_2A17B1010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1010);
  }

  return result;
}

uint64_t sub_29D75F2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D75F320(uint64_t a1)
{
  type metadata accessor for BloodPressurePDFViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_29D75F1B4(319, &qword_2A17B2D08, type metadata accessor for BloodPressureMinMaxCoordinate, MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D75F3D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v73 = a2;
  v2 = sub_29D9361F8();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7602C8(0, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v75 = &v60 - v10;
  v11 = sub_29D936138();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D936388();
  v72 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936148();
  *(&v77 + 1) = &type metadata for BloodPressureJournalSetUpOrSummaryComponent;
  v78 = sub_29D760274();
  *&v76 = 0xD00000000000002BLL;
  *(&v76 + 1) = 0x800000029D95F350;
  LOBYTE(v77) = 0;
  sub_29D936198();
  v20 = *(v12 + 104);
  v67 = *MEMORY[0x29EDC2618];
  v20(v15);
  v74 = v16;
  sub_29D936BB8();

  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_29D69417C(&v76);
  sub_29D9361C8();
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  sub_29D936BC8();

  sub_29D760444(&v76, &qword_2A17B3DE0, sub_29D71C038);
  *(&v77 + 1) = &type metadata for BloodPressureJournalEducationComponent;
  v78 = sub_29D76031C();
  *&v76 = 0xD000000000000026;
  *(&v76 + 1) = 0x800000029D95F380;
  sub_29D936168();
  v22 = *MEMORY[0x29EDC2620];
  v69 = v12 + 104;
  v66 = v20;
  (v20)(v15, v22, v11);
  v23 = v74;
  sub_29D936BB8();

  v68 = v15;
  v70 = v12 + 8;
  v71 = v11;
  v65 = v21;
  v21(v15, v11);
  sub_29D69417C(&v76);
  sub_29D936188();
  *(&v77 + 1) = &_s50BloodPressureClassificationDataManagementComponentVN;
  v24 = sub_29D760370();
  *&v76 = v60;
  *(&v76 + 1) = 0xD000000000000032;
  v78 = v24;
  *&v77 = 0x800000029D95F3B0;
  v25 = v60;
  v26 = v23;
  sub_29D936BC8();

  sub_29D760444(&v76, &qword_2A17B3DE0, sub_29D71C038);
  v27 = sub_29D936158();
  v28 = v19;
  sub_29D75FF9C(v27, v29, &v76);

  if (*(&v77 + 1))
  {
    sub_29D71C038();
    v30 = v75;
    v31 = v62;
    v32 = swift_dynamicCast();
    v33 = v61;
    v34 = *(v61 + 56);
    v34(v30, v32 ^ 1u, 1, v31);
  }

  else
  {
    sub_29D760444(&v76, &qword_2A17B3DE0, sub_29D71C038);
    v33 = v61;
    v31 = v62;
    v34 = *(v61 + 56);
    v30 = v75;
    v34(v75, 1, 1, v62);
  }

  v35 = v63;
  sub_29D7603C4(v30, v63);
  if ((*(v33 + 48))(v35, 1, v31) == 1)
  {
    sub_29D760444(v35, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
    v36 = v28;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v38 = sub_29D937878();
    v39 = sub_29D93A288();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v76 = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_29D6C2364(0xD000000000000030, 0x800000029D95F420, &v76);
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v76);
      _os_log_impl(&dword_29D677000, v38, v39, "[%{public}s.%{public}s]: Highlights not found. Cannot replace", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v41, -1, -1);
      MEMORY[0x29ED6BE30](v40, -1, -1);
    }
  }

  else
  {
    v42 = v33;
    (*(v33 + 32))(v64, v35, v31);
    v36 = v28;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v43 = sub_29D937898();
    sub_29D69C6C0(v43, qword_2A1A2C008);
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v76 = v47;
      *v46 = 136446466;
      *(v46 + 4) = sub_29D6C2364(0xD000000000000030, 0x800000029D95F420, &v76);
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v76);
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s.%{public}s]: Replacing highlights with BloodPressureJournalHighlightsComponent", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }

    sub_29D936158();
    v48 = type metadata accessor for BloodPressureJournalHighlightsComponent(0);
    *(&v77 + 1) = v48;
    v78 = sub_29D7604F4();
    v49 = sub_29D693F78(&v76);
    v50 = *(v48 + 20);
    v51 = v64;
    (*(v42 + 16))(v49 + v50, v64, v31);
    v34(v49 + v50, 0, 1, v31);
    *v49 = 0xD00000000000001FLL;
    v49[1] = 0x800000029D95F460;
    v26 = v74;
    sub_29D936BC8();

    (*(v42 + 8))(v51, v31);
    sub_29D760444(&v76, &qword_2A17B3DE0, sub_29D71C038);
    v30 = v75;
  }

  *(&v77 + 1) = &type metadata for BloodPressureJournalExportPDFComponent;
  v78 = sub_29D7604A0();
  *&v76 = 0xD000000000000026;
  *(&v76 + 1) = 0x800000029D95F3F0;
  sub_29D936178();
  v52 = v68;
  v53 = v71;
  (v66)(v68, v67, v71);
  sub_29D936BB8();

  v65(v52, v53);
  sub_29D69417C(&v76);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v54 = sub_29D937898();
  sub_29D69C6C0(v54, qword_2A1A2C008);
  v55 = sub_29D937878();
  v56 = sub_29D93A268();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v76 = v58;
    *v57 = 136446466;
    *(v57 + 4) = sub_29D6C2364(0xD000000000000030, 0x800000029D95F420, &v76);
    *(v57 + 12) = 2082;
    *(v57 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v76);
    _os_log_impl(&dword_29D677000, v55, v56, "[%{public}s.%{public}s]: Creating custom BP data type room", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v58, -1, -1);
    MEMORY[0x29ED6BE30](v57, -1, -1);
  }

  (*(v72 + 32))(v73, v36, v26);
  return sub_29D760444(v30, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
}

void sub_29D75FF9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D9360C8();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_29D6945AC(v10, v14);
      sub_29D693E2C(v14, v14[3]);
      if (sub_29D935C98() == a1 && v11 == a2)
      {

LABEL_12:

        sub_29D6945AC(v14, a3);
        sub_29D69417C(v14);
        return;
      }

      v13 = sub_29D93AD78();

      if (v13)
      {
        goto LABEL_12;
      }

      ++v9;
      sub_29D69417C(v14);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_29D7600D0(uint64_t a1)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = sub_29D937878();
  v3 = sub_29D93A268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_29D6C2364(0xD000000000000037, 0x800000029D95F2F0, &v7);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95F330, &v7);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: Creating BP data type room for sharing", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  return sub_29D936148();
}

unint64_t sub_29D760274()
{
  result = qword_2A17B3DD8;
  if (!qword_2A17B3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DD8);
  }

  return result;
}

void sub_29D7602C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_29D76031C()
{
  result = qword_2A17B3DE8;
  if (!qword_2A17B3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DE8);
  }

  return result;
}

unint64_t sub_29D760370()
{
  result = qword_2A17B3DF0;
  if (!qword_2A17B3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DF0);
  }

  return result;
}

uint64_t sub_29D7603C4(uint64_t a1, uint64_t a2)
{
  sub_29D7602C8(0, &qword_2A17B3DD0, MEMORY[0x29EDC2638]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D760444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7602C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D7604A0()
{
  result = qword_2A17B3DF8;
  if (!qword_2A17B3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3DF8);
  }

  return result;
}

unint64_t sub_29D7604F4()
{
  result = qword_2A17B3E00[0];
  if (!qword_2A17B3E00[0])
  {
    type metadata accessor for BloodPressureJournalHighlightsComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A17B3E00);
  }

  return result;
}

void *sub_29D7605B8@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29D733A40(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BloodPressurePDFValidSamplesQuery();
  swift_allocObject();
  result = sub_29D760C04(a1, a2);
  if (result[4])
  {
    v14[1] = result[4];
    sub_29D761B34(0);
    sub_29D761CDC(0, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D761E80(&qword_2A17B3508, sub_29D761B34, MEMORY[0x29EDB8AD8]);

    sub_29D938468();

    sub_29D761E80(&qword_2A17B3510, sub_29D733A40, MEMORY[0x29EDB8908]);
    v13 = sub_29D938418();

    result = (*(v8 + 8))(v11, v7);
    *a3 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7607E0(void **a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v25 - v9;
  v11 = *a1;
  if (*a1)
  {
    sub_29D937818();
    v12 = v11;
    v13 = sub_29D937878();
    v14 = sub_29D93A288();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v11;
      v26 = v16;
      *v15 = 136315138;
      v17 = v11;
      sub_29D6A0CD0();
      v18 = sub_29D939DA8();
      v20 = sub_29D6C2364(v18, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_29D677000, v13, v14, "Encountered error in BloodPressurePDFValidSamplesQuery: %s", v15, 0xCu);
      sub_29D69417C(v16);
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    sub_29D937818();
    v22 = sub_29D937878();
    v23 = sub_29D93A2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_29D677000, v22, v23, "BloodPressurePDFValidSamplesQuery succeeded", v24, 2u);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

double sub_29D760A84()
{

  return result;
}

void *sub_29D760B20()
{
  v0 = sub_29D935568();

  return v0;
}

uint64_t sub_29D760BBC()
{
  sub_29D760B20();

  return swift_deallocClassInstance();
}

void *sub_29D760C04(void *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v34 = a1;
  v37 = *v2;
  v36 = sub_29D9331D8();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v36, v6);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v38 = &v31 - v9;
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = MEMORY[0x2A1C7C4A8](v13, v14);
  v17 = &v31 - v16;
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v31 - v19;
  sub_29D934708();
  swift_allocObject();
  v2[3] = sub_29D9346F8();
  v2[4] = 0;
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v2[5] = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  v21 = v34;
  v2[2] = v34;
  v34 = v21;
  sub_29D702278();
  (*(v11 + 16))(v17, v20, v10);
  sub_29D9339E8();
  v22 = v38;
  sub_29D933188();
  v23 = v35;
  v24 = v36;
  (*(v4 + 16))(v35, v22, v36);
  v25 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  (*(v4 + 32))(v28 + v25, v23, v24);
  *(v28 + v26) = v34;
  *(v28 + v27) = v31;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  sub_29D761B34(0);
  swift_allocObject();

  v29 = sub_29D938368();
  (*(v4 + 8))(v38, v24);
  (*(v33 + 8))(v20, v32);
  v3[4] = v29;

  return v3;
}

void sub_29D760FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a3 + 40);
  sub_29D69567C(0, &qword_2A17B3E88, 0x29EDBAD70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v15 = v13;
  v16 = sub_29D933148();
  v17 = [ObjCClassFromMetadata predicateForSamplesWithinDateInterval:v16 options:0];

  v18 = [objc_opt_self() sortDescriptorsForMostRecentSamples];
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  sub_29D939F38();

  v19 = swift_allocObject();
  v19[2] = sub_29D761C88;
  v19[3] = v12;
  v19[4] = a3;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v20 = objc_allocWithZone(MEMORY[0x29EDBAD70]);

  v21 = a5;
  v22 = a6;
  v23 = sub_29D939F18();

  aBlock[4] = sub_29D761C94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D733900;
  aBlock[3] = &unk_2A2444398;
  v24 = _Block_copy(aBlock);
  v25 = [v20 initWithSampleType:v15 predicate:v17 limit:0 sortDescriptors:v23 resultsHandler:v24];

  _Block_release(v24);

  [v21 executeQuery_];
}

void sub_29D761208(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t), uint64_t a9)
{
  v62 = a8;
  v64 = a9;
  v65 = a6;
  v13 = sub_29D937898();
  v59 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v63 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D734058(0);
  v17 = v16;
  v61 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D761CDC(0, &qword_2A17B3530, MEMORY[0x29EDB8B08]);
  v22 = v21;
  v60 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v58 - v24;
  sub_29D761D4C(0);
  v28 = MEMORY[0x2A1C7C4A8](v26, v27);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v63 = v28;
    v32 = v29;
    v33 = swift_allocObject();
    v33[2] = a4;
    v33[3] = a5;
    v34 = v64;
    v33[4] = v65;
    v33[5] = v34;
    v67 = a2;
    sub_29D761CDC(0, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D7340F4();

    v35 = sub_29D939EA8();
    MEMORY[0x2A1C7C4A8](v35, v36);
    *(&v58 - 2) = v62;
    sub_29D9381A8();
    (*(v61 + 8))(v20, v17);
    sub_29D93A7D8();
    (*(v60 + 8))(v25, v22);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_29D761E6C;
    *(v37 + 24) = v33;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_29D761E6C;
    *(v38 + 24) = v33;
    sub_29D761E80(&qword_2A17B3540, sub_29D761D4C, MEMORY[0x29EDB8B10]);
    swift_retain_n();
    v39 = v63;
    v40 = sub_29D938478();

    (*(v32 + 8))(v31, v39);
    v67 = v40;
    sub_29D938278();
    sub_29D938218();
  }

  else
  {
    v41 = v59;
    v62 = a4;
    v65 = a5;
    sub_29D937818();
    v42 = a3;
    v43 = sub_29D937878();
    v44 = sub_29D93A288();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136446466;
      v47 = sub_29D93AF08();
      v49 = sub_29D6C2364(v47, v48, &v67);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v66 = a3;
      v50 = a3;
      sub_29D761E14(0);
      v51 = sub_29D939DA8();
      v53 = sub_29D6C2364(v51, v52, &v67);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_29D677000, v43, v44, "[%{public}s]: Error fetching samples %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }

    (*(v41 + 8))(v63, v13);
    v54 = v62;
    v55 = a3;
    if (!a3)
    {
      sub_29D761DC0();
      v55 = swift_allocError();
      *v56 = 0;
    }

    v57 = a3;
    v54(v55, 1);
  }
}

void sub_29D761878(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_29D937898();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](a1, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    a3(v12, 0);
  }

  else
  {
    sub_29D937818();
    v15 = a2;
    v16 = sub_29D937878();
    v17 = sub_29D93A288();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = a3;
      v19 = v18;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v19 = 136446466;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v35);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v34 = a2;
      v23 = a2;
      sub_29D761E14(0);
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v35);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s]: Error filtering samples %{public}s", v19, 0x16u);
      v27 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v27, -1, -1);
      v28 = v19;
      a3 = v33;
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    v29 = a2;
    if (!a2)
    {
      sub_29D761DC0();
      v29 = swift_allocError();
      *v30 = 1;
    }

    v31 = a2;
    a3(v29, 1);
  }
}

void sub_29D761B34(uint64_t a1)
{
  if (!qword_2A17B3500)
  {
    sub_29D761CDC(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D6A0CD0();
    v1 = sub_29D938358();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3500);
    }
  }
}

void sub_29D761BC0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_29D9331D8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + 16);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D760FA4(a1, a2, v10, v2 + v6, v9, v11, v12);
}

uint64_t sub_29D761CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D761CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D761D4C(uint64_t a1)
{
  if (!qword_2A17B3538)
  {
    sub_29D761CDC(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    v1 = sub_29D93A7E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3538);
    }
  }
}

unint64_t sub_29D761DC0()
{
  result = qword_2A17B3E90;
  if (!qword_2A17B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3E90);
  }

  return result;
}

void sub_29D761E14(uint64_t a1)
{
  if (!qword_2A17B7AF0)
  {
    sub_29D6A0CD0();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7AF0);
    }
  }
}

uint64_t sub_29D761E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D761EDC()
{
  result = qword_2A17B3E98;
  if (!qword_2A17B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3E98);
  }

  return result;
}

id sub_29D761F30()
{
  v1 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = v0;
    sub_29D72D070();
    v7 = v6;
    [v4 setImage_];

    [v4 setContentMode_];
    v8 = *(v5 + v1);
    *(v5 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_29D76200C()
{
  v1 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView);
  }

  else
  {
    v4 = v0;
    sub_29D72D448();
    v6 = v5;
    v8 = v7;
    v9 = sub_29D72D530();
    v11 = v10;
    v12 = objc_allocWithZone(type metadata accessor for TitleOptionalDetailsView());
    v13 = sub_29D7B9084(v6, v8, v9, v11);
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = *(v4 + v1);
    *(v4 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_29D7620D8()
{
  v1 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView);
  }

  else
  {
    v4 = sub_29D762138();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D762138()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = [v3 configurationWithFont_];

    sub_29D6A0C58();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29D941B10;
    sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v6 whiteColor];
    v9 = sub_29D93A688();

    *(v5 + 32) = v9;
    v10 = [v6 quaternarySystemFillColor];
    v11 = [v6 tertiarySystemFillColor];
    v12 = sub_29D93A688();

    *(v5 + 40) = v12;
    v13 = sub_29D939F18();

    v14 = [v3 configurationWithPaletteColors_];

    v15 = [v4 configurationByApplyingConfiguration_];
    v16 = v15;
    v17 = sub_29D939D28();
    v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

    [v0 setImage_];
    v19 = [v6 secondaryLabelColor];
    [v0 setTintColor_];

    type metadata accessor for UILayoutPriority(0);
    sub_29D763438();
    sub_29D9378A8();
    LODWORD(v20) = v24;
    [v0 setContentCompressionResistancePriority:0 forAxis:v20];
    sub_29D9378A8();
    LODWORD(v21) = v24;
    [v0 setContentCompressionResistancePriority:1 forAxis:v21];
    sub_29D9378A8();
    LODWORD(v22) = v24;
    [v0 setContentHuggingPriority:0 forAxis:v22];
    sub_29D9378A8();
    LODWORD(v23) = v24;
    [v0 setContentHuggingPriority:1 forAxis:v23];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_29D762510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_29D933CE8();
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView] = 0;
  v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_lifeFactor] = a1;
  v12 = a3;
  sub_29D933C88();
  type metadata accessor for AFibBurdenLifeFactorViewModel(0);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel] = sub_29D72CDE4(a1, a2, v12, v11, sub_29D68B82C, 0);
  v13 = type metadata accessor for AFibBurdenLifeFactorView();
  v22.receiver = v4;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = sub_29D761F30();
  [v14 addSubview_];

  v16 = sub_29D76200C();
  [v14 addSubview_];

  v17 = sub_29D7620D8();
  [v14 addSubview_];

  v18 = sub_29D6C3970(*(*&v14[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel] + 16) | 0x100u);
  sub_29D762804(v18, v19);

  sub_29D762984();
  [v14 setUserInteractionEnabled_];
  v20 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:v14 action:sel_tapped];

  [v14 addGestureRecognizer_];
  return v14;
}

void sub_29D762804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_29D939D28();
    [v2 setAccessibilityIdentifier_];

    v6 = sub_29D761F30();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x6567616D492ELL, 0xE600000000000000);
    v7 = sub_29D939D28();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_29D7620D8();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x666E4965726F4D2ELL, 0xE90000000000006FLL);
    v9 = sub_29D939D28();

    [v8 setAccessibilityIdentifier_];

    v10 = sub_29D76200C();
    sub_29D7B954C(a1, a2);
  }
}

void sub_29D762984()
{
  v1 = v0;
  v51 = objc_opt_self();
  sub_29D6A0C58();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D946510;
  v3 = [v0 heightAnchor];
  v4 = sub_29D76200C();
  v5 = [v4 heightAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:30.0];
  type metadata accessor for UILayoutPriority(0);
  sub_29D763438();
  sub_29D9378A8();
  LODWORD(v7) = v52;
  [v6 setPriority_];
  *(v2 + 32) = v6;
  v8 = sub_29D761F30();
  v9 = [v8 centerXAnchor];

  v10 = [v1 leadingAnchor];
  v11 = [v9 &selRef_dataProvider + 6];

  *(v2 + 40) = v11;
  v12 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView;
  v13 = [*&v1[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___imageView] centerYAnchor];
  v14 = [v1 &selRef_setScrollEnabled_];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView;
  v17 = [*&v1[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___titleDetailView] leadingAnchor];
  v18 = [*&v1[v12] centerXAnchor];
  v19 = [v17 &selRef_dataProvider + 6];

  *(v2 + 56) = v19;
  v20 = [*&v1[v16] centerYAnchor];
  v21 = [v1 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v2 + 64) = v22;
  v23 = [*&v1[v16] topAnchor];
  v24 = [v1 &selRef_irregularHeartRhythmFooterLinkTitle];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24 constant:15.0];

  sub_29D9378A8();
  LODWORD(v26) = v52;
  [v25 setPriority_];
  *(v2 + 72) = v25;
  v27 = [*&v1[v16] bottomAnchor];
  v28 = [v1 &selRef_name + 5];
  v29 = [v27 constraintLessThanOrEqualToAnchor:v28 constant:-15.0];

  sub_29D9378A8();
  LODWORD(v30) = v52;
  [v29 setPriority_];
  *(v2 + 80) = v29;
  v31 = [*&v1[v16] trailingAnchor];
  v32 = sub_29D7620D8();
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor:v33 constant:-12.0];
  *(v2 + 88) = v34;
  v35 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView;
  v36 = [*&v1[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView____lazy_storage___infoView] trailingAnchor];
  v37 = [v1 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-16.0];

  *(v2 + 96) = v38;
  v39 = [*&v1[v35] centerYAnchor];
  v40 = [v1 centerYAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v2 + 104) = v41;
  v42 = [*&v1[v35] topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:15.0];

  sub_29D9378A8();
  LODWORD(v45) = v52;
  [v44 setPriority_];
  *(v2 + 112) = v44;
  v46 = [*&v1[v35] bottomAnchor];
  v47 = [v1 bottomAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-15.0];

  sub_29D9378A8();
  LODWORD(v49) = v52;
  [v48 &selRef_cardioFitnessAgeDeletedFooterLinkURL];
  *(v2 + 120) = v48;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v50 = sub_29D939F18();

  [v51 activateConstraints_];
}

uint64_t sub_29D763080()
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF28);
  v3 = v0;
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    v20 = ObjectType;
    *v6 = 136446467;
    swift_getMetatypeMetadata();
    v8 = sub_29D939DA8();
    v10 = sub_29D6C2364(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    v11 = sub_29D73439C(v3[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_lifeFactor]);
    v12 = [v11 identifier];

    v13 = sub_29D939D68();
    v15 = v14;

    v16 = sub_29D6C2364(v13, v15, &v19);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Info button tapped for life factor %{private}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = v3[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_lifeFactor];
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_29D8D7740(v18);
      sub_29D936978();
    }

    return sub_29D936978();
  }

  return result;
}

id sub_29D763340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D763438()
{
  result = qword_2A17B3ED0;
  if (!qword_2A17B3ED0)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3ED0);
  }

  return result;
}

uint64_t sub_29D763490()
{
  v1 = OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider_calendar;
  v2 = sub_29D933CE8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D6A0D34(v0 + OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider__unitTestViewDate);

  v3 = OBJC_IVAR____TtC5Heart41LearnHypertensionJournalViewModelProvider___observationRegistrar;
  v4 = sub_29D933E38();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_29D763598()
{
  sub_29D763490();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LearnHypertensionJournalViewModelProvider(uint64_t a1)
{
  result = qword_2A17B3F10;
  if (!qword_2A17B3F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D763644(uint64_t a1)
{
  sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    sub_29D6A08F8(319);
    if (v2 <= 0x3F)
    {
      sub_29D933E38();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_29D763780(uint64_t a1)
{
  result = sub_29D7637A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29D7637A8()
{
  result = qword_2A17B3F20;
  if (!qword_2A17B3F20)
  {
    type metadata accessor for LearnHypertensionJournalViewModelProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3F20);
  }

  return result;
}

uint64_t sub_29D763800()
{
  v1 = OBJC_IVAR____TtC5Heart40AdvertisableFeatureHeartSettingsProvider_activeDeviceSource;
  v2 = sub_29D934A68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdvertisableFeatureHeartSettingsProvider(uint64_t a1)
{
  result = qword_2A17B3F28;
  if (!qword_2A17B3F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7638F8(uint64_t a1)
{
  result = sub_29D934A68();
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

uint64_t sub_29D763998(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_29D7639C4()
{
  result = qword_2A17B3F38;
  if (!qword_2A17B3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3F38);
  }

  return result;
}

uint64_t sub_29D763A50(uint64_t a1)
{
  v2 = sub_29D763A9C();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D763A9C()
{
  result = qword_2A17B3F40;
  if (!qword_2A17B3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3F40);
  }

  return result;
}

uint64_t type metadata accessor for LearnHypertensionJournalCheckmarkView(uint64_t a1)
{
  result = qword_2A17B3F50;
  if (!qword_2A17B3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D763B64(uint64_t a1)
{
  sub_29D7647F4(319, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D763C34@<X0>(uint64_t a1@<X8>)
{
  sub_29D76464C(0, &qword_2A17B3F60, sub_29D7645A8, sub_29D764BC0, MEMORY[0x29EDBC7E8]);
  v86 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v87 = (&v77 - v5);
  v84 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v7 = MEMORY[0x2A1C7C4A8](v84, v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v77 - v11;
  v13 = sub_29D939628();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76464C(0, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
  v81 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = &v77 - v20;
  sub_29D7645A8(0);
  v85 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v82 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v83 = &v77 - v27;
  v28 = type metadata accessor for LearnHypertensionJournalCheckmarkView(0);
  if (*(v1 + *(v28 + 20)) == 1)
  {
    v29 = v28;
    v80 = a1;
    sub_29D939618();
    (*(v14 + 104))(v17, *MEMORY[0x29EDBCAB8], v13);
    v79 = sub_29D939668();

    (*(v14 + 8))(v17, v13);
    v30 = sub_29D939158();
    KeyPath = swift_getKeyPath();
    sub_29D764718(0);
    v33 = &v21[*(v32 + 36)];
    sub_29D764858(0);
    v35 = *(v34 + 28);
    sub_29D938CA8();
    v36 = sub_29D938CB8();
    (*(*(v36 - 8) + 56))(v33 + v35, 0, 1, v36);
    *v33 = swift_getKeyPath();
    *v21 = v79;
    *(v21 + 1) = 0;
    *(v21 + 8) = 1;
    *(v21 + 3) = KeyPath;
    *(v21 + 4) = v30;
    v37 = *(v1 + *(v29 + 24));
    sub_29D7646D0(0);
    *&v21[*(v38 + 36)] = v37;

    v79 = sub_29D939588();
    sub_29D699AF4(v12);
    v39 = v84;
    v40 = &v12[*(v84 + 56)];
    LODWORD(KeyPath) = *v40;
    v41 = *(v40 + 1);
    sub_29D67FE64(v12);
    sub_29D699AF4(v9);
    sub_29D67FE64(v9);
    sub_29D9386D8();
    v42 = v119;
    LODWORD(v33) = v120;
    LODWORD(v35) = v121;
    v43 = v122;
    v44 = v123;
    v45 = v124;
    v46 = sub_29D9398A8();
    v77 = v47;
    v78 = v46;
    v48 = sub_29D9398A8();
    *&v92 = v42;
    *(&v92 + 1) = __PAIR64__(v35, v33);
    *&v93 = v43;
    *(&v93 + 1) = v44;
    *&v94 = v45;
    *(&v94 + 1) = __PAIR64__(v41, KeyPath);
    v49 = v90;
    *(&v95 + 2) = v90;
    WORD3(v95) = v91;
    WORD3(v96) = v89;
    v50 = v88;
    *(&v96 + 2) = v88;
    LOWORD(v95) = 256;
    v52 = v78;
    v51 = v79;
    *(&v95 + 1) = v79;
    LOWORD(v96) = 256;
    v53 = v77;
    *(&v96 + 1) = v78;
    *&v97 = v77;
    *(&v97 + 1) = v48;
    v98 = v54;
    v55 = &v21[*(v81 + 36)];
    v56 = v97;
    *(v55 + 4) = v96;
    *(v55 + 5) = v56;
    *(v55 + 12) = v54;
    v57 = v93;
    *v55 = v92;
    *(v55 + 1) = v57;
    v58 = v95;
    *(v55 + 2) = v94;
    *(v55 + 3) = v58;
    v99 = v42;
    v100 = v33;
    v101 = v35;
    v102 = v43;
    v103 = v44;
    v104 = v45;
    v105 = KeyPath;
    v106 = v41;
    v107 = 256;
    v109 = v91;
    v108 = v49;
    v110 = v51;
    v111 = 256;
    v113 = v89;
    v112 = v50;
    v114 = v52;
    v115 = v53;
    v116 = v48;
    v117 = v54;
    sub_29D765214(&v92, &v125, sub_29D764908);
    sub_29D76527C(&v99, sub_29D764908);
    sub_29D699AF4(v12);
    sub_29D67FE64(v12);
    sub_29D699AF4(v12);
    v59 = *&v12[*(v39 + 60)];
    sub_29D67FE64(v12);
    sub_29D699AF4(v12);
    v60 = *&v12[*(v39 + 60)];
    sub_29D67FE64(v12);
    sub_29D9398A8();
    if (v59 > v60)
    {
      sub_29D93A298();
      v61 = sub_29D9390A8();
      sub_29D937758();
    }

    sub_29D9388E8();
    v62 = v82;
    sub_29D765108(v21, v82);
    v63 = (v62 + *(v85 + 36));
    v64 = v130;
    v63[4] = v129;
    v63[5] = v64;
    v63[6] = v131;
    v65 = v126;
    *v63 = v125;
    v63[1] = v65;
    v66 = v128;
    v63[2] = v127;
    v63[3] = v66;
    v67 = v83;
    sub_29D7651B0(v62, v83);
    sub_29D765214(v67, v87, sub_29D7645A8);
    swift_storeEnumTagMultiPayload();
    sub_29D764BC0(0);
    sub_29D764CD4();
    sub_29D765058();
    sub_29D938DE8();
    return sub_29D76527C(v67, sub_29D7645A8);
  }

  else
  {
    sub_29D699AF4(v12);
    v69 = v84;
    v70 = &v12[*(v84 + 56)];
    v71 = *v70;
    v72 = *(v70 + 1);
    sub_29D67FE64(v12);
    sub_29D699AF4(v12);
    sub_29D67FE64(v12);
    sub_29D699AF4(v12);
    v73 = *&v12[*(v69 + 60)];
    sub_29D67FE64(v12);
    sub_29D699AF4(v12);
    v74 = *&v12[*(v69 + 60)];
    sub_29D67FE64(v12);
    sub_29D9398A8();
    if (v73 > v74)
    {
      sub_29D93A298();
      v75 = sub_29D9390A8();
      sub_29D937758();
    }

    sub_29D9388E8();
    *&v118[86] = v130;
    *&v118[102] = v131;
    *&v118[6] = v125;
    *&v118[22] = v126;
    *&v118[54] = v128;
    *&v118[70] = v129;
    *&v118[38] = v127;
    v76 = v87;
    *v87 = v71;
    v76[1] = v72;
    *(v76 + 4) = 256;
    *(v76 + 74) = *&v118[64];
    *(v76 + 90) = *&v118[80];
    *(v76 + 106) = *&v118[96];
    *(v76 + 15) = *&v118[110];
    *(v76 + 10) = *v118;
    *(v76 + 26) = *&v118[16];
    *(v76 + 42) = *&v118[32];
    *(v76 + 58) = *&v118[48];
    swift_storeEnumTagMultiPayload();
    sub_29D764BC0(0);
    sub_29D764CD4();
    sub_29D765058();
    return sub_29D938DE8();
  }
}

void sub_29D7645A8(uint64_t a1)
{
  if (!qword_2A17B3F68)
  {
    sub_29D76464C(255, &qword_2A17B3F70, sub_29D7646D0, sub_29D764908, MEMORY[0x29EDBC558]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3F68);
    }
  }
}

void sub_29D76464C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D764760(uint64_t a1)
{
  if (!qword_2A17B3F88)
  {
    sub_29D764AA0(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29D727974(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3F88);
    }
  }
}

void sub_29D7647F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D76488C()
{
  if (!qword_2A17B3F98)
  {
    v0 = sub_29D938F78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3F98);
    }
  }
}

void sub_29D764908(uint64_t a1)
{
  if (!qword_2A17B3FA0)
  {
    sub_29D76499C(255);
    sub_29D764B78(&qword_2A17B3FC8, sub_29D76499C, MEMORY[0x29EDBC568]);
    v1 = sub_29D938DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3FA0);
    }
  }
}