uint64_t sub_18BA06048@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C08, &qword_18BC44600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerButtonFooterRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C08, &qword_18BC44600);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18, &qword_18BC44540);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C08, &qword_18BC44600);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s18ReaderButtonFooterCMa();
  sub_18BC212A8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C08, &qword_18BC44600);
  return swift_endAccess();
}

double sub_18BA062B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = &Strong[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource];
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);

  if (v8)
  {
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(a1, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18BA0635C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C00, &qword_18BC445F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___globalHeaderFooterRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C00, &qword_18BC445F8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28, &qword_18BC44560);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C00, &qword_18BC445F8);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s16MainHeaderFooterCMa();
  sub_18BC212A8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C00, &qword_18BC445F8);
  return swift_endAccess();
}

void sub_18BA065CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = &Strong[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource];
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);

  if (v8)
  {
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(a1, ObjectType, v9);
    if (qword_1EA9D2198 != -1)
    {
      swift_once();
    }

    v11 = *&qword_1EA9F79B8;
    v12 = *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius];
    *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius] = qword_1EA9F79B8;
    if (v11 != v12)
    {
      sub_18BC17D84();
    }

    v13 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectRelease();
    v15 = *&v13[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter];
    *&v13[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter] = a1;
    v14 = a1;
  }
}

id sub_18BA0671C()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource;
  v2 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource);
  }

  else
  {
    v4 = sub_18BA06780(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18BA06780(uint64_t a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CE0, &qword_18BC446E8);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28, &qword_18BC44560);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570, &qword_18BC3E440);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8, &unk_18BC44530);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18, &qword_18BC44540);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8, &qword_18BC44528);
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8, &qword_18BC44520);
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8, &qword_18BC44518);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v47 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8, &qword_18BC44510);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v47 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8, &qword_18BC44508);
  v20 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998, &qword_18BC44500);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988, &unk_18BC444F0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v47 - v29;
  sub_18BA03A5C(&v47 - v29);
  (*(v28 + 8))(v30, v27);
  sub_18BA03F68(v26);
  (*(v24 + 8))(v26, v23);
  sub_18BA043A8(v22);
  (*(v20 + 8))(v22, v51);
  v31 = v52;
  sub_18BA047F4(v52);
  (*(v53 + 8))(v31, v54);
  v32 = v55;
  sub_18BA04EA4(v55);
  (*(v56 + 8))(v32, v57);
  v33 = v58;
  sub_18BA0525C(v58);
  (*(v59 + 8))(v33, v60);
  v34 = v61;
  sub_18BA054D4(v61);
  (*(v62 + 8))(v34, v63);
  v35 = v64;
  sub_18BA06048(v64);
  (*(v65 + 8))(v35, v66);
  v36 = v67;
  sub_18BA058C0(v67);
  (*(v68 + 8))(v36, v69);
  v37 = v70;
  sub_18BA05BB0(v70);
  (*(v71 + 8))(v37, v72);
  v38 = v73;
  sub_18BA0635C(v73);
  result = (*(v74 + 8))(v38, v75);
  v40 = *(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
  if (v40)
  {
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CE8, &qword_18BC446F0));
    v42 = v40;
    v43 = sub_18BC1FCE8();
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_18BC1E1A8();
    sub_18BC1FD08();

    sub_18BA110AC();
    sub_18BA11100();
    v44 = v47;
    sub_18BC1FD68();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v50;
    sub_18BC1FD58();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_18BC1FD48();
    v46 = v49;
    (*(v49 + 16))(v48, v44, v45);
    sub_18BC1FD88();
    (*(v46 + 8))(v44, v45);
    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA071A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8, &qword_18BC44508);
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998, &qword_18BC44500);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988, &unk_18BC444F0);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8, &unk_18BC44530);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8, &qword_18BC44528);
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v68 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8, &qword_18BC44520);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8, &qword_18BC44518);
  v69 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8, &qword_18BC44510);
  v68 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - v23;
  v25 = *a3;
  v26 = *(a3 + 8);
  v87 = a4;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = sub_18BA0671C();

  v88 = a2;
  sub_18BC1EDC8();
  sub_18BC1FD38();

  v29 = v90;
  if (v90 == 1)
  {
    return 0;
  }

  v32 = v91;
  v31 = v92;
  if (v26)
  {
    if (v26 == 1)
    {
      v33 = v90;
      v34 = swift_unknownObjectUnownedLoadStrong();
      v35 = v84;
      sub_18BA03A5C(v84);

      v90 = v25;
      _s8ListCellCMa(0);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5C70, &qword_18BC436C8);
      v36 = sub_18BC212B8();
      sub_18BA0FEE0(v33, v32, v31);
      v37.n128_f64[0] = sub_18B9B8894(v25, 1);
      (*(v85 + 8))(v35, v86, v37);
      return v36;
    }

    v46 = v25;
    v47 = [v25 displayOption];
    if (!v47)
    {
      v54 = v29;
      v55 = swift_unknownObjectUnownedLoadStrong();
      v41 = v78;
      sub_18BA03F68(v78);

      v90 = v46;
      _s9PopUpCellCMa();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500, &qword_18BC44640);
      v36 = sub_18BC212B8();
      sub_18BA0FEE0(v54, v32, v31);
      v43.n128_f64[0] = sub_18B9B8894(v46, 2);
      v45 = v79;
      v44 = v80;
      goto LABEL_21;
    }

    if (v47 == 1)
    {
      v48 = v29;
      v49 = swift_unknownObjectUnownedLoadStrong();
      v41 = v81;
      sub_18BA043A8(v81);

      v90 = v46;
      _s10SwitchCellCMa();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500, &qword_18BC44640);
      v36 = sub_18BC212B8();
      sub_18BA0FEE0(v48, v32, v31);
      v43.n128_f64[0] = sub_18B9B8894(v46, 2);
      v45 = v82;
      v44 = v83;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v38 = [v25 type];
  if (v38 > 1)
  {
    switch(v38)
    {
      case 2:
        v56 = v29;
        v57 = swift_unknownObjectUnownedLoadStrong();
        sub_18BA0525C(v18);

        v90 = v25;
        _s20ListenToPageCardCellCMa();
        type metadata accessor for SFBrowsingAssistantCardItem(0);
        v58 = v25;
        v36 = sub_18BC212B8();
        sub_18BA0FEE0(v56, v32, v31);
        v59.n128_f64[0] = sub_18B9B8894(v25, 0);
        (*(v70 + 8))(v18, v71, v59);
        return v36;
      case 3:
        v60 = v29;
        v61 = swift_unknownObjectUnownedLoadStrong();
        v41 = v72;
        sub_18BA054D4(v72);

        v90 = v25;
        _s14ReaderCardCellCMa();
        type metadata accessor for SFBrowsingAssistantCardItem(0);
        v62 = v25;
        v36 = sub_18BC212B8();
        sub_18BA0FEE0(v60, v32, v31);
        v43.n128_f64[0] = sub_18B9B8894(v25, 0);
        v45 = v73;
        v44 = v74;
        goto LABEL_21;
      case 4:
        v39 = v29;
        v40 = swift_unknownObjectUnownedLoadStrong();
        v41 = v75;
        sub_18BA058C0(v75);

        v90 = v25;
        _s21ReaderOptionsCardCellCMa();
        type metadata accessor for SFBrowsingAssistantCardItem(0);
        v42 = v25;
        v36 = sub_18BC212B8();
        sub_18BA0FEE0(v39, v32, v31);
        v43.n128_f64[0] = sub_18B9B8894(v25, 0);
        v45 = v76;
        v44 = v77;
LABEL_21:
        (*(v45 + 8))(v41, v44, v43);
        return v36;
    }

LABEL_17:
    sub_18BA0FEE0(v29, v32, v31);
    return 0;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v50 = v29;
      v51 = swift_unknownObjectUnownedLoadStrong();
      sub_18BA04EA4(v21);

      v90 = v25;
      _s14EntityCardCellCMa();
      type metadata accessor for SFBrowsingAssistantCardItem(0);
      v52 = v25;
      v36 = sub_18BC212B8();
      sub_18BA0FEE0(v50, v32, v31);
      v53.n128_f64[0] = sub_18B9B8894(v25, 0);
      (*(v69 + 8))(v21, v19, v53);
      return v36;
    }

    goto LABEL_17;
  }

  v63 = v29;
  v64 = swift_unknownObjectUnownedLoadStrong();
  sub_18BA047F4(v24);

  v90 = v25;
  _s15ConsentCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  v65 = v25;
  v66 = sub_18BC212B8();
  sub_18BA0FEE0(v63, v32, v31);
  v67 = sub_18B9B8894(v25, 0);
  (*(v68 + 8))(v24, v22, v67);
  return v66;
}

uint64_t sub_18BA07B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570, &qword_18BC3E440);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28, &qword_18BC44560);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18, &qword_18BC44540);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  if (a2 == 0xD000000000000012 && 0x800000018BC64080 == a3 || (sub_18BC21FD8() & 1) != 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BA06048(v17);

    _s18ReaderButtonFooterCMa();
    v19 = sub_18BC212C8();
    (*(v15 + 8))(v17, v14);
  }

  else if (a2 == 0xD000000000000012 && 0x800000018BC64060 == a3 || (sub_18BC21FD8() & 1) != 0)
  {
    v21 = swift_unknownObjectUnownedLoadStrong();
    sub_18BA0635C(v13);

    _s16MainHeaderFooterCMa();
    v19 = sub_18BC212C8();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (sub_18BC20BD8() == a2 && v22 == a3)
    {
    }

    else
    {
      v23 = sub_18BC21FD8();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    v24 = swift_unknownObjectUnownedLoadStrong();
    sub_18BA05BB0(v9);

    sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
    v19 = sub_18BC212C8();
    (*(v26 + 8))(v9, v27);
  }

  return v19;
}

id sub_18BA07F2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_18BA0671C();
    v15[1] = v6;
    v16 = v7;
    sub_18BC1FE08();

    v11 = sub_18BC1EDD8();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5, 1, v11) == 1)
    {

      sub_18B988BAC(v5, &unk_1EA9D5BD0, &qword_18BC42210);
    }

    else
    {
      v13 = sub_18BC1EDC8();
      (*(v12 + 8))(v5, v11);
      if ((sub_18BA03E68(v13) & 1) != 0 && v7 == 1)
      {
        v14 = [v6 isConfigurable];

        return v14;
      }
    }

    return 0;
  }

  return result;
}

