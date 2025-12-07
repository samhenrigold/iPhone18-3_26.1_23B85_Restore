uint64_t storeEnumTagSinglePayload for ConceptDeltaHighlightFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D556E28()
{
  result = qword_2A17A4C68;
  if (!qword_2A17A4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C68);
  }

  return result;
}

unint64_t sub_29D556E80()
{
  result = qword_2A17A4C70;
  if (!qword_2A17A4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C70);
  }

  return result;
}

unint64_t sub_29D556ED8()
{
  result = qword_2A17A4C78;
  if (!qword_2A17A4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C78);
  }

  return result;
}

uint64_t sub_29D556F2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2;
  if (v3 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747065636E6F63 && a2 == 0xE700000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365527265646C6FLL && a2 == 0xEB0000000064726FLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636552726577656ELL && a2 == 0xEB0000000064726FLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029D5BE0D0 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66676E696E61656DLL && a2 == 0xEE00657461446C75 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69446E4965646968 && a2 == 0xEE007265766F6373)
  {

    return 7;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_29D5571E0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_29D557218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_29D5B4C7C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29D5B4C7C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29D5572FC(uint64_t a1)
{
  v2 = sub_29D557584();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D557338(uint64_t a1)
{
  v2 = sub_29D557584();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t RemovedCategoryFeedItemData.encode(to:)(void *a1)
{
  sub_29D557A54(0, &qword_2A17A4C80, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D557584();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D5B1C2C();
  sub_29D557AB8(&qword_2A17A4C90, MEMORY[0x29EDC4018], MEMORY[0x29EDC4020]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for RemovedCategoryFeedItemData(0);
    v10[14] = 1;
    sub_29D5B1D6C();
    sub_29D557AB8(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_29D557584()
{
  result = qword_2A17A4C88;
  if (!qword_2A17A4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C88);
  }

  return result;
}

uint64_t type metadata accessor for RemovedCategoryFeedItemData(uint64_t a1)
{
  result = qword_2A1A18160;
  if (!qword_2A1A18160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemovedCategoryFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_29D5B1D6C();
  v26 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D5B1C2C();
  v28 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v7);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D557A54(0, &qword_2A17A4C98, MEMORY[0x29EDC9E80]);
  v33 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for RemovedCategoryFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D557584();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v25 = v13;
  v17 = v16;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_29D557AB8(&qword_2A17A4CA0, MEMORY[0x29EDC4018], MEMORY[0x29EDC4028]);
  v20 = v30;
  sub_29D5B4B6C();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_29D557AB8(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  sub_29D5B4B6C();
  (*(v31 + 8))(v12, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_29D557B00(v22, v27);
  sub_29D48F668(a1);
  return sub_29D557B64(v22);
}

void sub_29D557A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D557584();
    v7 = a3(a1, &type metadata for RemovedCategoryFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D557AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D557B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemovedCategoryFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D557B64(uint64_t a1)
{
  v2 = type metadata accessor for RemovedCategoryFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D557C18(uint64_t a1)
{
  result = sub_29D5B1C2C();
  if (v2 <= 0x3F)
  {
    result = sub_29D5B1D6C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D557CB0()
{
  result = qword_2A17A4CA8;
  if (!qword_2A17A4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4CA8);
  }

  return result;
}

unint64_t sub_29D557D08()
{
  result = qword_2A17A4CB0;
  if (!qword_2A17A4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4CB0);
  }

  return result;
}

unint64_t sub_29D557D60()
{
  result = qword_2A17A4CB8;
  if (!qword_2A17A4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4CB8);
  }

  return result;
}

uint64_t sub_29D557DB4()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDB9C70];
  v6 = MEMORY[0x29EDC9C68];
  sub_29D55D86C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_29D5B0EFC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_29D5B1FBC();
  v12 = sub_29D5B2A0C();
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  result = sub_29D55DB38(v10, &qword_2A1A19588, v5, v6, sub_29D55D86C);
  qword_2A17A4CC0 = v12;
  *algn_2A17A4CC8 = v14;
  return result;
}

uint64_t sub_29D557FC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___factory;
  swift_beginAccess();
  sub_29D55DC2C(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D55DCB0(&v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

id sub_29D5580C8()
{
  v1 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D558170()
{
  sub_29D5B2D5C();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 labelColor];
  [v2 setTextColor_];

  v4 = *MEMORY[0x29EDC80E0];
  sub_29D5B2D4C();
  sub_29D5B2D3C();
  [v2 setNumberOfLines_];
  [v2 setLineBreakMode_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  return v2;
}

id sub_29D558260()
{
  v1 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView);
  }

  else
  {
    v4 = v0;
    sub_29D5B2D5C();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 secondaryLabelColor];
    [v7 setTextColor_];

    v9 = *MEMORY[0x29EDC80F8];
    sub_29D5B2D4C();
    sub_29D5B2D3C();
    [v7 setNumberOfLines_];
    [v7 setLineBreakMode_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_29D5583A8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D558408()
{
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() configurationWithFont:result scale:1];
    v3 = sub_29D5B3E1C();
    v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

    v5 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v6 = [objc_opt_self() tertiaryLabelColor];
    [v5 setTintColor_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D55858C()
{
  v1 = v0;
  v79.receiver = v0;
  v79.super_class = type metadata accessor for ClinicalSharingFeedItemViewController(0);
  objc_msgSendSuper2(&v79, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = sub_29D5580C8();
  [v6 addSubview_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sub_29D558150();
  [v9 addSubview_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_29D558260();
  [v12 addSubview_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = sub_29D558388();
  [v15 addSubview_];

  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D5BA820;
  v18 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView;
  v19 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView] widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v17 + 32) = v20;
  v21 = [*&v1[v18] heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v17 + 40) = v22;
  v23 = [*&v1[v18] leadingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26 constant:20.0];
  *(v17 + 48) = v27;
  v28 = [*&v1[v18] centerYAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 centerYAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v17 + 56) = v32;
  v33 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView;
  v34 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView] leadingAnchor];
  v35 = [*&v1[v18] trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];

  *(v17 + 64) = v36;
  v37 = [*&v1[v33] trailingAnchor];
  v77 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator;
  v38 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator] leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-16.0];

  *(v17 + 72) = v39;
  v40 = [*&v1[v33] topAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 &selRef:v43 setSound:10.0 + 6];
  *(v17 + 80) = v44;
  v45 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView;
  v46 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView] leadingAnchor];
  v47 = [*&v1[v33] leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v17 + 88) = v48;
  v49 = [*&v1[v45] trailingAnchor];
  v50 = [*&v1[v33] trailingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v17 + 96) = v51;
  v52 = [*&v1[v45] topAnchor];
  v53 = [*&v1[v33] bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:2.0];

  *(v17 + 104) = v54;
  v55 = [*&v1[v45] bottomAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v56;
  v58 = [v56 bottomAnchor];

  v59 = [v55 constraintEqualToAnchor:v58 constant:-10.0];
  *(v17 + 112) = v59;
  v60 = [*&v1[v77] centerYAnchor];
  v61 = [v1 view];
  if (!v61)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v62 = v61;
  v63 = [v61 centerYAnchor];

  v64 = [v60 constraintEqualToAnchor_];
  *(v17 + 120) = v64;
  v65 = [*&v1[v77] trailingAnchor];
  v66 = [v1 view];
  if (!v66)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v67 = v66;
  v68 = objc_opt_self();
  v69 = [v67 trailingAnchor];

  v70 = [v65 constraintEqualToAnchor:v69 constant:-22.0];
  *(v17 + 128) = v70;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v71 = sub_29D5B401C();

  [v68 activateConstraints_];

  v72 = *&v1[v77];
  type metadata accessor for UILayoutPriority(0);
  sub_29D55DD20(&unk_2A17A4DC0, type metadata accessor for UILayoutPriority, MEMORY[0x29EDC7890]);
  v73 = v72;
  sub_29D5B372C();
  LODWORD(v74) = v78;
  [v73 setContentHuggingPriority:0 forAxis:v74];

  v75 = *&v1[v77];
  sub_29D5B372C();
  LODWORD(v76) = v78;
  [v75 setContentHuggingPriority:1 forAxis:v76];

  if (v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] == 1)
  {
    sub_29D559A40();
  }
}

void sub_29D558EE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v81 - v9;
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v86 = &v81 - v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v81 - v15;
  v17 = type metadata accessor for ClinicalSharingFeedItemData(0);
  v84 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v82 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v83 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v81 - v25;
  v27 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  v28 = MEMORY[0x29EDC2808];
  sub_29D55DC2C(v1 + v27, v90, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v29 = v91;
  sub_29D55DCB0(v90, &qword_2A1A19460, &qword_2A1A19470, v28);
  if (v29)
  {
    v81 = v16;
    sub_29D55DC2C(v1 + v27, v90, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v30 = v91;
    if (v91)
    {
      v31 = sub_29D499EC0(v90, v91);
      v32 = *(v30 - 8);
      MEMORY[0x2A1C7C4A8](v31, v31);
      v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v34);
      v35 = sub_29D5B317C();
      v37 = v36;
      (*(v32 + 8))(v34, v30);
      sub_29D48F668(v90);
      if (v37 >> 60 == 15)
      {
        v38 = v86;
        sub_29D5B36DC();
        v39 = sub_29D5B370C();
        v40 = sub_29D5B427C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v90[0] = v42;
          *v41 = 136315138;
          v43 = sub_29D5B4DFC();
          v45 = sub_29D501890(v43, v44, v90);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_29D48C000, v39, v40, "%s userData nil", v41, 0xCu);
          sub_29D48F668(v42);
          MEMORY[0x29ED5FB80](v42, -1, -1);
          MEMORY[0x29ED5FB80](v41, -1, -1);
        }

        (*(v89 + 8))(v38, v88);
        return;
      }

      sub_29D5B0BDC();
      swift_allocObject();
      sub_29D5B0BCC();
      sub_29D55DD20(&qword_2A17A4DA8, type metadata accessor for ClinicalSharingFeedItemData, &unk_29D5B91FC);
      sub_29D5B0BBC();
      v53 = v35;

      v54 = v84;
      (*(v84 + 56))(v26, 0, 1, v17);
      v55 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
      swift_beginAccess();
      sub_29D55DB98(v26, v1 + v55);
      swift_endAccess();
      v56 = v1 + v55;
      v57 = v83;
      sub_29D55D774(v56, v83);
      if ((*(v54 + 48))(v57, 1, v17) == 1)
      {
        sub_29D55DB38(v57, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
        v58 = v81;
        sub_29D5B36DC();
        v59 = sub_29D5B370C();
        v60 = sub_29D5B427C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v90[0] = v62;
          *v61 = 136315138;
          v63 = sub_29D5B4DFC();
          v65 = v37;
          v66 = sub_29D501890(v63, v64, v90);

          *(v61 + 4) = v66;
          _os_log_impl(&dword_29D48C000, v59, v60, "%s Feed item data nil", v61, 0xCu);
          sub_29D48F668(v62);
          MEMORY[0x29ED5FB80](v62, -1, -1);
          MEMORY[0x29ED5FB80](v61, -1, -1);
          v67 = v35;
          v68 = v65;
        }

        else
        {
          v67 = v35;
          v68 = v37;
        }

        sub_29D4A96BC(v67, v68);

        (*(v89 + 8))(v58, v88);
        return;
      }

      v69 = v82;
      sub_29D55D808(v57, v82);
      sub_29D55DC2C(v1 + v27, v90, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
      v70 = v91;
      if (v91)
      {
        v71 = sub_29D499EC0(v90, v91);
        v72 = *(v70 - 8);
        MEMORY[0x2A1C7C4A8](v71, v71);
        v74 = &v81 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v72 + 16))(v74);
        v75 = sub_29D5B314C();
        (*(v72 + 8))(v74, v70);
        sub_29D5B0E8C();
        v76 = objc_allocWithZone(MEMORY[0x29EDBADC8]);
        v77 = sub_29D5B3E1C();

        v78 = [v76 initForClinicalAccountIdentifier_];

        v79 = [objc_allocWithZone(MEMORY[0x29EDBADC0]) initWithHealthStore:v75 recipientIdentifier:v78];
        sub_29D48F668(v90);
        [v79 addObserver_];
        sub_29D4A96BC(v53, v37);
        sub_29D513964(v69);
        v80 = *(v1 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore);
        *(v1 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore) = v79;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_29D5B36DC();
  v46 = sub_29D5B370C();
  v47 = sub_29D5B427C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v90[0] = v49;
    *v48 = 136315138;
    v50 = sub_29D5B4DFC();
    v52 = sub_29D501890(v50, v51, v90);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_29D48C000, v46, v47, "%s context nil", v48, 0xCu);
    sub_29D48F668(v49);
    MEMORY[0x29ED5FB80](v49, -1, -1);
    MEMORY[0x29ED5FB80](v48, -1, -1);
  }

  (*(v89 + 8))(v10, v88);
}

uint64_t sub_29D559A40()
{
  v1 = v0;
  v52[1] = swift_getObjectType();
  v56 = sub_29D5B371C();
  v54 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v2);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B200C();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v55 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29D55D86C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v53 = v52 - v11;
  sub_29D55D86C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], v8);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = v52 - v14;
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, v8);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = v52 - v18;
  v20 = type metadata accessor for ClinicalSharingFeedItemData(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = v52 - v27;
  v29 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  swift_beginAccess();
  sub_29D55D774(v1 + v29, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_29D55DB38(v19, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    sub_29D5B36DC();
    v30 = sub_29D5B370C();
    v31 = sub_29D5B427C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59 = v33;
      *v32 = 136315138;
      v34 = sub_29D5B4DFC();
      v36 = sub_29D501890(v34, v35, &v59);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_29D48C000, v30, v31, "%s Feed item data nil", v32, 0xCu);
      sub_29D48F668(v33);
      MEMORY[0x29ED5FB80](v33, -1, -1);
      MEMORY[0x29ED5FB80](v32, -1, -1);
    }

    return (*(v54 + 8))(v4, v56);
  }

  else
  {
    sub_29D55D808(v19, v28);
    v38 = sub_29D5B410C();
    (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
    sub_29D513900(v28, v25);
    sub_29D5B40EC();
    v39 = v1;
    v40 = sub_29D5B40DC();
    v41 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v42 = (v22 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = MEMORY[0x29EDCA390];
    *(v43 + 16) = v40;
    *(v43 + 24) = v44;
    sub_29D55D808(v25, v43 + v41);
    *(v43 + v42) = v39;
    sub_29D57657C(0, 0, v15, &unk_29D5BAA10, v43);

    v45 = sub_29D558150();
    v46 = sub_29D5B3E1C();
    [v45 setText_];

    v47 = sub_29D558260();
    v48 = sub_29D5B0EFC();
    v49 = v53;
    (*(*(v48 - 8) + 56))(v53, 1, 1, v48);
    v50 = v55;
    sub_29D5B1FDC();
    sub_29D5B2A0C();
    (*(v57 + 8))(v50, v58);
    sub_29D55DB38(v49, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D55D86C);
    v51 = sub_29D5B3E1C();

    [v47 setText_];

    sub_29D55B00C();
    sub_29D55B334();
    return sub_29D513964(v28);
  }
}

uint64_t sub_29D55A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_29D5B371C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_29D55D86C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v5[7] = swift_task_alloc();
  v7 = sub_29D5B0EDC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = sub_29D5B1A6C();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_29D5B40EC();
  v5[17] = sub_29D5B40DC();
  v10 = sub_29D5B40CC();
  v5[18] = v10;
  v5[19] = v9;

  return MEMORY[0x2A1C73D48](sub_29D55A37C, v10, v9);
}

uint64_t sub_29D55A37C()
{
  *(v0 + 160) = sub_29D5B208C();
  sub_29D5B207C();
  type metadata accessor for ClinicalSharingFeedItemData(0);
  *(v0 + 168) = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_preferredIconSize;
  sub_29D5B205C();

  return MEMORY[0x2A1C73D48](sub_29D55A438, 0, 0);
}

uint64_t sub_29D55A438()
{
  *(v0 + 176) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D55A4C4, v2, v1);
}

uint64_t sub_29D55A4C4()
{

  v1 = sub_29D5580C8();
  v2 = sub_29D5B1A5C();
  [v1 setImage_];

  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  return MEMORY[0x2A1C73D48](sub_29D55A568, v3, v4);
}

uint64_t sub_29D55A568()
{
  v1 = v0[21];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v4 + 16);
  v0[23] = v7;
  v0[24] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v0[25] = sub_29D5B207C();
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_29D55A648;
  v9 = v0[7];
  v10 = v0[2];

  return MEMORY[0x2A1C65D58](v9, v10, v6 + v1);
}

uint64_t sub_29D55A648()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2A1C73D48](sub_29D55A78C, v3, v2);
}

uint64_t sub_29D55A78C()
{
  v36 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[23];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];

    sub_29D55DB38(v3, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68], sub_29D55D86C);
    sub_29D5B36DC();
    v4(v6, v5, v7);
    v8 = sub_29D5B370C();
    v9 = sub_29D5B427C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[10];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[5];
    v33 = v0[6];
    v34 = v0[11];
    v32 = v0[4];
    if (v10)
    {
      v28 = v9;
      v18 = swift_slowAlloc();
      v31 = v12;
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      sub_29D55DD20(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v29 = v13;
      v30 = v11;
      v20 = sub_29D5B4C4C();
      v22 = v21;
      v23 = *(v16 + 8);
      v23(v14, v15);
      v24 = sub_29D501890(v20, v22, &v35);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_29D48C000, v8, v28, "Error retrieving logo for account identifier: %s", v18, 0xCu);
      sub_29D48F668(v19);
      MEMORY[0x29ED5FB80](v19, -1, -1);
      MEMORY[0x29ED5FB80](v18, -1, -1);

      (*(v17 + 8))(v33, v32);
      v23(v34, v15);
      (*(v31 + 8))(v30, v29);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v14, v15);
      (*(v17 + 8))(v33, v32);
      v25(v34, v15);
      (*(v12 + 8))(v11, v13);
    }

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);

    return MEMORY[0x2A1C73D48](sub_29D55AB44, 0, 0);
  }
}

uint64_t sub_29D55AB44()
{
  *(v0 + 216) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D55ABD0, v2, v1);
}

uint64_t sub_29D55ABD0()
{
  v1 = v0[3];

  sub_29D55AD84(v1);
  v2 = v0[18];
  v3 = v0[19];

  return MEMORY[0x2A1C73D48](sub_29D55AC80, v2, v3);
}

uint64_t sub_29D55AC80()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];

  v8 = *(v4 + 8);
  v8(v1, v3);
  (*(v7 + 8))(v5, v6);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D55AD84(uint64_t a1)
{
  v22 = a1;
  v23 = sub_29D5B420C();
  v1 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v2);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_29D5B1A1C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v22 - v12;
  v14 = sub_29D5580C8();
  v15 = sub_29D5B1A5C();
  [v14 setImage_];

  sub_29D5B1A3C();
  (*(v6 + 104))(v10, *MEMORY[0x29EDC3EC0], v5);
  LOBYTE(v14) = sub_29D5B1A0C();
  v16 = *(v6 + 8);
  v16(v10, v5);
  v16(v13, v5);
  v17 = *(v22 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView);
  if (v14)
  {
    *v4 = 0x4008000000000000;
    v18 = MEMORY[0x29EDC4278];
  }

  else
  {
    v18 = MEMORY[0x29EDC4280];
  }

  v19 = v23;
  (*(v1 + 104))(v4, *v18, v23);
  v20 = v17;
  sub_29D5B41FC();

  return (*(v1 + 8))(v4, v19);
}