void sub_18BA080EC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CF0, &qword_18BC446F8);
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CF8, &qword_18BC44700);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong + OBJC_IVAR___SFBrowsingAssistantCollection_delegate;
    v15 = Strong;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v46 = v2;
      v47 = v12;
      v48 = v16;
      v49 = v15;
      v45 = *(v14 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D5D00, &qword_18BC44708);
      v17 = sub_18BC1FBB8();
      v18 = v17;
      v59 = *(v17 + 16);
      if (v59)
      {
        v19 = 0;
        v58 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v57 = v5 + 16;
        v53 = @"PageMenuSectionFavorites";
        v54 = v17;
        v55 = v5;
        v56 = (v5 + 8);
        while (v19 < *(v18 + 16))
        {
          (*(v5 + 16))(v7, v58 + *(v5 + 72) * v19, v4);
          sub_18BC1FF48();
          v21 = v60;
          if (v60)
          {
            v22 = v60;
            v23 = sub_18BC20BD8();
            v25 = v24;
            if (v23 == sub_18BC20BD8() && v25 == v26)
            {
              sub_18BA0FEF0(v21);

              v5 = v55;
LABEL_12:

              v27 = *(v5 + 32);
              v28 = v50;
              v27(v50, v7, v4);
              v27(v47, v28, v4);
              v29 = v51;
              sub_18BC1FF38();
              v30 = v46;
              v31 = sub_18BC1FE38();
              (*(v52 + 8))(v29, v30);
              v32 = 0;
              v33 = *(v31 + 16);
              v34 = MEMORY[0x1E69E7CC0];
LABEL_13:
              v35 = (v31 + 40 + 16 * v32);
              while (1)
              {
                if (v33 == v32)
                {

                  v41 = [objc_opt_self() safari_browserDefaults];
                  type metadata accessor for SFBrowsingAssistantMenuAction(0);
                  v42 = sub_18BC20D88();

                  [v41 browsingAssistant:v42 setFavoritedMenuActions:?];

                  ObjectType = swift_getObjectType();
                  v44 = v49;
                  (*(v45 + 8))(v49, ObjectType);

                  swift_unknownObjectRelease();
                  (*v56)(v47, v4);
                  return;
                }

                if (v32 >= *(v31 + 16))
                {
                  break;
                }

                v36 = v35 + 16;
                ++v32;
                v37 = *v35;
                v35 += 16;
                if (v37 == 1)
                {
                  v38 = [*(v36 - 3) menuAction];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v34 = sub_18B9B5EC4(0, v34[2] + 1, 1, v34);
                  }

                  v40 = v34[2];
                  v39 = v34[3];
                  if (v40 >= v39 >> 1)
                  {
                    v34 = sub_18B9B5EC4((v39 > 1), v40 + 1, 1, v34);
                  }

                  v34[2] = v40 + 1;
                  v34[v40 + 4] = v38;
                  goto LABEL_13;
                }
              }

              __break(1u);
              break;
            }

            v20 = sub_18BC21FD8();
            sub_18BA0FEF0(v21);

            v18 = v54;
            v5 = v55;
            if (v20)
            {
              goto LABEL_12;
            }
          }

          ++v19;
          (*v56)(v7, v4);
          if (v59 == v19)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_22:
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_18BA08698()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  v2 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] & 1) != 0 || (v0[OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage])
  {
    goto LABEL_23;
  }

  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension_];
  if (qword_1EA9D2190 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1EA9F79B0;
  v6 = [v3 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v6];

  v8 = [v0 traitCollection];
  v9 = [v8 _presentationSemanticContext];

  if (v9 == 3)
  {
    v10 = 1;
  }

  else if ([v0 _isInPopoverPresentation])
  {
    v10 = 1;
  }

  else
  {
    v10 = 5;
  }

  v11 = [v0 traitCollection];
  v12 = [v11 _presentationSemanticContext];

  if (v12 == 3 || [v0 _isInPopoverPresentation])
  {
    if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v13 = -*&v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 16];
  }

  else
  {
    if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = *&v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 16];
  }

  v14 = v7;
  v15 = sub_18BC20B98();
  v16 = objc_opt_self();
  v17 = [v16 boundarySupplementaryItemWithLayoutSize:v14 elementKind:v15 alignment:v10 absoluteOffset:{0.0, v13}];

  [v17 setZIndex_];
  v18 = &v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
    __break(1u);
    goto LABEL_38;
  }

  [v17 setContentInsets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18BC3E3E0;
  *(v19 + 32) = v17;
  sub_18B7B0AC0(0, &qword_1EA9D5BF0, 0x1E6995548);
  v20 = v17;
  v21 = sub_18BC20D88();

  [v1 setBoundarySupplementaryItems_];

  if (![objc_opt_self() isSolariumEnabled] || v0[v2] == 1 || v0[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable] != 1)
  {

LABEL_23:
    v25 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v26 = objc_allocWithZone(type metadata accessor for CompositionalLayout());
    v38[4] = sub_18BA10F9C;
    v38[5] = v25;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = sub_18B9B53C0;
    v38[3] = &block_descriptor_121;
    v27 = _Block_copy(v38);
    sub_18BC1E1A8();
    [v26 initWithSectionProvider:v27 configuration:v1];

    _Block_release(v27);

    return;
  }

  v22 = [v0 traitCollection];
  v23 = [v22 _presentationSemanticContext];

  if (v23 == 3)
  {
    v24 = 1;
  }

  else if ([v0 _isInPopoverPresentation])
  {
    v24 = 1;
  }

  else
  {
    v24 = 5;
  }

  v28 = [v0 traitCollection];
  v29 = [v28 _presentationSemanticContext];

  if (v29 == 3 || [v0 _isInPopoverPresentation])
  {
    if (v18[12])
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v30 = v18[7] * -2.0 - v5;
    goto LABEL_33;
  }

  if ((v18[12] & 1) == 0)
  {
    v30 = v5 + v18[7] + v18[7];
LABEL_33:
    v31 = v14;
    v32 = sub_18BC20B98();
    v33 = [v16 boundarySupplementaryItemWithLayoutSize:v31 elementKind:v32 alignment:v24 absoluteOffset:{0.0, v30}];

    [v33 setZIndex_];
    [v33 setPinToVisibleBounds_];
    if ((v18[12] & 1) == 0)
    {
      [v33 setContentInsets_];
      v34 = v33;
      v35 = [v1 boundarySupplementaryItems];
      v36 = sub_18BC20D98();

      MEMORY[0x18CFFC270]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v37 = sub_18BC20D88();

      [v1 setBoundarySupplementaryItems_];

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
}

void sub_18BA08D68(char *a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18BA0671C();

  sub_18BC1FD38();
  if (!v24)
  {
    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = sub_18BA10C40();
    goto LABEL_6;
  }

  if (v24 != 1)
  {
    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = sub_18BA08F3C(a2, v25, v26);
LABEL_6:
    v9 = v8;

    v10 = swift_unknownObjectUnownedLoadStrong();
    v11 = *&v10[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
    v12 = v11;
    v13 = v9;

    if (v11)
    {
      v14 = [v12 numberOfSections];

      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (!v15)
      {
        v17 = swift_unknownObjectUnownedLoadStrong();
        v18 = *&v17[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 32];
        v19 = *&v17[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 48];
        v20 = v17[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96];

        if ((v20 & 1) == 0)
        {
          v21 = 0.0;
          if (v16 == a1 || (v22 = swift_unknownObjectUnownedLoadStrong(), v21 = *&v22[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 56], v23 = v22[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96], v22, (v23 & 1) == 0))
          {
            [v13 setContentInsets_];
            sub_18BA0FEE0(v24, v25, v26);

            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_18BA08F3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = a2;
  v22[1] = a1;
  v4 = sub_18BC1FEB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FEA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FF18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC238], v8, v14);
  sub_18BC1FEC8();
  if (qword_1EA9D2188 != -1)
  {
    swift_once();
  }

  sub_18BC1FEE8();
  v17 = [objc_opt_self() clearColor];
  sub_18BC1FEF8();
  v18 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v18 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = MEMORY[0x1E69DC280];
  }

  else
  {
    v19 = MEMORY[0x1E69DC290];
  }

  (*(v5 + 104))(v7, *v19, v4);
  result = sub_18BC1FED8();
  if (*(v24 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96))
  {
    __break(1u);
  }

  else
  {
    sub_18BC1FF08();
    sub_18B7B0AC0(0, &unk_1EA9D7FE0, 0x1E6995580);
    v21 = sub_18BC21498();
    (*(v13 + 8))(v16, v12);
    return v21;
  }

  return result;
}

void sub_18BA09250(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowsingAssistant(0);
  v47.receiver = v2;
  v47.super_class = v8;
  objc_msgSendSuper2(&v47, sel_viewDidLoad);
  sub_18BA0975C();
  v9 = [v2 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  [v9 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_18BA08698();
  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v19 collectionViewLayout:{v12, v14, v16, v18}];

  v22 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v23 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView] = v21;
  v24 = v21;

  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v24 setAllowsMultipleSelectionDuringEditing_];

  v25 = *&v2[v22];
  if (!v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v25 setAlwaysBounceVertical_];
  v26 = *&v2[v22];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46[1] = ObjectType;
  [v26 setAutoresizingMask_];
  v27 = *&v2[v22];
  if (!v27)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  v29 = v2[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet];
  v30 = objc_opt_self();
  v31 = v27;
  v32 = &selRef_systemGroupedBackgroundColor;
  if (!v29)
  {
    v32 = &selRef_clearColor;
  }

  v33 = [v30 *v32];
  [v31 setBackgroundColor_];

  if ([objc_opt_self() isSolariumEnabled])
  {
    v34 = [v2 view];
    if (!v34)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v35 = v34;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor_];
  }

  v37 = *&v2[v22];
  if (!v37)
  {
    goto LABEL_24;
  }

  if (v2[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v37 setContentInset_];
  v38 = *&v2[v22];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v38 setDelegate_];
  v39 = [v2 view];
  if (!v39)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!*&v2[v22])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = v39;
  [v39 addSubview_];

  sub_18BA098E8();
  if (v2[v28] == 1)
  {
    v41 = [v2 navigationItem];
    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v5 + 8))(v7, v4);
    v42 = sub_18BC20B98();

    [v41 setTitle_];

    sub_18BA09D28();
  }

  sub_18BA0B840(0, 255, CGRectMake, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_18BC3E410;
  v44 = sub_18BC1FE18();
  v45 = MEMORY[0x1E69DC230];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  sub_18BC212D8();
  swift_unknownObjectRelease();
}

void sub_18BA0975C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 _presentationSemanticContext];

  if (v2 == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v0 _isInPopoverPresentation];
  }

  sub_18B9F0118(v3, v0[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet], v14);
  v4 = &v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  v5 = v14[3];
  *(v4 + 2) = v14[2];
  *(v4 + 3) = v5;
  v6 = v14[5];
  *(v4 + 4) = v14[4];
  *(v4 + 5) = v6;
  v7 = v14[1];
  *v4 = v14[0];
  *(v4 + 1) = v7;
  v4[96] = 0;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v0 traitCollection];
    v11 = [v10 _presentationSemanticContext];

    v12 = &selRef_clearColor;
    if (v11 != 3 && ![v0 _isInPopoverPresentation])
    {
      v12 = &selRef_systemGroupedBackgroundColor;
    }

    v13 = [objc_opt_self() *v12];
    [v9 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_18BA098E8()
{
  v0 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC44480;
  *(inited + 32) = sub_18BA0A284();
  *(inited + 40) = sub_18BA0A2A4();
  *(inited + 48) = sub_18BA0A2C4();
  *(inited + 56) = sub_18BA0A2E4();
  *(inited + 64) = sub_18BA0A304();
  *(inited + 72) = sub_18BA0A324();
  *(inited + 80) = sub_18BA0A344();
  v2 = 0;
  *(inited + 88) = sub_18BA0A3DC();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x18CFFD010](v2, inited);
      goto LABEL_5;
    }

    if (v2 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v3 = *(inited + 8 * v2 + 32);
LABEL_5:
    v4 = v3;
    ++v2;
    sub_18BC21528();
    sub_18BC1F5A8();
    sub_18BC21538();
    [v4 updateTraitsIfNeeded];

    if (v2 == 8)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

void sub_18BA09AA4()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for BrowsingAssistant(0);
  objc_msgSendSuper2(&v18, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  Height = CGRectGetHeight(v19);
  v12 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v13 = *&v0[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = Height;
  [v13 _visibleRectEdgeInsets];
  if (v14 <= -v15)
  {
    return;
  }

  v16 = *&v0[v12];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  UIEdgeInsetsMakeWithEdges();
  [v17 _setVisibleRectEdgeInsets_];
}

void sub_18BA09BFC(char a1, char a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for BrowsingAssistant(0);
  objc_msgSendSuper2(&v6, sel_setEditing_animated_, a1 & 1, a2 & 1);
  if ((a1 & 1) == 0)
  {
    sub_18BA0B840(0, 255, CGRectMake, 0);
  }

  v5 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (v5)
  {
    [v5 setEditing_];
    sub_18BA09D28();
    if (a1)
    {
      sub_18BA0B840(0, 255, CGRectMake, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_18BA09D28()
{
  if (*(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) == 1)
  {
    v1 = v0;
    v2 = [v0 isEditing];
    sub_18B7B0AC0(0, &unk_1EA9D35A0, 0x1E69DC708);
    sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v2)
    {
      sub_18BC215E8();
      v4 = sub_18BC21268();
      v5 = [v0 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_18BC3E3E0;
      v7 = v4;
      *(v6 + 32) = [v7 creatingFixedGroup];
      sub_18B7B0AC0(0, &unk_1EA9D35C0, 0x1E69DC720);
      v8 = sub_18BC20D88();

      [v5 setLeadingItemGroups_];

      v9 = [v1 navigationItem];
      v19 = sub_18BC20D88();
      [v9 setTrailingItemGroups_];
    }

    else
    {
      v17 = v3;
      sub_18BC215E8();
      v10 = sub_18BC21268();
      v11 = [v0 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18BC3E3E0;
      v13 = v10;
      *(v12 + 32) = [v13 creatingFixedGroup];
      sub_18B7B0AC0(0, &unk_1EA9D35C0, 0x1E69DC720);
      v14 = sub_18BC20D88();

      [v11 setLeadingItemGroups_];

      v7 = [v1 navigationItem];
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v15;
      sub_18BC215E8();
      v9 = sub_18BC21268();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_18BC3E3E0;
      *(v16 + 32) = [v9 creatingFixedGroup];
      v19 = sub_18BC20D88();

      [v7 setTrailingItemGroups_];
    }
  }
}

void sub_18BA0A1B8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = a3 & 1;
    v6 = Strong;
    [Strong setEditing:v5 animated:1];
  }
}

void sub_18BA0A220(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_18BA0A364(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_18BA0A3DC()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader;
  v2 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC868]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_18BA0A450(_BYTE *a1, uint64_t a2, __n128 a3)
{
  v3 = &a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  if (a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
    goto LABEL_21;
  }

  v6 = *v3;
  v7 = *&a1[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter];
  if (v7 && (v8 = *(v7 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper)) != 0 && [v8 isFocusedInPageMenu] && ((v9 = objc_msgSend(a1, sel_traitCollection), v10 = objc_msgSend(v9, sel__presentationSemanticContext), v9, v10 == 3) || objc_msgSend(a1, sel__isInPopoverPresentation)))
  {
    if (v3[96])
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (qword_1EA9D2190 != -1)
    {
      swift_once();
      if (v3[96])
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ([objc_opt_self() isSolariumEnabled] && (a1[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] & 1) == 0 && (a1[OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage] & 1) == 0 && a1[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable] == 1 && (v3[96] & 1) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    a3.n128_u64[0] = v6;
    sub_18BA0A654(a2, a3);
  }

  v11 = [a1 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    [v11 _shouldHideArrow];
  }
}

void sub_18BA0A654(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v121 = a1;
  v4 = a2.n128_f64[0];
  v112 = sub_18BC1FA08();
  v105 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v2 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics;
  if (*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v7 = *(v6 + 48);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v10 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  if ((*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) & 1) == 0 && (*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage) & 1) == 0)
  {
    if (qword_1EA9D2190 != -1)
    {
      goto LABEL_95;
    }

LABEL_5:
    v9 = v9 + *&qword_1EA9F79B0 + *(v6 + 16);
  }

  if ([objc_opt_self() isSolariumEnabled] && (*(v10 + v3) & 1) == 0 && (*(v3 + OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage) & 1) == 0 && *(v3 + OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable) == 1)
  {
    if (qword_1EA9D2190 != -1)
    {
      goto LABEL_98;
    }

    if ((*(v6 + 96) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_13:
  sub_18BC1F9E8();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v11 = sub_18BC1FB18();
  v10 = v11;
  v119 = *(v11 + 16);
  if (v119)
  {
    v12 = 0;
    v117 = 0;
    v4 = v4 - v8 - v7;
    v111 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderOptionsCardCell;
    v110 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderCardCell;
    v118 = v11 + 32;
    v109 = (v105 + 16);
    v108 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader;
    v122 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingSwitchCell;
    v123 = v6;
    v125 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingPopUpCell;
    v130 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListCell;
    v7 = *(MEMORY[0x1E69DE090] + 8);
    v13 = &selRef_performSearchUsingQuery_;
    v116 = v11;
    v129 = v3;
    while (1)
    {
      if (v12 >= v10[2])
      {
        goto LABEL_94;
      }

      v14 = v118 + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v127 = v17;
      v128 = v16;
      if (!v15)
      {
        break;
      }

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_18BC1E3F8();
        sub_18BA0FEA0(v15, v16, v17);
        v19 = v113;
        sub_18BC1F9B8();
        v20 = sub_18BA0A3DC();
        v21 = v112;
        v134 = v112;
        v135 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v131);
        (*v109)(boxed_opaque_existential_0Tm, v19, v21);
        MEMORY[0x18CFFC900](&v131);

        LODWORD(v23) = 1148846080;
        LODWORD(v24) = 1112014848;
        [*(v3 + v108) systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v7 verticalFittingPriority:{v23, v24}];
        if (*(v123 + 96))
        {
          goto LABEL_101;
        }

        v9 = v9 + v25 + *(v123 + 8);
      }

      else
      {
        v66 = v15;
        sub_18BC1E3F8();
      }

      v126 = v12;
      v131 = v15;
      v132 = v16;
      v133 = v17;
      v67 = sub_18BC1FAC8();
      v68 = *(v67 + 16);
      if (v68)
      {
        v69 = (v67 + 40);
        while (1)
        {
          v70 = *(v69 - 1);
          v71 = *v69;
          if (v71 != 2)
          {
            if (v71 == 1)
            {
              swift_unknownObjectRetain();
              v72 = sub_18BA0A284();
              sub_18BA10500(v72, v70);

              v73 = *(v3 + v130);
              LODWORD(v74) = 1148846080;
              LODWORD(v75) = 1112014848;
              [v73 systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v7 verticalFittingPriority:{v74, v75}];
              v77 = v76;
              sub_18B9B8894(v70, 1);

              v9 = v9 + v77;
            }

            goto LABEL_65;
          }

          if (![swift_unknownObjectRetain() v13[7]])
          {
            break;
          }

          if ([v70 v13[7]] == 1)
          {
            v78 = sub_18BA0A2C4();
            v79 = [v70 displayName];
            v80 = sub_18BC20BD8();
            v82 = v81;

            v83 = &v78[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
            v84 = *&v78[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
            v85 = *&v78[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title + 8];
            *v83 = v80;
            v83[1] = v82;
            if (!v85 || (v80 == v84 ? (v86 = v85 == v82) : (v86 = 0), !v86 && (sub_18BC21FD8() & 1) == 0))
            {
              [v78 setNeedsUpdateConfiguration];
            }

            v87 = [v70 BOOLValue];
            [*&v78[OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch] setOn_];

            v90 = v122;
LABEL_87:
            LODWORD(v88) = 1148846080;
            LODWORD(v89) = 1112014848;
            [*(v3 + v90) systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v7 verticalFittingPriority:{v88, v89}];
            v103 = v102;
            sub_18B9B8894(v70, 2);
            v9 = v9 + v103;
            v13 = &selRef_performSearchUsingQuery_;
            goto LABEL_65;
          }

          sub_18B9B8894(v70, 2);
LABEL_65:
          v69 += 16;
          if (!--v68)
          {
            goto LABEL_88;
          }
        }

        v91 = sub_18BA0A2A4();
        v92 = [v70 displayName];
        v93 = sub_18BC20BD8();
        v95 = v94;

        v96 = &v91[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title];
        v97 = *&v91[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title];
        v98 = *&v91[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title + 8];
        *v96 = v93;
        v96[1] = v95;
        if (!v98 || (v93 == v97 ? (v99 = v98 == v95) : (v99 = 0), !v99 && (sub_18BC21FD8() & 1) == 0))
        {
          [v91 setNeedsUpdateConfiguration];
        }

        v100 = [v70 actions];
        sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
        v101 = sub_18BC20D98();

        *&v91[OBJC_IVAR____SFBrowsingAssistantPopUpCell_actions] = v101;

        sub_18BB80120();

        v90 = v125;
        goto LABEL_87;
      }

LABEL_88:

      v6 = v123;
      if (*(v123 + 96))
      {
        goto LABEL_100;
      }

      v8 = *(v123 + 56);
      sub_18BA0FEF0(v15);
      v9 = v9 + v8;
      v10 = v116;
      v12 = v126;
LABEL_16:
      if (++v12 == v119)
      {
        goto LABEL_91;
      }
    }

    v131 = 0;
    v132 = v16;
    v133 = v17;
    v26 = sub_18BC1FAC8();
    v27 = v26;
    v3 = *(v26 + 16);
    if (!v3)
    {

      v3 = v129;
      goto LABEL_16;
    }

    v126 = v12;
    v28 = 0;
    v29 = (v26 + 40);
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
        if ((*(v6 + 96) & 1) == 0)
        {
          goto LABEL_5;
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        swift_once();
        if (*(v6 + 96))
        {
          goto LABEL_99;
        }

LABEL_12:
        v9 = v9 + *&qword_1EA9F79B0 + *(v6 + 56);
        goto LABEL_13;
      }

      if (!*v29)
      {
        break;
      }

LABEL_30:
      ++v28;
      v29 += 16;
      if (v3 == v28)
      {

        sub_18BA0FEF0(0);
        v3 = v129;
        v10 = v116;
        v12 = v126;
        v13 = &selRef_performSearchUsingQuery_;
        goto LABEL_16;
      }
    }

    v35 = *(v29 - 1);
    v36 = v35;
    v37 = [v36 type];
    if (v37 <= 1)
    {
      if (v37)
      {
        if (v37 != 1)
        {
          goto LABEL_28;
        }

        v48 = [v36 customBodyView];
        if (!v48)
        {
          v8 = 0.0;
          goto LABEL_48;
        }

        LODWORD(v49) = 1148846080;
        LODWORD(v50) = 1112014848;
        v10 = v48;
        [v48 systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v7 verticalFittingPriority:{v49, v50}];
LABEL_47:
        v8 = v51;

LABEL_48:
        v9 = v9 + v8;
        goto LABEL_28;
      }

      v52 = sub_18BA0A2E4();
    }

    else
    {
      if (v37 != 2)
      {
        if (v37 == 3)
        {
          v30 = v129;
          v10 = sub_18BA0A324();
          sub_18BA10794(v10, v36);

          v33 = *(v30 + v110);
LABEL_27:
          LODWORD(v31) = 1148846080;
          LODWORD(v32) = 1112014848;
          [v33 systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v7 verticalFittingPriority:{v31, v32}];
          v9 = v9 + v34;
LABEL_28:
          if (*(v6 + 96))
          {
            goto LABEL_97;
          }

          v8 = *(v6 + 56);
          sub_18B9B8894(v35, 0);
          v9 = v9 + v8;
          goto LABEL_30;
        }

        if (v37 != 4)
        {
          goto LABEL_28;
        }

        v38 = sub_18BA0A344();
        v39 = [v36 readerContext];
        *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext] = v39;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (!v39)
        {
LABEL_60:
          sub_18BBAEA40(v40);
          swift_unknownObjectRelease();
          v62 = [v36 primaryAction];
          v63 = *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction];
          *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction] = v62;

          v64 = [v36 secondaryAction];
          v10 = *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction];
          *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction] = v64;
          v65 = v64;
          sub_18BBAFE90(v10);

          v33 = *(v129 + v111);
          goto LABEL_27;
        }

        v41 = *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_themePicker];
        v42 = [swift_unknownObjectRetain() configurationManager];
        v43 = v39;
        v44 = v42;
        v115 = v43;
        v45 = [v42 themeForAppearance_];

        v46 = v41;
        v47 = *(v41 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection);
        v124 = v41;
        v114 = OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection;
        if (v47 == 1)
        {
          *(v41 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v106 = &v104;
          MEMORY[0x1EEE9AC00](KeyPath);
          v107 = v45;
          *(&v104 - 2) = v41;
          *(&v104 - 8) = 1;
          v131 = v124;
          sub_18BA11174();
          v56 = v117;
          sub_18BC1EE68();
          v46 = v124;
          v117 = v56;
          v45 = v107;
        }

        if (*(v46 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme) == v45)
        {
          swift_getKeyPath();
          v131 = v124;
          sub_18BA11174();
          sub_18BC1EE78();
          v57 = v124;

          v58 = v114;
          if (*(v57 + v114))
          {
            goto LABEL_57;
          }

          [v57 sendActionsForControlEvents_];
        }

        else
        {
          v59 = swift_getKeyPath();
          v107 = &v104;
          MEMORY[0x1EEE9AC00](v59);
          *(&v104 - 2) = v46;
          *(&v104 - 1) = v45;
          v131 = v124;
          sub_18BA11174();
          v60 = v117;
          sub_18BC1EE68();
          v57 = v124;
          v117 = v60;

          v58 = v114;
        }

        if (*(v57 + v58) != 1)
        {
          swift_unknownObjectRelease();
          *(v57 + v58) = 0;
          goto LABEL_59;
        }

LABEL_57:
        v114 = swift_getKeyPath();
        v124 = &v104;
        MEMORY[0x1EEE9AC00](v114);
        *(&v104 - 2) = v57;
        *(&v104 - 8) = 0;
        v131 = v57;
        sub_18BA11174();
        v61 = v117;
        sub_18BC1EE68();
        v117 = v61;

        swift_unknownObjectRelease();
LABEL_59:
        v6 = v123;
        goto LABEL_60;
      }

      v52 = sub_18BA0A304();
    }

    v10 = v52;
    LODWORD(v53) = 1148846080;
    LODWORD(v54) = 1112014848;
    [v52 systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v7 verticalFittingPriority:{v53, v54}];
    goto LABEL_47;
  }

LABEL_91:

  if ((*(v6 + 96) & 1) == 0)
  {
    (*(v105 + 8))(v113, v112);
    return;
  }

LABEL_103:
  __break(1u);
}

void sub_18BA0B45C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - v6;
  v8 = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
    if (v9)
    {
      v10 = v5;
      v42 = v9;
      if ([v42 isFocusedInPageMenu] != (a1 & 1))
      {
        [v42 setIsFocusedInPageMenu_];
        v11 = [v1 traitCollection];
        v12 = [v11 _presentationSemanticContext];

        if (v12 == 3 || [v1 _isInPopoverPresentation])
        {
          v13 = sub_18BA0671C();
          sub_18BC1FDF8();

          v14 = &v1[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v15 = *(v14 + 1);
            v16 = [v1 traitCollection];
            v17 = [v16 _presentationSemanticContext];

            if (v17 != 3 && ![v1 _isInPopoverPresentation])
            {
              (*(v4 + 8))(v7, v10);
              swift_unknownObjectRelease();
LABEL_11:
              v24 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
              v25 = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
              if (v25)
              {
                [v25 contentOffset];
                v28 = *&v1[v24];
                if (v28)
                {
                  v29 = v26;
                  v30 = v27;
                  [v28 setScrollEnabled_];
                  v31 = *&v1[v24];
                  if (v31)
                  {
                    [v31 setContentOffset_];
                    v32 = *&v1[v24];
                    if (v32)
                    {
                      if ((v1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96] & 1) == 0)
                      {
                        v33 = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 64];
                        v34 = v32;
                        v35 = [v1 view];
                        if (v35)
                        {
                          v36 = v35;
                          v37 = -v33;
                          [v35 safeAreaInsets];
                          v39 = v38;

                          [v34 setContentOffset:1 animated:{0.0, v37 - v39}];
                          return;
                        }

LABEL_28:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }
              }

              else
              {
                __break(1u);
              }

              __break(1u);
              goto LABEL_25;
            }

            sub_18BA0A450(v1, v7, v18);
            v20 = v19;
            v22 = v21;
            ObjectType = swift_getObjectType();
            (*(v15 + 24))(v1, ObjectType, v15, v20, v22);
            (*(v15 + 32))(v1, ObjectType, v15, v20, v22);
            swift_unknownObjectRelease();
          }

          (*(v4 + 8))(v7, v10);
          goto LABEL_11;
        }
      }

      v40 = v42;
    }
  }
}

void sub_18BA0B840(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = &v4[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v53 = a3;
  v54 = a4;
  v21 = *(v19 + 1);
  v22 = v10;
  v23 = v12;
  v24 = Strong;
  v25 = sub_18BA0671C();
  v56 = v18;
  sub_18BC1FDF8();

  ObjectType = swift_getObjectType();
  v27 = *(v21 + 24);
  v52 = v24;
  v28 = v23;
  v29 = v22;
  v27(v5, ObjectType, v21);
  if (a2 != 0xFF)
  {
    v31 = v55;
    sub_18B9B8870(v55, a2);
    v32 = sub_18BC1FAD8();
    v57 = v31;
    v58 = a2;
    MEMORY[0x1EEE9AC00](v32);
    *(&v52 - 2) = &v57;
    v33 = sub_18B9B5118(sub_18BA10FF4, (&v52 - 4), v32);

    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C80, &qword_18BC429E0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18BC3E410;
      *(v34 + 32) = v31;
      *(v34 + 40) = a2;
      sub_18B9B8870(v31, a2);
      sub_18BC1FAF8();
    }

    v30.n128_f64[0] = sub_18BA0FE28(v31, a2);
  }

  (*(v29 + 16))(v28, v15, v9, v30);
  v35 = &v5[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(v35 + 1);
    v37 = [v5 traitCollection];
    v38 = [v37 _presentationSemanticContext];

    if (v38 == 3 || [v5 _isInPopoverPresentation])
    {
      sub_18BA0A450(v5, v28, v39);
      v41 = v40;
      v43 = v42;
      v44 = swift_getObjectType();
      (*(v36 + 24))(v5, v44, v36, v41, v43);
      v45 = *&v5[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource];
      sub_18BA0BD18(v15, v53, v54);

      (*(v36 + 32))(v5, v44, v36, v41, v43);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  v46 = *&v5[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource];
  sub_18BA0BD18(v15, v53, v54);

LABEL_12:
  v47 = *(v29 + 8);
  v47(v28, v9);
  if (sub_18BC1FAE8() && swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v35 + 1);
    v49 = swift_getObjectType();
    (*(v48 + 16))(v5, v49, v48);
    swift_unknownObjectRelease();
  }

  v50 = *&v5[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (v50)
  {
    v51 = v50;
    sub_18BA0C9C8(v5, v15);
    [v51 setContentInset_];
    swift_unknownObjectRelease();

    v47(v56, v9);
    v47(v15, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BA0BD18(char *a1, uint64_t a2, uint64_t a3)
{
  v100 = a3;
  v99 = a2;
  v119 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C88, &qword_18BC44670) - 8);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C90, &qword_18BC44678);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C98, &qword_18BC44680);
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v17 = &v94 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  v101 = v3;
  sub_18BC1FDF8();
  v115 = v27;
  v28 = sub_18BC1FB18();
  v116 = a1;
  v120 = sub_18BC1FB18();
  v123 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CA0, &qword_18BC44688);
  sub_18B7B0B08(&qword_1EA9D5CA8, &qword_1EA9D5CA0, &qword_18BC44688, MEMORY[0x1E69E6310]);
  sub_18BA11038();
  sub_18BC20AA8();

  v103 = v19;
  v29 = v19;
  v30 = v114;
  v31 = *(v29 + 56);
  v110 = v15;
  v31(v15, 1, 1, v18);
  v108 = v29 + 56;
  v109 = v12;
  v117 = v18;
  v107 = v31;
  v31(v12, 1, 1, v18);
  v32 = v111;
  (*(v105 + 16))(v30, v17, v111);
  info_high = SHIDWORD(v119[1].info);
  v34 = sub_18B7B0B08(&qword_1EA9D5CB8, &qword_1EA9D5C98, &qword_18BC44680, MEMORY[0x1E69E6F00]);
  v98 = v17;
  sub_18BC21128();
  sub_18BC21158();
  if (*(v30 + info_high) != v120)
  {
    v106 = (v103 + 16);
    v112 = v34;
    v113 = info_high;
    do
    {
      v43 = sub_18BC211C8();
      v46 = *v44;
      v45 = *(v44 + 8);
      v48 = *(v44 + 16);
      v47 = *(v44 + 24);
      v49 = *(v44 + 40);
      v50 = *(v44 + 41);
      v51 = *v44;
      *&v118 = *(v44 + 32);
      LODWORD(v119) = v49;
      v52 = sub_18BA1108C(v51, v45, v48, v47);
      v43(&v120, 0, v52);
      sub_18BC21168();
      if (v50 == 1)
      {
        v120 = v45;
        v121 = v48;
        v122 = v47;
        v53 = sub_18BC1FAC8();
        if (!*(v53 + 16))
        {
          v41 = v46;
          v42 = v45;
LABEL_8:
          sub_18BA1109C(v41, v42);

          goto LABEL_9;
        }

        v54 = *(v53 + 32);
        v55 = *(v53 + 40);
        sub_18B9B8870(v54, v55);

        v120 = v54;
        LOBYTE(v121) = v55;
        sub_18BC1FA48();
        v57 = v56;
        sub_18BA1109C(v46, v45);
        v58 = v55;
        v32 = v111;
        sub_18B9B8894(v54, v58);
        if ((v57 & 1) == 0)
        {
          v59 = v109;
          sub_18B988BAC(v109, &qword_1EA9D5C90, &qword_18BC44678);
          v60 = v110;
          sub_18B988BAC(v110, &qword_1EA9D5C90, &qword_18BC44678);
          v61 = *v106;
          v62 = v117;
          (*v106)(v60, v115, v117);
          v63 = v107;
          v107(v60, 0, 1, v62);
          v64 = v59;
          v65 = v116;
LABEL_17:
          v61(v64, v65, v62);
          v63(v59, 0, 1, v62);
        }
      }

      else
      {
        v120 = v45;
        v121 = v48;
        v122 = v47;
        v66 = sub_18BC1FAC8();
        if (!*(v66 + 16))
        {
          v41 = v46;
          v42 = v45;
          goto LABEL_8;
        }

        v67 = *(v66 + 32);
        v68 = *(v66 + 40);
        sub_18B9B8870(v67, v68);

        v120 = v67;
        LOBYTE(v121) = v68;
        sub_18BC1FA48();
        v70 = v69;
        sub_18BA1109C(v46, v45);
        v71 = v67;
        v32 = v111;
        sub_18B9B8894(v71, v68);
        if ((v70 & 1) == 0)
        {
          v59 = v109;
          sub_18B988BAC(v109, &qword_1EA9D5C90, &qword_18BC44678);
          v72 = v110;
          sub_18B988BAC(v110, &qword_1EA9D5C90, &qword_18BC44678);
          v61 = *v106;
          v62 = v117;
          (*v106)(v72, v116, v117);
          v63 = v107;
          v107(v72, 0, 1, v62);
          v64 = v59;
          v65 = v115;
          goto LABEL_17;
        }
      }

LABEL_9:
      v30 = v114;
      sub_18BC21158();
    }

    while (*(v30 + v113) != v120);
  }

  sub_18B988BAC(v30, &qword_1EA9D5C88, &qword_18BC44670);
  v35 = v97;
  sub_18B7CA054(v110, v97, &qword_1EA9D5C90, &qword_18BC44678);
  v36 = v103;
  v37 = *(v103 + 48);
  v38 = v117;
  if (v37(v35, 1, v117) == 1)
  {
LABEL_5:
    sub_18B988BAC(v35, &qword_1EA9D5C90, &qword_18BC44678);
    goto LABEL_35;
  }

  v39 = *(v36 + 32);
  v40 = v96;
  v39(v96, v35, v38);
  v35 = v95;
  sub_18B7CA054(v109, v95, &qword_1EA9D5C90, &qword_18BC44678);
  if (v37(v35, 1, v38) == 1)
  {
    (*(v36 + 8))(v40, v38);
    goto LABEL_5;
  }

  v39(v102, v35, v38);
  sub_18BA110AC();
  sub_18BA11100();
  v73 = v104;
  sub_18BC1FB28();
  v114 = sub_18BC1FB18();
  v74 = *(v114 + 2);
  if (v74)
  {
    v75 = (v114 + 48);
    v118 = xmmword_18BC3E410;
    v119 = @"PageMenuSectionWebsiteSettings";
    do
    {
      v76 = *(v75 - 2);
      if (v76)
      {
        v77 = *(v75 - 1);
        v78 = *v75;
        sub_18BA0FEA0(*(v75 - 2), v77, *v75);
        v79 = v76;
        v80 = sub_18BC20BD8();
        v82 = v81;
        if (v80 == sub_18BC20BD8() && v82 == v83)
        {

          sub_18BA0FEF0(v76);

          v32 = v111;
          v38 = v117;
        }

        else
        {
          v85 = sub_18BC21FD8();

          if (v85)
          {
            sub_18BA0FEF0(v76);

            v32 = v111;
            v38 = v117;
            v73 = v104;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5CD0, &qword_18BC44690);
            v86 = swift_allocObject();
            *(v86 + 16) = v118;
            *(v86 + 32) = v76;
            *(v86 + 40) = v77;
            *(v86 + 48) = v78;
            v87 = v79;
            sub_18BC1E3F8();
            v88 = v117;
            v89 = v104;
            sub_18BC1FA88();

            v120 = v76;
            v121 = v77;
            v122 = v78;
            sub_18BC1FAA8();
            if (v90)
            {
              sub_18BA0FEF0(v76);
            }

            else
            {
              v120 = v76;
              v121 = v77;
              v122 = v78;
              sub_18BC1FAC8();
              v120 = 1;
              v121 = 0;
              v122 = 0;
              sub_18BC1FA38();
              sub_18BA0FEF0(v76);
            }

            v32 = v111;
            v38 = v88;
            v73 = v89;
          }
        }
      }

      v75 += 3;
      --v74;
    }

    while (v74);
  }

  sub_18BC1FDC8();
  v91 = v73;
  v36 = v103;
  v92 = *(v103 + 8);
  v92(v91, v38);
  v92(v102, v38);
  v92(v96, v38);
LABEL_35:
  sub_18BC1FDC8();
  sub_18B988BAC(v109, &qword_1EA9D5C90, &qword_18BC44678);
  sub_18B988BAC(v110, &qword_1EA9D5C90, &qword_18BC44678);
  (*(v105 + 8))(v98, v32);
  return (*(v36 + 8))(v115, v38);
}

void sub_18BA0C9C8(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = &a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  if (a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  (*(v5 + 16))(v8, a2, v4, v6);
  v10 = sub_18BC1FA78();
  (*(v5 + 8))(v8, v4);
  if (!v10 && (a1[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] & 1) == 0)
  {
    v11 = [a1 traitCollection];
    v12 = [v11 _presentationSemanticContext];

    if (v12 != 3 && ([a1 _isInPopoverPresentation] & 1) == 0 && (v9[96] & 1) != 0)
    {
      goto LABEL_9;
    }
  }
}

uint64_t type metadata accessor for BrowsingAssistant(uint64_t a1)
{
  result = qword_1EA9D5970;
  if (!qword_1EA9D5970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BA0CE74(uint64_t a1)
{
  sub_18BA0D2AC(319, &qword_1EA9D5980, &qword_1EA9D5988, &unk_18BC444F0);
  if (v1 <= 0x3F)
  {
    sub_18BA0D2AC(319, &qword_1EA9D5990, &qword_1EA9D5998, &qword_18BC44500);
    if (v2 <= 0x3F)
    {
      sub_18BA0D2AC(319, &qword_1EA9D59A0, &qword_1EA9D59A8, &qword_18BC44508);
      if (v3 <= 0x3F)
      {
        sub_18BA0D2AC(319, &qword_1EA9D59B0, &qword_1EA9D59B8, &qword_18BC44510);
        if (v4 <= 0x3F)
        {
          sub_18BA0D2AC(319, &qword_1EA9D59C0, &qword_1EA9D59C8, &qword_18BC44518);
          if (v5 <= 0x3F)
          {
            sub_18BA0D2AC(319, &qword_1EA9D59D0, &qword_1EA9D59D8, &qword_18BC44520);
            if (v6 <= 0x3F)
            {
              sub_18BA0D2AC(319, &qword_1EA9D59E0, &qword_1EA9D59E8, &qword_18BC44528);
              if (v7 <= 0x3F)
              {
                sub_18BA0D2AC(319, &qword_1EA9D59F0, &qword_1EA9D59F8, &unk_18BC44530);
                if (v8 <= 0x3F)
                {
                  sub_18BA0D2AC(319, &unk_1EA9D5A00, &qword_1EA9D3570, &qword_18BC3E440);
                  if (v9 <= 0x3F)
                  {
                    sub_18BA0D2AC(319, &qword_1EA9D5A10, &qword_1EA9D5A18, &qword_18BC44540);
                    if (v10 <= 0x3F)
                    {
                      sub_18BA0D2AC(319, &qword_1EA9D5A20, &qword_1EA9D5A28, &qword_18BC44560);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_18BA0D2AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_18BC21848();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_18BA0D428(void *a1, uint64_t a2)
{
  v3 = sub_18BA0671C();
  sub_18BC1FD18();

  if (v10 == 255)
  {
    return 0;
  }

  if ([a1 isEditing])
  {
    v4 = v9;
    v5 = v10;
LABEL_10:
    sub_18BA0FE28(v4, v5);
    return 0;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v6 = [v9 isEnabled];
      sub_18BA0FE28(v9, 1);
      return v6;
    }

    v4 = v9;
    v5 = 2;
    goto LABEL_10;
  }

  v8 = [v9 selectionHandler];
  sub_18BA0FE28(v9, 0);
  if (v8)
  {
    _Block_release(v8);
    return 1;
  }

  return 0;
}

void sub_18BA0D6F4(void *a1, uint64_t a2)
{
  v3 = sub_18BA0671C();
  sub_18BC1FD18();

  if (v20 != 255)
  {
    if ([a1 isEditing])
    {
      v4 = sub_18BC1ED68();
      [a1 deselectItemAtIndexPath:v4 animated:0];

      v5 = v19;
      v6 = v20;
LABEL_21:
      sub_18BA0FE28(v5, v6);
      return;
    }

    if (!v20)
    {
      v15 = [v19 selectionHandler];
      if (v15)
      {
        v16 = v15;
        (*(v15 + 2))(v15);
        _Block_release(v16);
      }

      v5 = v19;
      v6 = 0;
      goto LABEL_21;
    }

    if (v20 != 1)
    {
      v5 = v19;
      v6 = 2;
      goto LABEL_21;
    }

    sub_18B9B8870(v19, 1);
    v7 = [v19 popUpMenu];
    if (v7)
    {

      v8 = sub_18BC1ED68();
      v9 = [a1 cellForItemAtIndexPath_];

      if (v9)
      {
        _s8ListCellCMa(0);
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = OBJC_IVAR____SFBrowsingAssistantListCell_menuButton;
          if (*(v10 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton))
          {
            v12 = v10;
            [*(v10 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton) setMenu_];
            v13 = *(v12 + v11);
            if (v13)
            {
              v14 = v13;
              [v14 performPrimaryAction];

              sub_18BA0FE28(v19, 1);
              sub_18BA0FE28(v19, 1);

              return;
            }
          }

          goto LABEL_20;
        }
      }
    }

    v17 = [v19 selectionHandler];
    if (v17)
    {
      v18 = v17;
      (*(v17 + 2))(v17);
      _Block_release(v18);
    }

LABEL_20:
    sub_18BA0FE28(v19, 1);
    v5 = v19;
    v6 = 1;
    goto LABEL_21;
  }
}

uint64_t sub_18BA0DA40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_18BC1EDC8();
  if (sub_18BA03E68(v8))
  {
    v9 = sub_18BC1EDC8();
    if (v9 < sub_18BC1EDC8())
    {
      v10 = sub_18BA0671C();
      v11 = sub_18BC1FCF8();

      if (__OFSUB__(v11, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

LABEL_10:

LABEL_15:
      JUMPOUT(0x18CFFA290);
    }

    if (sub_18BC1EDC8() < v9)
    {
      goto LABEL_10;
    }

    v18 = sub_18BC1EDD8();
    v13 = *(*(v18 - 8) + 16);
    v14 = v18;
    v15 = a4;
    v16 = a3;
  }

  else
  {
    v12 = sub_18BC1EDD8();
    v13 = *(*(v12 - 8) + 16);
    v14 = v12;
    v15 = a4;
    v16 = a2;
  }

  return v13(v15, v16, v14);
}

uint64_t sub_18BA0DED4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_18BC1EDD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BA0671C();
  v40 = a1;
  v41 = 1;
  swift_unknownObjectRetain();
  sub_18BC1FE08();
  swift_unknownObjectRelease();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_18B988BAC(v10, &unk_1EA9D5BD0, &qword_18BC42210);
  }

  v39 = v5;
  result = (*(v12 + 32))(v14, v10, v11);
  v17 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (v17)
  {
    v18 = v17;
    v19 = sub_18BC1ED68();
    v20 = [v18 cellForItemAtIndexPath_];

    if (v20)
    {
      _s8ListCellCMa(0);
      v21 = swift_dynamicCastClass();
      v22 = v39;
      if (!v21)
      {
        goto LABEL_14;
      }

      sub_18BA10500(v21, a1);
      v23 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource];
      sub_18BC1FDF8();

      v24 = &v2[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v37 = *(v24 + 1);
        v38 = v4;
        v25 = [v2 traitCollection];
        v26 = [v25 _presentationSemanticContext];

        if (v26 == 3 || [v2 _isInPopoverPresentation])
        {
          sub_18BA0A450(v2, v7, v27);
          v29 = v28;
          v31 = v30;
          ObjectType = swift_getObjectType();
          v33 = v37;
          (*(v37 + 24))(v2, ObjectType, v37, v29, v31);
          (*(v33 + 32))(v2, ObjectType, v33, v29, v31);
          swift_unknownObjectRelease();
          (*(v39 + 8))(v7, v38);
        }

        else
        {
          (*(v39 + 8))(v7, v38);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        (*(v22 + 8))(v7, v4);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v24 + 1);
        v35 = swift_getObjectType();
        (*(v34 + 16))(v2, v35, v34);

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_14:
      }
    }

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA0E360(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BA0671C();
  v19 = a1;
  v20 = 0;
  v12 = a1;
  sub_18BC1FE08();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_18B988BAC(v6, &unk_1EA9D5BD0, &qword_18BC42210);
  }

  result = (*(v8 + 32))(v10, v6, v7);
  v14 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
  if (v14)
  {
    v15 = v14;
    v16 = sub_18BC1ED68();
    v17 = [v15 cellForItemAtIndexPath_];

    if (v17)
    {
      _s14ReaderCardCellCMa();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        sub_18BA10794(v18, v12);
      }
    }

    sub_18BA0B840(a1, 0, CGRectMake, 0);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BA0E620(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BA0671C();
  v27 = a1;
  v28 = 2;
  swift_unknownObjectRetain();
  sub_18BC1FE08();
  swift_unknownObjectRelease();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9D5BD0, &qword_18BC42210);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (![a1 displayOption])
  {
    v19 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = v19;
    v21 = sub_18BC1ED68();
    v22 = [v20 cellForItemAtIndexPath_];

    if (v22)
    {
      _s9PopUpCellCMa();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23;
        v25 = [a1 actions];
        sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
        v26 = sub_18BC20D98();

        *(v24 + OBJC_IVAR____SFBrowsingAssistantPopUpCell_actions) = v26;

        sub_18BB80120();

        goto LABEL_14;
      }
    }
  }

  if ([a1 displayOption] == 1)
  {
    v12 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (v12)
    {
      v13 = v12;
      v14 = sub_18BC1ED68();
      v15 = [v13 cellForItemAtIndexPath_];

      if (v15)
      {
        _s10SwitchCellCMa();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v17 = v16;
          v18 = [a1 BOOLValue];
          [*(v17 + OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch) setOn_];
          (*(v8 + 8))(v10, v7);

          return;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

LABEL_14:
  (*(v8 + 8))(v10, v7);
}

void sub_18BA0E9C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_18BA0EA3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v31 - v10;
  v12 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v13 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 indexPathForCell_];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  sub_18BC1ED88();

  (*(v5 + 32))(v11, v7, v4);
  v16 = sub_18BC1EDC8();
  if (sub_18BA03E68(v16))
  {
    v18 = sub_18BA0671C();
    sub_18BC1FD18();

    v19 = v32;
    if (v32 != 255)
    {
      v20 = v31;
      if (v32 != 1)
      {
        v30 = v31;
LABEL_12:
        v17.n128_f64[0] = sub_18BA0FE28(v30, v19);
        goto LABEL_13;
      }

      v21 = *&v2[v12];
      if (v21)
      {
        sub_18B9B8870(v31, 1);
        v22 = [v21 collectionViewLayout];
        type metadata accessor for CompositionalLayout();
        *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 1;

        v23 = *&v2[v12];
        if (v23)
        {
          v24 = [v23 collectionViewLayout];
          [swift_dynamicCastClassUnconditional() invalidateLayout];

          [v20 setFavorited_];
          v25 = &v2[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v26 = *(v25 + 1);
            ObjectType = swift_getObjectType();
            (*(v26 + 8))(v2, ObjectType, v26);
            swift_unknownObjectRelease();
          }

          v28 = swift_allocObject();
          *(v28 + 16) = v2;
          v29 = v2;
          sub_18BA0B840(v20, 1, sub_18BA0FF30, v28);

          sub_18BA0FE28(v20, 1);
          v30 = v20;
          v19 = 1;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_13:
  (*(v5 + 8))(v11, v4, v17);
}

void sub_18BA0EDC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v31 - v10;
  v12 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v13 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 indexPathForCell_];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  sub_18BC1ED88();

  (*(v5 + 32))(v11, v7, v4);
  v16 = sub_18BC1EDC8();
  if ((sub_18BA03E68(v16) & 1) == 0)
  {
    v18 = sub_18BA0671C();
    sub_18BC1FD18();

    v19 = v32;
    if (v32 != 255)
    {
      v20 = v31;
      if (v32 != 1)
      {
        v30 = v31;
LABEL_12:
        v17.n128_f64[0] = sub_18BA0FE28(v30, v19);
        goto LABEL_13;
      }

      v21 = *&v2[v12];
      if (v21)
      {
        sub_18B9B8870(v31, 1);
        v22 = [v21 collectionViewLayout];
        type metadata accessor for CompositionalLayout();
        *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 1;

        v23 = *&v2[v12];
        if (v23)
        {
          v24 = [v23 collectionViewLayout];
          [swift_dynamicCastClassUnconditional() invalidateLayout];

          [v20 setFavorited_];
          v25 = &v2[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v26 = *(v25 + 1);
            ObjectType = swift_getObjectType();
            (*(v26 + 8))(v2, ObjectType, v26);
            swift_unknownObjectRelease();
          }

          v28 = swift_allocObject();
          *(v28 + 16) = v2;
          v29 = v2;
          sub_18BA0B840(v20, 1, sub_18BA0FE7C, v28);

          sub_18BA0FE28(v20, 1);
          v30 = v20;
          v19 = 1;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_13:
  (*(v5 + 8))(v11, v4, v17);
}

void sub_18BA0F0EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
  if (v2)
  {
    v4 = [v2 collectionViewLayout];
    type metadata accessor for CompositionalLayout();
    *(swift_dynamicCastClassUnconditional() + *a2) = 0;
  }

  else
  {
    __break(1u);
  }
}

id sub_18BA0F1E4(uint64_t a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v21 - v9;
  result = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (result)
  {
    result = [result indexPathForCell_];
    if (result)
    {
      v12 = result;
      sub_18BC1ED88();

      (*(v4 + 32))(v10, v6, v3);
      v13 = v1;
      v14 = sub_18BA0671C();
      sub_18BC1FD18();

      v16 = v22;
      if (v22 != 255)
      {
        v17 = v21;
        if (v22 == 2)
        {
          v18 = [v21 confirmationAlertForSwitchCell_];
          if (v18)
          {
            v19 = v18;
            [v13 presentViewController:v18 animated:1 completion:0];
          }

          else
          {
            [v17 setBoolValue_];
          }

          v20 = v17;
          v16 = 2;
        }

        else
        {
          v20 = v21;
        }

        v15.n128_f64[0] = sub_18BA0FE28(v20, v16);
      }

      return (*(v4 + 8))(v10, v3, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BA0F534(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v30 = sub_18BC1EDD8();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CompositionalLayout();
  v31.receiver = v5;
  v31.super_class = v13;
  v14 = objc_msgSendSuper2(&v31, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
  if (v14)
  {
    v15 = v14;
    sub_18B7B0AC0(0, &qword_1EA9D5BC8, 0x1E69DC858);
    v16 = sub_18BC20D98();

    if (v16 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
    {
      if (i < 1)
      {
        __break(1u);
        return;
      }

      v18 = 0;
      v19 = v16 & 0xC000000000000001;
      v28 = OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp;
      v29 = OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown;
      v20 = v10 + 1;
      v21 = v16;
      while (1)
      {
        v22 = v19 ? MEMORY[0x18CFFD010](v18, v16) : *(v16 + 8 * v18 + 32);
        v10 = v22;
        v23 = [v22 indexPath];
        sub_18BC1ED88();

        v24 = sub_18BC1EDC8();
        v16 = 100 * v24;
        if ((v24 * 100) >> 64 != (100 * v24) >> 63)
        {
          break;
        }

        v25 = sub_18BC1EDB8();
        v26 = v16 + v25;
        if (__OFADD__(v16, v25))
        {
          goto LABEL_21;
        }

        v16 = v21;
        if ((*(v5 + v29) & 1) == 0)
        {
          if ((*(v5 + v28) & 1) == 0)
          {
            goto LABEL_7;
          }

          if (__OFSUB__(0, v26))
          {
            goto LABEL_22;
          }

          if (__OFADD__(-v26, 1000))
          {
            __break(1u);
            return;
          }
        }

        [v10 setZIndex_];
LABEL_7:
        ++v18;

        (*v20)(v12, v30);
        if (i == v18)
        {
          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }
}

uint64_t sub_18BA0F87C(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 indexPath];
  sub_18BC1ED88();

  result = sub_18BC1EDC8();
  v11 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_18BC1EDB8();
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown))
  {
LABEL_7:
    [a1 setZIndex_];
    return (*(v5 + 8))(v8, v4);
  }

  if (*(v2 + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) != 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = -v12;
  if (__OFSUB__(0, v12))
  {
    goto LABEL_11;
  }

  v12 = 1000 - v12;
  if (!__OFADD__(v13, 1000))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_18BA0FDC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_18BA0FE28(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_18B9B8894(a1, a2);
  }

  return result;
}

id sub_18BA0FE3C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

double sub_18BA0FEA0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;

    sub_18BC1E3F8();
  }

  return result;
}

double sub_18BA0FEE0(void *result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    return sub_18BA0FEF0(result);
  }

  return v3;
}

double sub_18BA0FEF0(void *a1)
{
  if (a1)
  {
  }

  return result;
}

void sub_18BA0FF54(uint64_t a1, id a2)
{
  if ([a2 _presentationSemanticContext] >= 2)
  {
    sub_18BA0975C();
    v3 = *(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (v3)
    {
      v4 = v3;
      sub_18BA08698();
      v6 = v5;
      [v4 setCollectionViewLayout_];

      sub_18BA0B840(0, 255, CGRectMake, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18BA10000()
{
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) = 0;
  v1 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listCellRegistration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988, &unk_18BC444F0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___popUpCellRegistration;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998, &qword_18BC44500);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___switchCellRegistration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8, &qword_18BC44508);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___consentCardCellRegistration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8, &qword_18BC44510);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___entityCardCellRegistration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8, &qword_18BC44518);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listenToPageCardCellRegistration;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8, &qword_18BC44520);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerCardCellRegistration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8, &qword_18BC44528);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerOptionsCardCellRegistration;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8, &unk_18BC44530);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sectionHeaderRegistration;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570, &qword_18BC3E440);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerButtonFooterRegistration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18, &qword_18BC44540);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter) = 0;
  v21 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___globalHeaderFooterRegistration;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28, &qword_18BC44560);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource) = 0;
  v23 = v0 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 1;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingPopUpCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingSwitchCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingConsentCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListenToPageCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderOptionsCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BA10500(uint64_t a1, id a2)
{
  if ([a2 isEnabled])
  {
    v4 = &selRef_overrideColor;
    v5 = a2;
  }

  else
  {
    v5 = objc_opt_self();
    v4 = &selRef_secondaryLabelColor;
  }

  v6 = [v5 *v4];
  v7 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor) = v6;
  v8 = v6;
  sub_18BBD0F38(v7);

  v9 = [a2 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_18BC20BD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 subtitle];
  if (v14)
  {
    v15 = v14;
    v16 = sub_18BC20BD8();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [a2 badgeText];
  if (v19)
  {
    v20 = v19;
    v21 = sub_18BC20BD8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (a1 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText);
  v25 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText);
  v26 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText + 8);
  *v24 = v21;
  v24[1] = v23;
  sub_18BBD1C14(v25, v26);

  v27 = [a2 showsStatusAlert];
  v28 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert) = v27;
  sub_18BBD1DE4(v28);
  v29 = [a2 popUpMenu];
  v30 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_popUpMenu);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_popUpMenu) = v29;

  v31 = [a2 icon];
  v32 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_icon);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_icon) = v31;
  v33 = v31;
  sub_18BBD28E0(v32);

  v34 = [a2 showsSpinner];
  v35 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner) = v34;
  sub_18BBD30D4(v35);
  v36 = [a2 showsIndicatorDot];
  v37 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot) = v36;
  sub_18BBD2574(v37);
}

void sub_18BA10794(uint64_t a1, id a2)
{
  v4 = [a2 readerContext];
  v5 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext) = v4;
  if (v4)
  {
    if (v4 == v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
LABEL_3:
    swift_unknownObjectRetain();
    sub_18B9F3F24();
    swift_unknownObjectRelease();
  }

LABEL_4:
  swift_unknownObjectRelease();
  v6 = [a2 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_18BC20BD8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a2 bodyText];
  if (v11)
  {
    v12 = v11;
    v13 = sub_18BC20BD8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a2 disclaimerText];
  if (v16)
  {
    v17 = v16;
    v18 = sub_18BC20BD8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a2 readerContext];
  if (v21 && (v22 = [v21 isReaderAvailable], swift_unknownObjectRelease(), v22))
  {
    v23 = [a2 primaryAction];
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction;
  v26 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction) = v23;
  v27 = objc_opt_self();
  v28 = v23;
  if ([v27 isSolariumEnabled] && v26 && (v29 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton), sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0), v30 = v29, v26 = v26, v31 = sub_18BC215C8(), v30, v26, (v31 & 1) != 0))
  {

    if ((v24 & 1) == 0)
    {
LABEL_23:
      v32 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton) setHidden_];
    sub_18B9F5DE0();

    if (!v24)
    {
      goto LABEL_23;
    }
  }

  v32 = [a2 secondaryAction];
LABEL_26:
  v34 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction) = v32;
  v33 = v32;
  sub_18B9F5B38(v34);
}

void sub_18BA10AC4(uint64_t a1, id a2)
{
  v4 = [a2 readerContext];
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext) = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (v4)
  {
    v6 = [v4 configurationManager];
    v7 = [v6 themeForAppearance_];

    sub_18BB6E098(v7);
    swift_unknownObjectRelease();
  }

  sub_18BBAEA40(v5);
  swift_unknownObjectRelease();
  v8 = [a2 primaryAction];
  v9 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction) = v8;

  v10 = [a2 secondaryAction];
  v12 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction) = v10;
  v11 = v10;
  sub_18BBAFE90(v12);
}