void sub_29D55B00C()
{
  v1 = v0;
  v15 = sub_29D5B3E5C();
  v16 = v2;

  MEMORY[0x29ED5E510](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x29ED5E510](0x6E696F6774754F2ELL, 0xE900000000000067);

  MEMORY[0x29ED5E510](0x656469766F72502ELL, 0xE900000000000072);

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = sub_29D5B3E1C();
    [v4 setAccessibilityIdentifier_];

    v6 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier];
    swift_beginAccess();
    *v6 = v15;
    v6[1] = v16;

    v7 = sub_29D5580C8();

    MEMORY[0x29ED5E510](0x6567616D492ELL, 0xE600000000000000);
    v8 = sub_29D5B3E1C();

    [v7 setAccessibilityIdentifier_];

    v9 = sub_29D558150();

    MEMORY[0x29ED5E510](0x746E65746E6F432ELL, 0xEC00000077656956);
    v10 = sub_29D5B3E1C();

    [v9 setAccessibilityIdentifier_];

    v11 = sub_29D558260();

    MEMORY[0x29ED5E510](0x746E65746E6F432ELL, 0xEC00000077656956);
    v12 = sub_29D5B3E1C();

    [v11 setAccessibilityIdentifier_];

    v13 = sub_29D558388();

    MEMORY[0x29ED5E510](0x6F7373656363412ELL, 0xEA00000000007972);

    v14 = sub_29D5B3E1C();

    [v13 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29D55B334()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D5B200C();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D55D86C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v41 - v9;
  v11 = sub_29D5B0EDC();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, v6);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for ClinicalSharingFeedItemData(0);
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result && *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore])
  {
    v42 = *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore];
    v43 = v22;
    v24 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
    swift_beginAccess();
    sub_29D55D774(&v1[v24], v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      return sub_29D55DB38(v17, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    }

    else
    {
      v25 = v43;
      sub_29D55D808(v17, v43);
      if (*(v25 + *(v18 + 24)) == 4)
      {
        v26 = v42;
        v27 = sub_29D558260();
        v28 = sub_29D5B0EFC();
        (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
        sub_29D5B1FDC();
        v29 = sub_29D5B2A0C();
        v31 = v30;
        (*(v45 + 8))(v5, v46);
        sub_29D55DB38(v10, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D55D86C);
        v32 = MEMORY[0x29ED5E4B0](v29, v31);

        [v27 setAttributedText_];

        v33 = v25;
      }

      else
      {
        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v35 = v44;
        (*(v44 + 16))(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v11);
        v36 = v25;
        v37 = (*(v35 + 80) + 24) & ~*(v35 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v34;
        (*(v35 + 32))(v38 + v37, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
        *(v38 + ((v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
        aBlock[4] = sub_29D55D8D0;
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29D54B08C;
        aBlock[3] = &unk_2A242A390;
        v39 = _Block_copy(aBlock);
        v40 = v42;

        [v40 fetchSharingAuthorizationsWithCompletion_];

        _Block_release(v39);
        v33 = v36;
      }

      return sub_29D513964(v33);
    }
  }

  return result;
}

void sub_29D55B940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v78 = a4;
  v68 = a1;
  v6 = sub_29D5B3C8C();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29D5B3CAC();
  v70 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72, v9);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v77 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClinicalSharingFeedItemData(0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v65 - v21;
  v23 = sub_29D5B0EDC();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v65 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v66 = a2;
    v34 = v23;
    v35 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
    swift_beginAccess();
    sub_29D55D774(v33 + v35, v22);
    if ((*(v15 + 48))(v22, 1, v14))
    {

      sub_29D55DB38(v22, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
      return;
    }

    sub_29D513900(v22, v18);
    sub_29D55DB38(v22, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    v36 = v34;
    v37 = v24;
    (*(v24 + 16))(v28, v18, v36);
    sub_29D513964(v18);
    v38 = *(v24 + 32);
    v39 = v31;
    v38(v31, v28, v36);
    if (sub_29D5B0EAC())
    {
      v40 = v66;
      if (v66)
      {
        v41 = v66;
        v42 = v77;
        sub_29D5B36CC();
        v43 = v40;
        v44 = sub_29D5B370C();
        v45 = sub_29D5B427C();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          aBlock[0] = v47;
          *v46 = 136315394;
          v48 = sub_29D5B4DFC();
          v78 = v36;
          v50 = v39;
          v51 = sub_29D501890(v48, v49, aBlock);

          *(v46 + 4) = v51;
          *(v46 + 12) = 2080;
          v79 = v40;
          v52 = v40;
          sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
          v53 = sub_29D5B3E7C();
          v55 = sub_29D501890(v53, v54, aBlock);

          *(v46 + 14) = v55;
          _os_log_impl(&dword_29D48C000, v44, v45, "[%s] Failed to fetch autorization identifiers: %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED5FB80](v47, -1, -1);
          MEMORY[0x29ED5FB80](v46, -1, -1);

          (*(v75 + 8))(v77, v76);
          (*(v37 + 8))(v50, v78);
          return;
        }

        (*(v75 + 8))(v42, v76);
      }

      else
      {
        v56 = MEMORY[0x29EDCA190];
        if (v68)
        {
          v57 = v68;
        }

        else
        {
          v57 = MEMORY[0x29EDCA190];
        }

        sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);

        v78 = sub_29D5B43FC();
        v58 = swift_allocObject();
        *(v58 + 16) = v33;
        *(v58 + 24) = v57;
        aBlock[4] = sub_29D55D988;
        aBlock[5] = v58;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29D49ACEC;
        aBlock[3] = &unk_2A242A3E0;
        v59 = _Block_copy(aBlock);
        v60 = v33;

        v61 = v69;
        sub_29D5B3C9C();
        aBlock[0] = v56;
        sub_29D55DD20(&qword_2A1A19700, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
        sub_29D55D86C(0, &qword_2A1A196B0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29D55D990();
        v62 = v71;
        v63 = v74;
        sub_29D5B47CC();
        v64 = v78;
        MEMORY[0x29ED5E9E0](0, v61, v62, v59);
        _Block_release(v59);

        (*(v73 + 8))(v62, v63);
        (*(v70 + 8))(v61, v72);
      }

      (*(v37 + 8))(v39, v36);
    }

    else
    {
      (*(v37 + 8))(v31, v36);
    }
  }
}

void sub_29D55C200(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D558260();
  if (qword_2A17A39F0 != -1)
  {
    swift_once();
  }

  sub_29D55CE30(0, &qword_2A1A195B0, &qword_2A1A19590, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D5B62A0;
  if (a2 >> 62)
  {
    v7 = v4;
    v5 = sub_29D5B485C();
    v4 = v7;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x29EDC9C10];
  *(v4 + 56) = MEMORY[0x29EDC9BA8];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  sub_29D5B3E2C();

  v8 = sub_29D5B3E1C();

  [v3 setText_];
}

id sub_29D55C378(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___factory];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] = 0;
  v8 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_preferredIconSize];
  *v9 = xmmword_29D5BA830;
  *(v9 + 2) = 0x4008000000000000;
  v10 = *MEMORY[0x29EDC3ED0];
  v11 = sub_29D5B1A2C();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  v13 = type metadata accessor for ClinicalSharingFeedItemData(0);
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator] = 0;
  if (a2)
  {
    v14 = sub_29D5B3E1C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ClinicalSharingFeedItemViewController(0);
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_29D55C5A4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___factory];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] = 0;
  v5 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_preferredIconSize];
  *v6 = xmmword_29D5BA830;
  *(v6 + 2) = 0x4008000000000000;
  v7 = *MEMORY[0x29EDC3ED0];
  v8 = sub_29D5B1A2C();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  v10 = type metadata accessor for ClinicalSharingFeedItemData(0);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ClinicalSharingFeedItemViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29D55C76C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClinicalSharingFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A4D18;
  if (!qword_2A17A4D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D55C96C(uint64_t a1)
{
  sub_29D5B1A2C();
  if (v1 <= 0x3F)
  {
    sub_29D55D86C(319, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D55CA94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  return sub_29D55DC2C(v1 + v3, a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
}

uint64_t sub_29D55CB04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, &v1[v3]);
  swift_endAccess();
  sub_29D558EE0();
  if ([v1 isViewLoaded])
  {
    sub_29D559A40();
    return sub_29D55DCB0(a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  }

  else
  {
    result = sub_29D55DCB0(a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] = 1;
  }

  return result;
}

uint64_t (*sub_29D55CBD4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D55CC38;
}

uint64_t sub_29D55CC38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_29D558EE0();
    result = [v5 isViewLoaded];
    if (result)
    {
      return sub_29D559A40();
    }

    else
    {
      *(*(a1 + 24) + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad) = 1;
    }
  }

  return result;
}

uint64_t sub_29D55CCC0()
{
  v1 = (*v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_29D55CD1C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_29D55CE30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D55CE98(void *a1)
{
  v21[6] = a1;
  v2 = sub_29D5B371C();
  v21[2] = *(v2 - 1);
  v21[3] = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v21[1] = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B20DC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D557FC8(v24);
  v21[4] = v24[4];
  v21[5] = sub_29D499EC0(v24, v24[3]);
  sub_29D5B1CBC();
  v10 = sub_29D5B1C8C();
  v11 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  v21[0] = v1;
  sub_29D55DC2C(v1 + v11, v22, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v12 = v23;
  if (v23)
  {
    v13 = sub_29D499EC0(v22, v23);
    v14 = *(v12 - 8);
    MEMORY[0x2A1C7C4A8](v13, v13);
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_29D5B314C();
    (*(v14 + 8))(v16, v12);
    v18 = sub_29D5B1C9C();

    sub_29D48F668(v22);
    (*(v6 + 104))(v9, *MEMORY[0x29EDC4148], v5);
    v19 = sub_29D5B24CC();
    (*(v6 + 8))(v9, v5);

    sub_29D48F668(v24);
    v20 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v21[0] presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D55D3B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v28[-1] - v10;
  v12 = type metadata accessor for ClinicalSharingFeedItemData(0);
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v28[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  swift_beginAccess();
  sub_29D55D774(v1 + v17, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29D55DB38(v11, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    sub_29D5B36DC();
    v18 = sub_29D5B370C();
    v19 = sub_29D5B427C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      v22 = sub_29D5B4DFC();
      v24 = sub_29D501890(v22, v23, v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D48C000, v18, v19, "%s Feed item data nil", v20, 0xCu);
      sub_29D48F668(v21);
      MEMORY[0x29ED5FB80](v21, -1, -1);
      MEMORY[0x29ED5FB80](v20, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    sub_29D55D808(v11, v16);
    v28[3] = sub_29D48F51C(0, &qword_2A17A43C0, 0x29EDC7DA0);
    v28[0] = a1;
    v26 = a1;
    sub_29D55CE98(v16);
    sub_29D513964(v16);
    return sub_29D55DB38(v28, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D502718);
  }
}

uint64_t sub_29D55D774(uint64_t a1, uint64_t a2)
{
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D55D808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D55D86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D55D8D0(uint64_t a1, void *a2)
{
  v5 = *(sub_29D5B0EDC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_29D55B940(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_29D55D990()
{
  result = qword_2A1A196A0;
  if (!qword_2A1A196A0)
  {
    sub_29D55D86C(255, &qword_2A1A196B0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A196A0);
  }

  return result;
}

uint64_t sub_29D55DA18(uint64_t a1)
{
  v4 = *(type metadata accessor for ClinicalSharingFeedItemData(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D55A158(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_29D55DB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D55DB98(uint64_t a1, uint64_t a2)
{
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D55DC2C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_29D55CE30(0, a3, a4, a5, MEMORY[0x29EDC9C68]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29D55DCB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29D55CE30(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D55DD20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_29D55DD78(uint64_t a1)
{
  v91 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v89 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v90 = v5;
  v98 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F6DC(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v84 = &v76 - v8;
  v85 = sub_29D5B43DC();
  v83 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85, v9);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7688(0);
  v82 = v11;
  v80 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F364(0);
  v88 = v14;
  v87 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v86 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F430(0);
  v96 = v17;
  v94 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v92 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F540(0);
  v97 = v20;
  v95 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v93 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29D5B13CC();
  v77 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78, v23);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D5B13EC();
  v26 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76, v27);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_context);
  sub_29D48F51C(0, &qword_2A1A162E0, 0x29EDBAB68);
  v30 = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];
  v105 = v30;
  v31 = MEMORY[0x29EDCA190];
  v103[0] = MEMORY[0x29EDCA190];
  if (v30)
  {
    v32 = v30;
    MEMORY[0x29ED5E5E0]();
    if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D5B408C();
    }

    sub_29D5B40AC();
    v31 = v103[0];
  }

  sub_29D55F7C8(&v105, &unk_2A1A162D8, &qword_2A1A162E0, 0x29EDBAB68, sub_29D55F274);
  v99 = a1;
  sub_29D5B143C();
  sub_29D55F6DC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v33 = sub_29D5B104C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v100 = xmmword_29D5B62A0;
  *(v36 + 16) = xmmword_29D5B62A0;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x29EDC36E0], v33);
  if (v31 >> 62)
  {
    sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);

    sub_29D5B4A4C();
  }

  else
  {

    sub_29D5B4C8C();
    sub_29D48F51C(0, &qword_2A1A16370, 0x29EDBACB8);
  }

  (v77)[13](v25, *MEMORY[0x29EDC38A0], v78);
  sub_29D5B13DC();
  (*(v26 + 32))(v101 + OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_domain, v29, v76);
  sub_29D5B1CBC();
  v37 = sub_29D5B1C8C();
  v38 = v99;
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  v39 = sub_29D5B136C();
  v40 = [v39 profileIdentifier];

  sub_29D5B1C6C();
  sub_29D48F668(v103);
  v41 = MEMORY[0x29EDC9E90];
  sub_29D55F6DC(0, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC9E90]);
  v42 = sub_29D5B1D6C();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v100;
  (*(v43 + 104))(v45 + v44, *MEMORY[0x29EDC4068], v42);
  v46 = sub_29D5B260C();
  v78 = v46;

  v47 = sub_29D5B146C();
  v77 = v47;
  v48 = sub_29D5B1C8C();
  v49 = v38;
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  v50 = sub_29D5B136C();
  v51 = [v50 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(v103);
  v52 = sub_29D5B363C();

  v102 = v46;
  v103[0] = v52;
  v53 = MEMORY[0x29EDC82A0];
  sub_29D55F8DC(0, &qword_2A1A167F8, MEMORY[0x29EDC82A0]);
  sub_29D4F77D8(0);
  sub_29D55F2CC(&qword_2A1A16800, &qword_2A1A167F8, v53);
  sub_29D55F31C(&qword_2A1A166A0, sub_29D4F77D8, MEMORY[0x29EDB8A00]);
  v54 = v79;
  sub_29D5B3B6C();

  v55 = v81;
  sub_29D5B43CC();
  v103[0] = v47;
  v56 = sub_29D5B43BC();
  v57 = v84;
  (*(*(v56 - 8) + 56))(v84, 1, 1, v56);
  sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);
  sub_29D55F31C(&qword_2A1A172E0, sub_29D4F7688, MEMORY[0x29EDB8870]);
  sub_29D5127AC();
  v58 = v86;
  v59 = v82;
  sub_29D5B3C2C();
  sub_29D55F7C8(v57, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68], sub_29D55F6DC);
  (*(v83 + 8))(v55, v85);
  (*(v80 + 8))(v54, v59);
  v60 = v98;
  sub_29D499E5C(v38, v98);
  v61 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v62 = (v90 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  sub_29D499F90(v60, v63 + v61);
  *(v63 + v62) = v91;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_29D55F828;
  *(v64 + 24) = v63;
  sub_29D55F4DC();
  sub_29D55F31C(&qword_2A1A16970, sub_29D55F364, MEMORY[0x29EDB89B8]);
  v65 = v92;
  v66 = v88;
  sub_29D5B3B2C();

  (*(v87 + 8))(v58, v66);
  sub_29D55F6DC(0, &qword_2A1A16200, sub_29D55F4DC, v41);
  v67 = swift_allocObject();
  *(v67 + 16) = v100;
  sub_29D499E5C(v49, v60);
  v68 = type metadata accessor for ConceptSharableModelGenerator(0);
  swift_allocObject();
  v69 = sub_29D551834(v60);
  *(v67 + 56) = v68;
  *(v67 + 64) = sub_29D55F31C(qword_2A1A17FF8, type metadata accessor for ConceptSharableModelGenerator, &unk_29D5BA2A0);
  *(v67 + 32) = v69;
  sub_29D55F31C(&qword_2A1A17198, sub_29D55F430, MEMORY[0x29EDB88A0]);
  v70 = v93;
  v71 = v96;
  sub_29D5B3C0C();

  (*(v94 + 8))(v65, v71);
  sub_29D55F31C(&qword_2A1A17168, sub_29D55F540, MEMORY[0x29EDB88B0]);
  v72 = v97;
  v73 = sub_29D5B3AFC();
  (*(v95 + 8))(v70, v72);
  v103[0] = v73;
  sub_29D55F8DC(0, &qword_2A1A16828, sub_29D55F4DC);
  sub_29D55F2CC(&qword_2A1A16830, &qword_2A1A16828, sub_29D55F4DC);
  v74 = sub_29D5B3B1C();

  sub_29D49A104(v49);

  result = v101;
  v101[2] = v74;
  return result;
}

uint64_t sub_29D55ED48@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v38 - v12;
  v42 = sub_29D5B371C();
  v14 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D499E5C(a1, v13);
  v18 = sub_29D5B370C();
  v19 = sub_29D5B426C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = a1;
    v21 = v20;
    v39 = swift_slowAlloc();
    v44 = v39;
    *v21 = 136446722;
    v43 = a2;
    swift_getMetatypeMetadata();
    v22 = sub_29D5B3E7C();
    v24 = sub_29D501890(v22, v23, &v44);

    *(v21 + 4) = v24;
    v41 = a3;
    *(v21 + 12) = 2082;
    v43 = type metadata accessor for ConceptSharableModelGenerator(0);
    sub_29D55F940();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v44);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2082;
    v43 = sub_29D5B143C();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = v30;
    sub_29D49A104(v13);
    v32 = sub_29D501890(v29, v31, &v44);

    *(v21 + 24) = v32;
    _os_log_impl(&dword_29D48C000, v18, v19, "[%{public}s]: Emitting %{public}s, for profile: %{public}s", v21, 0x20u);
    a3 = v41;
    v33 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v33, -1, -1);
    v34 = v21;
    a1 = v40;
    MEMORY[0x29ED5FB80](v34, -1, -1);
  }

  else
  {

    sub_29D49A104(v13);
  }

  (*(v14 + 8))(v17, v42);
  sub_29D499E5C(a1, v10);
  v35 = type metadata accessor for ConceptSharableModelGenerator(0);
  swift_allocObject();
  v36 = sub_29D551834(v10);
  a3[3] = v35;
  result = sub_29D55F31C(qword_2A1A17FF8, type metadata accessor for ConceptSharableModelGenerator, &unk_29D5BA2A0);
  a3[4] = result;
  *a3 = v36;
  return result;
}

uint64_t sub_29D55F0F0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConceptSharableModelPipeline(uint64_t a1)
{
  result = qword_2A1A180C8;
  if (!qword_2A1A180C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D55F1F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D55F274(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3, a4);
    v5 = sub_29D5B472C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D55F2CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D55F8DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D55F31C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D55F364(uint64_t a1)
{
  if (!qword_2A1A16968)
  {
    sub_29D4F7688(255);
    sub_29D48F51C(255, &qword_2A1A1A420, 0x29EDCA548);
    sub_29D55F31C(&qword_2A1A172E0, sub_29D4F7688, MEMORY[0x29EDB8870]);
    sub_29D5127AC();
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16968);
    }
  }
}

void sub_29D55F430(uint64_t a1)
{
  if (!qword_2A1A17190)
  {
    sub_29D55F364(255);
    sub_29D55F4DC();
    sub_29D55F31C(&qword_2A1A16970, sub_29D55F364, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17190);
    }
  }
}

unint64_t sub_29D55F4DC()
{
  result = qword_2A1A17378;
  if (!qword_2A1A17378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A17378);
  }

  return result;
}

void sub_29D55F540(uint64_t a1)
{
  if (!qword_2A1A17160)
  {
    sub_29D55F62C(255);
    sub_29D55F430(255);
    sub_29D55F31C(&qword_2A1A16900, sub_29D55F62C, MEMORY[0x29EDB89C0]);
    sub_29D55F31C(&qword_2A1A17198, sub_29D55F430, MEMORY[0x29EDB88A0]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17160);
    }
  }
}

void sub_29D55F62C(uint64_t a1)
{
  if (!qword_2A1A168F8)
  {
    sub_29D55F6DC(255, &qword_2A1A16458, sub_29D55F4DC, MEMORY[0x29EDC9A40]);
    sub_29D55F740();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168F8);
    }
  }
}

void sub_29D55F6DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D55F740()
{
  result = qword_2A1A16450;
  if (!qword_2A1A16450)
  {
    sub_29D55F6DC(255, &qword_2A1A16458, sub_29D55F4DC, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16450);
  }

  return result;
}

uint64_t sub_29D55F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D55F828@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D55ED48(v1 + v4, v5, a1);
}

void sub_29D55F8DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D55F940()
{
  result = qword_2A1A17F18[0];
  if (!qword_2A1A17F18[0])
  {
    type metadata accessor for ConceptSharableModelGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A17F18);
  }

  return result;
}

void *sub_29D55F988(uint64_t a1)
{
  v2 = v1;
  v23 = *v1;
  v22 = sub_29D5B13CC();
  v4 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D5B13EC();
  v8 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_context;
  v13 = sub_29D5B148C();
  (*(*(v13 - 8) + 16))(v2 + v12, a1, v13);
  v20 = sub_29D5B143C();
  sub_29D561550(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v14 = sub_29D5B104C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D5B62A0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x29EDC3780], v14);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v22);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_domain, v11, v21);
  v18 = sub_29D55FCB8(a1);
  sub_29D561618(a1, type metadata accessor for HealthRecordsGeneratorContext);
  *(v2 + OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_publisher) = v18;
  return v2;
}

uint64_t sub_29D55FCB8(uint64_t a1)
{
  v31 = a1;
  v35 = sub_29D5B148C();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v35, v3);
  v4 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53AF40(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D561198(0);
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D561254();
  v33 = v16;
  v34 = v15;
  sub_29D5B140C();
  sub_29D499EC0(v40, v40[3]);
  v17 = sub_29D5B136C();
  v18 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  sub_29D48F668(v40);
  *(swift_allocObject() + 16) = v18;
  sub_29D53AFD4(0);
  sub_29D5613DC(&qword_2A1A166C0, sub_29D53AFD4, MEMORY[0x29EDB8A00]);
  v32 = v18;
  sub_29D5B3A9C();
  sub_29D5613DC(&qword_2A1A16550, sub_29D53AF40, MEMORY[0x29EDB8AE8]);
  v19 = sub_29D5B3B1C();
  (*(v7 + 8))(v10, v6);
  v40[0] = v19;
  v20 = v35;
  (*(v1 + 16))(v4, v31, v35);
  v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v22 = (v2 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v1 + 32))(v23 + v21, v4, v20);
  v24 = (v23 + v22);
  v25 = v33;
  *v24 = v34;
  v24[1] = v25;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_29D561424;
  *(v26 + 24) = v23;
  sub_29D4A02FC(0, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
  v27 = v36;
  sub_29D5B3B7C();

  sub_29D5613DC(&qword_2A1A16F00, sub_29D561198, MEMORY[0x29EDB8908]);
  v28 = v38;
  v29 = sub_29D5B3B1C();

  (*(v39 + 8))(v27, v28);
  return v29;
}

uint64_t sub_29D560150@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v42 = a5;
  sub_29D56151C(0);
  v44 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D5B13CC();
  v10 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B13EC();
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B148C();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  v39 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v39 - v28;
  if (a1)
  {
    sub_29D5605FC(a2, &v39 - v28);
  }

  else
  {
    v30 = sub_29D5B134C();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  }

  (*(v18 + 16))(v21, a2, v17);
  sub_29D5B143C();
  sub_29D561550(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v31 = sub_29D5B104C();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29D5B62A0;
  (*(v32 + 104))(v34 + v33, *MEMORY[0x29EDC3780], v31);
  (*(v10 + 104))(v13, *MEMORY[0x29EDC3898], v40);
  sub_29D5B13DC();
  sub_29D5615B4(v29, v26);

  sub_29D5B3A2C();
  v35 = sub_29D5B14AC();
  v36 = MEMORY[0x29EDC38C8];
  v37 = v42;
  v42[3] = v35;
  v37[4] = v36;
  sub_29D4A0410(v37);
  sub_29D5613DC(&qword_2A1A16608, sub_29D56151C, MEMORY[0x29EDB8AB8]);
  sub_29D5B149C();
  return sub_29D561618(v29, sub_29D4B4AD4);
}

uint64_t sub_29D5605FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v61 = a2;
  v2 = sub_29D5B371C();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v62 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B2AAC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29D5B104C();
  v45 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29D5B2C6C();
  v48 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49, v10);
  v63 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B2E3C();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v58 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B200C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710(0);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D5B0EFC();
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  sub_29D5B1FFC();
  v26 = sub_29D5B2A0C();
  v56 = v27;
  v57 = v26;
  v28 = *(v16 + 8);
  v28(v19, v15);
  sub_29D561618(v23, sub_29D4D3710);
  v25(v23, 1, 1, v24);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v28(v19, v15);
  v29 = v58;
  sub_29D561618(v23, sub_29D4D3710);
  sub_29D5B2C4C();
  sub_29D5B2E0C();
  v30 = sub_29D5B2E2C();
  v32 = v31;
  sub_29D561254();
  type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController(0);
  sub_29D5B10EC();
  (*(v45 + 104))(v47, *MEMORY[0x29EDC3780], v46);
  sub_29D4F357C(v30, v32);
  sub_29D5B143C();
  v33 = v30;
  v34 = v61;
  v35 = v33;
  sub_29D5B125C();
  v36 = v63;
  sub_29D5B2E1C();
  sub_29D5B2C5C();
  (*(v48 + 8))(v36, v49);
  sub_29D5B124C();
  sub_29D4FC460();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B62A0;
  *(inited + 32) = sub_29D5B15EC();
  *(inited + 40) = v38;
  sub_29D50CE80(inited);
  swift_setDeallocating();
  sub_29D4B4B58(inited + 32);
  sub_29D5B131C();
  v40 = v52;
  v39 = v53;
  v41 = v51;
  (*(v52 + 104))(v51, *MEMORY[0x29EDC1978], v53);
  sub_29D5B2A9C();
  (*(v40 + 8))(v41, v39);
  sub_29D5B132C();
  sub_29D5B123C();
  sub_29D4A96D0(v35, v32);
  (*(v59 + 8))(v29, v60);
  v42 = sub_29D5B134C();
  return (*(*(v42 - 8) + 56))(v34, 0, 1, v42);
}

uint64_t sub_29D560EF0()
{
  v1 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29D5B148C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalNotificationSettingsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A17478;
  if (!qword_2A1A17478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D561030(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = sub_29D5B148C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D56111C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D561198(uint64_t a1)
{
  if (!qword_2A1A16EF8)
  {
    sub_29D53AFD4(255);
    sub_29D4A02FC(255, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
    sub_29D5613DC(&qword_2A1A166C0, sub_29D53AFD4, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16EF8);
    }
  }
}

unint64_t sub_29D561254()
{
  v0 = sub_29D5B0EDC();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B143C();
  v6 = sub_29D5B10AC();

  if (v6)
  {
    v7 = [v6 identifier];

    sub_29D5B0EBC();
    v8 = sub_29D5B0E8C();
    v10 = v9;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = 0xE800000000000000;
    v8 = 0x636974736F6E6761;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_29D5B494C();

  v12 = 0xD000000000000025;
  v13 = 0x800000029D5BE380;
  MEMORY[0x29ED5E510](v8, v10);

  return v12;
}

uint64_t sub_29D5613DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D561424@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29D560150(a1, v2 + v6, v8, v9, a2);
}

void sub_29D561550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D5615B4(uint64_t a1, uint64_t a2)
{
  sub_29D4B4AD4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D561618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29D561678(uint64_t a1)
{
  v148 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v147 = *(v3 - 8);
  v145 = *(v147 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v140 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v136 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_29D5B43DC();
  v138 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139, v9);
  v133 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6E4C(0);
  v141 = v11;
  v143 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v135 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6F80(0);
  v142 = v14;
  v144 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v137 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6DB8(0);
  v134 = v17;
  v146 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v155 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_29D5B23CC();
  v156 = *(v152 - 8);
  MEMORY[0x2A1C7C4A8](v152, v20);
  v130 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_29D5B446C();
  v157 = *(v153 - 8);
  MEMORY[0x2A1C7C4A8](v153, v22);
  v128 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0(0);
  v131 = v24;
  v132 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v129 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7310(0);
  v122 = v27;
  v124 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v120 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7378(0);
  v123 = v30;
  v150 = *(v30 - 1);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v119 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B73D4(0);
  v116 = v33;
  v121 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v34);
  v114 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B743C(0);
  v117 = v36;
  v118 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v115 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D5B13CC();
  v40 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = &v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D5B13EC();
  v127 = v44;
  v126 = *(v44 - 8);
  v45 = v126;
  MEMORY[0x2A1C7C4A8](v44, v46);
  v151 = &v114 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v1;
  *(v1 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_observerToken) = 0;
  v154 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context);
  sub_29D5B143C();
  v125 = MEMORY[0x29EDC9E90];
  sub_29D563294(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v48 = sub_29D5B104C();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_29D5B62A0;
  (*(v49 + 104))(v51 + v50, *MEMORY[0x29EDC3790], v48);
  (*(v40 + 104))(v43, *MEMORY[0x29EDC3898], v39);
  v52 = v151;
  sub_29D5B13DC();
  v53 = *(v45 + 32);
  v54 = v149;
  v53(v149 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain, v52, v44);
  v55 = objc_allocWithZone(sub_29D5B247C());
  v56 = sub_29D5B246C();
  *(v54 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_accountStateChangeListener) = v56;
  v57 = v56;
  v58 = v114;
  sub_29D5B245C();

  v59 = MEMORY[0x29EDB8AF8];
  sub_29D5633A4(&qword_2A1A19728, sub_29D4B73D4, MEMORY[0x29EDB8AF8]);
  v60 = v115;
  v61 = v116;
  sub_29D5B3B7C();
  (*(v121 + 8))(v58, v61);
  v62 = MEMORY[0x29EDB8908];
  sub_29D5633A4(&qword_2A1A197C8, sub_29D4B743C, MEMORY[0x29EDB8908]);
  v63 = v117;
  v64 = sub_29D5B3B1C();
  (*(v118 + 8))(v60, v63);
  *(v54 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_accountStateChangePublisher) = v64;
  v65 = objc_allocWithZone(sub_29D5B19DC());
  v66 = sub_29D5B19CC();
  *(v54 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_healthRecordsSupportedListener) = v66;
  v67 = v54;
  v68 = v66;
  v69 = v120;
  sub_29D5B19BC();

  sub_29D5633A4(&qword_2A1A19738, sub_29D4B7310, v59);
  v70 = v119;
  v71 = v122;
  sub_29D5B3B7C();
  (*(v124 + 8))(v69, v71);
  v72 = v62;
  v121 = v62;
  sub_29D5633A4(&qword_2A1A197D8, sub_29D4B7378, v62);
  v73 = v123;
  v74 = sub_29D5B3B1C();
  (*(v150 + 8))(v70, v73);
  *(v67 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_healthRecordsSupportedPublisher) = v74;
  sub_29D5B140C();
  sub_29D499EC0(v158, v158[3]);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v150 = sub_29D5B269C();
  sub_29D48F668(v158);
  v75 = *MEMORY[0x29EDC41B0];
  v76 = v156;
  v124 = *(v156 + 104);
  v77 = v130;
  v78 = v152;
  (v124)(v130, v75, v152);
  v79 = v128;
  sub_29D5B267C();
  v80 = *(v76 + 8);
  v156 = v76 + 8;
  v123 = v80;
  v80(v77, v78);
  v122 = sub_29D5633A4(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  v81 = v129;
  v82 = v153;
  sub_29D5B3B7C();
  v83 = *(v157 + 8);
  v157 += 8;
  v120 = v83;
  (v83)(v79, v82);
  v119 = sub_29D5633A4(&qword_2A1A197B8, sub_29D499DC0, v72);
  v84 = v131;
  v85 = sub_29D5B3B1C();
  v86 = *(v132 + 8);
  v86(v81, v84);
  v87 = v149;
  *(v149 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_genericTilePublisher) = v85;
  v88 = v152;
  (v124)(v77, *MEMORY[0x29EDC41D8], v152);
  sub_29D5B267C();
  v123(v77, v88);
  v89 = v153;
  sub_29D5B3B7C();
  (v120)(v79, v89);
  v90 = sub_29D5B3B1C();
  v86(v81, v84);
  *(v87 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_labsTilePublisher) = v90;
  sub_29D563294(0, &qword_2A1A195C8, sub_29D499998, v125);
  v91 = swift_allocObject();
  v92 = *(v87 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_accountStateChangePublisher);
  *(v91 + 16) = xmmword_29D5B8060;
  v93 = *(v87 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_healthRecordsSupportedPublisher);
  *(v91 + 32) = v92;
  *(v91 + 40) = v93;
  *(v91 + 48) = *(v87 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_genericTilePublisher);
  *(v91 + 56) = v90;
  v158[0] = v91;
  sub_29D499998();
  sub_29D4B7180(0);
  sub_29D5633A4(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
  sub_29D5633A4(&qword_2A1A196B8, sub_29D4B7180, MEMORY[0x29EDC9A70]);

  sub_29D5B394C();
  v94 = v126;
  v95 = v151;
  v96 = v127;
  (*(v126 + 16))(v151, v87 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain, v127);
  v97 = v154;
  v98 = sub_29D5B146C();
  (*(v94 + 8))(v95, v96);
  v99 = v133;
  sub_29D5B43CC();
  v158[0] = v98;
  v100 = sub_29D5B43BC();
  v101 = v136;
  (*(*(v100 - 8) + 56))(v136, 1, 1, v100);
  sub_29D4999F8();
  sub_29D5633A4(&qword_2A1A19788, sub_29D4B6DB8, MEMORY[0x29EDB89D8]);
  sub_29D5633A4(&qword_2A1A19620, sub_29D4999F8, MEMORY[0x29EDCA280]);
  v102 = v135;
  v103 = v134;
  sub_29D5B3C2C();
  sub_29D4B71B4(v101, sub_29D4B6D20);
  (*(v138 + 8))(v99, v139);
  v104 = v140;
  sub_29D499E5C(v97, v140);
  v105 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v106 = (v145 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  sub_29D499F90(v104, v107 + v105);
  *(v107 + v106) = v148;
  sub_29D499B38();
  sub_29D5633A4(&qword_2A1A16920, sub_29D4B6E4C, MEMORY[0x29EDB89B8]);
  v108 = v137;
  v109 = v141;
  sub_29D5B3B7C();

  (*(v143 + 8))(v102, v109);
  sub_29D5633A4(&qword_2A1A16E20, sub_29D4B6F80, v121);
  v110 = v142;
  v111 = sub_29D5B3B1C();
  (*(v144 + 8))(v108, v110);
  v87[2] = v111;
  v112 = sub_29D562D4C();

  sub_29D4B71B4(v97, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v146 + 8))(v155, v103);
  *(v87 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_observerToken) = v112;

  return v87;
}

uint64_t sub_29D562A60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for AddAccountGenerator(0);
    sub_29D4C1C34(0);
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D499E5C(a1, v9);
  v29 = type metadata accessor for AddAccountGenerator(0);
  swift_allocObject();
  v30 = sub_29D4BC710(v9);
  a3[3] = v29;
  result = sub_29D5633A4(qword_2A1A19F90, type metadata accessor for AddAccountGenerator, &unk_29D5B6C24);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D562D4C()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)) addAccountStateChangeListener_];
  sub_29D5B140C();
  v2 = v7;
  v3 = v8;
  sub_29D499EC0(v6, v7);
  v4 = sub_29D4C9C8C(v2, v3);
  [v4 addHealthRecordsSupportedChangeListener_];

  sub_29D48F668(v6);
  swift_allocObject();
  swift_weakInit();
  sub_29D5B1EEC();
  swift_allocObject();
  return sub_29D5B1ECC();
}

uint64_t sub_29D562E60(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    [*(result + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)) removeAccountStateChangeListener_];
    sub_29D5B140C();
    v3 = v7;
    v4 = v8;
    sub_29D499EC0(v6, v7);
    v5 = sub_29D4C9C8C(v3, v4);
    [v5 removeHealthRecordsSupportedChangeListener_];

    return sub_29D48F668(v6);
  }

  return result;
}

uint64_t sub_29D562F44()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain;
  v3 = sub_29D5B13EC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_29D4B71B4(v1 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return v1;
}

uint64_t sub_29D563068()
{
  sub_29D562F44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddAccountGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A19B08;
  if (!qword_2A1A19B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D563114(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_29D563210@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D563294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D5632F8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D562A60(v1 + v4, v5, a1);
}

uint64_t sub_29D5633A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AddAccountFeedItemViewController(uint64_t a1)
{
  result = qword_2A1A1A428;
  if (!qword_2A1A1A428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D563478()
{
  v1 = sub_29D5B371C();
  v53 = *(v1 - 8);
  v54 = v1;
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v52 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v48 = v45 - v6;
  v7 = sub_29D5B23CC();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v51 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B319C();
  v11 = *(v10 - 8);
  v46 = v10;
  v47 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B221C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D563C98(0, &qword_2A17A4DD0, MEMORY[0x29EDC4180]);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = v45 - v22;
  sub_29D563C98(0, &qword_2A1A17330, MEMORY[0x29EDC4210]);
  MEMORY[0x2A1C7C4A8](v24 - 8, v25);
  v27 = v45 - v26;
  v28 = sub_29D5B25DC();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B286C();
  if ((*(v16 + 48))(v23, 1, v15))
  {
    sub_29D563CEC(v23, &qword_2A17A4DD0, MEMORY[0x29EDC4180]);
    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_4:
    sub_29D563CEC(v27, &qword_2A1A17330, MEMORY[0x29EDC4210]);
    v35 = v52;
    sub_29D5B36DC();
    v36 = sub_29D5B370C();
    v37 = sub_29D5B427C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_29D48C000, v36, v37, "didTapDismiss invoked for tile without a dismiss button!", v38, 2u);
      MEMORY[0x29ED5FB80](v38, -1, -1);
    }

    return (*(v53 + 8))(v35, v54);
  }

  v45[0] = v32;
  v45[1] = v0;
  v33 = v51;
  (*(v16 + 16))(v19, v23, v15);
  sub_29D563CEC(v23, &qword_2A17A4DD0, MEMORY[0x29EDC4180]);
  sub_29D5B220C();
  (*(v16 + 8))(v19, v15);
  v34 = v28;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v40 = v45[0];
  (*(v29 + 32))(v45[0], v27, v34);
  sub_29D5B331C();
  sub_29D5B318C();
  (*(v47 + 8))(v14, v46);
  sub_29D499EC0(v55, v55[3]);
  sub_29D5B314C();
  sub_29D5B26AC();
  swift_allocObject();
  sub_29D5B269C();
  sub_29D48F668(v55);
  sub_29D5B259C();
  sub_29D5B266C();

  (*(v49 + 8))(v33, v50);
  v41 = v48;
  sub_29D5B36DC();
  v42 = sub_29D5B370C();
  v43 = sub_29D5B429C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_29D48C000, v42, v43, "User dismissed Onboarding tile", v44, 2u);
    MEMORY[0x29ED5FB80](v44, -1, -1);
  }

  (*(v53 + 8))(v41, v54);
  return (*(v29 + 8))(v40, v34);
}