id sub_18BA10C40()
{
  v1 = objc_opt_self();
  v2 = [v1 fractionalWidthDimension_];
  v3 = [v1 estimatedDimension_];
  v4 = objc_opt_self();
  v5 = [v4 sizeWithWidthDimension:v2 heightDimension:v3];

  v6 = [objc_opt_self() itemWithLayoutSize_];
  v7 = [v1 fractionalWidthDimension_];
  v8 = [v5 heightDimension];
  v9 = [v4 sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC3E3E0;
  *(v11 + 32) = v6;
  sub_18B7B0AC0(0, &qword_1EA9D5BF8, 0x1E6995578);
  v12 = v6;
  v13 = sub_18BC20D88();

  v14 = [v10 horizontalGroupWithLayoutSize:v9 subitems:v13];

  result = [objc_opt_self() sectionWithGroup_];
  if (*(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 56);
    v17 = result;
    [result setInterGroupSpacing_];

    return v17;
  }

  return result;
}

uint64_t sub_18BA10E98(uint64_t result, uint64_t a2)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper;
  if ((*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper) & 1) == 0)
  {
    if (result == 0xD000000000000012 && 0x800000018BC64060 == a2 || (result = sub_18BC21FD8(), (result & 1) != 0))
    {
      v4 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter);
      if (v4)
      {
        result = *(v4 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
        if (result)
        {
          *(v2 + v3) = 1;

          return [result setNeedsInitialBlink_];
        }
      }
    }
  }

  return result;
}