uint64_t sub_29D563B54(uint64_t a1)
{
  v3 = sub_29D5B319C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D5B285C();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D563C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddAccountFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D563C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D563CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D563C98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D563D48()
{
  sub_29D563E70();
  v13[0] = v0;
  v1 = 0;
  v13[1] = sub_29D5B151C();
  v13[2] = v2;
  v3 = MEMORY[0x29EDCA190];
LABEL_2:
  v4 = &v13[2 * v1];
  while (++v1 != 3)
  {
    v5 = v4 + 2;
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      v7 = *(v5 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_29D514C4C(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_29D514C4C((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      goto LABEL_2;
    }
  }

  sub_29D4E03E8();
  swift_arrayDestroy();
  v11 = sub_29D5959C4(v3);

  return v11;
}

uint64_t sub_29D563E70()
{
  v1 = v0;
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x29EDC4078])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x29EDC4050])
  {
    return sub_29D5B14FC();
  }

  if (v7 == *MEMORY[0x29EDC4068])
  {
    return sub_29D5B14DC();
  }

  if (v7 == *MEMORY[0x29EDC4070])
  {
    return sub_29D5B153C();
  }

  if (v7 == *MEMORY[0x29EDC4040])
  {
    return sub_29D5B14CC();
  }

  if (v7 == *MEMORY[0x29EDC4048])
  {
    return sub_29D5B14EC();
  }

  if (v7 == *MEMORY[0x29EDC4060])
  {
    return sub_29D5B152C();
  }

  if (v7 != *MEMORY[0x29EDC4088])
  {
    if (v7 != *MEMORY[0x29EDC4080])
    {
      if (v7 == *MEMORY[0x29EDC4090])
      {
        return sub_29D5B157C();
      }

      if (v7 == *MEMORY[0x29EDC4058])
      {
        return sub_29D5B150C();
      }

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  return sub_29D5B156C();
}

uint64_t sub_29D564098(uint64_t a1)
{
  v86 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v84 = *(v3 - 8);
  v83 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v81 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_29D5B23CC();
  v72 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73, v6);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29D5B446C();
  v79 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77, v8);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D565024(0);
  v80 = v10;
  v82 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D565158(0);
  v14 = *(v13 - 8);
  v87 = v13;
  v88 = v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v78 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D565204(0);
  v18 = *(v17 - 8);
  v89 = v17;
  v90 = v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v85 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D5B13CC();
  v21 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69, v22);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D5B13EC();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_context);
  sub_29D5B143C();
  v75 = MEMORY[0x29EDC9E90];
  sub_29D4A3924(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v30 = sub_29D5B104C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v74 = xmmword_29D5B62A0;
  *(v33 + 16) = xmmword_29D5B62A0;
  (*(v31 + 104))(v33 + v32, *MEMORY[0x29EDC3730], v30);
  (*(v21 + 104))(v24, *MEMORY[0x29EDC3898], v69);
  sub_29D5B13DC();
  v34 = v67;
  (*(v26 + 32))(v67 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_domain, v29, v25);
  v35 = v68;
  sub_29D5B140C();
  sub_29D499EC0(v91, v92);
  v36 = sub_29D5B136C();
  [v36 supportsHealthRecords];

  sub_29D48F668(v91);
  sub_29D5B140C();
  sub_29D499EC0(v91, v92);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v37 = sub_29D5B269C();
  sub_29D48F668(v91);
  v38 = v34;
  *(v34 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_onboardingManager) = v37;
  v39 = v71;
  sub_29D5B0ECC();
  v40 = v72;
  v41 = v73;
  (*(v72 + 104))(v39, *MEMORY[0x29EDC41C8], v73);
  v42 = v70;
  sub_29D5B267C();
  (*(v40 + 8))(v39, v41);
  sub_29D5B1CBC();
  v43 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v91, v92);
  v44 = sub_29D5B136C();
  v45 = [v44 profileIdentifier];

  v46 = sub_29D5B1C7C();
  sub_29D48F668(v91);
  v47 = sub_29D5B35BC();

  v91[0] = v47;
  sub_29D4A36DC(0);
  sub_29D565110(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  sub_29D565110(&qword_2A1A16660, sub_29D4A36DC, MEMORY[0x29EDB8A70]);
  v49 = v76;
  v48 = v77;
  sub_29D5B3B6C();

  (*(v79 + 8))(v42, v48);
  v50 = v81;
  sub_29D499E5C(v35, v81);
  v51 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v52 = (v83 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v53 + v51;
  v55 = v50;
  sub_29D499F90(v50, v54);
  *(v53 + v52) = v86;
  sub_29D499B38();
  sub_29D565110(&qword_2A1A17230, sub_29D565024, MEMORY[0x29EDB8870]);
  v56 = v78;
  v57 = v80;
  sub_29D5B3B2C();

  (*(v82 + 8))(v49, v57);
  sub_29D4A3924(0, &qword_2A1A195D8, sub_29D499B38, v75);
  v58 = swift_allocObject();
  *(v58 + 16) = v74;
  sub_29D499E5C(v35, v55);
  v59 = type metadata accessor for LabTipsGenerator(0);
  swift_allocObject();
  v60 = sub_29D507D3C(v55);
  *(v58 + 56) = v59;
  *(v58 + 64) = sub_29D565110(&unk_2A1A18E28, type metadata accessor for LabTipsGenerator, &unk_29D5B8ED4);
  *(v58 + 32) = v60;
  sub_29D565110(&qword_2A1A171C8, sub_29D565158, MEMORY[0x29EDB88A0]);
  v61 = v85;
  v62 = v87;
  sub_29D5B3C0C();

  (*(v88 + 8))(v56, v62);
  sub_29D565110(&qword_2A1A17148, sub_29D565204, MEMORY[0x29EDB88B0]);
  v63 = v89;
  v64 = sub_29D5B3B1C();
  sub_29D49A104(v35);
  (*(v90 + 8))(v61, v63);
  result = v38;
  *(v38 + 16) = v64;
  return result;
}

uint64_t sub_29D564BA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for LabTipsGenerator(0);
    sub_29D50CABC(0);
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D499E5C(a1, v9);
  v29 = type metadata accessor for LabTipsGenerator(0);
  swift_allocObject();
  v30 = sub_29D507D3C(v9);
  a3[3] = v29;
  result = sub_29D565110(&unk_2A1A18E28, type metadata accessor for LabTipsGenerator, &unk_29D5B8ED4);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D564E90()
{

  v1 = OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabTipsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A186F0;
  if (!qword_2A1A186F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D564FA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D565024(uint64_t a1)
{
  if (!qword_2A1A17228)
  {
    sub_29D5B446C();
    sub_29D4A36DC(255);
    sub_29D565110(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    sub_29D565110(&qword_2A1A16660, sub_29D4A36DC, MEMORY[0x29EDB8A70]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17228);
    }
  }
}

uint64_t sub_29D565110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D565158(uint64_t a1)
{
  if (!qword_2A1A171C0)
  {
    sub_29D565024(255);
    sub_29D499B38();
    sub_29D565110(&qword_2A1A17230, sub_29D565024, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A171C0);
    }
  }
}

void sub_29D565204(uint64_t a1)
{
  if (!qword_2A1A17140)
  {
    sub_29D499C88(255);
    sub_29D565158(255);
    sub_29D565110(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D565110(&qword_2A1A171C8, sub_29D565158, MEMORY[0x29EDB88A0]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17140);
    }
  }
}

uint64_t sub_29D5652F0@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D564BA4(v1 + v4, v5, a1);
}

uint64_t sub_29D56539C(uint64_t a1)
{
  v98 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v97 = *(v3 - 8);
  v96 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v94 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29D5B23CC();
  v83 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85, v6);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B446C();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v79 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566BE8(0);
  v89 = v12;
  v91 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v84 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566D1C(0);
  v16 = *(v15 - 8);
  v92 = v15;
  v93 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v86 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566DB0(0);
  v20 = *(v19 - 8);
  v99 = v19;
  v100 = v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v90 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566E5C(0);
  v24 = *(v23 - 8);
  v101 = v23;
  v102 = v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v95 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29D5B13CC();
  v27 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77, v28);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D5B13EC();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for HealthRecordsGeneratorContext;
  v76 = a1;
  sub_29D567064(a1, v1 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5B143C();
  v82 = MEMORY[0x29EDC9E90];
  sub_29D4A3924(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v36 = sub_29D5B104C();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  v80 = xmmword_29D5B62A0;
  *(v39 + 16) = xmmword_29D5B62A0;
  (*(v37 + 104))(v39 + v38, *MEMORY[0x29EDC3790], v36);
  (*(v27 + 104))(v30, *MEMORY[0x29EDC3898], v77);
  sub_29D5B13DC();
  v40 = v75;
  (*(v32 + 32))(v75 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_domain, v35, v31);
  v41 = v76;
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  v42 = sub_29D5B136C();
  [v42 supportsHealthRecords];

  sub_29D48F668(v103);
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v43 = sub_29D5B269C();
  sub_29D48F668(v103);
  *(v40 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_onboardingManager) = v43;
  sub_29D5B1CBC();
  v44 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v103, v104);
  v45 = sub_29D5B136C();
  v46 = [v45 profileIdentifier];

  v47 = sub_29D5B1C7C();
  sub_29D48F668(v103);
  v48 = sub_29D5B35BC();

  v103[0] = v48;
  v49 = v83;
  v50 = v81;
  v51 = v85;
  (*(v83 + 104))(v81, *MEMORY[0x29EDC41C0], v85);
  v52 = v79;
  sub_29D5B267C();
  (*(v49 + 8))(v50, v51);
  sub_29D4A36DC(0);
  sub_29D566CD4(&qword_2A1A16660, sub_29D4A36DC, MEMORY[0x29EDB8A70]);
  sub_29D566CD4(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  v53 = v84;
  v54 = v87;
  sub_29D5B3B6C();
  (*(v88 + 8))(v52, v54);

  sub_29D566CD4(&qword_2A1A172A0, sub_29D566BE8, MEMORY[0x29EDB8870]);
  v55 = v89;
  v56 = v86;
  sub_29D5B3B3C();
  (*(v91 + 8))(v53, v55);
  v57 = v94;
  v58 = v78;
  sub_29D567064(v41, v94, v78);
  v59 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v60 = (v96 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v61 + v59;
  v63 = v57;
  sub_29D499F90(v57, v62);
  *(v61 + v60) = v98;
  sub_29D499B38();
  sub_29D566CD4(&qword_2A1A170D8, sub_29D566D1C, MEMORY[0x29EDB88B8]);
  v64 = v90;
  v65 = v92;
  sub_29D5B3B2C();

  (*(v93 + 8))(v56, v65);
  sub_29D4A3924(0, &qword_2A1A195D8, sub_29D499B38, v82);
  v66 = swift_allocObject();
  *(v66 + 16) = v80;
  sub_29D567064(v41, v63, v58);
  v67 = type metadata accessor for OnboardingTileGenerator(0);
  swift_allocObject();
  v68 = sub_29D5714A4(v63);
  *(v66 + 56) = v67;
  *(v66 + 64) = sub_29D566CD4(&unk_2A1A18A18, type metadata accessor for OnboardingTileGenerator, &unk_29D5BAD78);
  *(v66 + 32) = v68;
  sub_29D566CD4(&qword_2A1A171A8, sub_29D566DB0, MEMORY[0x29EDB88A0]);
  v69 = v95;
  v70 = v99;
  sub_29D5B3C0C();

  (*(v100 + 8))(v64, v70);
  sub_29D566CD4(&qword_2A1A17138, sub_29D566E5C, MEMORY[0x29EDB88B0]);
  v71 = v101;
  v72 = sub_29D5B3B1C();
  sub_29D5670CC(v41, v58);
  (*(v102 + 8))(v69, v71);
  result = v40;
  *(v40 + 16) = v72;
  return result;
}

uint64_t sub_29D566010(uint64_t a1)
{
  v2 = sub_29D5B377C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B371C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D48F564(a1, v30);
  v12 = sub_29D5B370C();
  v13 = sub_29D5B429C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v7;
    v15 = v14;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 136446466;
    v28 = type metadata accessor for OnboardingGeneratorPipeline(0);
    sub_29D56712C(0, qword_2A1A18170, type metadata accessor for OnboardingGeneratorPipeline);
    v16 = sub_29D5B3E7C();
    v18 = sub_29D501890(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    sub_29D499EC0(v30, v30[3]);
    sub_29D5B376C();
    sub_29D566CD4(&qword_2A1A172E8, MEMORY[0x29EDB8858], MEMORY[0x29EDB8860]);
    v19 = sub_29D5B4C4C();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    sub_29D48F668(v30);
    v22 = sub_29D501890(v19, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_29D48C000, v12, v13, "[%{public}s] receivedSubscription %{public}s", v15, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v23, -1, -1);
    MEMORY[0x29ED5FB80](v15, -1, -1);

    return (*(v8 + 8))(v11, v27);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    return sub_29D48F668(v30);
  }
}

uint64_t sub_29D566368(uint64_t a1)
{
  sub_29D566FF4(0);
  v3 = v2;
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v36 - v10;
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v36 - v13;
  v15 = sub_29D5B371C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D567064(a1, v14, sub_29D566FF4);
  v20 = sub_29D5B370C();
  v21 = sub_29D5B425C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v21;
    v23 = v22;
    v39 = swift_slowAlloc();
    v41 = v39;
    *v23 = 136446466;
    v40 = type metadata accessor for OnboardingGeneratorPipeline(0);
    sub_29D56712C(0, qword_2A1A18170, type metadata accessor for OnboardingGeneratorPipeline);
    v24 = sub_29D5B3E7C();
    v37 = v15;
    v26 = sub_29D501890(v24, v25, &v41);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    sub_29D567064(v14, v11, sub_29D566FF4);
    v27 = *(v3 + 48);
    v28 = sub_29D5B35AC();
    (*(*(v28 - 8) + 32))(v7, v11, v28);
    v29 = sub_29D5B0C9C();
    (*(*(v29 - 8) + 32))(&v7[v27], &v11[v27], v29);
    v30 = sub_29D5B3E7C();
    v32 = v31;
    sub_29D5670CC(v14, sub_29D566FF4);
    v33 = sub_29D501890(v30, v32, &v41);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_29D48C000, v20, v38, "[%{public}s] receiveOutput: %{public}s", v23, 0x16u);
    v34 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v34, -1, -1);
    MEMORY[0x29ED5FB80](v23, -1, -1);

    return (*(v16 + 8))(v19, v37);
  }

  else
  {

    sub_29D5670CC(v14, sub_29D566FF4);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_29D566724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v19;
    v35 = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);
    v32 = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v35 = type metadata accessor for OnboardingTileGenerator(0);
    sub_29D56712C(0, &qword_2A17A4DD8, type metadata accessor for OnboardingTileGenerator);
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v34);
    a1 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v19, -1, -1);
    v28 = v18;
    a3 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);

    (*(v11 + 8))(v14, v32);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_29D567064(a1, v9, type metadata accessor for HealthRecordsGeneratorContext);
  v29 = type metadata accessor for OnboardingTileGenerator(0);
  swift_allocObject();
  v30 = sub_29D5714A4(v9);
  a3[3] = v29;
  result = sub_29D566CD4(&unk_2A1A18A18, type metadata accessor for OnboardingTileGenerator, &unk_29D5BAD78);
  a3[4] = result;
  *a3 = v30;
  return result;
}

uint64_t sub_29D566A40()
{

  v1 = OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D5670CC(v0 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A18248;
  if (!qword_2A1A18248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D566B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D566BE8(uint64_t a1)
{
  if (!qword_2A1A17298)
  {
    sub_29D4A36DC(255);
    sub_29D5B446C();
    sub_29D566CD4(&qword_2A1A16660, sub_29D4A36DC, MEMORY[0x29EDB8A70]);
    sub_29D566CD4(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17298);
    }
  }
}

uint64_t sub_29D566CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D566D1C(uint64_t a1)
{
  if (!qword_2A1A170D0)
  {
    sub_29D566BE8(255);
    sub_29D566CD4(&qword_2A1A172A0, sub_29D566BE8, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B37EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A170D0);
    }
  }
}

void sub_29D566DB0(uint64_t a1)
{
  if (!qword_2A1A171A0)
  {
    sub_29D566D1C(255);
    sub_29D499B38();
    sub_29D566CD4(&qword_2A1A170D8, sub_29D566D1C, MEMORY[0x29EDB88B8]);
    v1 = sub_29D5B37CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A171A0);
    }
  }
}

void sub_29D566E5C(uint64_t a1)
{
  if (!qword_2A1A17130)
  {
    sub_29D499C88(255);
    sub_29D566DB0(255);
    sub_29D566CD4(&qword_2A1A197A8, sub_29D499C88, MEMORY[0x29EDB89C0]);
    sub_29D566CD4(&qword_2A1A171A8, sub_29D566DB0, MEMORY[0x29EDB88A0]);
    v1 = sub_29D5B37DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17130);
    }
  }
}

uint64_t sub_29D566F48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D566724(v1 + v4, v5, a1);
}

void sub_29D566FF4(uint64_t a1)
{
  if (!qword_2A17A4DE0)
  {
    sub_29D5B35AC();
    sub_29D5B0C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4DE0);
    }
  }
}

uint64_t sub_29D567064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5670CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D56712C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