unint64_t sub_18BA11038()
{
  result = qword_1EA9D5CB0;
  if (!qword_1EA9D5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5CB0);
  }

  return result;
}

unint64_t sub_18BA110AC()
{
  result = qword_1EA9D5CC0;
  if (!qword_1EA9D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5CC0);
  }

  return result;
}

unint64_t sub_18BA11100()
{
  result = qword_1EA9DA040;
  if (!qword_1EA9DA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA040);
  }

  return result;
}

unint64_t sub_18BA11174()
{
  result = qword_1EA9DAE20;
  if (!qword_1EA9DAE20)
  {
    type metadata accessor for SFReaderThemePickerControl(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAE20);
  }

  return result;
}

uint64_t sub_18BA11234(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_6:
      v12 = 0;
      return v12 & 1;
    }

LABEL_5:
    (*(v7 + 8))(v10, a1);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  (*(v3 + 32))(v5, v10, v2);
  v12 = (*(*(a1 + 48) + 24))(v2);
  (*(v3 + 8))(v5, v2);
  return v12 & 1;
}

BOOL SFFluidCollectionView.Element.isItem.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t SFFluidCollectionView.Element.description.getter(uint64_t a1)
{
  v36 = *(a1 + 32);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 16);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - v17);
  v19 = *(v12 + 16);
  v19(&v31 - v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = *v18;
      v23 = v36;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v25 = swift_projectBox();
      v26 = *(TupleTypeMetadata2 + 48);
      v27 = v34;
      v28 = v35;
      (*(v35 + 16))(v34, v25, v23);
      (v19)(v14, v25 + v26, a1);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_18BC21AD8();
      MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64120);
      sub_18BC21F88();
      MEMORY[0x18CFFC150](0x657265666572202CLL, 0xEE00203A7365636ELL);
      swift_getWitnessTable();
      sub_18BC21F98();
      MEMORY[0x18CFFC150](32032, 0xE200000000000000);
      v22 = v37;
      (*(v12 + 8))(v14, a1);
      (*(v28 + 8))(v27, v23);
    }

    else
    {
      return 0x63656C6C6F63207BLL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v29 = v32;
    (*(v32 + 32))(v10, v18, v8);
    v37 = 0;
    v38 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x203A6D657469207BLL, 0xE800000000000000);
    sub_18BC21F88();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v22 = v37;
    (*(v29 + 8))(v10, v8);
  }

  else
  {
    v21 = v33;
    (*(v33 + 32))(v6, v18, v4);
    v37 = 0;
    v38 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x6F6974636573207BLL, 0xEB00000000203A6ELL);
    sub_18BC21F88();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v22 = v37;
    (*(v21 + 8))(v6, v4);
  }

  return v22;
}

uint64_t SFFluidCollectionView.Element.hashValue.getter(void *a1)
{
  sub_18BC22158();
  SFFluidCollectionView.Element.hash(into:)(v3, a1);
  return sub_18BC221A8();
}

uint64_t sub_18BA11A30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 253;
}

void sub_18BA11B64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
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

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
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
LABEL_41:
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
            goto LABEL_41;
          }
        }

LABEL_38:
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
      goto LABEL_41;
    }

    goto LABEL_38;
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

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_18BA11D38()
{
  v1 = sub_18BC21628();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC21808();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  sub_18BC1FC98();
  v10 = *(v0 + 32);
  sub_18BC1FCA8();
  sub_18BC1E3F8();
  sub_18BC1FBE8();
  sub_18BC1E3F8();
  sub_18BC1FC88();
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v13 = sub_18BC1FC18();
  sub_18BC1FC08();
  v13(v32, 0);
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = sub_18BC1FC18();
  sub_18BC1FBF8();
  v15(v32, 0);
  result = sub_18BC1FC78();
  if (*(v0 + 40) == 1)
  {
    v17 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:60.0];
    v18 = sub_18BC1FC48();
    sub_18BC1FC28();
    v18(v32, 0);
    v19 = [v11 placeholderTextColor];
    v20 = sub_18BC1FC48();
    sub_18BC1FC38();
    result = v20(v32, 0);
  }

  v21 = *(v0 + 8);
  if (v21)
  {
    v22 = v21;
    sub_18BC216D8();
    sub_18BC21678();
    (*(v28 + 104))(v3, *MEMORY[0x1E69DC508], v29);
    sub_18BC21638();
    v23 = [v22 title];
    sub_18BC20BD8();

    sub_18BC217A8();
    v25 = v30;
    v24 = v31;
    (*(v30 + 16))(v6, v9, v31);
    sub_18BC1FCB8();
    v26 = v22;
    v27 = sub_18BC1FC68();
    sub_18BC1FC58();
    v27(v32, 0);

    return (*(v25 + 8))(v9, v24);
  }

  return result;
}

double sub_18BA121A0()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC20B98();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_18BC1EE38();
  v6 = sub_18BC1EE28();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  LOBYTE(xmmword_1EA9F7DD0) = 1;
  *(&xmmword_1EA9F7DD0 + 1) = *v12;
  DWORD1(xmmword_1EA9F7DD0) = *&v12[3];
  result = 0.0;
  *(&xmmword_1EA9F7DD0 + 8) = xmmword_18BC447F0;
  qword_1EA9F7DE8 = 0xE600000000000000;
  *&xmmword_1EA9F7DF0 = v5;
  WORD4(xmmword_1EA9F7DF0) = 0;
  BYTE10(xmmword_1EA9F7DF0) = 0;
  *(&xmmword_1EA9F7DF0 + 11) = v10[1];
  HIBYTE(xmmword_1EA9F7DF0) = v11;
  qword_1EA9F7E00 = 0;
  unk_1EA9F7E08 = 0;
  *&xmmword_1EA9F7E10 = v6;
  *(&xmmword_1EA9F7E10 + 1) = v8;
  return result;
}

uint64_t sub_18BA12344()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BA12390(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

unint64_t sub_18BA123FC()
{
  result = qword_1EA9D5D98;
  if (!qword_1EA9D5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5D98);
  }

  return result;
}

unint64_t sub_18BA12454()
{
  result = qword_1EA9D5DA0;
  if (!qword_1EA9D5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5DA0);
  }

  return result;
}

uint64_t sub_18BA124D4()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7E38);
  __swift_project_value_buffer(v0, qword_1EA9F7E38);
  return sub_18BC1F2B8();
}

uint64_t sub_18BA12554()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7E50);
  __swift_project_value_buffer(v0, qword_1EA9F7E50);
  return sub_18BC1F2B8();
}

uint64_t sub_18BA12618()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7EE0);
  __swift_project_value_buffer(v0, qword_1EA9F7EE0);
  return sub_18BC1F2B8();
}

uint64_t sub_18BA126B0()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_18B7C4104(0xD000000000000012, 0x800000018BC62780), (v3 & 1) != 0) && (sub_18B7B193C(*(v1 + 56) + 32 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 256;
  }
}

unint64_t sub_18BA1274C()
{
  result = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
  qword_1EA9F7F10 = result;
  *algn_1EA9F7F18 = 0;
  qword_1EA9F7F20 = 0;
  unk_1EA9F7F28 = 0;
  qword_1EA9F7F30 = 1;
  unk_1EA9F7F38 = 0;
  qword_1EA9F7F40 = 0;
  unk_1EA9F7F48 = 0;
  return result;
}

uint64_t _s18ItemScrollPositionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s18ItemScrollPositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_18BA1288C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v3 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v4 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1);
  v5 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 2);
  v6 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 8);
  v7 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 16);
  v9 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 24);
  v8 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 32);
  v10 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v10;
  v11 = *(a1 + 32);
  *(v2 + 4) = v11;
  if (v3 != *v2 || ((v4 ^ v2[1]) & 1) != 0 || ((v5 ^ v2[2]) & 1) != 0 || ((v12 = *(v2 + 3), *(v2 + 1) == v6) ? (v13 = *(v2 + 2) == v7) : (v13 = 0), !v13 && (sub_18BC21FD8() & 1) == 0 || (v12 == v9 ? (v14 = v11 == v8) : (v14 = 0), !v14 && (sub_18BC21FD8() & 1) == 0)))
  {
    sub_18BA1307C();
  }

  return result;
}

char *sub_18BA12978(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_configuration];
  *v9 = 0;
  v9[2] = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0xE000000000000000;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_metrics];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  *v10 = *MEMORY[0x1E69DDCE0];
  *(v10 + 1) = v12;
  *(v10 + 4) = v11;
  *(v10 + 40) = xmmword_18BC44A70;
  *(v10 + 56) = xmmword_18BC44A80;
  v13 = OBJC_IVAR____SFFloatingTabBarItemView_titleTextField;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  v14 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_didBeginRetitling];
  *v14 = CGRectMake;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_editingChangedHandler];
  *v15 = CGRectMake;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler];
  *v16 = CGRectMake;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_tapHandler];
  *v17 = CGRectMake;
  v17[1] = 0;
  v23.receiver = v4;
  v23.super_class = _s8ItemViewCMa();
  v18 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = *&v18[OBJC_IVAR____SFFloatingTabBarItemView_titleTextField];
  v20 = v18;
  [v19 setAdjustsFontForContentSizeCategory_];
  [v19 setAutocapitalizationType_];
  [v19 setAutoresizingMask_];
  [v19 setDelegate_];
  [v19 setEnablesReturnKeyAutomatically_];
  [v19 setFont_];
  [v20 bounds];
  [v19 setFrame_];
  [v19 setReturnKeyType_];
  [v19 setTextAlignment_];
  [v19 addTarget:v20 action:sel_editingChanged forControlEvents:0x20000];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v20 action:sel_didReceiveTap];
  [v20 addGestureRecognizer_];

  [v20 addSubview_];
  sub_18BA1307C();

  return v20;
}

char *sub_18BA12C94(void *a1)
{
  v3 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_configuration];
  *v3 = 0;
  v3[2] = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0xE000000000000000;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_metrics];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v4 = *MEMORY[0x1E69DDCE0];
  *(v4 + 1) = v6;
  *(v4 + 4) = v5;
  *(v4 + 40) = xmmword_18BC44A70;
  *(v4 + 56) = xmmword_18BC44A80;
  v7 = OBJC_IVAR____SFFloatingTabBarItemView_titleTextField;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  v8 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_didBeginRetitling];
  *v8 = CGRectMake;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_editingChangedHandler];
  *v9 = CGRectMake;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler];
  *v10 = CGRectMake;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_tapHandler];
  *v11 = CGRectMake;
  v11[1] = 0;
  v18.receiver = v1;
  v18.super_class = _s8ItemViewCMa();
  v12 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v13 = v12;
  if (v12)
  {
    v14 = *&v12[OBJC_IVAR____SFFloatingTabBarItemView_titleTextField];
    v15 = v12;
    [v14 setAdjustsFontForContentSizeCategory_];
    [v14 setAutocapitalizationType_];
    [v14 setAutoresizingMask_];
    [v14 setDelegate_];
    [v14 setEnablesReturnKeyAutomatically_];
    [v14 setFont_];
    [v15 bounds];
    [v14 setFrame_];
    [v14 setReturnKeyType_];
    [v14 setTextAlignment_];
    [v14 addTarget:v15 action:sel_editingChanged forControlEvents:0x20000];
    v16 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v15 action:sel_didReceiveTap];
    [v15 addGestureRecognizer_];

    [v15 addSubview_];
    sub_18BA1307C();
  }

  return v13;
}

uint64_t sub_18BA12FA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    if (v4 = *(a1 + 3), v5 = *(a1 + 4), v6 = *(a2 + 3), v7 = *(a2 + 4), *(a1 + 1) == *(a2 + 1)) && *(a1 + 2) == *(a2 + 2) || (v8 = sub_18BC21FD8(), result = 0, (v8))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_18BC21FD8();
      }
    }
  }

  return result;
}

void sub_18BA1307C()
{
  v1 = *(v0 + OBJC_IVAR____SFFloatingTabBarItemView_titleTextField);
  v2 = (v0 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  [v1 setUserInteractionEnabled_];
  sub_18BC1E3F8();
  v3 = sub_18BC20B98();

  [v1 setPlaceholder_];

  if ((v2[1] & 1) == 0)
  {
    sub_18BC1E3F8();
    v4 = sub_18BC20B98();

    [v1 setText_];
  }

  if (v2[2] == 1)
  {
    v5 = objc_opt_self();
    v6 = &selRef_labelColor;
  }

  else
  {
    v7 = *v2;
    v5 = objc_opt_self();
    v6 = &selRef_secondaryLabelColor;
    if (v7)
    {
      v6 = &selRef_tertiaryLabelColor;
    }
  }

  v8 = [v5 *v6];
  [v1 setTextColor_];

  if (v2[1] == 1)
  {
    v16 = sub_18BC20B98();
    [v1 setAccessibilityIdentifier_];
  }

  else
  {
    v9 = sub_18BC20B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0, &unk_18BC51A40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC3E410;
    *(inited + 32) = 0x7463656C65537369;
    v11 = inited + 32;
    *(inited + 40) = 0xEA00000000006465;
    v12 = 1702195828;
    if (!v2[2])
    {
      v12 = 0x65736C6166;
    }

    v13 = 0xE500000000000000;
    if (v2[2])
    {
      v13 = 0xE400000000000000;
    }

    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    sub_18BA64DB8(inited);
    swift_setDeallocating();
    sub_18BA13828(v11);
    v14 = sub_18BC20998();

    v15 = WBSMakeAccessibilityIdentifier();

    if (!v15)
    {
      sub_18BC20BD8();
      v15 = sub_18BC20B98();
    }

    [v1 setAccessibilityIdentifier_];
  }
}

void sub_18BA133A0(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v5 = a1;
  v4 = sub_18BC1E1A8();
  v3(v4);
}

double sub_18BA134C0(void *a1)
{
  v2 = v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration;
  if (*(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1) == 1)
  {
    v3 = [a1 text];
    if (v3)
    {
      v4 = v3;
      v5 = sub_18BC20BD8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = *(v2 + 2);
    v10 = *(v2 + 8);
    v9 = *(v2 + 16);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v15[0] = *v2;
    v15[1] = 0;
    v15[2] = v8;
    v16 = v10;
    v17 = v9;
    v18 = v11;
    v19 = v12;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BA1288C(v15);
    v13 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler);
    sub_18BC1E1A8();
    v13(v5, v7);
  }

  return result;
}

id sub_18BA13670()
{
  v2.receiver = v0;
  v2.super_class = _s8ItemViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA13788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BA137D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18BA13828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5320, &qword_18BC43260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

double sub_18BA138AC()
{
  if (qword_1EA9D2300 != -1)
  {
    swift_once();
  }

  v0 = byte_1EA9D5F37;
  if (qword_1EA9D2310 != -1)
  {
    swift_once();
  }

  v1 = byte_1EA9D5F39;
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  LOBYTE(xmmword_1EA9D5E38) = byte_1EA9D5F36;
  BYTE1(xmmword_1EA9D5E38) = v0;
  BYTE2(xmmword_1EA9D5E38) = 1;
  *(&xmmword_1EA9D5E38 + 1) = &unk_1EFF1A0F0;
  byte_1EA9D5E48 = 1;
  unk_1EA9D5E49 = 0;
  unk_1EA9D5E4D = 65793;
  unk_1EA9D5E51 = 257;
  result = 0.5;
  xmmword_1EA9D5E58 = xmmword_18BC44B40;
  qword_1EA9D5E68 = 0x4020000000000000;
  dword_1EA9D5E70 = 0;
  byte_1EA9D5E74 = v1;
  byte_1EA9D5E75 = 0;
  return result;
}

double sub_18BA139D0()
{
  if (qword_1EA9D2300 != -1)
  {
    swift_once();
  }

  v0 = byte_1EA9D5F37;
  if (qword_1EA9D2310 != -1)
  {
    swift_once();
  }

  v1 = byte_1EA9D5F39;
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  LOBYTE(xmmword_1EA9D5E78) = byte_1EA9D5F36;
  *(&xmmword_1EA9D5E78 + 1) = v0;
  *(&xmmword_1EA9D5E78 + 1) = &unk_1EFF1A118;
  byte_1EA9D5E88 = 1;
  unk_1EA9D5E89 = 0x101010100000000;
  unk_1EA9D5E91 = 257;
  result = 0.5;
  xmmword_1EA9D5E98 = xmmword_18BC44B40;
  qword_1EA9D5EA8 = 0x4020000000000000;
  dword_1EA9D5EB0 = 0;
  byte_1EA9D5EB4 = v1;
  byte_1EA9D5EB5 = 1;
  return result;
}

double sub_18BA13AF0()
{
  LOWORD(xmmword_1EA9D5EB8) = 0;
  BYTE2(xmmword_1EA9D5EB8) = 0;
  *(&xmmword_1EA9D5EB8 + 1) = MEMORY[0x1E69E7CC0];
  qword_1EA9D5EC8 = 0x1000001010000;
  word_1EA9D5ED0 = 257;
  byte_1EA9D5ED2 = 0;
  xmmword_1EA9D5ED8 = xmmword_18BC44B50;
  qword_1EA9D5EE8 = 0x403E000000000000;
  result = 7.29290211e-304;
  dword_1EA9D5EF0 = 16777472;
  word_1EA9D5EF4 = 1;
  return result;
}

double sub_18BA13B4C()
{
  if (qword_1EA9D2318 != -1)
  {
    swift_once();
  }

  v0 = byte_1EA9D5F3A;
  if (qword_1EA9D2328 != -1)
  {
    swift_once();
  }

  v1 = byte_1EA9D5F3C;
  if (qword_1EA9D2320 != -1)
  {
    swift_once();
  }

  v2 = byte_1EA9D5F3B;
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  LOBYTE(xmmword_1EA9D5EF8) = byte_1EA9D5F36;
  *(&xmmword_1EA9D5EF8 + 1) = 0;
  *(&xmmword_1EA9D5EF8 + 1) = MEMORY[0x1E69E7CC0];
  dword_1EA9D5F08 = 0x1000000;
  word_1EA9D5F0C = 1;
  byte_1EA9D5F0E = 0;
  byte_1EA9D5F0F = v0 ^ 1;
  byte_1EA9D5F10 = 0;
  byte_1EA9D5F11 = v1 ^ 1;
  byte_1EA9D5F12 = 0;
  result = 0.4;
  xmmword_1EA9D5F18 = xmmword_18BC44B50;
  qword_1EA9D5F28 = 0x403E000000000000;
  word_1EA9D5F30 = 256;
  byte_1EA9D5F32 = v2;
  unk_1EA9D5F33 = 256;
  byte_1EA9D5F35 = 0;
  return result;
}

void sub_18BA13CC0()
{
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  if (byte_1EA9D5F36 == 1)
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_18BC20B98();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_1EA9D5F37 = v2;
}

void sub_18BA13D98()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F38 = v2;
}

void sub_18BA13E28()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F3A = v2;
}

void sub_18BA13EB8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F3B = v2;
}

void sub_18BA13F48()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F3C = v2;
}

uint64_t sub_18BA13FD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 14) = *(a2 + 46);
  return sub_18B7EB864(v5, v7) & 1;
}

double sub_18BA14034(uint64_t a1)
{
  v2 = OBJC_IVAR___SFTabThumbnailView_iconRegistration;
  *(v1 + OBJC_IVAR___SFTabThumbnailView_iconRegistration) = a1;
  sub_18BC1E1A8();

  v3 = *(v1 + OBJC_IVAR___SFTabThumbnailView_pinnedTitleView);
  if (v3)
  {
    v4 = *(v1 + v2);
    sub_18BC1E1A8();
    v5 = v3;
    sub_18BAB7E78(v4);
  }

  return result;
}

id sub_18BA140D0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 57) = 0u;
  v10 = &v4[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  *v10 = CGRectMake;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR___SFTabThumbnailView_configuration];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 1;
  *(v11 + 4) = MEMORY[0x1E69E7CC0];
  *(v11 + 5) = 1;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 10) = 0;
  *&v4[OBJC_IVAR___SFTabThumbnailView_iconRegistration] = 0;
  v12 = &v4[OBJC_IVAR___SFTabThumbnailView_unpinHandler];
  *v12 = CGRectMake;
  v12[1] = 0;
  v13 = OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = 0;
  v15 = OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v16 = OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR___SFTabThumbnailView_contentView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18 = OBJC_IVAR___SFTabThumbnailView_controlsContainerView;
  type metadata accessor for BlurrableView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR___SFTabThumbnailView_leadingCornerButton;
  _s12CornerButtonCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR___SFTabThumbnailView_participantsView;
  *&v4[v21] = [objc_allocWithZone(SFAvatarStackView) init];
  *&v4[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView] = 0;
  v22 = OBJC_IVAR___SFTabThumbnailView_shadowView;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v23 = OBJC_IVAR___SFTabThumbnailView_snapshotContainerView;
  *&v4[v23] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v24 = OBJC_IVAR___SFTabThumbnailView_snapshotImageView;
  *&v4[v24] = [objc_allocWithZone(SFSnapshotImageView) init];
  v25 = OBJC_IVAR___SFTabThumbnailView_trailingCornerButton;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR___SFTabThumbnailView_contentScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR___SFTabThumbnailView_matchMovedViews;
  *&v4[v26] = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility] = 0;
  v27 = &v4[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
  v28 = *(MEMORY[0x1E69DDCE0] + 16);
  *v27 = *MEMORY[0x1E69DDCE0];
  *(v27 + 1) = v28;
  *(v27 + 4) = 0;
  *(v27 + 5) = 0;
  v29 = &v4[OBJC_IVAR___SFTabThumbnailView_metrics];
  v35 = 1;
  v34 = 1;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v29[32] = 1;
  *(v29 + 5) = 0;
  *(v29 + 6) = 0;
  v29[56] = 1;
  *(v29 + 4) = xmmword_18BC42B90;
  *(v29 + 5) = xmmword_18BC44BC0;
  *(v29 + 6) = vdupq_n_s64(0x404E000000000000uLL);
  *(v29 + 7) = xmmword_18BC3FC80;
  *(v29 + 8) = xmmword_18BC42BC0;
  *(v29 + 9) = xmmword_18BC42BD0;
  *(v29 + 20) = 0x403E000000000000;
  v30 = &v4[OBJC_IVAR___SFTabThumbnailView_restingSize];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  *&v4[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration] = 0;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for TabThumbnailView();
  v31 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BA1489C();

  return v31;
}

id sub_18BA144C0(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 57) = 0u;
  v4 = &v1[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  *v4 = CGRectMake;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___SFTabThumbnailView_configuration];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 1;
  *(v5 + 4) = MEMORY[0x1E69E7CC0];
  *(v5 + 5) = 1;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = 0;
  *&v1[OBJC_IVAR___SFTabThumbnailView_iconRegistration] = 0;
  v6 = &v1[OBJC_IVAR___SFTabThumbnailView_unpinHandler];
  *v6 = CGRectMake;
  v6[1] = 0;
  v7 = OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = 0;
  v9 = OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v11 = OBJC_IVAR___SFTabThumbnailView_contentView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v12 = OBJC_IVAR___SFTabThumbnailView_controlsContainerView;
  type metadata accessor for BlurrableView();
  *&v1[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR___SFTabThumbnailView_leadingCornerButton;
  _s12CornerButtonCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR___SFTabThumbnailView_participantsView;
  *&v1[v15] = [objc_allocWithZone(SFAvatarStackView) init];
  *&v1[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView] = 0;
  v16 = OBJC_IVAR___SFTabThumbnailView_shadowView;
  *&v1[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR___SFTabThumbnailView_snapshotContainerView;
  *&v1[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18 = OBJC_IVAR___SFTabThumbnailView_snapshotImageView;
  *&v1[v18] = [objc_allocWithZone(SFSnapshotImageView) init];
  v19 = OBJC_IVAR___SFTabThumbnailView_trailingCornerButton;
  *&v1[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR___SFTabThumbnailView_contentScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___SFTabThumbnailView_matchMovedViews;
  *&v1[v20] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility] = 0;
  v21 = &v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  *v21 = *MEMORY[0x1E69DDCE0];
  *(v21 + 1) = v22;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v23 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v31 = 1;
  v30 = 1;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v23[32] = 1;
  *(v23 + 5) = 0;
  *(v23 + 6) = 0;
  v23[56] = 1;
  *(v23 + 4) = xmmword_18BC42B90;
  *(v23 + 5) = xmmword_18BC44BC0;
  *(v23 + 6) = vdupq_n_s64(0x404E000000000000uLL);
  *(v23 + 7) = xmmword_18BC3FC80;
  *(v23 + 8) = xmmword_18BC42BC0;
  *(v23 + 9) = xmmword_18BC42BD0;
  *(v23 + 20) = 0x403E000000000000;
  v24 = &v1[OBJC_IVAR___SFTabThumbnailView_restingSize];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration] = 0;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for TabThumbnailView();
  v25 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    sub_18BA1489C();
  }

  return v26;
}

void sub_18BA1489C()
{
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView];
  v36 = v1;
  [v1 setClipsToBounds_];
  [v1 setHidden_];
  v2 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView];
  [v2 setClipsToBounds_];
  v35 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView];
  [v35 setUserInteractionEnabled_];
  v3 = *&v0[OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView];
  [v3 setUserInteractionEnabled_];
  v4 = *&v0[OBJC_IVAR___SFTabThumbnailView_participantsView];
  [v4 setAlignment_];
  [v4 setAvatarDiameter_];
  v34 = *&v0[OBJC_IVAR___SFTabThumbnailView_trailingCornerButton];
  [v34 addTarget:v0 action:sel_trailingCornerButtonReceivedTap forControlEvents:64];
  v5 = *&v0[OBJC_IVAR___SFTabThumbnailView_shadowView];
  v6 = [v5 layer];
  [v6 setShadowOffset_];
  LODWORD(v7) = 1045220557;
  [v6 setShadowOpacity_];
  [v6 setShadowPathIsBounds_];
  [v6 setShadowRadius_];
  v8 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
  [v8 setClipsToBounds_];
  [v8 setContentMode_];
  v9 = [v8 &selRef_is2024ReadingListEnabled];
  [v9 setMinificationFilter_];

  v10 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:3];
  [v8 setPreferredSymbolConfiguration_];

  v11 = objc_opt_self();
  v12 = [v11 systemFillColor];
  [v8 setTintColor_];

  v13 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView];
  v14 = [v11 systemBackgroundColor];
  [v13 setBackgroundColor_];

  [v0 addSubview_];
  v15 = *&v0[OBJC_IVAR___SFTabThumbnailView_contentView];
  [v0 addSubview_];
  [v15 addSubview_];
  v16 = *&v0[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
  [v15 addSubview_];
  [v15 addSubview_];
  [v2 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18BC3E410;
  v18 = sub_18BC1F6A8();
  v19 = MEMORY[0x1E69DC050];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v39 = type metadata accessor for TabThumbnailView();
  v38[0] = v0;
  v20 = v0;
  MEMORY[0x18CFFCA50](v17, v38, sel_displayScaleDidChange);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18BC3E410;
  v22 = sub_18BC1FF28();
  v23 = MEMORY[0x1E69DC2B0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  MEMORY[0x18CFFCA40](v21, sel_contentSizeCategoryDidChange);
  swift_unknownObjectRelease();

  memset(v38, 0, sizeof(v38));
  v39 = 1;
  v40 = MEMORY[0x1E69E7CC0];
  v41 = 1;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  sub_18BA15244(v38);
  sub_18BA1A688(v38);
  sub_18BA165F8();
  sub_18BA15D30();
  v24 = [v20 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = [v8 layer];
  [v27 setRasterizationScale_];

  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_18BA1A904;
  *(v30 + 24) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_18B9D53AC;
  *(v31 + 24) = v30;
  aBlock[4] = sub_18B9D53B0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_206;
  v32 = _Block_copy(aBlock);
  v33 = v20;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v29 performWithoutAnimation_];
  _Block_release(v32);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }
}

void sub_18BA14FAC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR___SFTabThumbnailView_borrowedContentView;
  v5 = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250);
    v6 = v5;
    v3 = v3;
    v7 = sub_18BC215C8();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 layer];
  v10 = sub_18BC20B98();
  [v9 removeAnimationForKey_];

  v11 = [v8 layer];
  [v11 setMinificationFilter_];

  v5 = *(v2 + v4);
  if (!v5)
  {
    v17 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v12 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView);
  v13 = v5;
  v14 = [v13 layer];
  v15 = [v12 layer];
  sub_18BAE31BC(v15);

  v16 = [v13 layer];
  [v16 setMinificationFilter_];
  [*(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView) addSubview_];

  v17 = *(v2 + v4) == 0;
LABEL_9:
  v18 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView);

  [v18 setHidden_];
}

BOOL sub_18BA151D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BA1A010(v7, v9);
}

void sub_18BA15244(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___SFTabThumbnailView_configuration];
  v5 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 48];
  *v80 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 32];
  *&v80[16] = v5;
  v81 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 64];
  v82 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 80];
  v6 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 16];
  v78 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration];
  v79 = v6;
  v7 = v78;
  if (v78)
  {
    v8 = objc_opt_self();
    sub_18BA1A650(&v78, &v68);
    v9 = [v8 systemRedColor];
    v10 = SFSystemImageNameForMediaStateIcon(v7);
    if (!v10)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = [objc_opt_self() systemImageNamed_];

    v13 = [v8 systemWhiteColor];
    v68 = v9;
    v69 = v12;
    v70 = 0;
    v71 = v13;
    v72 = 0;
    sub_18BA6F474(&v68);
  }

  else
  {
    sub_18BA1A650(&v78, &v68);
  }

  v61 = v2;
  v14 = *&v80[8];
  if (*&v80[8] != 1)
  {
    v16 = *(&v81 + 1);
    v15 = v82;
    v17 = v7;
    v19 = *&v80[24];
    v18 = v81;
    v20 = a1;
    v21 = *&v80[16];
    v73 = *&v80[8];
    v74 = *&v80[24];
    v75 = v81 & 0x101;
    v76 = *(&v81 + 1);
    v77 = v82;
    sub_18BA1A898(*&v80[8], *&v80[16], *&v80[24], v81, *(&v81 + 1), v82);
    sub_18BA6F474(&v73);
    v22 = v21;
    a1 = v20;
    v23 = v18;
    v7 = v17;
    sub_18BA1A4DC(v14, v22, v19, v23, v16, v15);
  }

  v24 = *(v4 + 3);
  if (v24 == 1)
  {
    v25 = v61;
    v26 = *&v61[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView];
    if (v26)
    {
      *&v61[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView] = 0;
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v66 = sub_18BA1A808;
      v67 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v63 = 1107296256;
      v64 = sub_18B7B0DB0;
      v65 = &block_descriptor_166;
      v29 = _Block_copy(&aBlock);
      v30 = v26;

      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      v66 = sub_18BA1A81C;
      v67 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v63 = 1107296256;
      v64 = sub_18BA89100;
      v65 = &block_descriptor_172;
      v32 = _Block_copy(&aBlock);
      v33 = v30;
      v25 = v61;

      [v27 _animateUsingDefaultTimingWithOptions_animations_completion_];

      _Block_release(v32);
      _Block_release(v29);
    }

    goto LABEL_15;
  }

  v35 = *(v4 + 1);
  v34 = *(v4 + 2);
  v36 = OBJC_IVAR___SFTabThumbnailView_pinnedTitleView;
  v25 = v61;
  v37 = *&v61[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView];
  if (v37)
  {
    sub_18BC1E3F8();
    goto LABEL_14;
  }

  v56 = v35;
  v58 = v34;
  v59 = v7;
  v60 = a1;
  _s15PinnedTitleViewCMa();
  v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18BC1E3F8();
  v39 = [v38 init];
  v40 = sub_18BC1E1A8();
  sub_18BAB7E78(v40);

  v41 = *&v61[v36];
  v57 = v36;
  *&v61[v36] = v39;
  v42 = v39;

  [*&v61[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] addSubview_];
  v43 = swift_allocObject();
  *(v43 + 16) = v61;
  *(v43 + 24) = v42;
  v35 = objc_opt_self();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_18BA1A82C;
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_18B9D53AC;
  *(v45 + 24) = v44;
  v66 = sub_18B9D53B0;
  v67 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_18B7E3BF4;
  v65 = &block_descriptor_186;
  v46 = _Block_copy(&aBlock);
  v47 = v42;
  v48 = v61;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v35 performWithoutAnimation_];
  _Block_release(v46);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_24;
  }

  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  v66 = sub_18BA1A884;
  v67 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_18B7B0DB0;
  v65 = &block_descriptor_192;
  v50 = _Block_copy(&aBlock);
  v51 = v47;

  [v35 _animateUsingDefaultTimingWithOptions_animations_completion_];

  _Block_release(v50);
  v34 = v58;
  v37 = *&v61[v57];
  v7 = v59;
  a1 = v60;
  LOBYTE(v35) = v56;
  if (!v37)
  {
    sub_18BA1A6B8(v56, v58, v24);
    goto LABEL_15;
  }

LABEL_14:
  v52 = v37;
  sub_18BAB6E04(v35 & 1, v34, v24, v53);

LABEL_15:
  if ((v7 != 0) == (*a1 == 0))
  {
    sub_18BA159E0(*&v25[OBJC_IVAR___SFTabThumbnailView_leadingCornerButton], v7 != 0);
  }

  if ((v14 != 1) == (a1[5] == 1))
  {
    sub_18BA159E0(*&v25[OBJC_IVAR___SFTabThumbnailView_trailingCornerButton], v14 != 1);
  }

  if ((*(&v79 + 1) != 1) == (a1[3] == 1))
  {
    sub_18BA15D30();
  }

  sub_18BA15E70();
  v54 = *&v25[OBJC_IVAR___SFTabThumbnailView_participantsView];
  sub_18B7B0AC0(0, &qword_1ED6511A8, 0x1E695BAD8);
  v55 = sub_18BC20D88();
  [v54 setShareParticipants_];

  sub_18BA1A688(&v78);
}

void sub_18BA159E0(void *a1, char a2)
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v2;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = inited;
  v8[3] = sub_18BA1A7F8;
  v8[4] = v6;
  v17 = sub_18B7D80AC;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B7B0DB0;
  v16 = &block_descriptor_157;
  v9 = _Block_copy(&v13);
  swift_retain_n();
  v10 = a1;
  v11 = v2;
  sub_18BC1E1A8();

  v17 = CGRectMake;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B8043A0;
  v16 = &block_descriptor_160;
  v12 = _Block_copy(&v13);

  [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v12);
  _Block_release(v9);
}

id sub_18BA15BE8(void *a1, char a2, uint64_t a3)
{
  v6 = sub_18BA6D1C4();
  v7 = v6;
  if (a2)
  {
    v8 = 0.0;
    v9 = 1.0;
  }

  else
  {
    v8 = *(a3 + OBJC_IVAR___SFTabThumbnailView_metrics + 88);
    v9 = 0.0;
  }

  [v6 setValue_];

  return [a1 setAlpha_];
}

id sub_18BA15C80(uint64_t a1, CGFloat a2)
{
  *(a1 + OBJC_IVAR___SFTabThumbnailView_contentScale) = a2;
  CGAffineTransformMakeScale(&v11, a2, a2);
  a = v11.a;
  b = v11.b;
  c = v11.c;
  d = v11.d;
  tx = v11.tx;
  ty = v11.ty;
  [*(a1 + OBJC_IVAR___SFTabThumbnailView_shadowView) setTransform_];
  v9 = *(a1 + OBJC_IVAR___SFTabThumbnailView_contentView);
  v11.a = a;
  v11.b = b;
  v11.c = c;
  v11.d = d;
  v11.tx = tx;
  v11.ty = ty;
  return [v9 setTransform_];
}

id sub_18BA15D30()
{
  v1 = v0;
  v2 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView) setAlpha_];
  v3 = sub_18B7DE654();
  v4 = 1.0;
  [v3 setValue_];

  v5 = *(v1 + OBJC_IVAR___SFTabThumbnailView_snapshotImageView);
  if (*(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 24) != 1)
  {
    v4 = 1.0 - *(v1 + v2);
  }

  return [v5 setAlpha_];
}

void sub_18BA15E70()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = *(v0 + OBJC_IVAR___SFTabThumbnailView_trailingCornerButton);
  if (*(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 24) == 1)
  {
    v9 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu;
    v10 = *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu];
    *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu] = 0;

    v11 = *&v8[v9] != 0;
    [v8 setContextMenuInteractionEnabled_];

    [v8 setShowsMenuAsPrimaryAction_];
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR___SFTabThumbnailView_closeHandler);
    v35 = *(v0 + OBJC_IVAR___SFTabThumbnailView_closeHandler + 8);
    v36 = v12;
    v13 = *(v0 + OBJC_IVAR___SFTabThumbnailView_unpinHandler);
    v14 = *(v0 + OBJC_IVAR___SFTabThumbnailView_unpinHandler + 8);
    v34 = v13;
    v38 = v14;
    v37 = sub_18B7B0AC0(0, &unk_1EA9DADD0, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18BC41E60;
    v39 = sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1EE38();
    v32 = sub_18BC1EE28();
    v15 = *(v2 + 8);
    v15(v7, v1);
    v16 = sub_18BC20B98();
    v17 = objc_opt_self();
    v18 = [v17 systemImageNamed_];

    v19 = swift_allocObject();
    *(v19 + 16) = v34;
    *(v19 + 24) = v38;
    sub_18BC1E1A8();
    v20 = sub_18BC215E8();
    v21 = v33;
    *(v33 + 32) = v20;
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE18();
    v34 = v22;
    v15(v4, v1);
    v15(v7, v1);
    v23 = sub_18BC20B98();
    v24 = [v17 systemImageNamed_];

    v25 = swift_allocObject();
    v26 = v35;
    *(v25 + 16) = v36;
    *(v25 + 24) = v26;
    sub_18BC1E1A8();
    *(v21 + 40) = sub_18BC215E8();
    v27 = sub_18BC214D8();

    v28 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu;
    v29 = *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu];
    *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu] = v27;
    v30 = v27;

    v31 = *&v8[v28] != 0;
    [v8 setContextMenuInteractionEnabled_];
    [v8 setShowsMenuAsPrimaryAction_];
  }
}