id sub_29D567178()
{
  v1 = qword_2A17A4DE8;
  v2 = *(v0 + qword_2A17A4DE8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4DE8);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D5B236C();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_29D56721C()
{
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = v25 - v3 + 16;
  v5 = qword_2A17A4E00;
  v6 = *(v0 + qword_2A17A4E00);
  if (v6)
  {
    v7 = *(v0 + qword_2A17A4E00);
LABEL_6:
    v23 = v6;
    return v7;
  }

  v8 = MEMORY[0x29EDCA1E8];
  v9 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D569484(v0 + v9, v4);
  v10 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  result = (*(*(v10 - 8) + 48))(v4, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = *((*v8 & *v0) + 0x70);
    swift_beginAccess();
    v13 = v0;
    result = sub_29D5693B8(v0 + v12, v25, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
    v14 = v26;
    if (v26)
    {
      v15 = sub_29D499EC0(v25, v26);
      v16 = *(v14 - 8);
      MEMORY[0x2A1C7C4A8](v15, v15);
      v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v16 + 16))(v18);
      v19 = sub_29D5B314C();
      (*(v16 + 8))(v18, v14);
      v20 = objc_allocWithZone(type metadata accessor for ConceptDeltaHighlightFeedItemView(0));
      v21 = sub_29D57CCE8(v4, v19);
      sub_29D48F668(v25);
      [v21 setTranslatesAutoresizingMaskIntoConstraints_];
      v22 = *(v13 + v5);
      *(v13 + v5) = v21;
      v7 = v21;

      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_29D5674F8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D567560();
  sub_29D567780();
  sub_29D567E50();
}

void sub_29D567560()
{
  v1 = *&v0[qword_2A17A4DF0];
  [v1 setNumberOfLines_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = *&v0[qword_2A17A4DF8];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() separatorColor];
  [v2 setBackgroundColor_];

  v4 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v1 setFont_];

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_29D567178();
  [v6 addSubview_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 addSubview_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_29D56721C();
  [v13 addSubview_];
}

void sub_29D567780()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5BAC90;
  v2 = sub_29D567178();
  v3 = [v2 leadingAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = qword_2A17A4DE8;
  v9 = [*&v0[qword_2A17A4DE8] trailingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v9 &selRef:v12 initWithProfileIdentifier:? + 5];
  *(v1 + 40) = v13;
  v14 = [*&v0[v8] topAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 &selRef:v17 initWithProfileIdentifier:? + 5];
  *(v1 + 48) = v18;
  v19 = *&v0[qword_2A17A4DF0];
  v20 = [v19 leadingAnchor];
  v21 = [*&v0[v8] leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v1 + 56) = v22;
  v23 = [v19 trailingAnchor];
  v24 = [*&v0[v8] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-16.0];

  *(v1 + 64) = v25;
  v26 = [v19 topAnchor];
  v27 = [*&v0[v8] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];

  *(v1 + 72) = v28;
  v29 = *&v0[qword_2A17A4DF8];
  v30 = [v29 leadingAnchor];
  v31 = [v19 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v1 + 80) = v32;
  v33 = [v29 trailingAnchor];
  v34 = [v19 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v1 + 88) = v35;
  v36 = [v29 topAnchor];
  v37 = [v19 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:12.0];

  *(v1 + 96) = v38;
  v39 = [v29 heightAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v1 + 104) = v40;
  v41 = sub_29D56721C();
  v42 = [v41 leadingAnchor];

  v43 = [v19 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v1 + 112) = v44;
  v45 = qword_2A17A4E00;
  v46 = [*&v0[qword_2A17A4E00] trailingAnchor];
  v47 = [v19 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v1 + 120) = v48;
  v49 = [*&v0[v45] topAnchor];
  v50 = [v29 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];

  *(v1 + 128) = v51;
  v52 = [*&v0[v45] bottomAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = objc_opt_self();
  v56 = [v54 bottomAnchor];

  v57 = [v52 &selRef:v56 setSound:-16.0 + 6];
  *(v1 + 136) = v57;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v58 = sub_29D5B401C();

  [v55 activateConstraints_];
}

uint64_t sub_29D567E50()
{
  v1 = v0;
  v2 = sub_29D5B2C2C();
  v57 = *(v2 - 8);
  v58 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v55 = &v52 - v7;
  v8 = sub_29D5B1BCC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v59 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v52 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v52 - v27;
  v29 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D569484(v1 + v29, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_29D569874(v16, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  }

  sub_29D569504(v16, v28);
  v54 = sub_29D567178();
  v61 = sub_29D5B277C();
  v62 = MEMORY[0x29EDC4228];
  v52 = sub_29D4A0410(v60);
  v31 = sub_29D5B1D6C();
  (*(*(v31 - 8) + 16))(v12, v28, v31);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC3F80], v8);

  sub_29D5B1AFC();
  v53 = v25;
  sub_29D5B1B9C();
  sub_29D5B275C();
  (*(v9 + 8))(v12, v8);
  v32 = v54;
  sub_29D5B237C();

  v33 = *(v1 + qword_2A17A4DF0);
  sub_29D569568(v28);
  v34 = sub_29D5B3E1C();

  [v33 setText_];

  v35 = sub_29D56721C();
  v36 = v53;
  sub_29D5697AC(v28, v53);
  v37 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel;
  swift_beginAccess();
  sub_29D569810(v36, &v35[v37]);
  swift_endAccess();
  v38 = &v35[v37];
  v39 = v59;
  sub_29D5697AC(v38, v59);
  sub_29D57D1D4(v39);

  sub_29D52A588(v39);
  sub_29D52A588(v36);
  v40 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v1 + v40, v60, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v41 = v61;
  if (v61)
  {
    v42 = sub_29D499EC0(v60, v61);
    v43 = *(v41 - 8);
    MEMORY[0x2A1C7C4A8](v42, v42);
    v45 = &v52 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v45);
    v46 = v55;
    sub_29D5B315C();
    (*(v43 + 8))(v45, v41);
    v48 = v56;
    v47 = v57;
    v49 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x29EDC1D80], v58);
    LOBYTE(v45) = sub_29D5B2C1C();
    v50 = *(v47 + 8);
    v50(v48, v49);
    v50(v46, v49);
    sub_29D48F668(v60);
    if (v45)
    {
      v51 = *(v1 + qword_2A17A4DE8);
      sub_29D5B234C();
    }

    return sub_29D52A588(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D568530(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v34 = sub_29D5B2BAC();
  v31 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B2C2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v29 - v12;
  v14 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v1 + v14, v37, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v16 = v38;
  if (!v38)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = sub_29D499EC0(v37, v38);
  v32 = &v29;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v17, v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  sub_29D5B315C();
  (*(v18 + 8))(v20, v16);
  (*(v6 + 104))(v10, *MEMORY[0x29EDC1D80], v5);
  sub_29D56942C();
  LOBYTE(v20) = sub_29D5B3E0C();
  v21 = *(v6 + 8);
  v21(v10, v5);
  v21(v13, v5);
  result = sub_29D48F668(v37);
  if (v20)
  {
    return result;
  }

  sub_29D568A34(v30);
  v22 = v31;
  (*(v31 + 104))(v33, *MEMORY[0x29EDC1BA8], v34);
  result = sub_29D5693B8(v2 + v14, v37, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v23 = v38;
  if (!v38)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v30 = sub_29D5B2BCC();
  v24 = sub_29D499EC0(v37, v23);
  v32 = &v29;
  v25 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v24, v24);
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27);
  sub_29D5B315C();
  (*(v25 + 8))(v27, v23);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v28 = v33;
  sub_29D5B2BBC();
  sub_29D4A0598(v35, &qword_2A17A4E28, &qword_2A17A4E30, MEMORY[0x29EDC3A40]);
  v21(v13, v5);
  (*(v22 + 8))(v28, v34);
  return sub_29D48F668(v37);
}

uint64_t sub_29D568A34(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  sub_29D5698D0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v35 - v16;
  v18 = MEMORY[0x29EDCA1E8];
  v19 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D569484(v2 + v19, v17);
  if ((*(v10 + 48))(v17, 1, v9))
  {
    return sub_29D569874(v17, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  }

  v21 = v36;
  sub_29D5697AC(v17, v13);
  sub_29D569874(v17, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  (*(v5 + 16))(v8, &v13[*(v9 + 20)], v4);
  sub_29D52A588(v13);
  v22 = sub_29D5B3CEC();
  (*(v5 + 8))(v8, v4);
  v23 = *((*v18 & *v2) + 0x70);
  swift_beginAccess();
  sub_29D5693B8(v2 + v23, &v37, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v38)
  {
    sub_29D497868(&v37, v39);
    sub_29D5B1CBC();
    v24 = sub_29D5B1C8C();
    sub_29D499EC0(v39, v39[3]);
    v25 = sub_29D5B314C();
    v26 = sub_29D5B1C9C();

    sub_29D5B21EC();
    v27 = sub_29D5B21DC();
    v28 = sub_29D5B219C();

    sub_29D5693B8(v21, &v37, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D502718);
    v29 = v38;
    if (v38)
    {
      v30 = sub_29D499EC0(&v37, v38);
      v31 = *(v29 - 8);
      MEMORY[0x2A1C7C4A8](v30, v30);
      v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v33);
      v34 = sub_29D5B4C6C();
      (*(v31 + 8))(v33, v29);
      sub_29D48F668(&v37);
    }

    else
    {
      v34 = 0;
    }

    [v2 showViewController:v28 sender:v34];

    swift_unknownObjectRelease();
    return sub_29D48F668(v39);
  }

  else
  {

    return sub_29D4A0598(&v37, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  }
}

id sub_29D568F54(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[qword_2A17A4DE8] = 0;
  v6 = qword_2A17A4DF0;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v7 = qword_2A17A4DF8;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  *&v3[qword_2A17A4E00] = 0;
  v8 = &v3[qword_2A17A4E08];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D569060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D568F54(v5, v7, a4);
}

id sub_29D5690C0(void *a1)
{
  *&v1[qword_2A17A4DE8] = 0;
  v3 = qword_2A17A4DF0;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4 = qword_2A17A4DF8;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  *&v1[qword_2A17A4E00] = 0;
  v5 = &v1[qword_2A17A4E08];
  v6 = type metadata accessor for ConceptDeltaHighlightFeedItemViewController(0);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_29D569244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConceptDeltaHighlightFeedItemViewController(uint64_t a1)
{
  result = qword_2A17A4E10;
  if (!qword_2A17A4E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5693B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_29D56942C()
{
  result = qword_2A17A4E20;
  if (!qword_2A17A4E20)
  {
    sub_29D5B2C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4E20);
  }

  return result;
}

uint64_t sub_29D569484(uint64_t a1, uint64_t a2)
{
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569568(uint64_t a1)
{
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F318(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = v15 - v9;
  v11 = *(a1 + *(type metadata accessor for ConceptDeltaHighlightFeedItemData(0) + 32));
  if (v11 == -1 || !v11 || v11 == 1)
  {
    v12 = sub_29D5B0EFC();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_29D5B1FFC();
    v13 = sub_29D5B2A0C();
    (*(v3 + 8))(v6, v2);
    sub_29D569874(v10, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    return v13;
  }

  else
  {
    type metadata accessor for ComparisonResult(0);
    v15[1] = v11;
    result = sub_29D5B4C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5697AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D48F318(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D5698D0(uint64_t a1)
{
  if (!qword_2A1A164D8)
  {
    sub_29D48F51C(255, &qword_2A1A162D0, 0x29EDBAC68);
    v1 = sub_29D5B3D0C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A164D8);
    }
  }
}

uint64_t sub_29D569938(uint64_t a1)
{
  v22 = a1;
  sub_29D56AE94(0);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B181C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D56AF50(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0((v1 + 16), *(v1 + 40));
  sub_29D5B180C();
  v18 = sub_29D5B171C();
  (*(v8 + 8))(v11, v7);
  v25 = v18;
  *(swift_allocObject() + 16) = v22;
  sub_29D4B2E18(0);
  sub_29D571150(0, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
  sub_29D56B02C(&qword_2A1A167A0, sub_29D4B2E18, MEMORY[0x29EDB8A00]);

  sub_29D5B3B7C();

  sub_29D4B3AF4();
  sub_29D56B02C(&qword_2A1A16F28, sub_29D56AF50, MEMORY[0x29EDB8908]);
  sub_29D5B3C3C();
  sub_29D56B02C(&qword_2A1A16F98, sub_29D56AE94, MEMORY[0x29EDB88D8]);
  v19 = v23;
  v20 = sub_29D5B3B1C();
  (*(v24 + 8))(v6, v19);
  (*(v14 + 8))(v17, v13);
  return v20;
}

uint64_t sub_29D569D00@<X0>(unint64_t a1@<X0>, unint64_t isUniquelyReferenced_nonNull_native@<X1>, uint64_t *a3@<X8>)
{
  v8 = sub_29D5B17DC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v136 - v15;
  v17 = sub_29D5B371C();
  v148 = *(v17 - 8);
  v149 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v150 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_29D5B16BC();
  v21 = MEMORY[0x2A1C7C4A8](v163, v20);
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v25 = MEMORY[0x2A1C7C4A8](v23, v24);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v29 = MEMORY[0x2A1C7C4A8](&v136 - v27, v28);
  v156 = &v136 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v161 = &v136 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v155 = &v136 - v36;
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v160 = &v136 - v43;
  v44 = *a1;
  v154 = *(*a1 + 16);
  if (!v154)
  {
    sub_29D571150(0, &qword_2A1A161F8, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9E90]);
    v76 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_29D5B62A0;
    *(v77 + v76) = isUniquelyReferenced_nonNull_native;
    (*(v9 + 104))(v77 + v76, *MEMORY[0x29EDC3AE8], v8);
    *a3 = v77;
  }

  v145 = isUniquelyReferenced_nonNull_native;
  v144 = v16;
  v140 = v38;
  v138 = v42;
  v139 = v41;
  v137 = v40;
  v141 = v13;
  v146 = v9;
  v147 = v8;
  v143 = a3;
  v45 = 0;
  v142 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v153 = v44 + v142;
  v158 = (v39 + 1);
  v159 = v39 + 2;
  v151 = (v39 + 5);
  v152 = (v39 + 4);
  v46 = MEMORY[0x29EDCA198];
  do
  {
    v48 = *(v44 + 16);
    if (v45 >= v48)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v162 = v39[9];
    v3 = v39;
    v49 = v39[2];
    v50 = v160;
    v9 = v163;
    v49(v160, v153 + v162 * v45, v163);
    v4 = sub_29D5B168C();
    v13 = v51;
    v157 = v49;
    v49(v161, v50, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = v46;
    a1 = v46;
    v53 = sub_29D57A290(v4, v13);
    v48 = *(v46 + 16);
    v54 = (v52 & 1) == 0;
    v55 = v48 + v54;
    if (__OFADD__(v48, v54))
    {
      goto LABEL_92;
    }

    v9 = v52;
    if (*(v46 + 24) >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v52)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_29D593B90();
        if (v9)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_29D592FCC(v55, isUniquelyReferenced_nonNull_native);
      v56 = sub_29D57A290(v4, v13);
      if ((v9 & 1) != (v57 & 1))
      {
LABEL_100:
        result = sub_29D5B4CCC();
        __break(1u);
        return result;
      }

      v53 = v56;
      if (v9)
      {
LABEL_3:

        a1 = v163;
        v46 = v164;
        (*v151)(*(v164 + 7) + v53 * v162, v161, v163);
        v47 = *v158;
        (*v158)(v160, a1);
        goto LABEL_4;
      }
    }

    a1 = v163;
    v46 = v164;
    *&v164[8 * (v53 >> 6) + 64] |= 1 << v53;
    v58 = (*(v46 + 48) + 16 * v53);
    *v58 = v4;
    v58[1] = v13;
    (*v152)(*(v46 + 56) + v53 * v162, v161, a1);
    v47 = *v158;
    (*v158)(v160, a1);
    v59 = *(v46 + 16);
    v60 = __OFADD__(v59, 1);
    v48 = v59 + 1;
    if (v60)
    {
      goto LABEL_96;
    }

    *(v46 + 16) = v48;
LABEL_4:
    ++v45;
    v39 = v3;
  }

  while (v154 != v45);
  isUniquelyReferenced_nonNull_native = *(v145 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v44 = v145 + v142;
    v161 = MEMORY[0x29EDCA198];
    v4 = v157;
    while (1)
    {
      v65 = v155;
      v9 = v163;
      (v4)(v155, v44, v163);
      v3 = sub_29D5B168C();
      v67 = v66;
      (v4)(v156, v65, v9);
      a1 = v161;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v164 = a1;
      v68 = sub_29D57A290(v3, v67);
      v70 = *(a1 + 16);
      v71 = (v69 & 1) == 0;
      v60 = __OFADD__(v70, v71);
      v48 = v70 + v71;
      if (v60)
      {
        goto LABEL_95;
      }

      v72 = v69;
      if (*(a1 + 24) < v48)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      v13 = v68;
      sub_29D593B90();
      v68 = v13;
      if (v72)
      {
LABEL_19:
        v61 = v68;

        v161 = v164;
        v62 = v162;
        v63 = *(v164 + 7) + v61 * v162;
        v64 = v163;
        (*v151)(v63, v156, v163);
        v47(v155, v64);
        goto LABEL_20;
      }

LABEL_27:
      a1 = v163;
      v9 = v164;
      *&v164[8 * (v68 >> 6) + 64] |= 1 << v68;
      v74 = (*(v9 + 48) + 16 * v68);
      *v74 = v3;
      v74[1] = v67;
      v62 = v162;
      (*v152)(*(v9 + 56) + v68 * v162, v156, a1);
      v47(v155, a1);
      v75 = *(v9 + 16);
      v60 = __OFADD__(v75, 1);
      v48 = v75 + 1;
      if (v60)
      {
        goto LABEL_97;
      }

      v161 = v9;
      *(v9 + 16) = v48;
LABEL_20:
      v44 += v62;
      if (!--isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }
    }

    sub_29D592FCC(v48, v13);
    v68 = sub_29D57A290(v3, v67);
    if ((v72 & 1) != (v73 & 1))
    {
      goto LABEL_100;
    }

LABEL_26:
    if (v72)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  v161 = MEMORY[0x29EDCA198];
LABEL_35:
  v79 = sub_29D58C444(v46);
  v4 = v161;

  v81 = sub_29D58C444(v80);

  isUniquelyReferenced_nonNull_native = sub_29D570B20(v81, v79);
  if (*(isUniquelyReferenced_nonNull_native + 16) <= *(v81 + 2) >> 3)
  {
    v164 = v81;

    sub_29D56B07C(isUniquelyReferenced_nonNull_native);
    v160 = v164;
  }

  else
  {

    v160 = sub_29D56E84C(isUniquelyReferenced_nonNull_native, v81);
  }

  v82 = v150;
  if (*(isUniquelyReferenced_nonNull_native + 16) <= *(v79 + 2) >> 3)
  {
    v164 = v79;

    sub_29D56B07C(isUniquelyReferenced_nonNull_native);
    v83 = v164;
  }

  else
  {

    v83 = sub_29D56E84C(isUniquelyReferenced_nonNull_native, v79);
  }

  sub_29D5B36AC();
  v3 = v160;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  a1 = sub_29D5B370C();
  v84 = sub_29D5B429C();

  if (os_log_type_enabled(a1, v84))
  {
    v85 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v164 = v158;
    *v85 = 136316162;
    v86 = sub_29D5B41BC();
    LODWORD(v156) = v84;
    v87 = v86;
    v89 = v88;

    v90 = sub_29D501890(v87, v89, &v164);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2048;
    v91 = *(v79 + 2);

    *(v85 + 14) = v91;

    *(v85 + 22) = 2080;
    v92 = sub_29D5B41BC();
    v94 = sub_29D501890(v92, v93, &v164);

    *(v85 + 24) = v94;
    *(v85 + 32) = 2048;
    v95 = v3[2];

    *(v85 + 34) = v95;

    *(v85 + 42) = 2048;
    v96 = v83[2];

    *(v85 + 44) = v96;

    _os_log_impl(&dword_29D48C000, a1, v156, "[SharableModelContextChangeGenerator] received %s new models, found %ld old models, %s of them intersects, %ld of them are new, %ld of them should be removed", v85, 0x34u);
    v97 = v158;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v97, -1, -1);
    MEMORY[0x29ED5FB80](v85, -1, -1);

    (*(v148 + 8))(v150, v149);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v148 + 8))(v82, v149);
  }

  v46 = v147;
  v9 = v146;
  v13 = v144;
  v44 = v83[2];
  if (v44)
  {
    a1 = sub_29D515968(v83[2], 0);
    v98 = sub_29D5A24A8(&v164, (a1 + 32), v44, v83);
    sub_29D4B30C0(v164);
    if (v98 == v44)
    {
      *v13 = a1;
      (*(v9 + 104))(v13, *MEMORY[0x29EDC3AF8], v46);
      v3 = sub_29D515900(0, 1, 1, MEMORY[0x29EDCA190]);
      a1 = v3[2];
      v48 = v3[3];
      v44 = a1 + 1;
      if (a1 < v48 >> 1)
      {
LABEL_47:
        v3[2] = v44;
        (*(v9 + 32))(v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v13, v46);
        goto LABEL_49;
      }

LABEL_99:
      v3 = sub_29D515900((v48 > 1), v44, 1, v3);
      goto LABEL_47;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v3 = MEMORY[0x29EDCA190];
LABEL_49:
  v46 = isUniquelyReferenced_nonNull_native + 56;
  v99 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  v100 = -1;
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  v101 = v100 & *(isUniquelyReferenced_nonNull_native + 56);
  v9 = (v99 + 63) >> 6;

  v13 = 0;
  v48 = MEMORY[0x29EDCA190];
  v158 = MEMORY[0x29EDCA190];
  v44 = v160;
  while (v101)
  {
    v48 = v101;
LABEL_58:
    v101 = (v48 - 1) & v48;
    if (*(v4 + 16))
    {
      v103 = (*(isUniquelyReferenced_nonNull_native + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v48)))));
      v104 = *v103;
      v105 = v103[1];

      v106 = v104;
      a1 = v4;
      v107 = sub_29D57A290(v106, v105);
      if (v108)
      {
        v109 = v163;
        v110 = v138;
        v157(v138, *(v4 + 56) + v107 * v162, v163);

        v156 = *v152;
        (v156)(v140, v110, v109);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = sub_29D5158CC(0, *(v158 + 2) + 1, 1, v158);
        }

        v112 = *(v158 + 2);
        v111 = *(v158 + 3);
        a1 = v112 + 1;
        v44 = v160;
        if (v112 >= v111 >> 1)
        {
          v158 = sub_29D5158CC((v111 > 1), v112 + 1, 1, v158);
        }

        v113 = v158;
        *(v158 + 2) = a1;
        (v156)(v113 + v142 + v112 * v162, v140, v163);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v102 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_93;
    }

    if (v102 >= v9)
    {
      break;
    }

    v48 = *(v46 + 8 * v102);
    ++v13;
    if (v48)
    {
      v13 = v102;
      goto LABEL_58;
    }
  }

  v9 = v44 + 56;
  v114 = 1 << *(v44 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  isUniquelyReferenced_nonNull_native = v115 & *(v44 + 56);
  v13 = (v114 + 63) >> 6;

  v116 = 0;
  v117 = MEMORY[0x29EDCA190];
  while (isUniquelyReferenced_nonNull_native)
  {
    v48 = isUniquelyReferenced_nonNull_native;
LABEL_75:
    isUniquelyReferenced_nonNull_native = (v48 - 1) & v48;
    if (*(v4 + 16))
    {
      v119 = (*(v44 + 48) + ((v116 << 10) | (16 * __clz(__rbit64(v48)))));
      v120 = *v119;
      v46 = v119[1];

      v121 = v120;
      a1 = v4;
      v122 = sub_29D57A290(v121, v46);
      if (v123)
      {
        v124 = v163;
        v125 = v137;
        v157(v137, *(v4 + 56) + v122 * v162, v163);

        v126 = *v152;
        (*v152)(v139, v125, v124);
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v126;
        if ((v127 & 1) == 0)
        {
          v117 = sub_29D5158CC(0, v117[2] + 1, 1, v117);
        }

        v46 = v117[2];
        v128 = v117[3];
        a1 = v46 + 1;
        v44 = v160;
        if (v46 >= v128 >> 1)
        {
          v117 = sub_29D5158CC((v128 > 1), v46 + 1, 1, v117);
        }

        v117[2] = a1;
        (v156)(v117 + v142 + v46 * v162, v139, v163);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v118 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      goto LABEL_94;
    }

    if (v118 >= v13)
    {
      break;
    }

    v48 = *(v9 + 8 * v118);
    ++v116;
    if (v48)
    {
      v116 = v118;
      goto LABEL_75;
    }
  }

  v164 = v158;
  sub_29D54FB2C(v117);
  if (*(v164 + 2))
  {
    v129 = v141;
    *v141 = v164;
    v130 = v146;
    v131 = v147;
    (*(v146 + 104))(v129, *MEMORY[0x29EDC3AE8], v147);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v143;
    if ((v132 & 1) == 0)
    {
      v3 = sub_29D515900(0, v3[2] + 1, 1, v3);
    }

    v135 = v3[2];
    v134 = v3[3];
    if (v135 >= v134 >> 1)
    {
      v3 = sub_29D515900((v134 > 1), v135 + 1, 1, v3);
    }

    v3[2] = v135 + 1;
    result = (*(v130 + 32))(v3 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v135, v129, v131);
  }

  else
  {

    v133 = v143;
  }

  *v133 = v3;
  return result;
}

uint64_t sub_29D56AE38()
{
  sub_29D48F668((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_29D56AE94(uint64_t a1)
{
  if (!qword_2A1A16F90)
  {
    sub_29D56AF50(255);
    sub_29D4B3AF4();
    sub_29D56B02C(&qword_2A1A16F28, sub_29D56AF50, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B382C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F90);
    }
  }
}

void sub_29D56AF50(uint64_t a1)
{
  if (!qword_2A1A16F20)
  {
    sub_29D4B2E18(255);
    sub_29D571150(255, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
    sub_29D56B02C(&qword_2A1A167A0, sub_29D4B2E18, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F20);
    }
  }
}

uint64_t sub_29D56B02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D56B07C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_29D56BF70(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_29D56B1A8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v105 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v98 = &v94 - v7;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v104 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v103 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SharedConceptCodedValue(0);
  v109 = *(v110 - 1);
  v16 = MEMORY[0x2A1C7C4A8](v110, v15);
  v116 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v115 = &v94 - v19;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v21 = v20;
  v125 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v124 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v94 - v26;
  v94 = v2;
  v28 = *v2;
  sub_29D5B4D4C();
  v121 = a1;
  sub_29D4D62E4(&v128);
  result = sub_29D5B4D9C();
  v30 = v28 + 56;
  v31 = -1 << *(v28 + 32);
  v32 = result & ~v31;
  if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
LABEL_68:
    v87 = v99;
    *(v99 + 80) = 0;
    v87[3] = 0u;
    v87[4] = 0u;
    v87[1] = 0u;
    v87[2] = 0u;
    *v87 = 0u;
    return result;
  }

  v33 = ~v31;
  v34 = *v121;
  v122 = v125 + 16;
  v123 = (v125 + 8);
  v111 = v34;
  v126 = *(v34 + 16);
  v102 = (v5 + 48);
  v95 = (v5 + 32);
  v96 = (v5 + 8);
  v97 = v11;
  v114 = v28;
  v113 = v28 + 56;
  v112 = ~v31;
  while (1)
  {
    v36 = *(v28 + 48) + 88 * v32;
    v37 = *(v36 + 16);
    v128 = *v36;
    v129 = v37;
    v38 = *(v36 + 32);
    v39 = *(v36 + 48);
    v40 = *(v36 + 64);
    v133 = *(v36 + 80);
    v131 = v39;
    v132 = v40;
    v130 = v38;
    v41 = v128;
    if (*(v128 + 16) != v126)
    {
      goto LABEL_7;
    }

    v119 = v32;
    if (v126 && v128 != v111)
    {
      v42 = (*(v125 + 80) + 32) & ~*(v125 + 80);
      v32 = v128 + v42;
      v43 = v111 + v42;
      sub_29D4B4604(&v128, &v127);
      v44 = 0;
      while (v44 < *(v41 + 2))
      {
        v45 = *(v125 + 72) * v44;
        v46 = *(v125 + 16);
        v46(v27, v32 + v45, v21);
        if (v126 == v44)
        {
          goto LABEL_70;
        }

        v47 = v124;
        v46(v124, v43 + v45, v21);
        sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
        v48 = sub_29D5B3E0C();
        v49 = *v123;
        (*v123)(v47, v21);
        v49(v27, v21);
        if ((v48 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v126 == ++v44)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      sub_29D4B4660(&v128);
      v32 = v119;
LABEL_72:
      v41 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = *v41;
      v127 = *v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_73;
    }

    sub_29D4B4604(&v128, &v127);
LABEL_18:
    if ((*(&v128 + 1) != *(v121 + 1) || v129 != *(v121 + 2)) && (sub_29D5B4C7C() & 1) == 0 || (*(&v129 + 1) != *(v121 + 3) || v130 != *(v121 + 4)) && (sub_29D5B4C7C() & 1) == 0 || (v50 = *(&v130 + 1), v51 = *(v121 + 5), v52 = *(*(&v130 + 1) + 16), v52 != *(v51 + 16)))
    {
LABEL_6:
      result = sub_29D4B4660(&v128);
      v32 = v119;
      v28 = v114;
      v30 = v113;
      v33 = v112;
      goto LABEL_7;
    }

    if (v52 && *(&v130 + 1) != v51)
    {
      break;
    }

LABEL_60:
    if ((v131 != *(v121 + 6) || *(&v131 + 1) != *(v121 + 7)) && (sub_29D5B4C7C() & 1) == 0 || *&v132 != v121[8])
    {
      goto LABEL_6;
    }

    if (*(&v132 + 1) == *(v121 + 9) && v133 == *(v121 + 10))
    {
      goto LABEL_71;
    }

    v86 = sub_29D5B4C7C();
    result = sub_29D4B4660(&v128);
    v32 = v119;
    v28 = v114;
    v30 = v113;
    v33 = v112;
    if (v86)
    {
      goto LABEL_72;
    }

LABEL_7:
    v32 = (v32 + 1) & v33;
    if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v53 = 0;
  v54 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v107 = *(&v130 + 1) + v54;
  v106 = v51 + v54;
  v101 = *(&v130 + 1);
  v100 = v52;
  while (v53 < *(v50 + 16))
  {
    v41 = (*(v109 + 72) * v53);
    v32 = v115;
    sub_29D4F55C4(v41 + v107, v115, type metadata accessor for SharedConceptCodedValue);
    if (v53 == v52)
    {
      goto LABEL_77;
    }

    v108 = v53;
    v55 = v116;
    sub_29D4F55C4(v41 + v106, v116, type metadata accessor for SharedConceptCodedValue);
    v41 = *v32;
    v56 = *v55;
    v57 = *(*v55 + 16);
    v120 = *(*v32 + 16);
    v32 = v122;
    if (v120 != v57)
    {
      goto LABEL_5;
    }

    if (v120 && v41 != v56)
    {
      v58 = 0;
      v59 = (*(v125 + 80) + 32) & ~*(v125 + 80);
      v118 = v41 + v59;
      v117 = v56 + v59;
      while (v58 < *(v41 + 2))
      {
        v60 = *(v125 + 72) * v58;
        v61 = *(v125 + 16);
        v61(v27, &v118[v60], v21);
        if (v58 >= *(v56 + 16))
        {
          goto LABEL_75;
        }

        v62 = v124;
        v61(v124, (v117 + v60), v21);
        sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
        v63 = sub_29D5B3E0C();
        v64 = *v123;
        (*v123)(v62, v21);
        v64(v27, v21);
        if ((v63 & 1) == 0)
        {
          goto LABEL_5;
        }

        if (v120 == ++v58)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      break;
    }

LABEL_38:
    v65 = v110[5];
    v66 = *(v104 + 48);
    v67 = v103;
    sub_29D4F55C4(v115 + v65, v103, sub_29D4A05F4);
    sub_29D4F55C4(v116 + v65, v67 + v66, sub_29D4A05F4);
    v68 = *v102;
    v69 = v105;
    if ((*v102)(v67, 1, v105) == 1)
    {
      v70 = v68(v67 + v66, 1, v69) == 1;
      v35 = v67;
      if (!v70)
      {
        goto LABEL_4;
      }

      sub_29D571248(v67, sub_29D4A05F4);
    }

    else
    {
      v71 = v97;
      sub_29D4F55C4(v67, v97, sub_29D4A05F4);
      if (v68(v67 + v66, 1, v69) == 1)
      {
        (*v96)(v71, v69);
        v35 = v67;
LABEL_4:
        sub_29D571248(v35, sub_29D4DCD48);
LABEL_5:
        sub_29D571248(v116, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v115, type metadata accessor for SharedConceptCodedValue);
        goto LABEL_6;
      }

      v72 = v98;
      (*v95)(v98, v67 + v66, v69);
      sub_29D5712A8();
      v73 = sub_29D5B3E0C();
      v74 = *v96;
      (*v96)(v72, v69);
      v74(v71, v69);
      sub_29D571248(v67, sub_29D4A05F4);
      if ((v73 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v75 = v110[6];
    v76 = (v115 + v75);
    v77 = *(v115 + v75 + 8);
    v78 = (v116 + v75);
    v79 = v78[1];
    if (v77)
    {
      if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_29D5B4C7C() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v79)
    {
      goto LABEL_5;
    }

    v80 = v110[7];
    v32 = v115;
    v81 = (v115 + v80);
    v82 = *(v115 + v80 + 8);
    v83 = (v116 + v80);
    v84 = v83[1];
    v85 = v84 == 0;
    if (!v82)
    {
      v50 = v101;
      goto LABEL_58;
    }

    if (!v84)
    {
      goto LABEL_5;
    }

    v50 = v101;
    if (*v81 != *v83 || v82 != v84)
    {
      v85 = sub_29D5B4C7C();
      v32 = v115;
LABEL_58:
      v52 = v100;
      v41 = type metadata accessor for SharedConceptCodedValue;
      sub_29D571248(v116, type metadata accessor for SharedConceptCodedValue);
      sub_29D571248(v32, type metadata accessor for SharedConceptCodedValue);
      if ((v85 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_59;
    }

    v41 = type metadata accessor for SharedConceptCodedValue;
    sub_29D571248(v116, type metadata accessor for SharedConceptCodedValue);
    sub_29D571248(v115, type metadata accessor for SharedConceptCodedValue);
    v52 = v100;
LABEL_59:
    v53 = v108 + 1;
    if (v108 + 1 == v52)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  sub_29D59CE7C();
  v89 = v127;
LABEL_73:
  v90 = *(v89 + 48) + 88 * v32;
  v91 = *(v90 + 48);
  v92 = v99;
  *(v99 + 32) = *(v90 + 32);
  *(v92 + 48) = v91;
  *(v92 + 64) = *(v90 + 64);
  *(v92 + 80) = *(v90 + 80);
  v93 = *(v90 + 16);
  *v92 = *v90;
  *(v92 + 16) = v93;
  result = sub_29D56C0AC(v32);
  *v41 = v127;
  return result;
}

uint64_t sub_29D56BF70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v6 = sub_29D5B4D9C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29D5B4C7C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29D59CB30();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_29D56C48C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_29D56C0AC(unint64_t a1)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v4 = v3;
  v40 = *(v3 - 8);
  result = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v39 - v7;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_29D5B47EC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v46 = a1;
      v41 = (v14 + 1) & v13;
      v42 = v13;
      v15 = (v40 + 8);
      v43 = v10;
      v44 = v9;
      v39 = v40 + 16;
      while (1)
      {
        v16 = *(v9 + 48);
        v45 = v12;
        v17 = v16 + 88 * v12;
        v19 = *(v17 + 48);
        v18 = *(v17 + 64);
        v20 = *(v17 + 32);
        v53 = *(v17 + 80);
        v51 = v19;
        v52 = v18;
        v50 = v20;
        v21 = *(v17 + 16);
        v49[0] = *v17;
        v49[1] = v21;
        sub_29D5B4D4C();
        v22 = *&v49[0];
        MEMORY[0x29ED5F330](*(*&v49[0] + 16));
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = v40;
          v25 = v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
          sub_29D4B4604(v49, v47);
          v26 = *(v24 + 72);
          v27 = *(v24 + 16);
          do
          {
            v27(v8, v25, v4);
            sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
            sub_29D5B3D9C();
            (*v15)(v8, v4);
            v25 += v26;
            --v23;
          }

          while (v23);
        }

        else
        {
          sub_29D4B4604(v49, v47);
        }

        sub_29D5B3EFC();
        sub_29D5B3EFC();
        sub_29D4DB620(&v48, *(&v50 + 1));
        sub_29D5B3EFC();
        v28 = *&v52;
        if (*&v52 == 0.0)
        {
          v28 = 0.0;
        }

        MEMORY[0x29ED5F360](*&v28);
        sub_29D5B3EFC();
        v29 = sub_29D5B4D9C();
        sub_29D4B4660(v49);
        v30 = v42;
        v31 = v29 & v42;
        a1 = v46;
        v10 = v43;
        if (v46 >= v41)
        {
          break;
        }

        v9 = v44;
        v32 = v45;
        if (v31 < v41)
        {
          goto LABEL_15;
        }

LABEL_16:
        v33 = *(v9 + 48);
        v34 = (v33 + 88 * v46);
        v35 = (v33 + 88 * v32);
        if (v46 != v32 || v34 >= v35 + 88)
        {
          memmove(v34, v35, 0x58uLL);
          a1 = v32;
        }

LABEL_19:
        v12 = (v32 + 1) & v30;
        if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_21;
        }

        v46 = a1;
      }

      v9 = v44;
      v32 = v45;
      if (v31 < v41)
      {
        goto LABEL_19;
      }

LABEL_15:
      if (v46 < v31)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_21:

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v9 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v38;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_29D56C48C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29D5B47EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_29D5B4D4C();

        sub_29D5B3EFC();
        v10 = sub_29D5B4D9C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_29D56C650(unint64_t a1, unint64_t a2)
{
  v291 = *MEMORY[0x29EDCA608];
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v235 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v223 = &v214 - v7;
  sub_29D4A05F4(0);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v12 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v221 = &v214 - v14;
  sub_29D4DCD48(0);
  v234 = v15;
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v217 = &v214 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v230 = &v214 - v20;
  v21 = type metadata accessor for SharedConceptCodedValue(0);
  v241 = *(v21 - 8);
  v242 = v21;
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v228 = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v224 = (&v214 - v27);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v250 = &v214 - v30;
  MEMORY[0x2A1C7C4A8](v29, v31);
  v246 = &v214 - v32;
  v216 = 0;
  v33 = a2;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v35 = v34;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v260 = &v214 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v42 = &v214 - v41;
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v43 = *(a1 + 56);
  v227 = a1 + 56;
  v44 = -1 << *(a1 + 32);
  v225 = ~v44;
  if (-v44 < 64)
  {
    v45 = ~(-1 << -v44);
  }

  else
  {
    v45 = -1;
  }

  v239 = v45 & v43;
  v226 = (63 - v44) >> 6;
  v46 = (a2 + 56);
  v262 = v40;
  v258 = (v40 + 8);
  v259 = v40 + 16;
  v233 = (v5 + 48);
  v218 = (v5 + 32);
  v219 = (v5 + 8);

  v48 = 0;
  v49 = 88;
  v251 = (v33 + 56);
  v252 = v33;
  v215 = v12;
  v263 = v42;
  for (i = a1; ; a1 = i)
  {
    v50 = v239;
    if (!v239)
    {
      v53 = v48;
      v52 = v227;
      while (1)
      {
        v51 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_189;
        }

        if (v51 >= v226)
        {
          break;
        }

        v50 = *(v227 + 8 * v51);
        ++v53;
        if (v50)
        {
          goto LABEL_13;
        }
      }

      v125 = a1;
      goto LABEL_84;
    }

    v51 = v48;
    v52 = v227;
LABEL_13:
    v54 = *(a1 + 48) + 88 * (__clz(__rbit64(v50)) | (v51 << 6));
    v55 = *(v54 + 16);
    v280 = *v54;
    v281 = v55;
    v57 = *(v54 + 48);
    v56 = *(v54 + 64);
    v58 = *(v54 + 32);
    v285 = *(v54 + 80);
    v286 = a1;
    v283 = v57;
    v284 = v56;
    v282 = v58;
    v287 = v52;
    v288 = v225;
    v229 = v51;
    v289 = v51;
    v290 = (v50 - 1) & v50;
    v239 = v290;
    v59 = v33;
    sub_29D5B4D4C();
    v60 = v280;
    v61 = *(v280 + 16);
    MEMORY[0x29ED5F330](v61);
    v257 = v60;
    if (v61)
    {
      v62 = v262;
      v63 = v60 + ((*(v262 + 80) + 32) & ~*(v262 + 80));
      sub_29D4B4604(&v280, v275);
      v64 = *(v62 + 72);
      sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
      do
      {
        sub_29D5B3D9C();
        v63 += v64;
        --v61;
      }

      while (v61);
    }

    else
    {
      sub_29D4B4604(&v280, v275);
    }

    *&v253 = *(&v280 + 1);
    v249 = v281;
    sub_29D5B3EFC();
    *&v243 = v282;
    *(&v243 + 1) = *(&v281 + 1);
    sub_29D5B3EFC();
    v244 = *(&v282 + 1);
    sub_29D4DB620(&v269, *(&v282 + 1));
    *&v236 = *(&v283 + 1);
    *(&v236 + 1) = v283;
    sub_29D5B3EFC();
    v65 = *&v284;
    v66 = *&v284 == 0.0 ? 0.0 : *&v284;
    MEMORY[0x29ED5F360](*&v66);
    v12 = *(&v284 + 1);
    v67 = v285;
    sub_29D5B3EFC();
    v68 = sub_29D5B4D9C();
    v33 = v59;
    v69 = -1 << *(v59 + 32);
    a1 = v68 & ~v69;
    v70 = a1 >> 6;
    v71 = 1 << a1;
    if (((1 << a1) & v46[a1 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_29D4B4660(&v280);
    v48 = v229;
  }

  *&v220 = v67;
  *(&v220 + 1) = v12;
  v72 = ~v69;
  v261 = *(v257 + 16);
  v245 = ~v69;
  while (1)
  {
    v73 = *(v33 + 48) + 88 * a1;
    v74 = *(v73 + 16);
    *v275 = *v73;
    *&v275[16] = v74;
    v75 = *(v73 + 32);
    v76 = *(v73 + 48);
    v77 = *(v73 + 64);
    v279 = *(v73 + 80);
    v277 = v76;
    v278 = v77;
    v276 = v75;
    v78 = *v275;
    if (*(*v275 + 16) != v261)
    {
      goto LABEL_27;
    }

    v255 = a1;
    v247 = v71;
    v248 = v70;
    if (v261 && *v275 != v257)
    {
      v79 = (*(v262 + 80) + 32) & ~*(v262 + 80);
      v80 = *v275 + v79;
      v49 = v257 + v79;
      sub_29D4B4604(v275, &v269);
      v81 = 0;
      while (v81 < *(v78 + 16))
      {
        v82 = *(v262 + 72) * v81;
        v83 = *(v262 + 16);
        v83(v42, v80 + v82, v35);
        if (v81 >= *(v257 + 16))
        {
          goto LABEL_88;
        }

        v84 = v260;
        v83(v260, v49 + v82, v35);
        sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
        v85 = sub_29D5B3E0C();
        v12 = v35;
        v86 = *v258;
        v87 = v84;
        v42 = v263;
        (*v258)(v87, v35);
        v86(v42, v35);
        if ((v85 & 1) == 0)
        {
          goto LABEL_26;
        }

        if (v261 == ++v81)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    sub_29D4B4604(v275, &v269);
LABEL_38:
    if (*&v275[8] != __PAIR128__(v249, v253) && (sub_29D5B4C7C() & 1) == 0)
    {
      goto LABEL_26;
    }

    if (__PAIR128__(*&v275[24], v276) != v243 && (sub_29D5B4C7C() & 1) == 0)
    {
      goto LABEL_26;
    }

    a1 = *(&v276 + 1);
    v12 = *(*(&v276 + 1) + 16);
    if (v12 != *(v244 + 16))
    {
      goto LABEL_26;
    }

    if (!v12 || *(&v276 + 1) == v244)
    {
      break;
    }

    v88 = 0;
    v89 = (*(v241 + 80) + 32) & ~*(v241 + 80);
    v238 = *(&v276 + 1) + v89;
    v237 = v244 + v89;
    v231 = v12;
    v232 = *(&v276 + 1);
    while (1)
    {
      if (v88 >= *(a1 + 16))
      {
        goto LABEL_192;
      }

      v90 = *(v241 + 72) * v88;
      v91 = v246;
      sub_29D4F55C4(v238 + v90, v246, type metadata accessor for SharedConceptCodedValue);
      if (v88 >= *(v244 + 16))
      {
        goto LABEL_193;
      }

      v240 = v88;
      v92 = v237 + v90;
      v93 = v250;
      sub_29D4F55C4(v92, v250, type metadata accessor for SharedConceptCodedValue);
      v94 = *v91;
      a1 = *v93;
      v95 = *(*v93 + 16);
      v256 = *(*v91 + 16);
      if (v256 != v95)
      {
        goto LABEL_25;
      }

      if (v256 && v94 != a1)
      {
        v96 = 0;
        v97 = (*(v262 + 80) + 32) & ~*(v262 + 80);
        *(&v253 + 1) = a1 + v97;
        v254 = v94 + v97;
        while (v96 < *(v94 + 16))
        {
          v12 = v263;
          v98 = *(v262 + 72) * v96;
          v99 = *(v262 + 16);
          v49 = v259;
          v99(v263, v254 + v98, v35);
          if (v96 >= *(a1 + 16))
          {
            goto LABEL_188;
          }

          v100 = v260;
          v99(v260, *(&v253 + 1) + v98, v35);
          sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
          v101 = sub_29D5B3E0C();
          v49 = v258;
          v102 = *v258;
          (*v258)(v100, v35);
          v102(v12, v35);
          if ((v101 & 1) == 0)
          {
            goto LABEL_25;
          }

          if (v256 == ++v96)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

LABEL_56:
      v103 = v242[5];
      v104 = *(v234 + 48);
      v105 = v230;
      sub_29D4F55C4(v246 + v103, v230, sub_29D4A05F4);
      sub_29D4F55C4(v250 + v103, v105 + v104, sub_29D4A05F4);
      v12 = v233;
      v106 = *v233;
      v107 = v235;
      if ((*v233)(v105, 1, v235) == 1)
      {
        if (v106(v105 + v104, 1, v107) != 1)
        {
          goto LABEL_24;
        }

        sub_29D571248(v105, sub_29D4A05F4);
        goto LABEL_61;
      }

      v49 = v221;
      sub_29D4F55C4(v105, v221, sub_29D4A05F4);
      if (v106(v105 + v104, 1, v107) == 1)
      {
        break;
      }

      v108 = v223;
      (*v218)(v223, v105 + v104, v107);
      sub_29D5712A8();
      v109 = sub_29D5B3E0C();
      v12 = v219;
      v110 = *v219;
      (*v219)(v108, v107);
      v110(v49, v107);
      sub_29D571248(v105, sub_29D4A05F4);
      if ((v109 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_61:
      v111 = v242[6];
      v112 = (v246 + v111);
      v113 = *(v246 + v111 + 8);
      v114 = (v250 + v111);
      v115 = v114[1];
      if (v113)
      {
        if (!v115 || (*v112 != *v114 || v113 != v115) && (sub_29D5B4C7C() & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v115)
      {
        goto LABEL_25;
      }

      v116 = v242[7];
      v117 = v246;
      v118 = (v246 + v116);
      v119 = *(v246 + v116 + 8);
      v120 = (v250 + v116);
      v121 = v120[1];
      v122 = v121 == 0;
      if (!v119)
      {
        v42 = v263;
        a1 = v232;
        goto LABEL_75;
      }

      if (!v121)
      {
        goto LABEL_25;
      }

      a1 = v232;
      if (*v118 != *v120 || v119 != v121)
      {
        v122 = sub_29D5B4C7C();
        v42 = v263;
        v117 = v246;
LABEL_75:
        sub_29D571248(v250, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v117, type metadata accessor for SharedConceptCodedValue);
        v12 = v231;
        if ((v122 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_76;
      }

      sub_29D571248(v250, type metadata accessor for SharedConceptCodedValue);
      sub_29D571248(v246, type metadata accessor for SharedConceptCodedValue);
      v42 = v263;
      v12 = v231;
LABEL_76:
      v88 = v240 + 1;
      if (v240 + 1 == v12)
      {
        goto LABEL_77;
      }
    }

    (*v219)(v49, v107);
LABEL_24:
    sub_29D571248(v105, sub_29D4DCD48);
LABEL_25:
    sub_29D571248(v250, type metadata accessor for SharedConceptCodedValue);
    sub_29D571248(v246, type metadata accessor for SharedConceptCodedValue);
    v42 = v263;
LABEL_26:
    sub_29D4B4660(v275);
    v46 = v251;
    v33 = v252;
    v49 = 88;
    a1 = v255;
    v72 = v245;
LABEL_27:
    a1 = (a1 + 1) & v72;
    v70 = a1 >> 6;
    v71 = 1 << a1;
    if ((v46[a1 >> 6] & (1 << a1)) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_77:
  if (__PAIR128__(v277, *(&v277 + 1)) != v236 && (sub_29D5B4C7C() & 1) == 0 || *&v278 != v65)
  {
    goto LABEL_26;
  }

  if (__PAIR128__(*(&v278 + 1), v279) == v220)
  {
LABEL_89:
    sub_29D4B4660(v275);
    v46 = v251;
    v33 = v252;
    a1 = v255;
    v124 = v247;
    v12 = v248;
    goto LABEL_90;
  }

  v123 = sub_29D5B4C7C();
  sub_29D4B4660(v275);
  v46 = v251;
  v33 = v252;
  v49 = 88;
  a1 = v255;
  v124 = v247;
  v12 = v248;
  v72 = v245;
  if ((v123 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_90:
  v49 = v124;
  v127 = sub_29D4B4660(&v280);
  v129 = *(v33 + 32);
  v221 = ((1 << v129) + 63) >> 6;
  v47 = 8 * v221;
  if ((v129 & 0x3Fu) > 0xD)
  {
    goto LABEL_199;
  }

  while (2)
  {
    *(&v220 + 1) = &v214;
    MEMORY[0x2A1C7C4A8](v127, v128);
    v131 = &v214 - ((v130 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v131, v46, v130);
    *&v131[8 * v12] &= ~v49;
    v49 = v33;
    v230 = *(v33 + 16) - 1;
    v231 = v131;
    v132 = i;
    v133 = v262;
    v135 = v226;
    v134 = v227;
    v136 = v239;
    v137 = v229;
    while (2)
    {
      if (!v136)
      {
        v139 = v137;
        while (1)
        {
          v138 = v139 + 1;
          if (__OFADD__(v139, 1))
          {
            goto LABEL_196;
          }

          if (v138 >= v135)
          {
            break;
          }

          v136 = *(v134 + 8 * v138);
          ++v139;
          if (v136)
          {
            goto LABEL_98;
          }
        }

        if (v135 <= v137 + 1)
        {
          v209 = v137 + 1;
        }

        else
        {
          v209 = v135;
        }

        v286 = v132;
        v287 = v134;
        v288 = v225;
        v289 = v209 - 1;
        v290 = 0;
        v33 = sub_29D5701F8(v231, v221, v230, v49);
LABEL_186:
        v125 = v286;
LABEL_84:
        sub_29D4B30C0(v125);
        return v33;
      }

      v138 = v137;
LABEL_98:
      v140 = *(v132 + 48) + 88 * (__clz(__rbit64(v136)) | (v138 << 6));
      v141 = *(v140 + 16);
      v269 = *v140;
      v270 = v141;
      v143 = *(v140 + 48);
      v142 = *(v140 + 64);
      v144 = *(v140 + 32);
      v274 = *(v140 + 80);
      v272 = v143;
      v273 = v142;
      v271 = v144;
      v286 = v132;
      v287 = v134;
      v288 = v225;
      v289 = v138;
      v229 = v138;
      v239 = (v136 - 1) & v136;
      v290 = v239;
      sub_29D5B4D4C();
      v12 = v269;
      a1 = *(v269 + 16);
      MEMORY[0x29ED5F330](a1);
      v261 = v12;
      if (a1)
      {
        v145 = v12 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
        sub_29D4B4604(&v269, &v265);
        v146 = *(v133 + 72);
        v12 = sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
        do
        {
          sub_29D5B3D9C();
          v145 += v146;
          --a1;
        }

        while (a1);
      }

      else
      {
        sub_29D4B4604(&v269, &v265);
      }

      *&v253 = v270;
      *(&v253 + 1) = *(&v269 + 1);
      sub_29D5B3EFC();
      v249 = *(&v270 + 1);
      v246 = v271;
      sub_29D5B3EFC();
      v245 = *(&v271 + 1);
      sub_29D4DB620(v264, *(&v271 + 1));
      v238 = *(&v272 + 1);
      v240 = v272;
      sub_29D5B3EFC();
      v147 = *&v273;
      if (*&v273 == 0.0)
      {
        v148 = 0.0;
      }

      else
      {
        v148 = *&v273;
      }

      MEMORY[0x29ED5F360](*&v148);
      v237 = *(&v273 + 1);
      v232 = v274;
      sub_29D5B3EFC();
      v149 = v264;
      v150 = sub_29D5B4D9C();
      v151 = -1 << *(v49 + 32);
      v152 = v150 & ~v151;
      v153 = v152 >> 6;
      v154 = 1 << v152;
      if (((1 << v152) & v46[v152 >> 6]) == 0)
      {
        goto LABEL_176;
      }

      v155 = v49;
      v156 = ~v151;
      v49 = *(v261 + 16);
      v257 = v49;
      v250 = ~v151;
LABEL_112:
      v157 = *(v155 + 48) + 88 * v152;
      v158 = *(v157 + 16);
      v265 = *v157;
      *v266 = v158;
      v159 = *(v157 + 32);
      v160 = *(v157 + 48);
      v161 = *(v157 + 64);
      v268[2] = *(v157 + 80);
      v267 = v160;
      *v268 = v161;
      *&v266[16] = v159;
      v162 = v265;
      if (*(v265 + 16) != v49)
      {
        goto LABEL_111;
      }

      v256 = v152;
      v247 = v154;
      v248 = v153;
      if (v49 && v265 != v261)
      {
        v163 = (*(v262 + 80) + 32) & ~*(v262 + 80);
        v164 = v265 + v163;
        a1 = v261 + v163;
        sub_29D4B4604(&v265, v264);
        v165 = 0;
        while (1)
        {
          if (v165 >= *(v162 + 16))
          {
            goto LABEL_190;
          }

          v49 = *(v262 + 72) * v165;
          v166 = *(v262 + 16);
          v12 = v259;
          v166(v42, v164 + v49, v35);
          if (v165 >= *(v261 + 16))
          {
            goto LABEL_191;
          }

          v167 = v260;
          v166(v260, a1 + v49, v35);
          sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
          v149 = sub_29D5B3E0C();
          v12 = v258;
          v168 = *v258;
          v169 = v167;
          v42 = v263;
          (*v258)(v169, v35);
          v168(v42, v35);
          if ((v149 & 1) == 0)
          {
            break;
          }

          ++v165;
          v49 = v257;
          if (v257 == v165)
          {
            goto LABEL_122;
          }
        }

        v46 = v251;
        v155 = v252;
        v49 = v257;
        goto LABEL_109;
      }

      sub_29D4B4604(&v265, v264);
LABEL_122:
      if (__PAIR128__(*(&v265 + 1), *v266) != v253 && (sub_29D5B4C7C() & 1) == 0)
      {
        v46 = v251;
        v155 = v252;
        goto LABEL_109;
      }

      v46 = v251;
      v155 = v252;
      if (*&v266[8] != __PAIR128__(v246, v249) && (sub_29D5B4C7C() & 1) == 0 || (v170 = *&v266[24], v171 = *(*&v266[24] + 16), v171 != *(v245 + 16)))
      {
LABEL_109:
        sub_29D4B4660(&v265);
        goto LABEL_110;
      }

      if (!v171 || *&v266[24] == v245)
      {
LABEL_161:
        if (v267 != __PAIR128__(v238, v240) && (sub_29D5B4C7C() & 1) == 0 || v268[0] != v147)
        {
          goto LABEL_109;
        }

        if (*&v268[1] == __PAIR128__(v232, v237))
        {
          sub_29D4B4660(&v265);
LABEL_178:
          v49 = v155;
          sub_29D4B4660(&v269);
          v207 = v247;
          v208 = v231[v248];
          v231[v248] = v208 & ~v247;
          if ((v208 & v207) == 0)
          {
            goto LABEL_177;
          }

          v137 = v229;
          v132 = i;
          v133 = v262;
          v135 = v226;
          v134 = v227;
          v136 = v239;
          if (__OFSUB__(v230, 1))
          {
            __break(1u);
            goto LABEL_205;
          }

          if (v230 == 1)
          {

            v33 = MEMORY[0x29EDCA1A0];
            goto LABEL_186;
          }

          --v230;
          continue;
        }

        v149 = sub_29D5B4C7C();
        sub_29D4B4660(&v265);
        if (v149)
        {
          goto LABEL_178;
        }

LABEL_110:
        v152 = v256;
        v156 = v250;
LABEL_111:
        v152 = (v152 + 1) & v156;
        v153 = v152 >> 6;
        v154 = 1 << v152;
        if ((v46[v152 >> 6] & (1 << v152)) == 0)
        {
          v49 = v155;
LABEL_176:
          sub_29D4B4660(&v269);
LABEL_177:
          v137 = v229;
          v132 = i;
          v133 = v262;
          v135 = v226;
          v134 = v227;
          v136 = v239;
          continue;
        }

        goto LABEL_112;
      }

      break;
    }

    a1 = 0;
    v172 = (*(v241 + 80) + 32) & ~*(v241 + 80);
    *&v243 = v245 + v172;
    *(&v243 + 1) = *&v266[24] + v172;
    *&v236 = v171;
    *(&v236 + 1) = *&v266[24];
    while (1)
    {
      if (a1 >= *(v170 + 16))
      {
        goto LABEL_197;
      }

      v12 = v155;
      v173 = *(v241 + 72) * a1;
      v174 = v224;
      sub_29D4F55C4(*(&v243 + 1) + v173, v224, type metadata accessor for SharedConceptCodedValue);
      if (a1 >= *(v245 + 16))
      {
        goto LABEL_198;
      }

      v244 = a1;
      v175 = v243 + v173;
      v176 = v228;
      sub_29D4F55C4(v175, v228, type metadata accessor for SharedConceptCodedValue);
      v177 = *v174;
      v178 = *v176;
      a1 = *(v177 + 16);
      if (a1 != *(*v176 + 16))
      {
        v155 = v12;
        goto LABEL_171;
      }

      if (a1 && v177 != v178)
      {
        break;
      }

LABEL_140:
      v186 = v242[5];
      v187 = *(v234 + 48);
      v188 = v217;
      sub_29D4F55C4(v224 + v186, v217, sub_29D4A05F4);
      sub_29D4F55C4(v228 + v186, v188 + v187, sub_29D4A05F4);
      v12 = v233;
      v189 = *v233;
      a1 = v235;
      if ((*v233)(v188, 1, v235) == 1)
      {
        v190 = v189(v188 + v187, 1, a1) == 1;
        v191 = v188;
        v155 = v252;
        if (!v190)
        {
          goto LABEL_174;
        }

        sub_29D571248(v188, sub_29D4A05F4);
        v46 = v251;
        v49 = v257;
        goto LABEL_146;
      }

      v192 = v215;
      sub_29D4F55C4(v188, v215, sub_29D4A05F4);
      if (v189(v188 + v187, 1, a1) == 1)
      {
        (*v219)(v192, a1);
        v191 = v188;
        v155 = v252;
LABEL_174:
        sub_29D571248(v191, sub_29D4DCD48);
LABEL_170:
        v46 = v251;
        v49 = v257;
LABEL_171:
        v149 = type metadata accessor for SharedConceptCodedValue;
        sub_29D571248(v228, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v224, type metadata accessor for SharedConceptCodedValue);
        goto LABEL_109;
      }

      v193 = v223;
      (*v218)(v223, v188 + v187, a1);
      sub_29D5712A8();
      v194 = sub_29D5B3E0C();
      v12 = v219;
      v195 = *v219;
      (*v219)(v193, a1);
      v195(v192, a1);
      sub_29D571248(v188, sub_29D4A05F4);
      v46 = v251;
      v155 = v252;
      v49 = v257;
      if ((v194 & 1) == 0)
      {
        goto LABEL_171;
      }

LABEL_146:
      v196 = v242[6];
      v197 = v224;
      v198 = (v224 + v196);
      v199 = *(v224 + v196 + 8);
      v200 = (v228 + v196);
      v201 = v200[1];
      if (v199)
      {
        if (!v201 || (*v198 != *v200 || v199 != v201) && (sub_29D5B4C7C() & 1) == 0)
        {
          goto LABEL_171;
        }
      }

      else if (v201)
      {
        goto LABEL_171;
      }

      v202 = v242[7];
      v203 = (v197 + v202);
      v204 = *(v197 + v202 + 8);
      v205 = (v228 + v202);
      v206 = v205[1];
      v149 = v206 == 0;
      if (!v204)
      {
        goto LABEL_159;
      }

      if (!v206)
      {
        goto LABEL_171;
      }

      if (*v203 != *v205 || v204 != v206)
      {
        v149 = sub_29D5B4C7C();
LABEL_159:
        sub_29D571248(v228, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v224, type metadata accessor for SharedConceptCodedValue);
        a1 = v244;
        if ((v149 & 1) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_160;
      }

      v149 = type metadata accessor for SharedConceptCodedValue;
      sub_29D571248(v228, type metadata accessor for SharedConceptCodedValue);
      sub_29D571248(v224, type metadata accessor for SharedConceptCodedValue);
      a1 = v244;
LABEL_160:
      ++a1;
      v170 = *(&v236 + 1);
      if (a1 == v236)
      {
        goto LABEL_161;
      }
    }

    v49 = 0;
    v179 = (*(v262 + 80) + 32) & ~*(v262 + 80);
    v254 = v178 + v179;
    v255 = v177 + v179;
    while (v49 < *(v177 + 16))
    {
      v180 = *(v262 + 72) * v49;
      v181 = *(v262 + 16);
      v12 = v259;
      v181(v42, v255 + v180, v35);
      if (v49 >= *(v178 + 16))
      {
        goto LABEL_195;
      }

      v182 = v260;
      v181(v260, v254 + v180, v35);
      sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
      v183 = sub_29D5B3E0C();
      v12 = v258;
      v184 = *v258;
      v185 = v182;
      v42 = v263;
      (*v258)(v185, v35);
      v184(v42, v35);
      if ((v183 & 1) == 0)
      {
        v155 = v252;
        goto LABEL_170;
      }

      if (a1 == ++v49)
      {
        goto LABEL_140;
      }
    }

LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    v210 = v47;

    v211 = v210;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v212 = v252;

      v33 = v212;
      v42 = v263;
      v46 = v251;
      continue;
    }

    break;
  }

  v149 = swift_slowAlloc();
  memcpy(v149, v251, v211);
  v133 = v216;
  v213 = sub_29D56EDBC(v149, v221, v252, a1);

  if (!v133)
  {

    MEMORY[0x29ED5FB80](v149, -1, -1);
    v33 = v213;
    goto LABEL_186;
  }

LABEL_205:

  result = MEMORY[0x29ED5FB80](v149, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_29D56E18C(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x29EDCA608];
  v4 = sub_29D5B1BCC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = v52 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  i = v52 - v14;
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v66[0] = a1;
  v15 = *(a1 + 16);

  v54 = v15;
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = *(v17 + 64);
  v56 = a1;
  v57 = a1 + ((v19 + 32) & ~v19);
  v63 = *(v17 + 56);
  v64 = v18;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v17;
  v20 = (v17 - 8);
  v53 = ((v17 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v16 + 1;
    v66[1] = v16 + 1;
    v64(i, v57 + v63 * v16, v4);
    v55 = sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
    v21 = sub_29D5B3D8C();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v61[v23 >> 6]) != 0)
    {
      break;
    }

    v28 = *v20;
LABEL_10:
    v28(i, v4);
    v16 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v26 = ~v22;
  while (1)
  {
    v64(v12, *(v62 + 48) + v23 * v63, v4);
    sub_29D56B02C(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
    v27 = sub_29D5B3E0C();
    v28 = *v20;
    (*v20)(v12, v4);
    if (v27)
    {
      break;
    }

    v23 = (v23 + 1) & v26;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v61[v23 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v29 = (v28)(i, v4);
  v31 = v62;
  v32 = *(v62 + 32);
  v52[0] = ((1 << v32) + 63) >> 6;
  v33 = 8 * v52[0];
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x2A1C7C4A8](v29, v30);
    v35 = v52 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v61, v34);
    v36 = *(v31 + 16);
    *&v35[8 * v24] &= ~v25;
    v53 = v35;
    v54 = (v36 - 1);
    v37 = *(v56 + 16);
    v38 = v58;
    for (i = v37; ; v37 = i)
    {
      if (v38 == v37)
      {
        a2 = sub_29D5705EC(v53, v52[0], v54, v31);
        goto LABEL_30;
      }

      if (v38 >= *(v56 + 16))
      {
        break;
      }

      v58 = v38;
      v64(v60, v57 + v38 * v63, v4);
      v40 = sub_29D5B3D8C();
      v41 = -1 << *(v31 + 32);
      v23 = v40 & ~v41;
      v25 = v23 >> 6;
      v24 = 1 << v23;
      if (((1 << v23) & v61[v23 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v12, *(v62 + 48) + v23 * v63, v4);
      v42 = sub_29D5B3E0C();
      v28(v12, v4);
      if ((v42 & 1) == 0)
      {
        v43 = ~v41;
        while (1)
        {
          v23 = (v23 + 1) & v43;
          v25 = v23 >> 6;
          v24 = 1 << v23;
          if (((1 << v23) & v61[v23 >> 6]) == 0)
          {
            break;
          }

          v64(v12, *(v62 + 48) + v23 * v63, v4);
          v44 = sub_29D5B3E0C();
          v28(v12, v4);
          if (v44)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v28(v60, v4);
        v31 = v62;
LABEL_16:
        v39 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v28(v60, v4);
      v45 = v53[v25];
      v53[v25] = v45 & ~v24;
      v31 = v62;
      if ((v45 & v24) == 0)
      {
        goto LABEL_16;
      }

      v46 = v54 - 1;
      v39 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v46)
      {

        a2 = MEMORY[0x29EDCA1A0];
        goto LABEL_30;
      }

LABEL_17:
      v38 = v39 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v33;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v31 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = sub_29D56FBCC(v51, v52[0], v62, v23, v66);

  MEMORY[0x29ED5FB80](v51, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_29D56E84C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_29D5B4D4C();

    sub_29D5B3EFC();
    v23 = sub_29D5B4D9C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_29D5B4C7C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x2A1C7C4A8](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_29D570908(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_29D5B4D4C();

            sub_29D5B3EFC();
            v42 = sub_29D5B4D9C();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_29D5B4C7C() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x29EDCA1A0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_29D56FFC0(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x29ED5FB80](v51, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_29D4B30C0(v13);
    return v5;
  }

  result = MEMORY[0x29ED5FB80](v51, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_29D56EDBC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v120 = a2;
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10);
  v131 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v124 = &v120 - v10;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v126 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v130 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v129 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SharedConceptCodedValue(0);
  v139 = *(v141 - 1);
  v18 = MEMORY[0x2A1C7C4A8](v141, v17);
  v149 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v144 = &v120 - v21;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v23 = v22;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v161 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v25, v27);
  v31 = &v120 - v30;
  v32 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v33 = v32 - 1;
  v154 = a3 + 56;
  v155 = a3;
  v162 = v34 + 16;
  v163 = v34;
  v160 = (v34 + 8);
  v122 = a1;
  v123 = (v8 + 32);
  v125 = (v8 + 8);
  v175 = &v120 - v30;
  v159 = result;
  v127 = v29;
  v128 = (v8 + 48);
LABEL_2:
  v121 = v33;
  while (1)
  {
LABEL_4:
    v35 = v29[3];
    v36 = v29[4];
    if (!v36)
    {
      v38 = (v29[2] + 64) >> 6;
      v39 = v29[3];
      while (1)
      {
        v37 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_97;
        }

        if (v37 >= v38)
        {
          if (v38 <= v35 + 1)
          {
            v118 = v35 + 1;
          }

          else
          {
            v118 = (v29[2] + 64) >> 6;
          }

          v29[3] = v118 - 1;
          v29[4] = 0;
          v119 = v155;

          return sub_29D5701F8(v122, v120, v121, v119);
        }

        v36 = *(v29[1] + 8 * v37);
        ++v39;
        if (v36)
        {
          goto LABEL_10;
        }
      }
    }

    v37 = v29[3];
LABEL_10:
    v40 = *(*v29 + 48) + 88 * (__clz(__rbit64(v36)) | (v37 << 6));
    v41 = *(v40 + 16);
    v169 = *v40;
    v170 = v41;
    v42 = *(v40 + 32);
    v43 = *(v40 + 48);
    v44 = *(v40 + 64);
    v174 = *(v40 + 80);
    v172 = v43;
    v173 = v44;
    v171 = v42;
    v29[3] = v37;
    v29[4] = (v36 - 1) & v36;
    sub_29D5B4D4C();
    v45 = v169;
    v46 = *(v169 + 16);
    MEMORY[0x29ED5F330](v46);
    v158 = v45;
    if (v46)
    {
      v47 = v163;
      v48 = v45 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      sub_29D4B4604(&v169, &v165);
      v49 = *(v47 + 72);
      sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
      do
      {
        sub_29D5B3D9C();
        v48 += v49;
        --v46;
      }

      while (v46);
    }

    else
    {
      sub_29D4B4604(&v169, &v165);
    }

    *&v150 = v170;
    *(&v150 + 1) = *(&v169 + 1);
    sub_29D5B3EFC();
    v147 = *(&v170 + 1);
    v143 = v171;
    sub_29D5B3EFC();
    v142 = *(&v171 + 1);
    sub_29D4DB620(v164, *(&v171 + 1));
    *&v136 = *(&v172 + 1);
    *(&v136 + 1) = v172;
    sub_29D5B3EFC();
    v50 = *&v173;
    v51 = *&v173 == 0.0 ? 0.0 : *&v173;
    MEMORY[0x29ED5F360](*&v51);
    v135 = *(&v173 + 1);
    v132 = v174;
    sub_29D5B3EFC();
    v52 = sub_29D5B4D9C();
    v53 = -1 << *(v155 + 32);
    v54 = v52 & ~v53;
    v55 = v54 >> 6;
    v56 = 1 << v54;
    if (((1 << v54) & *(v154 + 8 * (v54 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    result = sub_29D4B4660(&v169);
    v29 = v127;
  }

  v57 = ~v53;
  v58 = v158;
  v59 = *(v158 + 16);
  v148 = ~v53;
  v157 = v59;
  while (1)
  {
    v60 = *(v155 + 48) + 88 * v54;
    v61 = *(v60 + 16);
    v165 = *v60;
    *v166 = v61;
    v62 = *(v60 + 32);
    v63 = *(v60 + 48);
    v64 = *(v60 + 64);
    v168[2] = *(v60 + 80);
    v167 = v63;
    *v168 = v64;
    *&v166[16] = v62;
    v65 = v165;
    if (*(v165 + 16) != v59)
    {
      goto LABEL_24;
    }

    v153 = v54;
    v145 = v56;
    v146 = v55;
    if (v59)
    {
      if (v165 != v58)
      {
        break;
      }
    }

    sub_29D4B4604(&v165, v164);
LABEL_35:
    if (__PAIR128__(*(&v165 + 1), *v166) == v150 || (sub_29D5B4C7C()) && ((result = *&v166[8], *&v166[8] == __PAIR128__(v143, v147)) || (result = sub_29D5B4C7C(), (result)) && (v75 = *&v166[24], v76 = *(*&v166[24] + 16), v76 == *(v142 + 16)))
    {
      if (v76 && *&v166[24] != v142)
      {
        v77 = 0;
        v78 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        v137 = v142 + v78;
        v138 = *&v166[24] + v78;
        v133 = v76;
        v134 = *&v166[24];
        while (1)
        {
          if (v77 >= *(v75 + 16))
          {
            goto LABEL_98;
          }

          v79 = *(v139 + 72) * v77;
          v80 = v144;
          result = sub_29D4F55C4(v138 + v79, v144, type metadata accessor for SharedConceptCodedValue);
          if (v77 >= *(v142 + 16))
          {
            goto LABEL_99;
          }

          v81 = v137 + v79;
          v82 = v149;
          result = sub_29D4F55C4(v81, v149, type metadata accessor for SharedConceptCodedValue);
          v83 = *v80;
          v84 = *v82;
          v85 = *(*v80 + 16);
          if (v85 != *(*v82 + 16))
          {
            goto LABEL_81;
          }

          v140 = v77;
          if (v85 && v83 != v84)
          {
            v86 = 0;
            v87 = (*(v163 + 80) + 32) & ~*(v163 + 80);
            v156 = v84;
            v151 = v84 + v87;
            v152 = v83 + v87;
            while (v86 < *(v83 + 16))
            {
              v88 = *(v163 + 72) * v86;
              v89 = *(v163 + 16);
              result = v89(v31, v152 + v88, v23);
              if (v86 >= *(v156 + 16))
              {
                goto LABEL_96;
              }

              v90 = v161;
              v89(v161, v151 + v88, v23);
              sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
              v91 = sub_29D5B3E0C();
              v92 = *v160;
              v93 = v90;
              v31 = v175;
              (*v160)(v93, v23);
              result = (v92)(v31, v23);
              if ((v91 & 1) == 0)
              {
                v23 = v159;
                goto LABEL_81;
              }

              ++v86;
              v23 = v159;
              if (v85 == v86)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_95;
          }

LABEL_53:
          v94 = v141[5];
          v95 = v129;
          v96 = *(v130 + 48);
          sub_29D4F55C4(v144 + v94, v129, sub_29D4A05F4);
          sub_29D4F55C4(v149 + v94, v95 + v96, sub_29D4A05F4);
          v97 = *v128;
          v98 = v131;
          if ((*v128)(v95, 1, v131) == 1)
          {
            if (v97(v95 + v96, 1, v98) != 1)
            {
              goto LABEL_83;
            }

            sub_29D571248(v95, sub_29D4A05F4);
          }

          else
          {
            v99 = v126;
            sub_29D4F55C4(v95, v126, sub_29D4A05F4);
            if (v97(v95 + v96, 1, v98) == 1)
            {
              (*v125)(v99, v98);
LABEL_83:
              sub_29D571248(v95, sub_29D4DCD48);
LABEL_81:
              sub_29D571248(v149, type metadata accessor for SharedConceptCodedValue);
              sub_29D571248(v144, type metadata accessor for SharedConceptCodedValue);
              goto LABEL_21;
            }

            v100 = v124;
            (*v123)(v124, v95 + v96, v98);
            sub_29D5712A8();
            LODWORD(v156) = sub_29D5B3E0C();
            v101 = *v125;
            (*v125)(v100, v98);
            v101(v99, v98);
            sub_29D571248(v95, sub_29D4A05F4);
            if ((v156 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          v102 = v141[6];
          v103 = v144;
          v104 = (v144 + v102);
          v105 = *(v144 + v102 + 8);
          v106 = (v149 + v102);
          v107 = v106[1];
          if (v105)
          {
            v108 = v140;
            if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_29D5B4C7C() & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v108 = v140;
            if (v107)
            {
              goto LABEL_81;
            }
          }

          v109 = v141[7];
          v110 = (v103 + v109);
          v111 = *(v103 + v109 + 8);
          v112 = (v149 + v109);
          v113 = v112[1];
          v114 = v113 == 0;
          if (!v111)
          {
            goto LABEL_71;
          }

          if (!v113)
          {
            goto LABEL_81;
          }

          if (*v110 != *v112 || v111 != v113)
          {
            break;
          }

          sub_29D571248(v149, type metadata accessor for SharedConceptCodedValue);
          result = sub_29D571248(v103, type metadata accessor for SharedConceptCodedValue);
LABEL_72:
          v77 = v108 + 1;
          v75 = v134;
          v59 = v157;
          if (v77 == v133)
          {
            goto LABEL_73;
          }
        }

        v114 = sub_29D5B4C7C();
LABEL_71:
        sub_29D571248(v149, type metadata accessor for SharedConceptCodedValue);
        result = sub_29D571248(v144, type metadata accessor for SharedConceptCodedValue);
        if ((v114 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_72;
      }

LABEL_73:
      if (__PAIR128__(v167, *(&v167 + 1)) != v136 && (sub_29D5B4C7C() & 1) == 0 || v168[0] != v50)
      {
        goto LABEL_22;
      }

      if (*&v168[1] == __PAIR128__(v132, v135))
      {
        sub_29D4B4660(&v165);
LABEL_84:
        result = sub_29D4B4660(&v169);
        v116 = v145;
        v117 = v122[v146];
        v122[v146] = v117 & ~v145;
        if ((v117 & v116) == 0)
        {
          v29 = v127;
          goto LABEL_4;
        }

        v33 = v121 - 1;
        v29 = v127;
        if (__OFSUB__(v121, 1))
        {
          goto LABEL_100;
        }

        if (v121 == 1)
        {
          return MEMORY[0x29EDCA1A0];
        }

        goto LABEL_2;
      }

      v115 = sub_29D5B4C7C();
      sub_29D4B4660(&v165);
      if (v115)
      {
        goto LABEL_84;
      }

      v59 = v157;
      v58 = v158;
    }

    else
    {
LABEL_22:
      sub_29D4B4660(&v165);
      v58 = v158;
    }

    v54 = v153;
    v57 = v148;
LABEL_24:
    v54 = (v54 + 1) & v57;
    v55 = v54 >> 6;
    v56 = 1 << v54;
    if ((*(v154 + 8 * (v54 >> 6)) & (1 << v54)) == 0)
    {
      goto LABEL_3;
    }
  }

  v66 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v156 = v165 + v66;
  v67 = v58 + v66;
  result = sub_29D4B4604(&v165, v164);
  v68 = 0;
  while (v68 < *(v65 + 16))
  {
    v69 = *(v163 + 72) * v68;
    v70 = *(v163 + 16);
    result = v70(v31, v156 + v69, v23);
    if (v68 >= *(v158 + 16))
    {
      goto LABEL_94;
    }

    v71 = v161;
    v70(v161, v67 + v69, v23);
    sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
    v72 = sub_29D5B3E0C();
    v73 = *v160;
    v74 = v71;
    v31 = v175;
    (*v160)(v74, v23);
    result = (v73)(v31, v23);
    if ((v72 & 1) == 0)
    {
      v23 = v159;
LABEL_21:
      v59 = v157;
      goto LABEL_22;
    }

    ++v68;
    v59 = v157;
    v23 = v159;
    if (v157 == v68)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_29D56FBCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_29D5B1BCC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v45 = &v38 - v17;
  result = MEMORY[0x2A1C7C4A8](v16, v18);
  v51 = &v38 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v39 = a1;
  v40 = v21 - 1;
  v22 = *a5;
  v23 = a5[1];
  v24 = *(*a5 + 16);
  if (v23 == v24)
  {
LABEL_2:

    return sub_29D5705EC(v39, v38, v40, a3);
  }

  v43 = v10 + 32;
  v44 = v10;
  v46 = a3 + 56;
  v41 = a5;
  v49 = v10 + 16;
  v50 = (v10 + 8);
  while (v23 < v24)
  {
    v26 = *(v10 + 80);
    v48 = *(v10 + 72);
    v27 = v45;
    v47 = *(v10 + 16);
    v47(v45, v22 + ((v26 + 32) & ~v26) + v48 * v23, v9);
    a5[1] = v23 + 1;
    (*(v10 + 32))(v51, v27, v9);
    sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
    v28 = sub_29D5B3D8C();
    v29 = -1 << *(a3 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
    {
      v25 = *v50;
LABEL_6:
      result = (v25)(v51, v9);
      goto LABEL_7;
    }

    v42 = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = a3;
    v34 = ~v29;
    while (1)
    {
      v47(v14, *(v33 + 48) + v30 * v48, v9);
      sub_29D56B02C(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v35 = sub_29D5B3E0C();
      v25 = *v50;
      (*v50)(v14, v9);
      if (v35)
      {
        break;
      }

      v30 = (v30 + 1) & v34;
      v31 = v30 >> 6;
      v32 = 1 << v30;
      if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
      {
        a3 = v33;
        a5 = v41;
        goto LABEL_6;
      }
    }

    result = (v25)(v51, v9);
    v36 = v39[v31];
    v39[v31] = v36 & ~v32;
    if ((v36 & v32) == 0)
    {
      a3 = v33;
      a5 = v41;
LABEL_7:
      v10 = v44;
      goto LABEL_8;
    }

    v37 = v40 - 1;
    v10 = v44;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_21;
    }

    a3 = v33;
    a5 = v41;
    --v40;
    if (!v37)
    {
      return MEMORY[0x29EDCA1A0];
    }

LABEL_8:
    v22 = *a5;
    v23 = a5[1];
    v24 = *(*a5 + 16);
    if (v23 == v24)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t *sub_29D56FFC0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_29D570908(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_29D5B4D4C();

        sub_29D5B3EFC();
        v19 = sub_29D5B4D9C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_29D5B4C7C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x29EDCA1A0];
    }

    return result;
  }
}

unint64_t sub_29D5701F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v41 - v12;
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29D57136C(0);
  result = sub_29D5B490C();
  v14 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v43 = v10 + 16;
  v44 = v10;
  v42 = (v10 + 8);
  v47 = a4;
  v48 = result + 56;
  v45 = a1;
  v46 = a2;
  v49 = result;
  if (v16)
  {
    while (1)
    {
      v51 = v17;
      v52 = a3;
      v50 = (v16 - 1) & v16;
      v18 = __clz(__rbit64(v16)) | (v17 << 6);
LABEL_15:
      v22 = *(a4 + 48) + 88 * v18;
      v24 = *(v22 + 48);
      v23 = *(v22 + 64);
      v25 = *(v22 + 32);
      v60 = *(v22 + 80);
      v58 = v24;
      v59 = v23;
      v57 = v25;
      v26 = *(v22 + 16);
      v55 = *v22;
      v56 = v26;
      sub_29D5B4D4C();
      v27 = v55;
      MEMORY[0x29ED5F330](*(v55 + 16));
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v44;
        v30 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        sub_29D4B4604(&v55, v53);
        v31 = *(v29 + 72);
        v32 = *(v29 + 16);
        v33 = v42;
        do
        {
          v32(v13, v30, v9);
          sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
          sub_29D5B3D9C();
          (*v33)(v13, v9);
          v30 += v31;
          --v28;
        }

        while (v28);
      }

      else
      {
        sub_29D4B4604(&v55, v53);
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(&v54, *(&v57 + 1));
      sub_29D5B3EFC();
      v34 = *&v59;
      if (*&v59 == 0.0)
      {
        v34 = 0.0;
      }

      MEMORY[0x29ED5F360](*&v34);
      sub_29D5B3EFC();
      sub_29D5B4D9C();
      v35 = v48;
      v14 = v49;
      result = sub_29D5B47FC();
      *(v35 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v36 = *(v14 + 48) + 88 * result;
      v37 = v56;
      *v36 = v55;
      *(v36 + 16) = v37;
      v38 = v57;
      v39 = v58;
      v40 = v59;
      *(v36 + 80) = v60;
      *(v36 + 48) = v39;
      *(v36 + 64) = v40;
      *(v36 + 32) = v38;
      ++*(v14 + 16);
      a3 = v52 - 1;
      if (__OFSUB__(v52, 1))
      {
        break;
      }

      if (v52 == 1)
      {
LABEL_26:

        return v14;
      }

      a2 = v46;
      a4 = v47;
      a1 = v45;
      v16 = v50;
      v17 = v51;
      if (!v50)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v19 = v17;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= a2)
      {
        goto LABEL_26;
      }

      v21 = a1[v20];
      ++v19;
      if (v21)
      {
        v51 = v20;
        v52 = a3;
        v50 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) | (v20 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D5705EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_29D5B1BCC();
  v8 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29D5711B4(0);
  result = sub_29D5B490C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
    result = sub_29D5B3D8C();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_29D570908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x29EDCA1A0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_29D50CFDC();
  result = sub_29D5B490C();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_29D5B4D4C();

    sub_29D5B3EFC();
    result = sub_29D5B4D9C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_29D570B20(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x2A1C7C4A8](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_29D570D74((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_29D570CE4(v12, v6, a2, a1);

    MEMORY[0x29ED5FB80](v12, -1, -1);
  }

  return v10;
}

unint64_t *sub_29D570CE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_29D570D74(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_29D570D74(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      v26 = sub_29D5B4D9C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_29D5B4C7C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_29D570908(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      v39 = sub_29D5B4D9C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_29D5B4C7C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}