void *sub_18BA16374(uint64_t a1, double a2, double a3)
{
  v7 = &v3[OBJC_IVAR___SFTabThumbnailView_configuration];
  if (!*&v3[OBJC_IVAR___SFTabThumbnailView_configuration] || (v8 = *&v3[OBJC_IVAR___SFTabThumbnailView_leadingCornerButton], (UIViewIgnoresTouchEvents() & 1) != 0) || ([v3 convertPoint:v8 toCoordinateSpace:{a2, a3}], (objc_msgSend(v8, sel_pointInside_withEvent_, a1) & 1) == 0))
  {
    if (*(v7 + 5) == 1)
    {
      return 0;
    }

    v8 = *&v3[OBJC_IVAR___SFTabThumbnailView_trailingCornerButton];
    if (UIViewIgnoresTouchEvents())
    {
      return 0;
    }

    [v3 convertPoint:v8 toCoordinateSpace:{a2, a3}];
    if (![v8 pointInside:a1 withEvent:?])
    {
      return 0;
    }
  }

  v9 = v8;
  return v8;
}

id sub_18BA165F8()
{
  v1 = [v0 traitCollection];
  v2 = &v0[OBJC_IVAR___SFTabThumbnailView_metrics];
  v36 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v38 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v40 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v42 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v28 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v30 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v32 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v34 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v24 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics];
  v26 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  if (qword_1EA9D2350 != -1)
  {
    swift_once();
  }

  [qword_1EA9F7FB8 scaledValueForValue:v1 compatibleWithTraitCollection:{30.0, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42}];
  v4 = fmax(v3, 30.0);
  v5 = [v1 preferredContentSizeCategory];
  v6 = sub_18BC21438();

  v7 = 1.0;
  v8 = *(v2 + 7);
  if (v6)
  {
    v7 = 2.0;
  }

  v9 = *(v2 + 9);
  v46[8] = *(v2 + 8);
  v46[9] = v9;
  v10 = *(v2 + 20);
  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  *(v2 + 2) = v29;
  *(v2 + 3) = v31;
  v14 = *(v2 + 3);
  v13 = *(v2 + 4);
  *(v2 + 4) = v33;
  v16 = *(v2 + 4);
  v15 = *(v2 + 5);
  v46[4] = v13;
  v46[5] = v15;
  *(v2 + 5) = v35;
  v17 = *(v2 + 5);
  v46[6] = *(v2 + 6);
  v46[7] = v8;
  v18 = *(v2 + 1);
  v46[0] = *v2;
  v46[1] = v18;
  v46[2] = v12;
  v46[3] = v11;
  *(v2 + 6) = v37;
  *(v2 + 7) = v39;
  *(v2 + 8) = v41;
  *(v2 + 9) = v43;
  *v2 = v25;
  *(v2 + 1) = v27;
  *(v2 + 20) = v4 * v7;
  v19 = *(v2 + 7);
  v20 = *(v2 + 8);
  v44[6] = v37;
  v44[7] = v19;
  v21 = *(v2 + 9);
  v44[8] = v20;
  v44[9] = v21;
  v47 = v10;
  v44[2] = v29;
  v44[3] = v14;
  v44[4] = v16;
  v44[5] = v17;
  v22 = *(v2 + 1);
  v44[0] = *v2;
  v44[1] = v22;
  v45 = *(v2 + 20);
  if (!sub_18BA1A2E4(v44, v46))
  {
    sub_18BA18DB4();
  }

  return [v0 setNeedsLayout];
}

id sub_18BA168D0()
{
  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView);
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_snapshotContainerView) bounds];
  result = [v1 setFrame_];
  v3 = (v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 32);
  if (v4 != 0.0)
  {
    v5 = v3[5];
    if (v5 != 0.0)
    {
      if ([objc_opt_self() isSolariumEnabled])
      {

        return sub_18BA16A8C(v4, v5);
      }

      else
      {
        v6 = v0 + OBJC_IVAR___SFTabThumbnailView_metrics;
        v7 = (v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 8);
        if (*(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 32))
        {
          v7 = (MEMORY[0x1E69DDCE0] + 8);
        }

        v8 = *v7;
        if (*(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 32))
        {
          v9 = (MEMORY[0x1E69DDCE0] + 24);
        }

        else
        {
          v9 = (v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 24);
        }

        v10 = *v9;
        [v1 bounds];
        v11 = CGRectGetWidth(v15) / (v4 - (v8 + v10));
        v12 = _SFInterpolate(-(*v3 * v11), 0.0, *(v6 + 64));
        v13 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView);

        return [v13 setFrame_];
      }
    }
  }

  return result;
}

id sub_18BA16A8C(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics);
  v6 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 8);
  v7 = *(v2 + OBJC_IVAR___SFTabThumbnailView_metrics + 64);
  v8 = 1.0 - _SFInterpolate(v6 + *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 24), 0.0, v7) / a1;
  [*(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView) bounds];
  v9 = CGRectGetWidth(v18) / v8;
  v10 = v9 / (a1 / a2);
  v11 = -(v6 * (v9 / a1));
  v12 = -(v5 * (v9 / a1));
  v13 = _SFInterpolate(v11, 0.0, v7);
  v14 = _SFInterpolate(v12, 0.0, v7);
  v15 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView);

  return [v15 setFrame_];
}

id sub_18BA16B88()
{
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_metrics;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 72);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_leadingCornerButton);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  v5 = [v4 effectiveUserInterfaceLayoutDirection];
  [v4 bounds];
  if (v5)
  {
    MaxX = CGRectGetMaxX(*&v6);
    v23.size.width = 22.0;
    v23.size.height = 22.0;
    v23.origin.x = v2;
    v23.origin.y = v2;
    v11 = MaxX - CGRectGetMaxX(v23);
    v24.size.width = 22.0;
    v24.size.height = 22.0;
    v24.origin.x = v2;
    v24.origin.y = v2;
    MinY = CGRectGetMinY(v24);
    v25.size.width = 22.0;
    v25.size.height = 22.0;
    v25.origin.x = v2;
    v25.origin.y = v2;
    Width = CGRectGetWidth(v25);
    v26.size.width = 22.0;
    v26.size.height = 22.0;
    v26.origin.x = v2;
    v26.origin.y = v2;
    Height = CGRectGetHeight(v26);
    v2 = v11;
  }

  else
  {
    Width = 22.0;
    MinY = v2;
    Height = 22.0;
  }

  result = [v3 setFrame_];
  v16 = *(v1 + 96);
  v17 = *(v1 + 104);
  v18 = &v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v19 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v20 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize + 8];
  *v18 = v16;
  v18[1] = v17;
  if (v16 != v19 || v17 != v20)
  {

    return [v3 setNeedsLayout];
  }

  return result;
}

void sub_18BA16D00()
{
  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  [v1 bounds];
  MaxX = CGRectGetMaxX(v26);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_pinnedTitleView);
  if (v3)
  {
    v4 = MaxX - *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 72) + -22.0;
    v5 = *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 160);
    v24 = v3;
    UIEdgeInsetsMakeWithEdges();
    v8 = UIEdgeInsetsInsetRect(0.0, 0.0, v4, v5, v6, v7);
    v10 = v9;
    v12 = v11;
    Height = v13;
    v15 = [v1 effectiveUserInterfaceLayoutDirection];
    [v1 bounds];
    if (v15)
    {
      v20 = CGRectGetMaxX(*&v16);
      v27.origin.x = v8;
      v27.origin.y = v10;
      v27.size.width = v12;
      v27.size.height = Height;
      v21 = v20 - CGRectGetMaxX(v27);
      v28.origin.x = v8;
      v28.origin.y = v10;
      v28.size.width = v12;
      v28.size.height = Height;
      MinY = CGRectGetMinY(v28);
      v29.origin.x = v8;
      v29.origin.y = v10;
      v29.size.width = v12;
      v29.size.height = Height;
      Width = CGRectGetWidth(v29);
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = Height;
      Height = CGRectGetHeight(v30);
      v8 = v21;
      v10 = MinY;
      v12 = Width;
    }

    [v24 setFrame_];
  }
}

id sub_18BA16ED4()
{
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_contentView) bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = (v0 + OBJC_IVAR___SFTabThumbnailView_restingSize);
  if ((*(v0 + OBJC_IVAR___SFTabThumbnailView_restingSize + 16) & 1) != 0 || (v10 = *v9, *v9 == 0.0))
  {
    v11 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
    *&v17.a = 0x3FF0000000000000uLL;
    v17.c = 0.0;
    v17.d = 1.0;
    *&v17.tx = 0uLL;
    [v11 setTransform_];
    return [v11 setFrame_];
  }

  else
  {
    v13 = v9[1];
    Width = CGRectGetWidth(*&v1);
    v15 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
    v16 = Width / v10;
    v18.origin.x = v5;
    v18.origin.y = v6;
    v18.size.width = v7;
    v18.size.height = v8;
    [v15 setCenter_];
    [v15 setBounds_];
    CGAffineTransformMakeScale(&v17, v16, v16);
    return [v15 setTransform_];
  }
}

void sub_18BA17060()
{
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
  v2 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView];
  [v2 bounds];
  [v1 setFrame_];
  v3 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (v3 && (swift_beginAccess(), v4 = v3[1], v5 = v3[2], v6 = v3[4], v71 = v3[3], v72 = v6, v69 = v4, v70 = v5, v7 = v4, v73 = v3[2], v74 = *(v3 + 6), *(&v4 + 1)))
  {
    v8 = *(&v71 + 1);
    v9 = *(&v72 + 1);
    v75[0] = v4;
    v75[1] = v73;
    v76 = v74;
    v77 = *(&v71 + 1);
    v78 = v72;
    v68[0] = v69;
    v68[1] = v70;
    v68[2] = v71;
    v68[3] = v72;
    sub_18BA1A744(v68, v67);
    [*(&v7 + 1) size];
    v12 = v10 / v11;
    if ((~COERCE__INT64(v10 / v11) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v10 / v11) & 0xFFFFFFFFFFFFFLL) == 0)
    {
      [v2 bounds];
      v16 = v14;
      v17 = &v0[OBJC_IVAR___SFTabThumbnailView_metrics];
      v18 = v14 / v12;
      if (v0[OBJC_IVAR___SFTabThumbnailView_metrics + 56] & 1) != 0 || (v17[4])
      {
        v19 = *MEMORY[0x1E69DDCE0];
        v20 = *(MEMORY[0x1E69DDCE0] + 8);
        v21 = *(MEMORY[0x1E69DDCE0] + 16);
        v22 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      else
      {
        v34 = v17[5];
        v35 = v14 / v34;
        v36 = *&v7 * (v14 / v34);
        v37 = v8 * v34 * (v14 / v34);
        v63 = v14 / v34 * 0.0;
        v64 = v9 * v34 * (v14 / v34);
        v65 = v15;
        UIEdgeInsetsMakeWithEdges();
        v39 = v35 * v38;
        v41 = v35 * v40;
        v43 = v35 * v42;
        v45 = v35 * v44;
        v46 = v17[8];
        v47 = _SFInterpolate(v36, v39, v46);
        v48 = _SFInterpolate(v37, v41, v46);
        v49 = _SFInterpolate(v63, v43, v46);
        v50 = _SFInterpolate(v64, v45, v46);
        v21 = v49;
        v20 = v48;
        v19 = v47;
        v15 = v65;
        v22 = v50;
      }

      v79.origin.x = sub_18BA17540(v75, 0.0, 0.0, v16, v18, v19, v20, v21, v22, v16, v15);
      x = v79.origin.x;
      y = v79.origin.y;
      width = v79.size.width;
      height = v79.size.height;
      MinX = CGRectGetMinX(v79);
      v80.origin.x = 0.0;
      v80.origin.y = 0.0;
      v80.size.width = v16;
      v80.size.height = v18;
      v66 = MinX / CGRectGetWidth(v80);
      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      MinY = CGRectGetMinY(v81);
      v82.origin.x = 0.0;
      v82.origin.y = 0.0;
      v82.size.width = v16;
      v82.size.height = v18;
      v57 = MinY / CGRectGetHeight(v82);
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      v58 = CGRectGetWidth(v83);
      v84.origin.x = 0.0;
      v84.origin.y = 0.0;
      v84.size.width = v16;
      v84.size.height = v18;
      v59 = v58 / CGRectGetWidth(v84);
      v85.origin.x = x;
      v85.origin.y = y;
      v85.size.width = width;
      v85.size.height = height;
      v60 = CGRectGetHeight(v85);
      v86.origin.x = 0.0;
      v86.origin.y = 0.0;
      v86.size.width = v16;
      v86.size.height = v18;
      v61 = v60 / CGRectGetHeight(v86);
      if ([v1 contentMode] == 2)
      {
        v30 = 0x8000000000000008;
      }

      else
      {
        v30 = 0x8000000000000010;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = v0;
      *(v31 + 24) = 2;
      *(v31 + 32) = v66;
      *(v31 + 40) = v57;
      *(v31 + 48) = v59;
      *(v31 + 56) = v61;
      v62 = v0;
    }

    else
    {
      if ([v1 contentMode] == 2)
      {
        v30 = 0x8000000000000008;
      }

      else
      {
        v30 = 0x8000000000000010;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = v0;
      *(v31 + 24) = 2;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(v31 + 48) = _Q0;
      v33 = v0;
    }

    sub_18B7EAA64(sub_18BA1A938, v31, CGRectMake, 0, v30);

    sub_18B7EBAE8(v30);
    sub_18B988BAC(&v69, &qword_1EA9D92C0, &qword_18BC42F60);
  }

  else
  {
    if ([v1 contentMode] == 4)
    {
      v23 = 0x8000000000000008;
    }

    else
    {
      v23 = 0x8000000000000010;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v0;
    *(v24 + 24) = 4;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v24 + 48) = _Q0;
    v29 = v0;
    sub_18B7EAA64(sub_18BA1A740, v24, CGRectMake, 0, v23);

    sub_18B7EBAE8(v23);
  }
}

double sub_18BA17540(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10, double a11)
{
  v46 = CGRectOffset(*&a2, 0.0, a6);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  rect_24 = v46.size.height;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v19 = UIEdgeInsetsReplace(*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
    rect = UIEdgeInsetsInsetRect(x, y, width, rect_24, v19, v20);
    y = v21;
    v23 = v22;
    rect_24 = v24;
  }

  else
  {
    rect = x;
    v23 = width;
  }

  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  v25 = CGRectGetWidth(v47);
  v26 = *(a1 + 8);
  [v26 size];
  v27 = a5;
  v29 = v28;
  [v26 scale];
  v31 = *(a1 + 24) * (v25 / (v29 * v30));
  v48.origin.x = rect;
  v48.origin.y = y;
  v48.size.width = v23;
  v48.size.height = rect_24;
  v49 = CGRectOffset(v48, 0.0, v31);
  v32 = v49.origin.x;
  v33 = v49.origin.y;
  v34 = v49.size.width;
  height = v49.size.height;
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = v27;
  v36 = CGRectGetHeight(v49);
  v50.origin.x = v32;
  v50.origin.y = v33;
  v50.size.width = v34;
  v50.size.height = height;
  v37 = (v36 - CGRectGetWidth(v50) / (a10 / a11)) * -0.5;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = height;

  *&result = CGRectOffset(*&v38, 0.0, v37);
  return result;
}

void sub_18BA17740(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + OBJC_IVAR___SFTabThumbnailView_snapshotImageView);
  [v10 setContentMode_];
  v11 = [v10 layer];
  [v11 setContentsRect_];
}

id sub_18BA177F0()
{
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_metrics;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 72);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_trailingCornerButton);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  [v4 bounds];
  v5 = CGRectGetMaxX(v24) - v2 + -22.0;
  v6 = [v4 effectiveUserInterfaceLayoutDirection];
  [v4 bounds];
  if (v6)
  {
    MaxX = CGRectGetMaxX(*&v7);
    v25.size.width = 22.0;
    v25.size.height = 22.0;
    v25.origin.x = v5;
    v25.origin.y = v2;
    v12 = MaxX - CGRectGetMaxX(v25);
    v26.size.width = 22.0;
    v26.size.height = 22.0;
    v26.origin.x = v5;
    v26.origin.y = v2;
    MinY = CGRectGetMinY(v26);
    v27.size.width = 22.0;
    v27.size.height = 22.0;
    v27.origin.x = v5;
    v27.origin.y = v2;
    Width = CGRectGetWidth(v27);
    v28.size.width = 22.0;
    v28.size.height = 22.0;
    v28.origin.x = v5;
    v28.origin.y = v2;
    Height = CGRectGetHeight(v28);
    v5 = v12;
    v2 = MinY;
  }

  else
  {
    Width = 22.0;
    Height = 22.0;
  }

  result = [v3 setFrame_];
  v17 = *(v1 + 96);
  v18 = *(v1 + 104);
  v19 = &v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v20 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v21 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize + 8];
  *v19 = v17;
  v19[1] = v18;
  if (v17 != v20 || v18 != v21)
  {

    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_18BA1799C(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for TabThumbnailView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR___SFTabThumbnailView_contentView];
  [v1 bounds];
  [v2 ss_setUntransformedFrame_];
  sub_18BA16ED4();
  sub_18BA16B88();
  sub_18BA177F0();
  [*&v1[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v7 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v8 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 120];
  v9 = CGRectGetHeight(v15) - v8 - v7[18];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  [*&v1[OBJC_IVAR___SFTabThumbnailView_participantsView] setFrame_];
  sub_18BA16D00();
  v10 = *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView];
  [v2 bounds];
  [v10 setFrame_];
  sub_18BA17060();
  sub_18BA168D0();
  v11 = *&v1[OBJC_IVAR___SFTabThumbnailView_shadowView];
  [v1 bounds];
  v18 = CGRectInset(v17, v7[14], v7[14]);
  [v11 ss:v18.origin.x setUntransformedFrame:{v18.origin.y, v18.size.width, v18.size.height}];
  sub_18BA18614();
  v12 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView];
  [v10 bounds];
  return [v12 setFrame_];
}

void sub_18BA17B94(uint64_t a1)
{
  sub_18B7F40F4(v1);
  v3 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v4 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v5 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v6 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v54 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v55 = v5;
  v56 = v6;
  v7 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 72];
  v8 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 104];
  v9 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 136];
  v50 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 120];
  v51 = v9;
  v52 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 152];
  v53 = v4;
  v48 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 88];
  v49 = v8;
  v10 = sub_18B7F44CC();
  v11 = sub_18BB11B5C();
  v12 = *(v3 + 9);
  v46[8] = *(v3 + 8);
  v46[9] = v12;
  v13 = *(v3 + 5);
  v46[4] = *(v3 + 4);
  v46[5] = v13;
  v14 = *(v3 + 7);
  v46[6] = *(v3 + 6);
  v46[7] = v14;
  v15 = *(v3 + 1);
  v46[0] = *v3;
  v46[1] = v15;
  v16 = *(v3 + 3);
  v46[2] = *(v3 + 2);
  v46[3] = v16;
  v17 = v54;
  v18 = v55;
  v19 = v52;
  *v3 = v53;
  *(v3 + 1) = v17;
  v20 = v56;
  *(v3 + 2) = v18;
  *(v3 + 3) = v20;
  v47 = *(v3 + 20);
  *(v3 + 8) = v11;
  *(v3 + 9) = v7;
  *(v3 + 10) = v10;
  v21 = v51;
  *(v3 + 120) = v50;
  v22 = v48;
  *(v3 + 104) = v49;
  *(v3 + 88) = v22;
  *(v3 + 136) = v21;
  *(v3 + 152) = v19;
  v23 = *(v3 + 1);
  v44[0] = *v3;
  v44[1] = v23;
  v24 = *(v3 + 4);
  v25 = *(v3 + 6);
  v26 = *(v3 + 7);
  v44[5] = *(v3 + 5);
  v44[6] = v25;
  v27 = *(v3 + 2);
  v44[3] = *(v3 + 3);
  v44[4] = v24;
  v44[2] = v27;
  v28 = *(v3 + 8);
  v29 = *(v3 + 9);
  v45 = *(v3 + 20);
  v44[8] = v28;
  v44[9] = v29;
  v44[7] = v26;
  if (!sub_18BA1A2E4(v44, v46))
  {
    sub_18BA18DB4();
  }

  v30 = *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (v30)
  {
    v31 = *(a1 + 104);
    if (*(v31 + 16))
    {
      sub_18BC1E1A8();
      v32 = sub_18B7C4104(0xD000000000000012, 0x800000018BC63340);
      if (v33)
      {
        sub_18B7F44EC(*(v31 + 56) + 40 * v32, v43);
        if (swift_dynamicCast())
        {
          v34 = v41;
          v35 = v42;
LABEL_12:
          v36 = v30 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
          swift_beginAccess();
          v37 = *v36;
          v38 = *(v36 + 8);
          *v36 = v34;
          *(v36 + 8) = v35;
          if (v34 != v37 || v35 != v38)
          {
            v39 = *(v30 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
            v40 = sub_18BC1E1A8();
            v39(v40);
          }

          return;
        }
      }
    }

    else
    {
      sub_18BC1E1A8();
    }

    if (qword_1EA9D2410 != -1)
    {
      swift_once();
    }

    v34 = *&qword_1EA9D8AE0;
    v35 = qword_1EA9D8AE8;
    goto LABEL_12;
  }
}

void sub_18BA17E30()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___SFTabThumbnailView_matchMovedViews] allObjects];
  type metadata accessor for TabThumbnailView();
  v3 = sub_18BC20D98();

  if (v3 >> 62)
  {
    v4 = sub_18BC219A8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
    v37 = xmmword_18BC43C00;
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x18CFFD010](v6, v3); ; i = *(v3 + 8 * v6 + 32))
    {
      v9 = i;
      [v1 bounds];
      [v9 setBounds_];
      v10 = v7[32];
      LODWORD(v40) = *(v7 + 33);
      *(&v40 + 3) = *(v7 + 9);
      v12 = *(v7 + 5);
      v11 = *(v7 + 6);
      v13 = v7[56];
      LODWORD(v39) = *(v7 + 57);
      *(&v39 + 3) = *(v7 + 15);
      v14 = *(v7 + 20);
      v15 = &v9[OBJC_IVAR___SFTabThumbnailView_metrics];
      v17 = *v7;
      v16 = *(v7 + 1);
      v19 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics];
      v18 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
      v20 = v9[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
      v22 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 40];
      v21 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
      v23 = v9[OBJC_IVAR___SFTabThumbnailView_metrics + 56];
      v25 = *(v7 + 4);
      v24 = *(v7 + 5);
      v27 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
      v26 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
      v29 = *(v7 + 6);
      v28 = *(v7 + 7);
      v31 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
      v30 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
      v33 = *(v7 + 8);
      v32 = *(v7 + 9);
      v35 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
      v34 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
      v36 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
      *v15 = *v7;
      *(v15 + 1) = v16;
      v15[32] = v10;
      *(v15 + 33) = v40;
      *(v15 + 9) = *(&v40 + 3);
      *(v15 + 5) = v12;
      *(v15 + 6) = v11;
      v15[56] = v13;
      *(v15 + 15) = *(&v39 + 3);
      *(v15 + 57) = v39;
      *(v15 + 4) = v25;
      *(v15 + 5) = v24;
      *(v15 + 6) = v29;
      *(v15 + 7) = v28;
      *(v15 + 8) = v33;
      *(v15 + 9) = v32;
      *(v15 + 20) = v14;
      if (v10)
      {
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      else if ((v20 & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v19, v17), vceqq_f64(v18, v16)), v37)) & 0xF) != 0)
      {
LABEL_22:
        v38 = v24.f64[0];
        [v9 _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_contentView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_shadowView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] _setContinuousCornerRadius_];
        [v9 setNeedsLayout];
        sub_18BA17E30();
        goto LABEL_23;
      }

      if (v13)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v23 & 1) != 0 || v22 != v12 || v21 != v11)
      {
        goto LABEL_22;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v25, v27), vceqq_f64(v24, v26)))) & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v29, v31), vceqq_f64(v28, v30)), v37)) & 0xF) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v33, v35), vceqq_f64(v32, v34)))) & 1) == 0 || v14 != v36)
      {
        goto LABEL_22;
      }

LABEL_23:
      [v9 layoutIfNeeded];

      if (v5 == v6)
      {
        goto LABEL_27;
      }

      ++v6;
      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }
  }

  __break(1u);
}

void sub_18BA181B8()
{
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v30[0] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v30[1] = v2;
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v30[2] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  *v31 = v3;
  *&v31[9] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  if (*&v30[0])
  {
    v4 = v0;
    if (v31[24])
    {
      v5 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView);
      v6 = *&v30[0];
      [v5 setHidden_];
      [v5 addSubview_];
    }

    else
    {
      v7 = *&v30[0];
    }

    v8 = *(v4 + OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView);
    v9 = *&v30[0];
    v10 = [v9 layer];
    v11 = [v8 layer];
    sub_18BAE31BC(v11);

    sub_18B988BAC(v30, &unk_1EA9D92A0, &qword_18BC44DD0);
    [v9 setHidden_];
    v12 = sub_18BA188F4();
    [v12 presentationValue];
    v14 = v13;

    v15 = _SFUninterpolate(v14, 0.2, 0.9);
    v16 = *(v1 + 16);
    v28[0] = *v1;
    v28[1] = v16;
    v17 = *(v1 + 48);
    v28[2] = *(v1 + 32);
    v29[0] = v17;
    *(v29 + 9) = *(v1 + 57);
    v18 = *&v28[0];
    if (*&v28[0])
    {
      if (v15 <= 0.0)
      {
        v15 = 0.0;
      }

      v22 = *&v28[0];
      if (v15 <= 1.0)
      {
        v19 = v15;
      }

      else
      {
        v19 = 1.0;
      }

      v24 = *(v1 + 24);
      v25 = *(v1 + 40);
      v26 = *(v1 + 56);
      v27 = *(v1 + 72);
      v23 = *(v1 + 8);
      sub_18B7CA054(v28, v21, &unk_1EA9D92A0, &qword_18BC44DD0);
      v20 = v18;
      sub_18B988BAC(&v22, &unk_1EA9D92A0, &qword_18BC44DD0);
      [v20 setAlpha_];
    }

    else
    {
      v22 = 0;
      v24 = *(v1 + 24);
      v25 = *(v1 + 40);
      v26 = *(v1 + 56);
      v27 = *(v1 + 72);
      v23 = *(v1 + 8);
      sub_18B7CA054(v28, v21, &unk_1EA9D92A0, &qword_18BC44DD0);
      sub_18B988BAC(&v22, &unk_1EA9D92A0, &qword_18BC44DD0);
    }

    sub_18BA18614();
    sub_18B988BAC(v30, &unk_1EA9D92A0, &qword_18BC44DD0);
  }
}

void sub_18BA18474()
{
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView) setHidden_];
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v15[0] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v15[1] = v2;
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v15[2] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  v16[0] = v3;
  *(v16 + 9) = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  v4 = *&v15[0];
  if (*&v15[0])
  {
    v9 = *&v15[0];
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);
    v14 = *(v1 + 72);
    v10 = *(v1 + 8);
    sub_18B7CA054(v15, v8, &unk_1EA9D92A0, &qword_18BC44DD0);
    v5 = v4;
    sub_18B988BAC(&v9, &unk_1EA9D92A0, &qword_18BC44DD0);
    v6 = [v5 layer];
    v7 = sub_18BC20B98();
    [v6 removeAnimationForKey_];
  }

  else
  {
    v9 = 0;
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);
    v14 = *(v1 + 72);
    v10 = *(v1 + 8);
    sub_18B7CA054(v15, v8, &unk_1EA9D92A0, &qword_18BC44DD0);
    sub_18B988BAC(&v9, &unk_1EA9D92A0, &qword_18BC44DD0);
  }
}

uint64_t sub_18BA18614()
{
  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v35 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v36 = v1;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v37 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  *v38 = v2;
  *&v38[9] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  if (v35)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_contentView);
    v4 = v35;
    [v3 bounds];
    v6 = v5;
    v32 = v8;
    rect = v7;
    v10 = v9;
    v11 = *(&v35 + 1);
    v12 = v36;
    v13 = *(&v36 + 1);
    v14 = v37;
    MidY = CGRectGetMidY(*&v11);
    v39.origin.x = *(&v37 + 1);
    *&v39.origin.y = *v38;
    v39.size.height = *&v38[16];
    v16 = CGRectGetMidY(v39);
    v40.origin.x = v6;
    v40.size.width = v32;
    v40.origin.y = rect;
    v40.size.height = v10;
    Width = CGRectGetWidth(v40);
    v41.origin.x = *(&v37 + 1);
    *&v41.origin.y = *v38;
    v41.size.height = *&v38[16];
    v31 = MidY;
    v18 = Width / CGRectGetWidth(v41);
    if (MidY >= v16)
    {
      v43.origin.x = *(&v37 + 1);
      *&v43.origin.y = *v38;
      v43.size.height = *&v38[16];
      MaxY = CGRectGetMaxY(v43);
      v44.origin.x = *(&v35 + 1);
      v20 = *(&v36 + 1);
      *&v44.origin.y = v36;
      v21 = *&v37;
      *&v44.size.height = v37;
      v24 = v18 * (MaxY - CGRectGetMidY(v44));
      v45.origin.x = *(&v35 + 1);
      *&v45.origin.y = v36;
      *&v45.size.height = v37;
      MinX = CGRectGetMinX(v45);
      v22 = _SFInterpolate(v18 * (*&v37 * 0.5 + MinX), v24, *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 64));
    }

    else
    {
      v19 = _SFInterpolate(-*(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics), 0.0, *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 64));
      v42.origin.x = *(&v35 + 1);
      v20 = *(&v36 + 1);
      *&v42.origin.y = v36;
      v21 = *&v37;
      *&v42.size.height = v37;
      v22 = v18 * (v19 + CGRectGetMidY(v42));
    }

    v26 = *(v0 + OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView);
    [v26 setBounds_];
    v46.origin.x = v6;
    v46.origin.y = rect;
    v46.size.width = v32;
    v46.size.height = v10;
    MidX = CGRectGetMidX(v46);
    if (v31 >= v16)
    {
      v28 = MidX;
      v47.origin.x = v6;
      v47.origin.y = rect;
      v47.size.width = v32;
      v47.size.height = v10;
      v29 = CGRectGetMaxY(v47);
      MidX = v28;
      v22 = v29 - v22;
    }

    [v26 setCenter_];
    CGAffineTransformMakeScale(&v34, v18, v18);
    [v26 setTransform_];
    return sub_18B988BAC(&v35, &unk_1EA9D92A0, &qword_18BC44DD0);
  }

  return result;
}

id sub_18BA188F4()
{
  v1 = OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility);
  }

  else
  {
    v4 = sub_18BA18958();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BA18958()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  [v0 setValue_];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7B0AC0(0, &qword_1EA9D50B0, 0x1E69DC658);
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_18BA1A738;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18B7B0DB0;
  v8[3] = &block_descriptor_131;
  v6 = _Block_copy(v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v6);

  return v3;
}

void sub_18BA18AF4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_18BA188F4();
    [v3 presentationValue];
    v5 = v4;

    v6 = _SFUninterpolate(v5, 0.2, 0.9);
    v27[0] = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
    v8 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32];
    v7 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48];
    v9 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16];
    *(v28 + 9) = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57];
    v27[2] = v8;
    v28[0] = v7;
    v27[1] = v9;
    v10 = *&v27[0];
    v11 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 24];
    v12 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 56];
    v24 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 40];
    v25 = v12;
    v26 = v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 72];
    v22 = *&v2[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 8];
    v23 = v11;
    if (*&v27[0])
    {
      if (v6 <= 0.0)
      {
        v6 = 0.0;
      }

      if (v6 <= 1.0)
      {
        v13 = v6;
      }

      else
      {
        v13 = 1.0;
      }

      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = *&v27[0];
      v21 = v26;
      v17 = v22;
      sub_18B7CA054(v27, &v15, &unk_1EA9D92A0, &qword_18BC44DD0);
      v14 = v10;
      sub_18B988BAC(&v16, &unk_1EA9D92A0, &qword_18BC44DD0);
      [v14 setAlpha_];
    }

    else
    {
      sub_18B7CA054(v27, &v16, &unk_1EA9D92A0, &qword_18BC44DD0);

      v16 = 0;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v21 = v26;
      v17 = v22;
      sub_18B988BAC(&v16, &unk_1EA9D92A0, &qword_18BC44DD0);
    }
  }
}

BOOL sub_18BA18CD8(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

BOOL sub_18BA18D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_18BA1A2E4(v13, v15);
}

void sub_18BA18DB4()
{
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  [v0 _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_contentView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_shadowView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] _setContinuousCornerRadius_];
  [v0 setNeedsLayout];

  sub_18BA17E30();
}

id sub_18BA18EAC()
{
  v1 = OBJC_IVAR___SFTabThumbnailView_snapshotRegistration;
  v2 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (!v2)
  {
    return [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setImage_];
  }

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v2 + 80) = sub_18B9D4DC8;
  *(v2 + 88) = v3;

  v4 = *&v0[v1];
  if (!v4)
  {
    return [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setImage_];
  }

  swift_beginAccess();
  v5 = v4[2];
  v13[0] = v4[1];
  v13[1] = v5;
  v6 = v4[4];
  v13[2] = v4[3];
  v13[3] = v6;
  v7 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
  v8 = *(&v13[0] + 1);
  if (*(&v13[0] + 1))
  {
    sub_18BC1E1A8();
  }

  else
  {
    sub_18BC1E1A8();
    v10 = [v0 window];
    if (v10)
    {

      v11 = sub_18BC20B98();
      v8 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v8 = 0;
    }
  }

  sub_18B7CA054(v13, v12, &qword_1EA9D92C0, &qword_18BC42F60);
  sub_18B7CA054(v13, v12, &qword_1EA9D92C0, &qword_18BC42F60);
  [v7 setImage_];

  [v0 setNeedsLayout];

  return sub_18B988BAC(v13, &qword_1EA9D92C0, &qword_18BC42F60);
}

void sub_18BA1909C(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
    v7 = *(&v11[0] + 1);
    if (!*(&v11[0] + 1))
    {
      v8 = [Strong window];
      if (v8)
      {

        v9 = sub_18BC20B98();
        v7 = [objc_opt_self() systemImageNamed_];
      }

      else
      {
        v7 = 0;
      }
    }

    sub_18B7CA054(v11, v10, &qword_1EA9D92C0, &qword_18BC42F60);
    [v6 setImage_];

    [v5 setNeedsLayout];
  }
}

void sub_18BA191C8(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TabThumbnailView();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v2 = *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (v2)
  {
    sub_18BC1E1A8();
    v3 = [v1 window];
    if (v3)
    {

      swift_beginAccess();
      if (!*(v2 + 24))
      {
        v4 = *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
        v5 = [v4 image];
        if (v5)
        {
          v6 = v5;

          return;
        }

        v7 = [v1 window];
        if (v7)
        {

          v8 = sub_18BC20B98();
          v9 = [objc_opt_self() systemImageNamed_];
        }

        else
        {
          v9 = 0;
        }

        [v4 setImage_];

        [v1 setNeedsLayout];
      }
    }
  }
}

void sub_18BA19388(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v19 = sub_18BA1A6CC;
  v20 = v3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18B7B0DB0;
  v18 = &block_descriptor_10;
  v4 = _Block_copy(&v15);
  v5 = v1;

  [a1 addAnimations_];
  _Block_release(v4);
  if (*&v5[OBJC_IVAR___SFTabThumbnailView_configuration + 24] != 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18BA1A6EC;
    *(v8 + 24) = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_18B7D1EC4;
    *(v9 + 24) = v8;
    v19 = sub_18B7D1E94;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_18B7E3BF4;
    v18 = &block_descriptor_107;
    v10 = _Block_copy(&v15);
    v11 = v5;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_18BA1A6F4;
      v20 = v12;
      v15 = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_18B7B0DB0;
      v18 = &block_descriptor_113;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [a1 addAnimations_];
      _Block_release(v13);
    }
  }
}

void sub_18BA19694(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0;
  if (v2 != 0.0)
  {
    sub_18BA15D30();
  }

  v3 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  v4 = sub_18B7DE654();
  [v4 value];
  v6 = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18B7EA1B8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D53AC;
  *(v10 + 24) = v9;
  v13[4] = sub_18B9D53B0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18B7E3BF4;
  v13[3] = &block_descriptor_127;
  v11 = _Block_copy(v13);
  v12 = v3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

id sub_18BA1988C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___SFTabThumbnailView_configuration + 24) == 1)
  {
    v2 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
    *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0;
    if (v2 != 0.0)
    {
      sub_18BA15D30();
    }
  }

  v3 = *(a1 + OBJC_IVAR___SFTabThumbnailView_shadowView);

  return [v3 setAlpha_];
}

double sub_18BA19908()
{

  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 40);
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 48);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 56);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 64);
  v5 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 72);
  v6 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 80);
  sub_18BA1A6B8(*(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 8), *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 16), *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 24));

  sub_18BA1A4DC(v1, v2, v3, v4, v5, v6);

  MEMORY[0x18CFFF000](v0 + OBJC_IVAR___SFTabThumbnailView_matchMoveReferenceView);

  return result;
}

id sub_18BA19AF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TabThumbnailView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_18BA19D80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA19DA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 168) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari16TabThumbnailViewC011PinnedTitleE0C13ConfigurationVSg(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_12MobileSafari16TabThumbnailViewC12CornerButtonC13ConfigurationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18BA19E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BA19EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18BA19F50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_18BA19F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_18BA1A010(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v15 = 0;
  if (v3 != 1 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    if (v2)
    {
      if (!v3)
      {
        return 0;
      }

      if (*(a1 + 16) != *(a2 + 16) || v2 != v3)
      {
        v17 = a1;
        v18 = a2;
        v19 = sub_18BC21FD8();
        a2 = v18;
        v20 = v19;
        a1 = v17;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v3)
    {
      return 0;
    }

LABEL_4:
    v4 = a1;
    v5 = a2;
    if (sub_18B86E84C(*(a1 + 32), *(a2 + 32)))
    {
      v6 = *(v4 + 56);
      v33 = *(v4 + 40);
      v34 = v6;
      v35 = *(v4 + 72);
      v7 = *(v5 + 56);
      v31[0] = *(v5 + 40);
      v31[1] = v7;
      v32 = *(v5 + 72);
      v8 = v33;
      v9 = *(&v34 + 1);
      v10 = v34;
      v11 = v35;
      v12 = *&v31[0];
      v13 = *(&v7 + 1);
      v14 = *(&v32 + 1);
      if (v33 == 1)
      {
        if (*&v31[0] == 1)
        {
          sub_18B7CA054(&v33, &v40, &qword_1EA9D6020, &unk_18BC44DC0);
          sub_18B7CA054(v31, &v40, &qword_1EA9D6020, &unk_18BC44DC0);
          v15 = 1;
          v16 = 1;
LABEL_23:
          sub_18BA1A4DC(v16, *(&v8 + 1), v10, v9, v11, *(&v11 + 1));
          return v15;
        }
      }

      else if (*&v31[0] != 1)
      {
        v40 = v31[0];
        v41 = v7;
        v42 = WORD4(v7) & 0x101;
        v43 = v32;
        v36 = v33;
        v37 = v34;
        v38 = WORD4(v34) & 0x101;
        v39 = v35;
        v25 = *(&v31[0] + 1);
        v27 = v7;
        v29 = v32;
        sub_18B7CA054(&v33, v30, &qword_1EA9D6020, &unk_18BC44DC0);
        sub_18B7CA054(v31, v30, &qword_1EA9D6020, &unk_18BC44DC0);
        v15 = sub_18BA6EFA0(&v36, &v40);
        sub_18BA1A4DC(v12, v25, v27, v13, v29, v14);
        v16 = v8;
        goto LABEL_23;
      }

      v26 = *(&v7 + 1);
      v28 = *(&v32 + 1);
      v21 = *(&v31[0] + 1);
      v22 = v7;
      v23 = v32;
      sub_18B7CA054(&v33, &v40, &qword_1EA9D6020, &unk_18BC44DC0);
      sub_18B7CA054(v31, &v40, &qword_1EA9D6020, &unk_18BC44DC0);
      sub_18BA1A4DC(v8, *(&v8 + 1), v10, v9, v11, *(&v11 + 1));
      sub_18BA1A4DC(v12, v21, v22, v26, v23, v28);
    }

    return 0;
  }

  return v15;
}

BOOL sub_18BA1A2E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if ((*(a2 + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_18BC43C00)) & 0xF) != 0)
    {
      return v2;
    }
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 56))
    {
      return 0;
    }

    if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  v2 = 0;
  if (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152))
  {
    return *(a1 + 160) == *(a2 + 160);
  }

  return v2;
}

id sub_18BA1A450(uint64_t a1)
{
  v2 = OBJC_IVAR___SFTabThumbnailView_snapshotRegistration;
  v3 = *(v1 + OBJC_IVAR___SFTabThumbnailView_snapshotRegistration);
  if (v3)
  {
    v4 = a1;
    swift_beginAccess();
    *(v3 + 80) = CGRectMake;
    *(v3 + 88) = 0;

    a1 = v4;
  }

  *(v1 + v2) = a1;
  sub_18BC1E1A8();

  return sub_18BA18EAC();
}

void sub_18BA1A4DC(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_18BA1A548(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR___SFTabThumbnailView_configuration;
  v4 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 32);
  v5 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 64);
  v14 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 48);
  v15 = v5;
  v16 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 80);
  v6 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 16);
  v13[0] = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration);
  v13[1] = v6;
  v13[2] = v4;
  v19[0] = v13[0];
  v19[1] = v6;
  v20 = v16;
  v19[2] = v4;
  v19[3] = v14;
  v19[4] = v5;
  v7 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v7;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  sub_18BA1A650(v13, v17);
  sub_18BA1A650(v2, v17);
  sub_18BA1A688(v19);
  v9 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v9;
  v17[4] = *(v3 + 64);
  v18 = *(v3 + 80);
  v10 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v10;
  sub_18BA1A650(v17, v12);
  LOBYTE(v2) = sub_18BA1A010(v17, v13);
  sub_18BA1A688(v17);
  if ((v2 & 1) == 0)
  {
    sub_18BA15244(v13);
  }

  return sub_18BA1A688(v13);
}

double sub_18BA1A6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

id sub_18BA1A6F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(v1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0x3FF0000000000000;
  if (v2 != 1.0)
  {
    return sub_18BA15D30();
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

id sub_18BA1A82C()
{
  v1 = *(v0 + 24);
  sub_18BA16D00();
  [v1 layoutIfNeeded];

  return [v1 setAlpha_];
}

id sub_18BA1A898(id result, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (result != 1)
  {
    v9 = result;
    v10 = a6;
    v11 = v9;
    v12 = a2;
    v13 = a3;

    return a5;
  }

  return result;
}

id sub_18BA1A9D0(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1F7B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30, &qword_18BC42A50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView] = 0;
  v16 = _s14EntityCardCellCMa();
  v21.receiver = v4;
  v21.super_class = v16;
  v17 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F798();
  (*(v10 + 16))(v15, v12, v9);
  sub_18BC1F768();
  (*(v10 + 8))(v12, v9);
  (*(v10 + 56))(v15, 0, 1, v9);
  MEMORY[0x18CFFC920](v15);
  v18 = [v17 contentView];
  [v18 _setContinuousCornerRadius_];

  v19 = [v17 contentView];
  [v19 setClipsToBounds_];

  return v17;
}

id sub_18BA1AD0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14EntityCardCellCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18BA1AD74(char a1)
{
  v2 = v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen];
  v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen] = a1;
  if (v2 != (a1 & 1))
  {
    [v1 setNeedsLayout];
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18B848FAC;
    v6[4] = v4;
    v14 = sub_18B7D80AC;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_11;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_13;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }
}

double *sub_18BA1AF64(double *result)
{
  v2 = &v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  v3 = *&v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  v4 = *result;
  if (v3 != *result)
  {
    return [v1 setNeedsLayout];
  }

  v3 = result[3];
  v4 = v2[3];
  v5 = v2[1] == result[1] && v2[2] == result[2];
  if (!v5 || v4 != v3)
  {
    return [v1 setNeedsLayout];
  }

  v3 = v2[4];
  v4 = result[4];
  if (v3 != v4)
  {
    return [v1 setNeedsLayout];
  }

  v3 = v2[5];
  v4 = v2[6];
  v7 = v3 == result[5] && v4 == result[6];
  if (!v7 || v2[7] != result[7])
  {
    return [v1 setNeedsLayout];
  }

  v3 = v2[8];
  v4 = result[8];
  if (v3 != v4)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

char *sub_18BA1AFF4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen] = 0;
  v9 = &v4[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  UIEdgeInsetsMakeWithEdges();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  UIEdgeInsetsMakeWithEdges();
  *v9 = v11;
  v9[1] = v13;
  v9[2] = v15;
  v9[3] = v17;
  v9[4] = v18;
  v9[5] = v19;
  v9[6] = v20;
  v9[7] = v21;
  v9[8] = 0;
  v22 = OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar;
  type metadata accessor for FloatingTabBar(0);
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30.receiver = v4;
  v30.super_class = type metadata accessor for FloatingTabBarNavigationBarTitleView();
  v23 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar;
  v25 = *&v23[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar];
  v26 = v23;
  v27 = v25;
  v28 = sub_18B7C2E68();

  [v28 setContentInsetAdjustmentBehavior_];
  [v26 addSubview_];

  return v26;
}

id sub_18BA1B1FC()
{
  v1 = v0;
  v2 = [v0 overlays];
  v3 = MEMORY[0x1E695F050];
  if (!v2 || (v4 = v2, sub_18BC214B8(), v5 = v77, v6 = v78, v7 = v79, v8 = v80, v4, (v81 & 1) != 0))
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = v3[2];
    v8 = v3[3];
  }

  v9 = [v1 overlays];
  if (!v9 || (v10 = v9, sub_18BC214C8(), v12 = v82, v11 = v83, v13 = v84, v14 = v85, v10, (v86 & 1) != 0))
  {
    v12 = *v3;
    v11 = v3[1];
    v13 = v3[2];
    v14 = v3[3];
  }

  v15 = [v1 effectiveUserInterfaceLayoutDirection];
  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = v5;
  }

  if (v15)
  {
    v17 = v11;
  }

  else
  {
    v17 = v6;
  }

  v57 = v17;
  v58 = v16;
  if (v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = v7;
  }

  if (v15)
  {
    v19 = v14;
  }

  else
  {
    v19 = v8;
  }

  v55 = v19;
  v56 = v18;
  if ([v1 effectiveUserInterfaceLayoutDirection])
  {
    v12 = v5;
    v11 = v6;
    v13 = v7;
    v20 = v8;
  }

  else
  {
    v20 = v14;
  }

  v87.origin.x = v58;
  v87.origin.y = v57;
  v87.size.width = v56;
  v87.size.height = v55;
  CGRectIsNull(v87);
  v88.origin.x = v12;
  v88.origin.y = v11;
  v88.size.width = v13;
  v88.size.height = v20;
  CGRectIsNull(v88);
  v89.origin.x = v58;
  v89.origin.y = v57;
  v89.size.width = v56;
  v89.size.height = v55;
  CGRectGetMaxX(v89);
  [v1 bounds];
  CGRectGetWidth(v90);
  v91.origin.x = v12;
  v91.origin.y = v11;
  v91.size.width = v13;
  v91.size.height = v20;
  CGRectGetMinX(v91);
  v21 = &v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  v59 = 0.0;
  UIEdgeInsetsAdd();
  UIEdgeInsetsReplace(v22, v23, v24, v25);
  [v1 safeAreaInsets];
  UIEdgeInsetsMax();
  UIEdgeInsetsMax();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen] == 1)
  {
    [v1 bounds];
    v59 = -CGRectGetHeight(v92) - v21[8];
  }

  v34 = *&v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar];
  v35 = &v34[qword_1EA9F84B0];
  *v35 = v27;
  *(v35 + 1) = v29;
  *(v35 + 2) = v31;
  *(v35 + 3) = v33;
  v36 = sub_18BA474C4();
  v61 = *v35;
  v37 = *(v35 + 1);
  v38 = *(v35 + 2);
  v39 = *(v35 + 3);
  v65 = *(v35 + 8);
  v63 = v38;
  v64 = v39;
  v62 = v37;
  v40 = v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
  v41 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 64);
  v42 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 48);
  v43 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 16);
  v68 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 32);
  v69 = v42;
  v70 = v41;
  v67 = v43;
  v66 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics);
  v45 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 32);
  v44 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 48);
  v46 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 16);
  v72 = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 64);
  v71[2] = v45;
  v71[3] = v44;
  v71[1] = v46;
  v71[0] = *(v36 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics);
  *v40 = v61;
  v47 = v62;
  v48 = v63;
  v49 = v64;
  *(v40 + 64) = v65;
  *(v40 + 32) = v48;
  *(v40 + 48) = v49;
  *(v40 + 16) = v47;
  sub_18BA1B8A8(&v61, v73);
  sub_18BA1B8A8(&v61, v73);
  sub_18BA1B8A8(&v66, v73);
  sub_18BA1B904(v71);
  v73[0] = *v40;
  v51 = *(v40 + 32);
  v50 = *(v40 + 48);
  v52 = *(v40 + 16);
  v76 = *(v40 + 64);
  v74 = v51;
  v75 = v50;
  v73[1] = v52;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v73[0], v66), vceqq_f64(v52, v67)))) & 1) == 0 || (sub_18B9A2928(), sub_18BA1B8A8(v73, v60), v53 = sub_18BC215C8(), sub_18BA1B904(v73), (v53 & 1) == 0) || *(&v74 + 1) != *(&v68 + 1) || *&v75 != *&v69 || *(&v75 + 1) != *(&v69 + 1) || v76 != v70)
  {
    sub_18BAD4A48();
  }

  sub_18BA1B904(&v66);
  sub_18BA1B904(&v61);

  [v34 setNeedsLayout];
  [v1 bounds];
  return [v34 setFrame_];
}

BOOL sub_18BA1B6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BA1B82C(v7, v9);
}

id sub_18BA1B734(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FloatingTabBarNavigationBarTitleView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18BA1B7C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA1B7E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

BOOL sub_18BA1B82C(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 && a1[4] == a2[4] && (a1[5] == a2[5] ? (v4 = a1[6] == a2[6]) : (v4 = 0), v4 ? (v5 = a1[7] == a2[7]) : (v5 = 0), v5)))
  {
    return a1[8] == a2[8];
  }

  else
  {
    return 0;
  }
}

void sub_18BA1B958()
{
  *(v0 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics);
  UIEdgeInsetsMakeWithEdges();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  UIEdgeInsetsMakeWithEdges();
  *v1 = v3;
  v1[1] = v5;
  v1[2] = v7;
  v1[3] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[6] = v12;
  v1[7] = v13;
  v1[8] = 0;
  v14 = OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar;
  type metadata accessor for FloatingTabBar(0);
  *(v0 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BA1BA5C()
{
  type metadata accessor for WBSOnboardingIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60F0, &unk_18BC45010);
  v0 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v0);

  if (qword_1EA9D2330 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9F7F50;
  sub_18BC21C58();

  qword_1EA9F7F58 = 0;
  unk_1EA9F7F60 = 0xE000000000000000;
}

uint64_t sub_18BA1BB4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  __swift_allocate_value_buffer(v0, qword_1EA9F7F68);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  sub_18BC21AD8();

  if (qword_1EA9D2338 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9F7F58;
  v2 = unk_1EA9F7F60;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](v1, v2);

  return sub_18BC20278();
}

void SFOnboardingMoreButtonTip.controller.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*SFOnboardingMoreButtonTip.controller.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_18BA1BCE4;
}

void sub_18BA1BCE4(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t SFOnboardingMoreButtonTip.privacyPreservingDebugDescription.getter()
{
  sub_18BC21AD8();
  type metadata accessor for WBSOnboardingIdentifier(0);
  sub_18BC21C58();
  MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64920);
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  sub_18BC20288();

  v1 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v1);

  return 0;
}

uint64_t SFOnboardingMoreButtonTip.imageSize.getter()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() imageNamed_];

  if (!v1)
  {
    return 0;
  }

  [v1 size];
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall SFOnboardingMoreButtonTip.trigger()()
{
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  sub_18BC20268();
}

uint64_t SFOnboardingMoreButtonTip.id.getter()
{
  if (qword_1EA9D2338 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9F7F58;
  sub_18BC1E3F8();
  return v0;
}

uint64_t SFOnboardingMoreButtonTip.title.getter()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

void SFOnboardingMoreButtonTip.message.getter()
{
  v0 = sub_18BC204F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v5 = sub_18BC1EE28();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v12 = v5;
  v13 = v7;
  v11[2] = 0xD000000000000011;
  v11[3] = 0x800000018BC64A00;
  sub_18B7B0B50();
  v8 = sub_18BC21878();
  if (*(v8 + 16) == 1)
  {

    v12 = v5;
    v13 = v7;
    sub_18BC20668();
    return;
  }

  v9 = v8;

  v10 = *(v9 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 == 1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_18BC1E3F8();
  sub_18BC1E3F8();

  sub_18BC20738();
  sub_18BC204E8();
  sub_18BC204D8();
  sub_18BC204C8();

  sub_18BC204D8();
  sub_18BC204B8();
  sub_18BC204D8();
  sub_18BC204C8();

  sub_18BC204D8();
  sub_18BC20518();
  sub_18BC20658();
}

uint64_t SFOnboardingMoreButtonTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F7F68);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050, MEMORY[0x1E6982A50]);
  sub_18B80B760(&qword_1EA9D6058, MEMORY[0x1E6982A48]);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18BA1C668@<X0>(uint64_t *a2@<X8>)
{
  v34 = a2;
  v2 = sub_18BC1E838();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6080, &qword_18BC44F80);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6088, &qword_18BC44F88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6090, &qword_18BC44F90);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6098, &qword_18BC44F98);
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v28 - v16;
  sub_18B7B0B08(&qword_1EA9D60A0, &qword_1EA9D6088, &qword_18BC44F88, MEMORY[0x1E6968DA8]);
  sub_18BC1E858();
  swift_getKeyPath();
  sub_18BC1E818();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v18 = MEMORY[0x1E6968D58];
  sub_18B7B0B08(&qword_1EA9D60A8, &qword_1EA9D6090, &qword_18BC44F90, MEMORY[0x1E6968D58]);
  sub_18BC1E818();

  (*(v12 + 8))(v14, v11);
  v37 = 1;
  v19 = v30;
  sub_18BC1E848();
  v21 = v31;
  v20 = v32;
  v22 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x1E6968C38], v33);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60B0, &qword_18BC45008);
  v24 = v34;
  v34[3] = v23;
  v24[4] = sub_18B80BD84();
  __swift_allocate_boxed_opaque_existential_0Tm(v24);
  sub_18B7B0B08(&qword_1EA9D60E0, &qword_1EA9D6098, &qword_18BC44F98, v18);
  sub_18B7B0B08(&qword_1EA9D60E8, &qword_1EA9D6080, &qword_18BC44F80, MEMORY[0x1E6968D20]);
  v25 = v29;
  v26 = v35;
  sub_18BC1E828();
  (*(v20 + 8))(v21, v22);
  (*(v36 + 8))(v19, v26);
  return (*(v15 + 8))(v17, v25);
}

uint64_t SFOnboardingMoreButtonTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6060, &unk_18BC52280);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_18BC20188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6068, &qword_18BC44E70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18BC20198();
  v12 = MEMORY[0x1E6982A88];
  MEMORY[0x18CFFB650](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

void sub_18BA1CE3C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_18BA1CE7C(uint64_t *a1))(void *)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_18BA1D860;
}

uint64_t sub_18BA1CED0()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() imageNamed_];

  if (!v1)
  {
    return 0;
  }

  [v1 size];
  v3 = v2;

  return v3;
}

uint64_t sub_18BA1CF80()
{
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  return sub_18BC20268();
}

unint64_t sub_18BA1CFFC(uint64_t a1)
{
  result = sub_18BA1D024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BA1D024()
{
  result = qword_1EA9D6070;
  if (!qword_1EA9D6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6070);
  }

  return result;
}

unint64_t sub_18BA1D07C()
{
  result = qword_1EA9D6078;
  if (!qword_1EA9D6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6078);
  }

  return result;
}

uint64_t sub_18BA1D0D0()
{
  if (qword_1EA9D2338 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9F7F58;
  sub_18BC1E3F8();
  return v0;
}

uint64_t sub_18BA1D138()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t sub_18BA1D290()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F7F68);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050, MEMORY[0x1E6982A50]);
  sub_18B80B760(&qword_1EA9D6058, MEMORY[0x1E6982A48]);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18BA1D4D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6060, &unk_18BC52280);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_18BC20188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6068, &qword_18BC44E70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18BC20198();
  v12 = MEMORY[0x1E6982A88];
  MEMORY[0x18CFFB650](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

double sub_18BA1D774@<D0>(void *a1@<X8>)
{
  if (qword_1EA9D2338 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EA9F7F60;
  *a1 = qword_1EA9F7F58;
  a1[1] = v1;

  sub_18BC1E3F8();
  return result;
}

uint64_t sub_18BA1D864()
{
  sub_18BC22158();
  sub_18BC215D8();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BA1D8C8(uint64_t a1)
{
  sub_18BC215D8();

  return sub_18BC20C28();
}

uint64_t sub_18BA1D91C(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC215D8();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BA1D97C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_18B9A2928();
  if ((sub_18BC215C8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

void sub_18BA1DA28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6118, &qword_18BC45110);
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v81 - v5;
  v96 = sub_18BC1EC08();
  v89 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v87 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6120, &qword_18BC45118);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v98 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - v12;
  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = (v14 + 64);
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v91 = (a1 + 56);
  *&v97 = v14;
  sub_18BC1E3F8();
  v20 = 0;
  v21 = v4;
  v85 = v4;
  v84 = v13;
  v95 = v15;
  v92 = v2;
  v94 = v19;
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(v97 + 48) + 24 * (v23 | (v20 << 6));
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (!*(a1 + 16))
      {
        sub_18BC1E3F8();
        v36 = v25;
        goto LABEL_23;
      }

      sub_18BC22158();
      swift_bridgeObjectRetain_n();
      v28 = v25;
      sub_18BC20C28();
      v29 = sub_18BC221A8();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      v32 = v91;
      if ((*(v91 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        break;
      }

LABEL_21:

      v2 = v92;
LABEL_23:
      swift_beginAccess();
      sub_18BC1E3F8();
      v37 = v25;
      v38 = sub_18BB8B1C4(v37, v26, v27);
      if (v39)
      {
        v40 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v2[2];
        v99 = v42;
        v2[2] = 0x8000000000000000;
        v43 = v2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_18BB294F4();
          v42 = v99;
        }

        v44 = *(*(v42 + 48) + 24 * v40);

        sub_18BB5A8B4(v40, v42, v45);

        v43[2] = v42;
        v2 = v43;
      }

      else
      {
      }

      v19 = v94;
      swift_endAccess();

      v21 = v85;
      v13 = v84;
      v15 = v95;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v33 = ~v30;
    while (1)
    {
      v34 = (*(a1 + 48) + 16 * v31);
      v35 = *v34 == v26 && v34[1] == v27;
      if (v35 || (sub_18BC21FD8() & 1) != 0)
      {
        break;
      }

      v31 = (v31 + 1) & v33;
      if (((*(v32 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    swift_bridgeObjectRelease_n();
    v21 = v85;
    v13 = v84;
    v2 = v92;
    v19 = v94;
    v15 = v95;
  }

  while (v18);
  while (1)
  {
LABEL_8:
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_50;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = v15[v22];
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_12;
    }
  }

  swift_beginAccess();
  v46 = v2[4];
  v47 = *(v46 + 8);
  v82 = v46 + 64;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v47;
  v51 = (v48 + 63) >> 6;
  v95 = (v90 + 56);
  v86 = v89 + 16;
  v92 = (v89 + 32);
  v94 = (v90 + 48);
  v91 = (v89 + 8);
  v88 = v46;
  sub_18BC1E3F8();
  v52 = 0;
  v53 = v21;
  if (!v50)
  {
LABEL_33:
    if (v51 <= v52 + 1)
    {
      v56 = v52 + 1;
    }

    else
    {
      v56 = v51;
    }

    v57 = v56 - 1;
    while (1)
    {
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v55 >= v51)
      {
        v69 = *v95;
        (*v95)(v98, 1, 1, v53);
        v50 = 0;
        goto LABEL_42;
      }

      v50 = *(v82 + 8 * v55);
      ++v52;
      if (v50)
      {
        v54 = v53;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  while (1)
  {
    v54 = v53;
    v55 = v52;
LABEL_41:
    v58 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v59 = v58 | (v55 << 6);
    v60 = v88;
    v61 = v89;
    v62 = v87;
    v63 = v96;
    (*(v89 + 16))(v87, *(v88 + 6) + *(v89 + 72) * v59, v96);
    v64 = v54;
    v65 = *(v54 + 48);
    v66 = *(v61 + 32);
    v97 = *(*(v60 + 7) + 16 * v59);
    v67 = v98;
    v68 = v62;
    v53 = v64;
    v66(v98, v68, v63);
    *&v67[v65] = v97;
    v69 = *v95;
    (*v95)(v67, 0, 1, v53);
    sub_18BC1E1A8();
    v57 = v55;
LABEL_42:
    v70 = *v94;
    v71 = 1;
    if ((*v94)(v98, 1, v53) != 1)
    {
      v90 = *(v53 + 48);
      v72 = v69;
      v73 = v98;
      *&v97 = v57;
      v74 = *v92;
      (*v92)(v83, v98, v96);
      v75 = swift_allocObject();
      v76 = v53;
      v77 = v75;
      v78 = *&v73[v90];
      v69 = v72;
      *(v75 + 16) = v78;
      v79 = &v93[*(v76 + 48)];
      v74();
      v57 = v97;
      v71 = 0;
      *v79 = sub_18BA1ED2C;
      *(v79 + 1) = v77;
      v13 = v84;
      v53 = v85;
    }

    v80 = v93;
    v69(v93, v71, 1, v53);
    sub_18BA1ECBC(v80, v13);
    if (v70(v13, 1, v53) == 1)
    {
      break;
    }

    (*&v13[*(v53 + 48)])();

    (*v91)(v13, v96);
    v52 = v57;
    if (!v50)
    {
      goto LABEL_33;
    }
  }
}

void sub_18BA1E284()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6118, &qword_18BC45110);
  v1 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v46 = &v45 - v2;
  v60 = sub_18BC1EC08();
  v3 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6120, &qword_18BC45118);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v45 - v10;
  v11 = sub_18BA648E0(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v0 + 16) = v11;

  swift_beginAccess();
  v12 = *(v0 + 32);
  v13 = *(v12 + 64);
  v45 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v59 = (v1 + 56);
  v47 = v3 + 16;
  v55 = (v3 + 32);
  v58 = (v1 + 48);
  v49 = v3;
  v50 = v12;
  v53 = (v3 + 8);
  sub_18BC1E3F8();
  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
      v20 = v57;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v19 << 6);
      v26 = v49;
      v25 = v50;
      v27 = v48;
      v28 = v60;
      (*(v49 + 16))(v48, *(v50 + 48) + *(v49 + 72) * v24, v60);
      v29 = *(v25 + 56);
      v30 = v62;
      v31 = *(v62 + 48);
      v32 = *(v26 + 32);
      v61 = *(v29 + 16 * v24);
      v32(v20, v27, v28);
      *&v20[v31] = v61;
      v33 = *v59;
      (*v59)(v20, 0, 1, v30);
      sub_18BC1E1A8();
      v22 = v19;
LABEL_13:
      v34 = *v58;
      v35 = 1;
      if ((*v58)(v20, 1, v62) != 1)
      {
        v36 = v62;
        v51 = *(v62 + 48);
        v52 = v33;
        *&v61 = v22;
        v37 = *v55;
        v38 = v57;
        (*v55)(v46, v57, v60);
        v39 = swift_allocObject();
        *(v39 + 16) = *&v38[v51];
        v40 = &v56[*(v36 + 48)];
        v37();
        v33 = v52;
        v22 = v61;
        v35 = 0;
        *v40 = sub_18B9FE68C;
        v40[1] = v39;
      }

      v41 = v56;
      v42 = v62;
      v33(v56, v35, 1, v62);
      v43 = v41;
      v44 = v54;
      sub_18BA1ECBC(v43, v54);
      if (v34(v44, 1, v42) == 1)
      {
        break;
      }

      (*(v44 + *(v62 + 48)))();

      (*v53)(v44, v60);
      v18 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    v20 = v57;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v33 = *v59;
        (*v59)(v57, 1, 1, v62);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}