id sub_20B63A610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferenceDescriptionCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreferenceDescriptionCell(uint64_t a1)
{
  result = qword_27C762C48;
  if (!qword_27C762C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B63A708(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B63A7CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B63A818@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B63A870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B63A8D0(unint64_t a1)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2E)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_textLabel);

    v3 = sub_20C13C914();

    [v2 setText_];
  }
}

void sub_20B63A980()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_layout;
  sub_20C1387F4();
  *v3 = v4;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = xmmword_20C151DE0;
  v5 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_separatorView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_textLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setNumberOfLines_];
  [v8 setTextAlignment_];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  *(v0 + v7) = v8;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B63AC4C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentUnavailableView;
  v12 = [objc_opt_self() smu_contentUnavailableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v14 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v48.receiver = v4;
  v48.super_class = type metadata accessor for ContentUnavailableFixedHeightCell(0);
  v15 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentUnavailableView;
  [v16 addSubview_];

  v18 = [*&v15[v17] heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  v20 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint;
  v21 = *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint];
  *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint] = v19;

  v22 = [*&v15[v17] bottomAnchor];
  v23 = [v15 contentView];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  v26 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint;
  v27 = *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint];
  *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint] = v25;

  v47 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150050;
  v29 = [*&v15[v17] leadingAnchor];
  v30 = [v15 contentView];
  v31 = [v30 leadingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v28 + 32) = v32;
  v33 = [*&v15[v17] trailingAnchor];
  v34 = [v15 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v28 + 40) = v36;
  v37 = [*&v15[v17] topAnchor];
  v38 = [v15 contentView];

  v39 = [v38 topAnchor];
  v40 = [v37 constraintEqualToAnchor_];

  *(v28 + 48) = v40;
  v41 = *&v15[v26];
  *(v28 + 56) = v41;
  v42 = *&v15[v20];
  *(v28 + 64) = v42;
  sub_20B5E29D0();
  v43 = v41;
  v44 = v42;
  v45 = sub_20C13CC54();

  [v47 activateConstraints_];

  return v15;
}

id sub_20B63B2EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentUnavailableFixedHeightCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContentUnavailableFixedHeightCell(uint64_t a1)
{
  result = qword_27C762C88;
  if (!qword_27C762C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B63B404(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B63B4B8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B63B504@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B63B55C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B63B5C0(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  return v3;
}

void sub_20B63B61C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0xE)
  {
    sub_20C13B534();

    v25 = v1;
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1D4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v3;
      v50 = a1;
      v31 = v30;
      v51 = v30;
      *v28 = 138543618;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2082;
      v32 = sub_20B5F66D0();
      v33 = v25;
      v34 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v32);
      v36 = sub_20B51E694(v34, v35, &v51);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_20B517000, v26, v27, "Attempted to configure %{public}@ with item: %{public}s", v28, 0x16u);
      sub_20B520158(v29, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      MEMORY[0x20F2F6A40](v28, -1, -1);

      (*(v4 + 8))(v6, v49);
      return;
    }

    v23 = *(v4 + 8);
    v24 = v6;
    goto LABEL_13;
  }

  v10 = (a1 & 0xFFFFFFFFFFFFFF8);
  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x48);
  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x60);
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20))
  {
    v13 = v12;
    v14 = v11;
    sub_20C13B534();
    v15 = v1;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v3;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      *(v19 + 4) = v15;
      *v20 = v15;
      v21 = v15;
      _os_log_impl(&dword_20B517000, v16, v17, "Attempted to configure %{public}@ with unsupported style", v19, 0xCu);
      sub_20B520158(v20, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      v22 = v19;
      v3 = v18;
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    v23 = *(v4 + 8);
    v24 = v9;
LABEL_13:
    v23(v24, v3);
    return;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
  v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x50);
  v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x58);
  v48 = *(v10 + 2);
  v49 = v38;
  v40 = *(v10 + 6);
  v41 = v10[3];
  v42 = v12;

  v43 = v11;

  [v1 setUserInteractionEnabled_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint] setConstant_];
  v44 = *&v1[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentUnavailableView];
  if (v40)
  {
    v45 = sub_20C13C914();

    if (v37)
    {
      goto LABEL_10;
    }

LABEL_15:
    v46 = 0;
    if (v39)
    {
      goto LABEL_11;
    }

LABEL_16:
    v49 = 0;
    goto LABEL_17;
  }

  v45 = 0;
  if (!v37)
  {
    goto LABEL_15;
  }

LABEL_10:
  v46 = sub_20C13C914();

  if (!v39)
  {
    goto LABEL_16;
  }

LABEL_11:
  v49 = sub_20C13C914();

LABEL_17:
  [v44 smu:v48 updateWithType:v45 text:v46 secondaryText:v43 image:v49 buttonTitle:v42 buttonPrimaryAction:?];

  v47 = v49;
}

void sub_20B63BAFC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentUnavailableView;
  v4 = [objc_opt_self() smu_contentUnavailableView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v6 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B63BC40(uint64_t a1)
{
  v2 = type metadata accessor for LinkAnnotation(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
    MEMORY[0x20F2F58E0](1, v4);
    sub_20C13CA64();
  }

  else
  {
    MEMORY[0x20F2F58E0](0, v4);
    sub_20C13D604();
  }

  sub_20C13D604();
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);
  MEMORY[0x20F2F58E0](v8);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_20B63BF54(v9, v6);
      sub_20C13CA64();
      sub_20C132C14();
      sub_20B63BFB8();
      sub_20C13C7C4();
      sub_20B63C010(v6);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  sub_20C13D604();
  sub_20C13D604();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](*(v1 + 72));
  return sub_20C13D604();
}

uint64_t sub_20B63BE10()
{
  sub_20C13E164();
  sub_20B63BC40(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B63BE54(uint64_t a1)
{
  sub_20C13E164();
  sub_20B63BC40(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20B63BE90(uint64_t a1, uint64_t a2)
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
  return sub_20B63C06C(v7, v9) & 1;
}

unint64_t sub_20B63BF00()
{
  result = qword_27C762CA8;
  if (!qword_27C762CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762CA8);
  }

  return result;
}

uint64_t sub_20B63BF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAnnotation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B63BFB8()
{
  result = qword_27C762CB0;
  if (!qword_27C762CB0)
  {
    sub_20C132C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762CB0);
  }

  return result;
}

uint64_t sub_20B63C010(uint64_t a1)
{
  v2 = type metadata accessor for LinkAnnotation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B63C06C(uint64_t *a1, uint64_t *a2)
{
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }

    v4 = *a1 == *a2 && a1[1] == a2[1];
    if (!v4 && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    sub_20B63C198();
    if ((sub_20C13D5F4() & 1) == 0)
    {
      return 0;
    }
  }

  sub_20B63C198();
  if (sub_20C13D5F4() & 1) != 0 && (sub_20BB80418(a1[4], a2[4]) & 1) != 0 && (sub_20C13D5F4() & 1) != 0 && (sub_20C13D5F4() & 1) != 0 && (a1[7] == a2[7] && a1[8] == a2[8] || (sub_20C13DFF4()) && a1[9] == a2[9])
  {
    return sub_20C13D5F4() & 1;
  }

  return 0;
}

unint64_t sub_20B63C198()
{
  result = qword_27C7654B0;
  if (!qword_27C7654B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7654B0);
  }

  return result;
}

id sub_20B63C1E4@<X0>(void *a1@<X8>)
{
  v2 = *MEMORY[0x277D76918];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  v7 = objc_opt_self();
  v8 = [v7 fontWithDescriptor:v4 size:0.0];

  v9 = [v3 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = [v7 fontWithDescriptor:v9 size:0.0];

  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  result = [v13 systemGrayColor];
  *a1 = v8;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = 4;
  a1[4] = result;
  return result;
}

uint64_t sub_20B63C380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20B63C3C8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_SaySo29NSCollectionLayoutVisibleItem_pGSo7CGPointVSo0aB11Environment_pIeggyg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_20B63C488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B63C4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B63C554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20B63C5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20B63C610()
{
  v1 = *(v0 + 8);
  sub_20C13E164();
  sub_20C13E184();
  if (v1)
  {
    sub_20C13CA64();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B63C680(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_20C13E184();
  }

  sub_20C13E184();

  return sub_20C13CA64();
}

uint64_t sub_20B63C6F8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_20C13E164();
  sub_20C13E184();
  if (v2)
  {
    sub_20C13CA64();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B63C764(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_20C13DFF4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_20B63C7C4()
{
  result = qword_27C762CB8;
  if (!qword_27C762CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762CB8);
  }

  return result;
}

uint64_t sub_20B63C818()
{
  sub_20B583E6C(v0 + 16);

  v1 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_metricPageCategory;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_archivedSessionClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_assetClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_configurationClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_subscriptionCache));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_upNextQueueClient));

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_configuration);

  return v0;
}

uint64_t sub_20B63C9F8()
{
  sub_20B63C818();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidedWorkoutGalleryDataProvider(uint64_t a1)
{
  result = qword_27C762CC0;
  if (!qword_27C762CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B63CAA4(uint64_t a1)
{
  sub_20C1352F4();
  if (v1 <= 0x3F)
  {
    sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      sub_20B524ACC(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

double sub_20B63CC20()
{
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_activationState) = 1;
    sub_20B63CD30();
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t sub_20B63CD30()
{
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DA0, &unk_20C171ED0);
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v38 - v10;
  MEMORY[0x28223BE20](v11);
  v45 = &v38 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_catalogClient), *(v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_catalogClient + 24));
  v39 = v6;
  sub_20C13A064();
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_galleryShelf);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B63EEA8;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B63EEAC;
  *(v15 + 24) = v14;
  v16 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v6;
  v18 = v40;
  (*(v2 + 16))(v16, v17, v40);
  v19 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v20 = (v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v2 + 32))(v21 + v19, v16, v18);
  v22 = (v21 + v20);
  *v22 = sub_20B63EED8;
  v22[1] = v15;

  v23 = v41;
  sub_20C137C94();
  (*(v2 + 8))(v39, v18);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20B63EF08;
  *(v24 + 24) = v1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20B5F67D4;
  *(v25 + 24) = v24;
  v27 = v42;
  v26 = v43;
  v28 = v23;
  v29 = v44;
  (*(v43 + 16))(v42, v23, v44);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v30, v27, v29);
  v32 = (v31 + ((v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_20B5DF204;
  v32[1] = v25;

  v33 = v45;
  sub_20C137C94();
  v34 = *(v26 + 8);
  v34(v28, v29);
  v35 = sub_20C137CB4();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_20B52347C, v36);

  return (v34)(v33, v29);
}

double sub_20B63D218(uint64_t a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20B517000, v5, v6, "[GuidedWalkGalleryDataProvider] archived sessions updated, refreshing gallery", v7, 2u);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B63CD30();
  }

  return result;
}

double sub_20B63D3B8(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_20BB5D394((v15 > 1), v8, 1);
    v38 = v87[0];
    goto LABEL_6;
  }

  sub_20C13B534();
  v16 = a1;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = v4;
    v21 = v20;
    v90[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v78, v79);
    v24 = sub_20B51E694(v22, v23, v90);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v17, v18, "GuidedWalkGalleryDataProvider failed to fetch remote content with %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v5 + 8))(v7, v77);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for LoadingErrorShelf(0);
  swift_allocObject();

  v11 = sub_20BEFE8F4(v25, 0, 0);

  v26 = v2[5];
  v76 = v2[4];
  v77 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page;
  v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page);
  v28 = *(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v90);
  v75 = v26;

  v73 = v28;
  v72 = sub_20C1380F4();
  v13 = type metadata accessor for MetricLocationStore();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v74 = v71;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v4 = type metadata accessor for CatalogPageImpressionTracker();
  v89[3] = v4;
  v7 = sub_20B63EE48();
  v89[4] = v7;
  v89[0] = v37;
  v88[3] = v13;
  v88[4] = &off_2822B6968;
  v88[0] = v29;
  v87[0] = v30;
  sub_20BB5D394(0, 1, 0);
  v38 = v87[0];
  v5 = *(v87[0] + 16);
  v15 = *(v87[0] + 24);
  v8 = v5 + 1;
  if (v5 >= v15 >> 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v38 + 16) = v8;
  v39 = v38 + 24 * v5;
  *(v39 + 32) = v11;
  *(v39 + 40) = &off_2822F4EF0;
  *(v39 + 48) = 0;
  sub_20B51CC64(v89, v87);
  sub_20B51CC64(v88, v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
  v71[0] = v71;
  v41 = MEMORY[0x28223BE20](v40);
  v71[1] = v11;
  v43 = (v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v84 = v4;
  v85 = v7;
  v83[0] = v50;
  v81 = v13;
  v82 = &off_2822B6968;
  v80[0] = v51;
  v52 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = sub_20BE3AA74(v76, v75, v38, v72, v73, *v56, *v61, 2, v52);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v64 = v77;
  v65 = *(v2 + v77);
  *(v2 + v77) = v63;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v2[3];
    ObjectType = swift_getObjectType();
    v91 = type metadata accessor for GuidedWorkoutGalleryDataProvider(0);
    v92 = &off_282299CE0;
    v90[0] = v2;
    v68 = *(v2 + v64);

    v69 = v68;
    sub_20B76FFF8(v90, v69, ObjectType, v66);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
  }

  return result;
}

uint64_t sub_20B63DDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20B63DE80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B63DEFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

void sub_20B63DFA0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_20B583FB8(v6, 0);
}

uint64_t sub_20B63E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a2;
  v101 = a5;
  v102 = 0xEC0000006B6C6157;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v11 - 8);
  v100 = v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = v91 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = v91 - v18;
  v19 = sub_20C1333A4();
  v96 = *(v19 - 8);
  v97 = v19;
  MEMORY[0x28223BE20](v19);
  v94 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v21 - 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_bookmarks) = v22;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_playlists) = v22;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_resumableSessions) = v22;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_configuration;
  v24 = sub_20C134104();
  (*(*(v24 - 8) + 56))(v6 + v23, 1, 1, v24);
  *(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_activationState) = 0;
  *(v6 + 48) = v9;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_eventHub) = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(&v113, v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_upNextQueueClient);
  type metadata accessor for GuidedWorkoutGalleryShelf(0);
  swift_allocObject();

  v26 = sub_20BAE89EC(v25, v9, a3, a4);

  v27 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_galleryShelf;
  *(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_galleryShelf) = v26;
  v28 = sub_20C135184();
  v30 = v29;
  if (v28 == sub_20C135184() && v30 == v31)
  {
  }

  else
  {
    v32 = sub_20C13DFF4();

    v33 = 0xEB000000006E7552;
    if (v32)
    {
      v33 = 0xEC0000006B6C6157;
    }

    v102 = v33;
  }

  v34 = *(v6 + v27);

  v93 = sub_20C1380F4();
  v35 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v92 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v35 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v36 = sub_20C13C724();
  v37 = type metadata accessor for CatalogPageImpressionTracker();
  v38 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v39 = MEMORY[0x277D221C0];
  v38[2] = sub_20C13C6D4();
  v38[3] = v36;
  v38[4] = v39;
  v114 = v37;
  v40 = sub_20B63EE48();
  v115 = v40;
  *&v113 = v38;
  v41 = type metadata accessor for MetricLocationStore();
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F90];
  *(v42 + 16) = MEMORY[0x277D84F90];
  *(v42 + 24) = v43;
  v45 = __swift_mutable_project_boxed_opaque_existential_1(&v113, v37);
  v91[2] = v91;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v91 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v48;
  v112[3] = v37;
  v112[4] = v40;
  v112[0] = v50;
  v111[3] = v41;
  v111[4] = &off_2822B6968;
  v111[0] = v42;
  v110[0] = v44;
  sub_20BB5D394(0, 1, 0);
  v51 = v110[0];
  v53 = *(v110[0] + 16);
  v52 = *(v110[0] + 24);
  if (v53 >= v52 >> 1)
  {
    sub_20BB5D394((v52 > 1), v53 + 1, 1);
    v51 = v110[0];
  }

  *(v51 + 16) = v53 + 1;
  v54 = v51 + 24 * v53;
  *(v54 + 32) = v34;
  *(v54 + 40) = &off_2822CA898;
  *(v54 + 48) = 0;
  sub_20B51CC64(v112, v110);
  sub_20B51CC64(v111, v109);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v110, v110[3]);
  v91[1] = v91;
  v56 = MEMORY[0x28223BE20](v55);
  v58 = (v91 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58, v56);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v109, v109[3]);
  v61 = MEMORY[0x28223BE20](v60);
  v63 = (v91 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63, v61);
  v65 = *v58;
  v66 = *v63;
  v107 = v37;
  v108 = v40;
  v106[0] = v65;
  v104 = v41;
  v105 = &off_2822B6968;
  v103[0] = v66;
  v67 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  v69 = MEMORY[0x28223BE20](v68);
  v71 = (v91 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  v74 = MEMORY[0x28223BE20](v73);
  v76 = (v91 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76, v74);
  v78 = sub_20BE3AA74(0x206F7420656D6954, v102, v51, v93, v92, *v71, *v76, 2, v67);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  *(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page) = v78;
  v79 = OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_metricPageCategory;
  v80 = sub_20C1352F4();
  v81 = *(v80 - 8);
  v82 = *(v81 + 16);
  v83 = v101;
  v82(v6 + v79, v101, v80);
  v102 = *&v78[OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier];
  v84 = v95;
  v82(v95, v83, v80);
  (*(v81 + 56))(v84, 0, 1, v80);
  v85 = sub_20C132C14();
  (*(*(v85 - 8) + 56))(v98, 1, 1, v85);
  v86 = sub_20C135ED4();
  (*(*(v86 - 8) + 56))(v99, 1, 1, v86);
  v87 = sub_20C136914();
  (*(*(v87 - 8) + 56))(v100, 1, 1, v87);

  v88 = v94;
  sub_20C133384();
  (*(v96 + 32))(v6 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_metricPage, v88, v97);
  v89 = sub_20BE142EC();
  (*(v81 + 8))(v83, v80, v89);
  return v6;
}

unint64_t sub_20B63EE48()
{
  result = qword_27C761A90;
  if (!qword_27C761A90)
  {
    type metadata accessor for CatalogPageImpressionTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761A90);
  }

  return result;
}

uint64_t sub_20B63EF0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B63EFE8(uint64_t a1)
{
  v35 = sub_20C136594();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_20C13DAA4();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_20C136564();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_20B526D44((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_20B526EA4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B63F2F0(uint64_t a1, uint64_t a2)
{
  v24 = sub_20C136594();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v31 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v32 = sub_20B63EFE8(a1);
  v9 = *(a2 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v27 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v12 = a2 + v27;
    v13 = *(v10 + 56);
    v28 = (v10 + 16);
    v29 = v11;
    v26 = (v10 - 8);
    v14 = MEMORY[0x277D84F90];
    v30 = v10;
    v15 = v24;
    v25 = v8;
    v11(v8, v12, v24);
    while (1)
    {
      v33[0] = sub_20C136564();
      v33[1] = v16;
      MEMORY[0x28223BE20](v33[0]);
      *(&v23 - 2) = v33;
      v17 = sub_20B79692C(sub_20B606650, (&v23 - 4), v32);

      if (v17)
      {
        (*v26)(v8, v15);
      }

      else
      {
        v18 = *v28;
        (*v28)(v31, v8, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D604(0, *(v14 + 16) + 1, 1);
          v15 = v24;
          v14 = v34;
        }

        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_20BB5D604((v20 > 1), v21 + 1, 1);
          v15 = v24;
          v14 = v34;
        }

        *(v14 + 16) = v21 + 1;
        v18((v14 + v27 + v21 * v13), v31, v15);
        v8 = v25;
      }

      v12 += v13;
      if (!--v9)
      {
        break;
      }

      v29(v8, v12, v15);
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionBurnBarUnavailableEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionBurnBarUnavailableEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_20B63F670()
{
  v1 = v0;
  v2 = sub_20C134B64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D08, &unk_20C152490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  if (sub_20C1371F4() & 1) != 0 && (sub_20B63F8CC())
  {
    v9 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing;
    swift_beginAccess();
    sub_20B52F9E8(v1 + v9, v8, &qword_27C762D08, &unk_20C152490);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_20B520158(v8, &qword_27C762D08, &unk_20C152490);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_20B520158(v8, &qword_27C762D08, &unk_20C152490);
      v10 = sub_20C134B54();
      v12 = v11;
      v14 = v13;
      (*(v3 + 8))(v5, v2);
      v19 = v10;
      v20 = v12;
      v21 = v14 & 1;
      v17[1] = 0;
      v17[2] = 0;
      v18 = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v15 = sub_20C133BF4();
      sub_20B583F4C(v19, v20, v21);
      result = 1;
      if (v15)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_20B63F8CC()
{
  v1 = sub_20C134914();
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v56 - v4;
  v66 = sub_20C1368F4();
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v56 - v7;
  v8 = sub_20C136484();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_workoutDeviceConnection;
  swift_beginAccess();
  v69 = v0;
  sub_20B52F9E8(v0 + v18, v17, &unk_27C765CB0, &unk_20C1523C0);
  v19 = v9[6];
  if (v19(v17, 1, v8))
  {
    sub_20B520158(v17, &unk_27C765CB0, &unk_20C1523C0);
LABEL_6:
    v27 = 0;
    v25 = v69;
    goto LABEL_7;
  }

  v59 = v19;
  v60 = v14;
  v58 = v9[2];
  v58(v11, v17, v8);
  sub_20B520158(v17, &unk_27C765CB0, &unk_20C1523C0);
  v20 = sub_20C136464();
  v22 = v21;
  v24 = v23;
  v57 = v9[1];
  v57(v11, v8);
  v76 = v20;
  v77 = v22;
  v78 = v24 & 1;
  v74 = xmmword_20C1522F0;
  v75 = 1;
  sub_20B64BBC8();
  sub_20B64BC1C();
  LOBYTE(v20) = sub_20C133BF4();
  sub_20B583F4C(v76, v77, v78);
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

  v25 = v69;
  v26 = v60;
  sub_20B52F9E8(v69 + v18, v60, &unk_27C765CB0, &unk_20C1523C0);
  if (v59(v26, 1, v8))
  {
    sub_20B520158(v26, &unk_27C765CB0, &unk_20C1523C0);
    v27 = 0;
  }

  else
  {
    v58(v11, v26, v8);
    sub_20B520158(v26, &unk_27C765CB0, &unk_20C1523C0);
    v53 = sub_20C136474();
    v55 = v54;
    v57(v11, v8);
    v76 = v53;
    LOBYTE(v77) = v55 & 1;
    *&v74 = 1;
    BYTE8(v74) = 1;
    sub_20B64BC70();
    sub_20B64BCC4();
    v27 = sub_20C133BF4();
  }

LABEL_7:
  v28 = v68;
  v29 = *(v25 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_isFeatureEnabled);
  v30 = sub_20C13AAC4();
  v79 = v30;
  v80 = sub_20B64BA30(&qword_281103AF0, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
  v31 = __swift_allocate_boxed_opaque_existential_1(&v76);
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D4F1F0], v30);
  LOBYTE(v30) = v29(&v76);
  __swift_destroy_boxed_opaque_existential_1(&v76);
  if (v30)
  {
    v32 = v67;
    if (v27)
    {
      v33 = 1;
      return v33 & 1;
    }
  }

  else
  {
    has_internal_content = os_variant_has_internal_content();
    v32 = v67;
    if ((has_internal_content | v27))
    {
      v33 = has_internal_content ^ 1 | v27;
      return v33 & 1;
    }
  }

  v35 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v25 + v35, v32, &unk_27C767260, &unk_20C152430);
  v33 = 1;
  v36 = v66;
  if ((*(v28 + 48))(v32, 1, v66))
  {
    sub_20B520158(v32, &unk_27C767260, &unk_20C152430);
  }

  else
  {
    v37 = v62;
    (*(v28 + 16))(v62, v32, v36);
    sub_20B520158(v32, &unk_27C767260, &unk_20C152430);
    v38 = sub_20C1368D4();
    v39 = v36;
    v40 = v38;
    v42 = v41;
    v44 = v43;
    (*(v28 + 8))(v37, v39);
    *&v74 = v40;
    *(&v74 + 1) = v42;
    v75 = v44 & 1;
    v70 = xmmword_20C152300;
    v71 = 1;
    sub_20B64BB20();
    sub_20B64BB74();
    LOBYTE(v40) = sub_20C133BF4();
    sub_20B583F4C(v74, *(&v74 + 1), v75);
    if (v40)
    {
      return v33 & 1;
    }
  }

  v45 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateMetric;
  swift_beginAccess();
  v46 = v25 + v45;
  v47 = v63;
  sub_20B52F9E8(v46, v63, &unk_27C7650E0, &unk_20C157490);
  v49 = v64;
  v48 = v65;
  if ((*(v64 + 48))(v47, 1, v65))
  {
    sub_20B520158(v47, &unk_27C7650E0, &unk_20C157490);
    v33 = 0;
  }

  else
  {
    v50 = v61;
    (*(v49 + 16))(v61, v47, v48);
    sub_20B520158(v47, &unk_27C7650E0, &unk_20C157490);
    v51 = sub_20C1348D4();
    (*(v49 + 8))(v50, v48);
    BYTE4(v70) = BYTE4(v51) & 1;
    LODWORD(v70) = v51;
    v72 = 0;
    v73 = 1;
    sub_20B64BA78();
    sub_20B64BACC();
    v33 = sub_20C133BF4();
  }

  return v33 & 1;
}

double sub_20B640198(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20C13B2E4();
    v7 = sub_20C136484();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v6 + v8, &unk_27C765CB0, &unk_20C1523C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B647174();
  }

  return result;
}

double sub_20B6402FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C133D84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D08, &unk_20C152490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing;
    v14 = Strong;
    swift_beginAccess();
    sub_20B52F9E8(v14 + v13, v11, &qword_27C762D08, &unk_20C152490);

    v15 = sub_20C134B64();
    if ((*(*(v15 - 8) + 48))(v11, 1, v15) != 1)
    {
      sub_20B520158(v11, &qword_27C762D08, &unk_20C152490);
      return result;
    }
  }

  else
  {
    v17 = sub_20C134B64();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_20B520158(v11, &qword_27C762D08, &unk_20C152490);
  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_20C13ABC4();
    sub_20C133D34();
    (*(v3 + 8))(v5, v2);
    v20 = sub_20C134B64();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing;
    swift_beginAccess();
    sub_20B5DF2D4(v8, v19 + v21, &qword_27C762D08, &unk_20C152490);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B647174();
  }

  return result;
}

uint64_t sub_20B64064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

double sub_20B640770(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20C13AE54();
    v7 = sub_20C134914();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v6 + v8, &unk_27C7650E0, &unk_20C157490);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B647174();
  }

  return result;
}

double sub_20B6408D4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20C13B354();
    v7 = sub_20C1368F4();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v6 + v8, &unk_27C767260, &unk_20C152430);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B647174();
  }

  return result;
}

double sub_20B640A38()
{
  v1 = sub_20C13BB84();
  v189 = *(v1 - 8);
  v190 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764730, &qword_20C1524B0);
  v184 = *(v4 - 8);
  v185 = v4;
  MEMORY[0x28223BE20](v4);
  v178 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v179 = &v155 - v7;
  MEMORY[0x28223BE20](v8);
  v180 = &v155 - v9;
  v177 = v10;
  MEMORY[0x28223BE20](v11);
  v181 = &v155 - v12;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764740, &qword_20C1524B8);
  v175 = *(v176 - 1);
  MEMORY[0x28223BE20](v176);
  v171 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v172 = &v155 - v15;
  MEMORY[0x28223BE20](v16);
  v173 = &v155 - v17;
  v170 = v18;
  MEMORY[0x28223BE20](v19);
  v174 = &v155 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764750, &unk_20C1524C0);
  v167 = *(v168 - 1);
  v21 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v164 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v165 = &v155 - v23;
  MEMORY[0x28223BE20](v24);
  v166 = &v155 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v155 - v27;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v196 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v183 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v191 = &v155 - v31;
  MEMORY[0x28223BE20](v32);
  v186 = &v155 - v33;
  MEMORY[0x28223BE20](v34);
  v187 = &v155 - v35;
  MEMORY[0x28223BE20](v36);
  v194 = &v155 - v37;
  MEMORY[0x28223BE20](v38);
  v198 = &v155 - v39;
  v182 = v40;
  MEMORY[0x28223BE20](v41);
  v197 = &v155 - v42;
  v43 = sub_20C134734();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C137994();
  v192 = *(v47 - 8);
  v193 = v47;
  MEMORY[0x28223BE20](v47);
  v199 = (&v155 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_20C13A484();
  MEMORY[0x28223BE20](v49);
  v51 = &v155 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v0;
  sub_20B64B624(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionOrigin, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20B64B688(v51);
  if (EnumCaseMultiPayload == 1)
  {
    sub_20C13B564();
    v54 = sub_20C13BB74();
    v55 = sub_20C13D1F4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20B517000, v54, v55, "Skipping display preference queries for casting TV", v56, 2u);
      MEMORY[0x20F2F6A40](v56, -1, -1);
    }

    (*(v189 + 8))(v3, v190);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00, &unk_20C160540);
    v189 = swift_allocBox();
    v59 = v58;
    v163 = sub_20C136544();
    (*(*(v163 - 8) + 56))(v59, 1, 1, v163);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800, &unk_20C152480);
    v188 = swift_allocBox();
    v61 = v60;
    v157 = sub_20C1366D4();
    (*(*(v157 - 8) + 56))(v61, 1, 1, v157);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270, &qword_20C17C160);
    v190 = swift_allocBox();
    v63 = v62;
    v158 = sub_20C1369A4();
    (*(*(v158 - 8) + 56))(v63, 1, 1, v158);
    v156 = v28;
    v64 = v52;
    sub_20C134484();
    v65 = sub_20C1346C4();
    v67 = v66;
    (*(v44 + 8))(v46, v43);
    v68 = v199;
    *v199 = v65;
    v68[1] = v67;
    (*(v192 + 104))(v68, *MEMORY[0x277D53878], v193);
    v162 = (v52 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient);
    __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v52 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
    v69 = v165;
    sub_20C139CA4();
    v70 = v167;
    v71 = *(v167 + 16);
    v161 = v167 + 16;
    v72 = v164;
    v73 = v168;
    v71(v164, v69, v168);
    v74 = v71;
    v75 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v155 = *(v70 + 80);
    v160 = v75;
    v76 = (v21 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v159 = *(v70 + 32);
    v159(v77 + v75, v72, v73);
    v78 = (v77 + v76);
    *v78 = sub_20B64B6E4;
    v78[1] = v64;
    v195 = v64;

    v79 = v166;
    sub_20C137C94();
    v167 = *(v70 + 8);
    (v167)(v69, v73);
    v80 = swift_allocObject();
    *(v80 + 16) = sub_20B64210C;
    *(v80 + 24) = 0;
    v74(v69, v79, v73);
    v81 = swift_allocObject();
    v159(v81 + v160, v69, v73);
    v82 = (v81 + v76);
    *v82 = sub_20B64B73C;
    v82[1] = v80;
    v83 = v156;
    sub_20C137C94();
    (v167)(v79, v73);
    v84 = swift_allocObject();
    v85 = v189;
    *(v84 + 16) = sub_20B64B744;
    *(v84 + 24) = v85;
    v74(v79, v83, v73);
    v86 = swift_allocObject();
    v159(v86 + v160, v79, v73);
    v87 = (v86 + v76);
    *v87 = sub_20B64B784;
    v87[1] = v84;

    sub_20C137C94();
    (v167)(v83, v73);
    __swift_project_boxed_opaque_existential_1(v162, v162[3]);
    v88 = v172;
    sub_20C139CB4();
    v89 = v175;
    v90 = *(v175 + 16);
    v167 = v175 + 16;
    v168 = v90;
    v91 = v171;
    v92 = v176;
    (v90)(v171, v88, v176);
    v93 = *(v89 + 80);
    v166 = ((v93 + 16) & ~v93);
    v94 = &v166[v170 + 7] & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    v170 = *(v89 + 32);
    v170(v95 + ((v93 + 16) & ~v93), v91, v92);
    v96 = (v95 + v94);
    v97 = v195;
    *v96 = sub_20B64B7B4;
    v96[1] = v97;

    v98 = v173;
    sub_20C137C94();
    v175 = *(v89 + 8);
    (v175)(v88, v92);
    v99 = swift_allocObject();
    *(v99 + 16) = sub_20B642134;
    *(v99 + 24) = 0;
    (v168)(v88, v98, v92);
    v100 = swift_allocObject();
    v170(&v166[v100], v88, v92);
    v101 = (v100 + v94);
    *v101 = sub_20B64B80C;
    v101[1] = v99;
    v102 = v174;
    sub_20C137C94();
    (v175)(v98, v92);
    v103 = swift_allocObject();
    v104 = v188;
    *(v103 + 16) = sub_20B64B814;
    *(v103 + 24) = v104;
    (v168)(v98, v102, v92);
    v105 = swift_allocObject();
    v170(&v166[v105], v98, v92);
    v106 = (v105 + v94);
    *v106 = sub_20B64B854;
    v106[1] = v103;

    sub_20C137C94();
    (v175)(v102, v92);
    __swift_project_boxed_opaque_existential_1(v162, v162[3]);
    v107 = v179;
    sub_20C139CD4();
    v108 = v184;
    v109 = *(v184 + 16);
    v175 = v184 + 16;
    v176 = v109;
    v110 = v178;
    v111 = v185;
    (v109)(v178, v107, v185);
    v112 = *(v108 + 80);
    v174 = ((v112 + 16) & ~v112);
    v113 = &v174[v177 + 7] & 0xFFFFFFFFFFFFFFF8;
    v114 = swift_allocObject();
    v177 = *(v108 + 32);
    v177(v114 + ((v112 + 16) & ~v112), v110, v111);
    v115 = (v114 + v113);
    v116 = v195;
    *v115 = sub_20B64B884;
    v115[1] = v116;

    v117 = v180;
    sub_20C137C94();
    v184 = *(v108 + 8);
    (v184)(v107, v111);
    v118 = swift_allocObject();
    *(v118 + 16) = sub_20B6423D4;
    *(v118 + 24) = 0;
    (v176)(v107, v117, v111);
    v119 = swift_allocObject();
    v177(&v174[v119], v107, v111);
    v120 = (v119 + v113);
    *v120 = sub_20B64B8DC;
    v120[1] = v118;
    v121 = v181;
    sub_20C137C94();
    (v184)(v117, v111);
    v122 = swift_allocObject();
    v123 = v190;
    *(v122 + 16) = sub_20B64B8E4;
    *(v122 + 24) = v123;
    (v176)(v117, v121, v111);
    v124 = swift_allocObject();
    v177(&v174[v124], v117, v111);
    v125 = (v124 + v113);
    *v125 = sub_20B64B924;
    v125[1] = v122;

    v126 = v194;
    sub_20C137C94();
    (v184)(v121, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
    v127 = *(v196 + 72);
    v128 = *(v196 + 80);
    v129 = v196;
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_20C1517D0;
    v131 = v130 + ((v128 + 32) & ~v128);
    v132 = *(v129 + 16);
    v133 = v169;
    v132(v131, v197, v169);
    v132(v131 + v127, v198, v133);
    v132(v131 + 2 * v127, v126, v133);
    v184 = v129 + 16;
    v185 = v132;
    sub_20B5E2E18();
    v134 = sub_20C13D374();
    sub_20C13A7C4();
    v135 = v191;
    sub_20C137C74();

    v136 = swift_allocObject();
    v136[2] = v189;
    v136[3] = v123;
    v137 = v195;
    v136[4] = v188;
    v136[5] = v137;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_20B64B954;
    *(v138 + 24) = v136;
    v139 = v183;
    v140 = v135;
    v141 = v133;
    v132(v183, v140, v133);
    v142 = (v128 + 16) & ~v128;
    v181 = v128;
    v143 = (v182 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
    v144 = swift_allocObject();
    v182 = *(v196 + 32);
    v182(v144 + v142, v139, v133);
    v145 = (v144 + v143);
    *v145 = sub_20B64B960;
    v145[1] = v138;

    v146 = v186;
    sub_20C137C94();
    v147 = *(v196 + 8);
    v148 = v191;
    v147(v191, v141);
    v149 = swift_allocObject();
    *(v149 + 16) = sub_20B642C10;
    *(v149 + 24) = 0;
    v185(v148, v146, v141);
    v150 = swift_allocObject();
    v182(v150 + v142, v148, v141);
    v151 = (v150 + v143);
    *v151 = sub_20B5DF204;
    v151[1] = v149;
    v152 = v187;
    sub_20C137C94();
    v147(v146, v141);
    v153 = sub_20C137CB4();
    v154 = swift_allocObject();
    *(v154 + 16) = 0;
    *(v154 + 24) = 0;
    v153(sub_20B5DF6DC, v154);

    v147(v152, v141);
    v147(v194, v141);
    v147(v198, v141);
    v147(v197, v141);
    (*(v192 + 8))(v199, v193);
  }

  return result;
}

uint64_t sub_20B64215C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = swift_projectBox();
  v13 = a5(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  swift_beginAccess();
  return sub_20B5DF2D4(v11, v12, a3, a4);
}

uint64_t sub_20B6422A4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_20C137994();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24);
  v10 = *(a2 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D53870], v5);
  a3(v8, v9, v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20B6423FC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a4;
  v64 = a3;
  v65 = a5;
  v5 = sub_20C13BB84();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800, &unk_20C152480);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v51 - v8;
  v9 = sub_20C1366D4();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270, &qword_20C17C160);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_20C1369A4();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00, &unk_20C160540);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - v17;
  v19 = sub_20C136544();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_projectBox();
  v24 = swift_projectBox();
  v25 = swift_projectBox();
  swift_beginAccess();
  sub_20B52F9E8(v23, v18, &qword_27C762D00, &unk_20C160540);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v26 = &qword_27C762D00;
    v27 = &unk_20C160540;
    v28 = v18;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    swift_beginAccess();
    sub_20B52F9E8(v24, v13, &unk_27C767270, &qword_20C17C160);
    v30 = v59;
    v29 = v60;
    if ((*(v59 + 48))(v13, 1, v60) == 1)
    {
      (*(v20 + 8))(v22, v19);
      v26 = &unk_27C767270;
      v27 = &qword_20C17C160;
      v28 = v13;
    }

    else
    {
      v31 = v55;
      (*(v30 + 32))(v55, v13, v29);
      swift_beginAccess();
      v32 = v25;
      v33 = v54;
      sub_20B52F9E8(v32, v54, &unk_27C768800, &unk_20C152480);
      v35 = v57;
      v34 = v58;
      if ((*(v57 + 48))(v33, 1, v58) != 1)
      {
        v44 = *(v35 + 32);
        v45 = v22;
        v52 = v22;
        v44(v56, v33, v34);
        v46 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
        v47 = v53;
        swift_beginAccess();
        (*(v20 + 24))(v47 + v46, v45, v19);
        swift_endAccess();
        v48 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
        swift_beginAccess();
        v49 = v56;
        (*(v35 + 24))(v47 + v48, v56, v34);
        swift_endAccess();
        v50 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
        swift_beginAccess();
        (*(v30 + 24))(v47 + v50, v31, v29);
        swift_endAccess();
        sub_20B645C38();
        sub_20B647174();
        _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
        (*(v35 + 8))(v49, v34);
        (*(v30 + 8))(v31, v29);
        return (*(v20 + 8))(v52, v19);
      }

      (*(v30 + 8))(v31, v29);
      (*(v20 + 8))(v22, v19);
      v26 = &unk_27C768800;
      v27 = &unk_20C152480;
      v28 = v33;
    }
  }

  sub_20B520158(v28, v26, v27);
  v36 = v61;
  sub_20C13B564();
  v37 = sub_20C13BB74();
  v38 = sub_20C13D1D4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20B517000, v37, v38, "Failed to resolve display preference query promises", v39, 2u);
    MEMORY[0x20F2F6A40](v39, -1, -1);
  }

  (*(v62 + 8))(v36, v63);
  v40 = sub_20C135E44();
  sub_20B64BA30(&qword_27C762D38, MEMORY[0x277D52348], MEMORY[0x277D52350]);
  v41 = swift_allocError();
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D52338], v40);
  *(swift_allocObject() + 16) = v41;
  return sub_20C137CA4();
}

uint64_t sub_20B642C10(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Failed to query display preferences with error: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20B642DEC(uint64_t a1, char a2)
{
  v43 = a1;
  v3 = sub_20C136544();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v8;
  v9 = sub_20C134734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C137994();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_20C1366D4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v41 = v9;
    v42 = v19;
    v22 = v44;
    sub_20C134484();
    v23 = sub_20C1346C4();
    v25 = v24;
    (*(v10 + 8))(v12, v41);
    *v16 = v23;
    v16[1] = v25;
    (*(v14 + 104))(v16, *MEMORY[0x277D53878], v13);
    sub_20C1366B4();
    v26 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
    swift_beginAccess();
    v27 = v42;
    (*(v18 + 40))(v22 + v26, v21, v42);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v22 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
    (*(v18 + 16))(v21, v22 + v26, v27);
    v28 = v45;
    sub_20C139CF4();
    (*(v18 + 8))(v21, v27);
    v29 = v28;
LABEL_5:
    v37 = v47;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    (*(v46 + 8))(v29, v37);
    sub_20B645C38();
    sub_20B647174();
    return;
  }

  v40 = v13;
  v30 = v44;
  if (a2 == 2)
  {
    sub_20C134484();
    v31 = sub_20C1346C4();
    v33 = v32;
    (*(v10 + 8))(v12, v9);
    *v16 = v31;
    v16[1] = v33;
    (*(v14 + 104))(v16, *MEMORY[0x277D53878], v40);
    sub_20C136524();
    v34 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
    swift_beginAccess();
    v35 = v41;
    v36 = v42;
    (*(v42 + 40))(v30 + v34, v6, v41);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v30 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
    (*(v36 + 16))(v6, v30 + v34, v35);
    v29 = v45;
    sub_20C139CE4();
    (*(v36 + 8))(v6, v35);
    goto LABEL_5;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C195050);
  v48 = 1;
  sub_20C13DDF4();
  sub_20C13DE24();
  __break(1u);
}

void sub_20B64347C()
{
  v1 = sub_20C136544();
  v109 = *(v1 - 8);
  v110 = v1;
  MEMORY[0x28223BE20](v1);
  v105 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v101 - v4;
  MEMORY[0x28223BE20](v6);
  v103 = &v101 - v7;
  v8 = sub_20C1369A4();
  v107 = *(v8 - 8);
  v108 = v8;
  MEMORY[0x28223BE20](v8);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v101 - v11;
  v13 = sub_20C134734();
  v14 = *(v13 - 8);
  v111 = v13;
  v112 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20C137994();
  v113 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v18 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_20C1366D4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v104 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v25);
  v102 = &v101 - v26;
  v118 = v0;
  v27 = sub_20C138104();
  v28 = sub_20C138104();
  v114 = v12;
  if (v27 == v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = _UISolariumEnabled() ^ 1;
  }

  v30 = sub_20C133234();
  v31 = sub_20C133204();
  if (v30 == 2)
  {
    if (v31 != 1)
    {
      if (!v31)
      {
        if (v29)
        {
          v47 = v118;
          v48 = v113;
        }

        else
        {
          v57 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
          v47 = v118;
          swift_beginAccess();
          v59 = v109;
          v58 = v110;
          (*(v109 + 16))(v5, v47 + v57, v110);
          v60 = sub_20C136534();
          v62 = v61;
          v64 = v63;
          (*(v59 + 8))(v5, v58);
          v119 = v60;
          v120 = v62;
          v121 = v64 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D28, &qword_20C1524A0);
          sub_20C133BD4();
          sub_20B583F4C(v60, v62, v64 & 1);
          if (v122 == 2)
          {
            v48 = v113;
          }

          else
          {
            v71 = sub_20C136514();
            v73 = v72;
            v74 = sub_20C136514();
            v48 = v113;
            if (v71 == v74 && v73 == v75)
            {
            }

            else
            {
              sub_20C13DFF4();
            }
          }
        }

        v80 = v117;
        v81 = v105;
        sub_20C134484();
        v82 = sub_20C1346C4();
        v84 = v83;
        (*(v112 + 8))(v16, v111);
        *v18 = v82;
        v18[1] = v84;
        (*(v48 + 104))(v18, *MEMORY[0x277D53878], v80);
        v85 = v103;
        sub_20C136524();
        v86 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
        swift_beginAccess();
        v88 = v109;
        v87 = v110;
        (*(v109 + 40))(v47 + v86, v85, v110);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v47 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
        (*(v88 + 16))(v81, v47 + v86, v87);
        v40 = v114;
        sub_20C139CE4();
        (*(v88 + 8))(v81, v87);
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v32 = v118;
    sub_20C134484();
    v33 = sub_20C1346C4();
    v35 = v34;
    (*(v112 + 8))(v16, v111);
    *v18 = v33;
    v18[1] = v35;
    (*(v113 + 104))(v18, *MEMORY[0x277D53878], v117);
    v36 = v105;
    sub_20C136524();
    v37 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
    swift_beginAccess();
    v39 = v109;
    v38 = v110;
    (*(v109 + 40))(v32 + v37, v36, v110);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v32 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
    (*(v39 + 16))(v36, v32 + v37, v38);
    v40 = v114;
    sub_20C139CE4();
    (*(v39 + 8))(v36, v38);
LABEL_37:
    v97 = v116;
    v98 = sub_20C137CB4();
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    *(v99 + 24) = 0;
    v98(sub_20B5DF6DC, v99);

    (*(v115 + 8))(v40, v97);
    sub_20B645C38();
    sub_20B647174();
    return;
  }

  if (v30 != 1)
  {
    if (v30)
    {
      goto LABEL_38;
    }

    if (v31 != 1)
    {
      if (!v31)
      {
        if ((v29 & 1) == 0)
        {
          v65 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
          v66 = v118;
          swift_beginAccess();
          (*(v20 + 16))(v24, v66 + v65, v19);
          v67 = sub_20C1366C4();
          v69 = v68;
          LOBYTE(v65) = v70;
          (*(v20 + 8))(v24, v19);
          v119 = v67;
          v120 = v69;
          v121 = v65 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D30, &qword_20C1524A8);
          sub_20C133BD4();
          sub_20B583F4C(v67, v69, v65 & 1);
          if (v122 != 2)
          {
            v76 = sub_20C1366A4();
            v78 = v77;
            if (v76 == sub_20C1366A4() && v78 == v79)
            {
            }

            else
            {
              sub_20C13DFF4();
            }
          }
        }

        v89 = v118;
        sub_20C134484();
        v90 = sub_20C1346C4();
        v92 = v91;
        (*(v112 + 8))(v16, v111);
        *v18 = v90;
        v18[1] = v92;
        (*(v113 + 104))(v18, *MEMORY[0x277D53878], v117);
        v93 = v102;
        sub_20C1366B4();
        v94 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
        swift_beginAccess();
        (*(v20 + 40))(v89 + v94, v93, v19);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1((v89 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v89 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
        v95 = v89 + v94;
        v96 = v104;
        (*(v20 + 16))(v104, v95, v19);
        v40 = v114;
        sub_20C139CF4();
        (*(v20 + 8))(v96, v19);
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v41 = v118;
    sub_20C134484();
    v42 = sub_20C1346C4();
    v44 = v43;
    (*(v112 + 8))(v16, v111);
    *v18 = v42;
    v18[1] = v44;
    (*(v113 + 104))(v18, *MEMORY[0x277D53878], v117);
    v45 = v104;
    sub_20C1366B4();
    v46 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
    swift_beginAccess();
    (*(v20 + 40))(v41 + v46, v45, v19);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v41 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
    (*(v20 + 16))(v45, v41 + v46, v19);
    v40 = v114;
    sub_20C139CF4();
    (*(v20 + 8))(v45, v19);
    goto LABEL_37;
  }

  if (v31 == 2 || v31 == 1 || !v31)
  {
    v49 = v118;
    sub_20C134484();
    v50 = sub_20C1346C4();
    v52 = v51;
    (*(v112 + 8))(v16, v111);
    *v18 = v50;
    v18[1] = v52;
    (*(v113 + 104))(v18, *MEMORY[0x277D53878], v117);
    v53 = v106;
    sub_20C136984();
    v54 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
    swift_beginAccess();
    v56 = v107;
    v55 = v108;
    (*(v107 + 40))(v49 + v54, v53, v108);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v49 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
    (*(v56 + 16))(v53, v49 + v54, v55);
    v40 = v114;
    sub_20C139D04();
    (*(v56 + 8))(v53, v55);
    goto LABEL_37;
  }

LABEL_38:
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_20C13DC94();

  v123 = 0xD000000000000021;
  v124 = 0x800000020C195020;
  sub_20C133244();
  sub_20B64BA30(&qword_27C772940, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v100 = sub_20C13DFA4();
  MEMORY[0x20F2F4230](v100);

  sub_20C13DE24();
  __break(1u);
}

void sub_20B644630(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_20C1369A4();
  v80 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v68 - v6;
  v79 = sub_20C1366D4();
  v7 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v76 = &v68 - v13;
  v14 = sub_20C136544();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = sub_20C13A484();
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B64B624(v1 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionOrigin, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20B64B688(v23);
  if (EnumCaseMultiPayload == 1)
  {
    sub_20C135244();
    v25 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
    swift_beginAccess();
    (*(v15 + 40))(v2 + v25, v20, v14);
    swift_endAccess();
    sub_20C135254();
    v26 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
    swift_beginAccess();
    (*(v7 + 40))(v2 + v26, v11, v79);
    swift_endAccess();
    v27 = v81;
    sub_20C135264();
    v28 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
    swift_beginAccess();
    (*(v80 + 40))(v2 + v28, v27, v3);
    swift_endAccess();
    sub_20B647174();
  }

  else
  {
    v72 = v7;
    v73 = v11;
    v29 = sub_20C138104();
    v30 = v2;
    if (v29 == sub_20C138104() || (v31 = sub_20C138104(), v31 == sub_20C138104()))
    {
      v71 = v3;
      v32 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
      swift_beginAccess();
      v33 = *(v15 + 16);
      v70 = v32;
      v69 = v33;
      v33(v20, v2 + v32, v14);
      sub_20C135244();
      sub_20B64BA30(&qword_27C762D10, MEMORY[0x277D52A80], MEMORY[0x277D52A90]);
      LOBYTE(v32) = sub_20C13C894();
      v34 = *(v15 + 8);
      v34(v17, v14);
      v34(v20, v14);
      if ((v32 & 1) == 0)
      {
        sub_20C135244();
        v35 = v70;
        swift_beginAccess();
        (*(v15 + 40))(v30 + v35, v20, v14);
        swift_endAccess();
        v36 = *(v30 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24);
        v68 = *(v30 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 32);
        __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), v36);
        v69(v20, v30 + v35, v14);
        v37 = v76;
        sub_20C139CE4();
        v34(v20, v14);
        v38 = v78;
        v39 = sub_20C137CB4();
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        v39(sub_20B52347C, v40);

        (*(v77 + 8))(v37, v38);
      }

      v41 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
      swift_beginAccess();
      v42 = v72;
      v43 = *(v72 + 16);
      v70 = v41;
      v44 = v73;
      v45 = v79;
      v69 = v43;
      v43(v73, v30 + v41, v79);
      v46 = v30;
      v47 = v74;
      sub_20C135254();
      sub_20B64BA30(&qword_27C762D18, MEMORY[0x277D52C10], MEMORY[0x277D52C20]);
      LOBYTE(v41) = sub_20C13C894();
      v48 = *(v42 + 8);
      v49 = v47;
      v50 = v46;
      (v48)(v49, v45);
      (v48)(v44, v45);
      if ((v41 & 1) == 0)
      {
        v74 = v48;
        sub_20C135254();
        v51 = v70;
        swift_beginAccess();
        (*(v42 + 40))(v50 + v51, v44, v45);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v50 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
        v69(v44, v50 + v51, v45);
        v52 = v76;
        sub_20C139CF4();
        (v74)(v44, v45);
        v53 = v78;
        v54 = sub_20C137CB4();
        v55 = swift_allocObject();
        *(v55 + 16) = 0;
        *(v55 + 24) = 0;
        v54(sub_20B5DF6DC, v55);

        (*(v77 + 8))(v52, v53);
      }

      v56 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
      swift_beginAccess();
      v58 = v80;
      v57 = v81;
      v59 = v71;
      v79 = *(v80 + 16);
      (v79)(v81, v50 + v56, v71);
      v60 = v75;
      sub_20C135264();
      sub_20B64BA30(&qword_27C762D20, MEMORY[0x277D52EC0], MEMORY[0x277D52ED0]);
      v61 = sub_20C13C894();
      v62 = *(v58 + 8);
      v62(v60, v59);
      v62(v57, v59);
      if ((v61 & 1) == 0)
      {
        v63 = v81;
        sub_20C135264();
        swift_beginAccess();
        (*(v80 + 40))(v50 + v56, v63, v59);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient), *(v50 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient + 24));
        (v79)(v63, v50 + v56, v59);
        v64 = v76;
        sub_20C139D04();
        v62(v63, v59);
        v65 = v78;
        v66 = sub_20C137CB4();
        v67 = swift_allocObject();
        *(v67 + 16) = 0;
        *(v67 + 24) = 0;
        v66(sub_20B5DF6DC, v67);

        (*(v77 + 8))(v64, v65);
      }
    }
  }
}

double sub_20B645100(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270, &qword_20C17C160);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v62 - v6;
  v7 = sub_20C1369A4();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800, &unk_20C152480);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v62 - v10;
  v68 = sub_20C1366D4();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v62 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00, &unk_20C160540);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_20C136544();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v62 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v62 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D08, &unk_20C152490);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v62 - v29;
  v31 = sub_20C13BB84();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v32 + 8))(v34, v31);
  sub_20C137D74();
  v35 = sub_20C133D84();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v27, 1, v35) == 1)
  {
    sub_20B520158(v27, &unk_27C765120, &unk_20C152470);
    v37 = 1;
  }

  else
  {
    sub_20C133D34();
    (*(v36 + 8))(v27, v35);
    v37 = 0;
  }

  v38 = sub_20C134B64();
  (*(*(v38 - 8) + 56))(v30, v37, 1, v38);
  v39 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing;
  swift_beginAccess();
  sub_20B5DF2D4(v30, v2 + v39, &qword_27C762D08, &unk_20C152490);
  swift_endAccess();
  sub_20C137DF4();
  v40 = sub_20C135274();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v18, 1, v40) == 1)
  {
    sub_20B520158(v18, &unk_27C765100, &unk_20C152450);
    (*(v23 + 56))(v21, 1, 1, v22);
    v43 = v62;
    sub_20C1364F4();
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      sub_20B520158(v21, &qword_27C762D00, &unk_20C160540);
    }
  }

  else
  {
    sub_20C135244();
    (*(v41 + 8))(v18, v40);
    (*(v23 + 56))(v21, 0, 1, v22);
    v43 = v62;
    (*(v23 + 32))(v62, v21, v22);
  }

  v44 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
  swift_beginAccess();
  (*(v23 + 40))(v2 + v44, v43, v22);
  swift_endAccess();
  v45 = v63;
  sub_20C137DF4();
  v62 = v42;
  if (v42(v45, 1, v40) == 1)
  {
    sub_20B520158(v45, &unk_27C765100, &unk_20C152450);
    v46 = v66;
    v47 = v64;
    v48 = v68;
    (*(v66 + 56))(v64, 1, 1, v68);
    v49 = v65;
    sub_20C136684();
    v50 = (*(v46 + 48))(v47, 1, v48);
    v51 = v71;
    v52 = v69;
    if (v50 != 1)
    {
      sub_20B520158(v47, &unk_27C768800, &unk_20C152480);
    }
  }

  else
  {
    v53 = v64;
    sub_20C135254();
    (*(v41 + 8))(v45, v40);
    v46 = v66;
    v48 = v68;
    (*(v66 + 56))(v53, 0, 1, v68);
    v49 = v65;
    (*(v46 + 32))(v65, v53, v48);
    v51 = v71;
    v52 = v69;
  }

  v54 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
  swift_beginAccess();
  (*(v46 + 40))(v2 + v54, v49, v48);
  swift_endAccess();
  v55 = v67;
  sub_20C137DF4();
  if ((v62)(v55, 1, v40) == 1)
  {
    sub_20B520158(v55, &unk_27C765100, &unk_20C152450);
    v56 = v72;
    (*(v51 + 56))(v52, 1, 1, v72);
    v57 = v70;
    sub_20C136954();
    if ((*(v51 + 48))(v52, 1, v56) != 1)
    {
      sub_20B520158(v52, &unk_27C767270, &qword_20C17C160);
    }
  }

  else
  {
    sub_20C135264();
    (*(v41 + 8))(v55, v40);
    v56 = v72;
    (*(v51 + 56))(v52, 0, 1, v72);
    v57 = v70;
    (*(v51 + 32))(v70, v52, v56);
  }

  v58 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
  swift_beginAccess();
  (*(v51 + 40))(v2 + v58, v57, v56);
  swift_endAccess();
  v59 = v73;
  sub_20C137E44();
  v60 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v59, v2 + v60, &unk_27C765CB0, &unk_20C1523C0);
  swift_endAccess();
  sub_20B647174();
  return sub_20B640A38();
}

uint64_t sub_20B645C38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v1 - 8);
  v116 = v108 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070, &unk_20C157440);
  MEMORY[0x28223BE20](v3 - 8);
  v115 = v108 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v5 - 8);
  v114 = v108 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v7 - 8);
  v113 = v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  MEMORY[0x28223BE20](v11 - 8);
  v111 = v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v13 - 8);
  v122 = v108 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0, &unk_20C157470);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v17 - 8);
  v120 = v108 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0, &unk_20C153BF0);
  MEMORY[0x28223BE20](v19 - 8);
  v110 = v108 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  MEMORY[0x28223BE20](v21 - 8);
  v124 = v108 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0, &unk_20C153C00);
  MEMORY[0x28223BE20](v23 - 8);
  v123 = v108 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v25 - 8);
  v137 = v108 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v27 - 8);
  v136 = v108 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20, &unk_20C152420);
  MEMORY[0x28223BE20](v29 - 8);
  v135 = v108 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v31 - 8);
  v134 = v108 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v33 - 8);
  v133 = v108 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v35 - 8);
  v132 = v108 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v37 - 8);
  v131 = v108 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v39 - 8);
  v130 = v108 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v41 - 8);
  v125 = v108 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v43 - 8);
  v129 = v108 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v45 - 8);
  v128 = v108 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  MEMORY[0x28223BE20](v47 - 8);
  v127 = v108 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v49 - 8);
  v126 = v108 - v50;
  v109 = sub_20C1369A4();
  v51 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v53 = v108 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C1366D4();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = v108 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20C136544();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = v108 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20C135274();
  v118 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v119 = v108 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
  swift_beginAccess();
  (*(v59 + 16))(v61, v0 + v63, v58);
  v64 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
  swift_beginAccess();
  (*(v55 + 16))(v57, v0 + v64, v54);
  v65 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
  swift_beginAccess();
  v66 = v0 + v65;
  v67 = v0;
  (*(v51 + 16))(v53, v66, v109);
  sub_20C13CE94();
  v68 = v119;
  sub_20C135234();
  v108[0] = *(v67 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionClient + 24);
  v108[1] = *(v67 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionClient + 32);
  v109 = __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionClient), v108[0]);
  v108[2] = *(v67 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionToken);
  v69 = sub_20C133D84();
  (*(*(v69 - 8) + 56))(v126, 1, 1, v69);
  v70 = sub_20C135854();
  (*(*(v70 - 8) + 56))(v127, 1, 1, v70);
  v71 = sub_20C136194();
  (*(*(v71 - 8) + 56))(v128, 1, 1, v71);
  v72 = sub_20C133DD4();
  (*(*(v72 - 8) + 56))(v129, 1, 1, v72);
  v73 = v118;
  v74 = v125;
  v75 = v68;
  v76 = v117;
  (*(v118 + 16))(v125, v75, v117);
  (*(v73 + 56))(v74, 0, 1, v76);
  v77 = sub_20C134514();
  (*(*(v77 - 8) + 56))(v130, 1, 1, v77);
  v78 = sub_20C133B04();
  (*(*(v78 - 8) + 56))(v131, 1, 1, v78);
  v79 = sub_20C134C04();
  (*(*(v79 - 8) + 56))(v132, 1, 1, v79);
  v80 = sub_20C1368F4();
  (*(*(v80 - 8) + 56))(v133, 1, 1, v80);
  v81 = sub_20C134914();
  (*(*(v81 - 8) + 56))(v134, 1, 1, v81);
  v82 = sub_20C133374();
  (*(*(v82 - 8) + 56))(v135, 1, 1, v82);
  v83 = sub_20C135B74();
  (*(*(v83 - 8) + 56))(v136, 1, 1, v83);
  v84 = sub_20C134CD4();
  (*(*(v84 - 8) + 56))(v137, 1, 1, v84);
  v85 = sub_20C136EB4();
  (*(*(v85 - 8) + 56))(v123, 1, 1, v85);
  v86 = sub_20C133494();
  (*(*(v86 - 8) + 56))(v124, 1, 1, v86);
  v87 = sub_20C134594();
  v88 = v110;
  (*(*(v87 - 8) + 56))(v110, 1, 1, v87);
  v89 = sub_20C138184();
  (*(*(v89 - 8) + 56))(v120, 1, 1, v89);
  v90 = sub_20C1363D4();
  (*(*(v90 - 8) + 56))(v121, 1, 1, v90);
  v91 = sub_20C1337A4();
  (*(*(v91 - 8) + 56))(v122, 1, 1, v91);
  v92 = sub_20C1337D4();
  v93 = v111;
  (*(*(v92 - 8) + 56))(v111, 1, 1, v92);
  v94 = sub_20C134A94();
  v95 = v112;
  (*(*(v94 - 8) + 56))(v112, 1, 1, v94);
  v96 = sub_20C135364();
  v97 = v113;
  (*(*(v96 - 8) + 56))(v113, 1, 1, v96);
  v98 = sub_20C136484();
  v99 = v114;
  (*(*(v98 - 8) + 56))(v114, 1, 1, v98);
  v100 = sub_20C136784();
  v101 = v115;
  (*(*(v100 - 8) + 56))(v115, 1, 1, v100);
  v102 = sub_20C137FE4();
  v103 = v116;
  (*(*(v102 - 8) + 56))(v116, 1, 1, v102);
  v104 = v88;
  v105 = v124;
  v106 = v123;
  sub_20C13A174();
  sub_20B520158(v103, &unk_27C768AC0, &unk_20C1523B0);
  sub_20B520158(v101, &unk_27C765070, &unk_20C157440);
  sub_20B520158(v99, &unk_27C765CB0, &unk_20C1523C0);
  sub_20B520158(v97, &unk_27C765080, &unk_20C157450);
  sub_20B520158(v95, &unk_27C768AD0, &unk_20C1523D0);
  sub_20B520158(v93, &unk_27C765090, &unk_20C157460);
  sub_20B520158(v122, &unk_27C768AE0, &unk_20C1523E0);
  sub_20B520158(v121, &unk_27C7650A0, &unk_20C157470);
  sub_20B520158(v120, &unk_27C768AF0, &unk_20C1523F0);
  sub_20B520158(v104, &unk_27C7650B0, &unk_20C153BF0);
  sub_20B520158(v105, &unk_27C768B00, &unk_20C152400);
  sub_20B520158(v106, &unk_27C7650C0, &unk_20C153C00);
  sub_20B520158(v137, &unk_27C768B10, &unk_20C152410);
  sub_20B520158(v136, &unk_27C7650D0, &unk_20C157480);
  sub_20B520158(v135, &unk_27C768B20, &unk_20C152420);
  sub_20B520158(v134, &unk_27C7650E0, &unk_20C157490);
  sub_20B520158(v133, &unk_27C767260, &unk_20C152430);
  sub_20B520158(v132, &unk_27C7650F0, &unk_20C1574A0);
  sub_20B520158(v131, &qword_27C768B30, &unk_20C152440);
  sub_20B520158(v130, &unk_27C765050, &unk_20C153C10);
  sub_20B520158(v125, &unk_27C765100, &unk_20C152450);
  sub_20B520158(v129, &unk_27C7687F0, &unk_20C153C20);
  sub_20B520158(v128, &unk_27C765110, &unk_20C152460);
  sub_20B520158(v127, &unk_27C76BBF0, &unk_20C1574B0);
  sub_20B520158(v126, &unk_27C765120, &unk_20C152470);
  return (*(v118 + 8))(v119, v117);
}

void sub_20B647174()
{
  v1 = sub_20C1369A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20C1366D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20C136544();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_platform);
  v35 = v11;
  v36 = v1;
  if (v14 >= 2)
  {
    if (v14 != 3)
    {
      sub_20C13DE24();
      __break(1u);
      return;
    }

    v24 = v11;
    v34 = sub_20B63F670();
    v25 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
    swift_beginAccess();
    (*(v10 + 16))(v13, v0 + v25, v24);
    v26 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
    swift_beginAccess();
    (*(v6 + 16))(v8, v0 + v26, v5);
    v27 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
    swift_beginAccess();
    v28 = v36;
    (*(v2 + 16))(v4, v0 + v27, v36);
    v29.n128_f64[0] = sub_20B64A294(v34 & 1, v13, v8, v4);
    v23 = v30;
    (*(v2 + 8))(v4, v28, v29);
  }

  else
  {
    v15 = v4;
    v16 = v11;
    v34 = sub_20B63F670();
    v17 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
    swift_beginAccess();
    (*(v10 + 16))(v13, v0 + v17, v16);
    v18 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
    swift_beginAccess();
    (*(v6 + 16))(v8, v0 + v18, v5);
    v19 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
    swift_beginAccess();
    v20 = v36;
    (*(v2 + 16))(v15, v0 + v19, v36);
    v21.n128_f64[0] = sub_20B6494D4(v34 & 1, v13, v8, v15);
    v23 = v22;
    (*(v2 + 8))(v15, v20, v21);
  }

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v13, v35);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v31 + 32))(v23, ObjectType, v31);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_20B647600()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_catalogWorkout;
  v4 = sub_20C1344C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();

  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionOrigin);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionClient));
  v5 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
  v6 = sub_20C136544();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
  v8 = sub_20C1366D4();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
  v10 = sub_20C1369A4();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing, &qword_27C762D08, &unk_20C152490);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateMetric, &unk_27C7650E0, &unk_20C157490);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateDeviceConnection, &unk_27C767260, &unk_20C152430);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_workoutDeviceConnection, &unk_27C765CB0, &unk_20C1523C0);
  return v0;
}

uint64_t sub_20B64786C()
{
  sub_20B647600();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DisplayPreferencesPresenter(uint64_t a1)
{
  result = qword_27C762CD0;
  if (!qword_27C762CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B647918(uint64_t a1)
{
  sub_20C137254();
  if (v1 <= 0x3F)
  {
    sub_20C1344C4();
    if (v2 <= 0x3F)
    {
      sub_20C13A484();
      if (v3 <= 0x3F)
      {
        sub_20C136544();
        if (v4 <= 0x3F)
        {
          sub_20C1366D4();
          if (v5 <= 0x3F)
          {
            sub_20C1369A4();
            if (v6 <= 0x3F)
            {
              sub_20B647C78(319, &qword_27C762CE0, MEMORY[0x277D50D60]);
              if (v7 <= 0x3F)
              {
                sub_20B647C78(319, &qword_27C762CE8, MEMORY[0x277D50BD0]);
                if (v8 <= 0x3F)
                {
                  sub_20B647C78(319, &unk_27C767250, MEMORY[0x277D52DE8]);
                  if (v9 <= 0x3F)
                  {
                    sub_20B647C78(319, &qword_27C76B320, MEMORY[0x277D529D8]);
                    if (v10 <= 0x3F)
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

void sub_20B647C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B647CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(void, void, void), int a7)
{
  v8 = v7;
  LODWORD(v133) = a7;
  v131 = a6;
  v132 = a5;
  v141 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v12 - 8);
  v130 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v14 - 8);
  v129 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v16 - 8);
  v128 = &v108 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v18 - 8);
  v126 = &v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D08, &unk_20C152490);
  MEMORY[0x28223BE20](v20 - 8);
  v127 = &v108 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270, &qword_20C17C160);
  MEMORY[0x28223BE20](v22 - 8);
  v122 = &v108 - v23;
  v125 = sub_20C1369A4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800, &unk_20C152480);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = &v108 - v26;
  v118 = sub_20C1366D4();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v28 - 8);
  v117 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v113 = &v108 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v108 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00, &unk_20C160540);
  MEMORY[0x28223BE20](v35 - 8);
  v109 = &v108 - v36;
  v112 = sub_20C136544();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C137EA4();
  v134 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C13A484();
  MEMORY[0x28223BE20](v41);
  v43 = (&v108 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C1364F4();
  sub_20C136684();
  sub_20C136954();
  v44 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing;
  v45 = sub_20C134B64();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v121 = v45;
  v120 = v47;
  v119 = v46 + 56;
  (v47)(v8 + v44, 1, 1);
  v48 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateMetric;
  v49 = sub_20C134914();
  (*(*(v49 - 8) + 56))(v8 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateDeviceConnection;
  v51 = sub_20C1368F4();
  (*(*(v51 - 8) + 56))(v8 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_workoutDeviceConnection;
  v53 = sub_20C136484();
  (*(*(v53 - 8) + 56))(v8 + v52, 1, 1, v53);
  v54 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityTypeBehavior;
  v55 = sub_20C137254();
  v137 = *(v55 - 8);
  v138 = v55;
  v56 = *(v137 + 16);
  v140 = a1;
  v56(v8 + v54, a1);
  v57 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_catalogWorkout;
  v58 = sub_20C1344C4();
  v135 = *(v58 - 8);
  v136 = v58;
  v59 = *(v135 + 16);
  v139 = a2;
  v59(v8 + v57, a2);
  *(v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_dependencies) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_eventHub) = v142;
  v60 = (v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_isFeatureEnabled);
  v61 = v131;
  *v60 = v132;
  v60[1] = v61;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870, &unk_20C162E40);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionPreferenceClient);
  *(v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_platform) = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  sub_20B51C710(&v142, v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionClient);
  v62 = v141;
  sub_20B64B624(v141, v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionOrigin);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_subscriptionToken) = sub_20C13A914();
  sub_20B64B624(v62, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = *(v134 + 32);
    v132 = v38;
    v63(v40, v43, v38);
    *(v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionToken) = sub_20C137D14();
    sub_20C137DF4();
    v64 = sub_20C135274();
    v65 = *(v64 - 8);
    v131 = *(v65 + 48);
    if (v131(v34, 1, v64) == 1)
    {
      sub_20B520158(v34, &unk_27C765100, &unk_20C152450);
      v66 = v111;
      v67 = v109;
      v68 = v112;
      (*(v111 + 56))(v109, 1, 1, v112);
      v69 = v110;
      sub_20C1364F4();
      v70 = (*(v66 + 48))(v67, 1, v68);
      v71 = v118;
      if (v70 != 1)
      {
        sub_20B520158(v67, &qword_27C762D00, &unk_20C160540);
      }
    }

    else
    {
      v72 = v109;
      sub_20C135244();
      (*(v65 + 8))(v34, v64);
      v66 = v111;
      v68 = v112;
      (*(v111 + 56))(v72, 0, 1, v112);
      v69 = v110;
      (*(v66 + 32))(v110, v72, v68);
      v71 = v118;
    }

    v73 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_burnBarPreference;
    swift_beginAccess();
    (*(v66 + 40))(v8 + v73, v69, v68);
    swift_endAccess();
    v74 = v113;
    v133 = v40;
    sub_20C137DF4();
    v75 = v74;
    v76 = v131;
    v77 = v131(v74, 1, v64);
    v78 = v116;
    v79 = v115;
    if (v77 == 1)
    {
      sub_20B520158(v75, &unk_27C765100, &unk_20C152450);
      v80 = v114;
      (*(v78 + 56))(v114, 1, 1, v71);
      sub_20C136684();
      v81 = (*(v78 + 48))(v80, 1, v71);
      v82 = v124;
      if (v81 != 1)
      {
        sub_20B520158(v80, &unk_27C768800, &unk_20C152480);
      }
    }

    else
    {
      v83 = v114;
      sub_20C135254();
      (*(v65 + 8))(v75, v64);
      (*(v78 + 56))(v83, 0, 1, v71);
      (*(v78 + 32))(v79, v83, v71);
      v82 = v124;
    }

    v84 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_metricsPreference;
    swift_beginAccess();
    (*(v78 + 40))(v8 + v84, v79, v71);
    swift_endAccess();
    v85 = v117;
    sub_20C137DF4();
    if (v76(v85, 1, v64) == 1)
    {
      sub_20B520158(v85, &unk_27C765100, &unk_20C152450);
      v86 = v122;
      v87 = v125;
      (*(v82 + 56))(v122, 1, 1, v125);
      v88 = v123;
      sub_20C136954();
      v89 = (*(v82 + 48))(v86, 1, v87);
      v90 = v126;
      v91 = v132;
      v92 = v134;
      if (v89 != 1)
      {
        sub_20B520158(v86, &unk_27C767270, &qword_20C17C160);
      }
    }

    else
    {
      v93 = v122;
      sub_20C135264();
      (*(v65 + 8))(v85, v64);
      v87 = v125;
      (*(v82 + 56))(v93, 0, 1, v125);
      v88 = v123;
      (*(v82 + 32))(v123, v93, v87);
      v90 = v126;
      v91 = v132;
      v92 = v134;
    }

    v94 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_progressPreference;
    swift_beginAccess();
    (*(v82 + 40))(v8 + v94, v88, v87);
    swift_endAccess();
    v95 = v133;
    sub_20C137D74();
    v96 = sub_20C133D84();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v90, 1, v96) == 1)
    {
      sub_20B520158(v90, &unk_27C765120, &unk_20C152470);
      v98 = 1;
      v99 = v127;
    }

    else
    {
      v99 = v127;
      sub_20C133D34();
      (*(v97 + 8))(v90, v96);
      v98 = 0;
    }

    v120(v99, v98, 1, v121);
    v100 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_activityMoveRing;
    swift_beginAccess();
    sub_20B5DF2D4(v99, v8 + v100, &qword_27C762D08, &unk_20C152490);
    swift_endAccess();
    v101 = v128;
    sub_20C137E64();
    v102 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v101, v8 + v102, &unk_27C767260, &unk_20C152430);
    swift_endAccess();
    v103 = v129;
    sub_20C137DB4();
    v104 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_heartRateMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v103, v8 + v104, &unk_27C7650E0, &unk_20C157490);
    swift_endAccess();
    v105 = v130;
    sub_20C137E44();
    (*(v92 + 8))(v95, v91);
    v106 = OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v105, v8 + v106, &unk_27C765CB0, &unk_20C1523C0);
    swift_endAccess();
  }

  else
  {
    *(v8 + OBJC_IVAR____TtC9SeymourUI27DisplayPreferencesPresenter_sessionToken) = *v43;
  }

  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v142);
  swift_getObjectType();
  sub_20C13ABE4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v142);
  swift_getObjectType();
  sub_20C13AFD4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v142);
  swift_getObjectType();
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v142);
  swift_getObjectType();
  sub_20C13AE74();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v142);
  swift_getObjectType();
  sub_20C13B364();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  sub_20B64B688(v141);
  (*(v135 + 8))(v139, v136);
  (*(v137 + 8))(v140, v138);
  __swift_destroy_boxed_opaque_existential_1(&v142);
  return v8;
}

double sub_20B6491AC()
{
  v0 = sub_20C136994();
  v2 = v1;
  v4 = v3 & 1;
  sub_20B64B57C();
  sub_20B64B5D0();
  v5 = sub_20C133C04();
  sub_20B583F4C(v0, v2, v4);
  v36 = v5 & 1;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_20C132964();
  v34 = v10;
  v35 = v9;

  v11 = sub_20C136994();
  v13 = v12;
  v15 = v14 & 1;
  v16 = sub_20C133C04();
  sub_20B583F4C(v11, v13, v15);
  v33 = v16 & 1;
  v17 = [v7 bundleForClass_];
  v18 = sub_20C132964();
  v20 = v19;

  v21 = sub_20C136994();
  v23 = v22;
  v25 = v24 & 1;
  v26 = sub_20C133C04();
  sub_20B583F4C(v21, v23, v25);
  LOBYTE(v23) = v26 & 1;
  v27 = [v7 bundleForClass_];
  v28 = sub_20C132964();
  v30 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF0, &qword_20C1523A0);
  v31 = swift_allocObject();
  *&result = 3;
  *(v31 + 16) = xmmword_20C1517D0;
  *(v31 + 32) = v36;
  *(v31 + 40) = v35;
  *(v31 + 48) = v34;
  *(v31 + 56) = v33;
  *(v31 + 64) = v18;
  *(v31 + 72) = v20;
  *(v31 + 80) = v23;
  *(v31 + 88) = v28;
  *(v31 + 96) = v30;
  return result;
}

double sub_20B6494D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a3;
  v135 = a4;
  v130 = a1;
  v128 = sub_20C1369A4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v133 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_20C1366D4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BB84();
  *&v132 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v131 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v123 = &v122 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v122 - v17;
  sub_20C13B564();
  v19 = *(v9 + 16);
  v129 = a2;
  v19(v11, a2, v8);
  v20 = sub_20C13BB74();
  v21 = sub_20C13D1C4();
  v22 = os_log_type_enabled(v20, v21);
  v126 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v122 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    *&v140 = v25;
    *v24 = 136446210;
    v26 = sub_20C136504();
    v28 = v27;
    (*(v9 + 8))(v11, v8);
    v29 = sub_20B51E694(v26, v28, &v140);
    v12 = v126;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_20B517000, v20, v21, "Make section view model with Burn bar preference: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x20F2F6A40](v25, -1, -1);
    v30 = v24;
    v7 = v122;
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v31 = *(v132 + 8);
  (v31)(v18, v12);
  v32 = v123;
  sub_20C13B564();
  v33 = v124;
  v34 = v125;
  (*(v124 + 16))(v7, v134, v125);
  v35 = sub_20C13BB74();
  v36 = sub_20C13D1C4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v7;
    v122 = v31;
    v40 = v34;
    v41 = v38;
    *&v140 = v38;
    *v37 = 136446210;
    v42 = sub_20C136694();
    v43 = v33;
    v44 = v12;
    v46 = v45;
    v47 = v40;
    v31 = v122;
    (*(v43 + 8))(v39, v47);
    v48 = sub_20B51E694(v42, v46, &v140);
    v12 = v44;

    *(v37 + 4) = v48;
    _os_log_impl(&dword_20B517000, v35, v36, "Make section view model Metrics preference: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x20F2F6A40](v41, -1, -1);
    MEMORY[0x20F2F6A40](v37, -1, -1);

    v49 = v32;
    v50 = v44;
  }

  else
  {

    (*(v33 + 8))(v7, v34);
    v49 = v32;
    v50 = v12;
  }

  (v31)(v49, v50);
  v51 = v131;
  sub_20C13B564();
  v52 = v127;
  v53 = v128;
  (*(v127 + 16))(v133, v135, v128);
  v54 = sub_20C13BB74();
  v55 = sub_20C13D1C4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = v133;
    v58 = v56;
    v59 = swift_slowAlloc();
    *&v140 = v59;
    *v58 = 136446210;
    v60 = sub_20C136964();
    v62 = v61;
    (*(v52 + 8))(v57, v53);
    v63 = sub_20B51E694(v60, v62, &v140);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_20B517000, v54, v55, "Make section view model  Progress preference: %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x20F2F6A40](v59, -1, -1);
    MEMORY[0x20F2F6A40](v58, -1, -1);

    v64 = v131;
    v65 = v126;
  }

  else
  {

    (*(v52 + 8))(v133, v53);
    v64 = v51;
    v65 = v12;
  }

  (v31)(v64, v65);
  v66 = _UISolariumEnabled();
  v68 = sub_20C136534();
  v70 = v69;
  *&v140 = v68;
  *(&v140 + 1) = v69;
  if (v66)
  {
    v71 = v67 & 1;
    LOBYTE(v141) = v67 & 1;
    LOBYTE(v137) = 1;
    sub_20B64B3D8();
    sub_20B64B42C();
    v72 = sub_20C133C04();
    sub_20B583F4C(v68, v70, v71);
    v73 = v72 & 1;
  }

  else
  {
    v74 = v67 & 1;
    LOBYTE(v141) = v67 & 1;
    LOBYTE(v137) = 1;
    sub_20B64B3D8();
    sub_20B64B42C();
    v75 = sub_20C133C04();
    sub_20B583F4C(v68, v70, v74);
    v73 = v75 & 1 | 0x80;
  }

  _UISolariumEnabled();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v77 = [objc_opt_self() bundleForClass_];
  v78 = sub_20C132964();
  v80 = v79;

  type metadata accessor for SeymourLocalizationBundle();
  v81 = objc_opt_self();
  v82 = [v81 bundleForClass_];
  v83 = sub_20C132964();
  v85 = v84;

  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF0, &qword_20C1523A0);
  v86 = swift_allocObject();
  v132 = xmmword_20C14F980;
  *(v86 + 16) = xmmword_20C14F980;
  *(v86 + 32) = v73;
  *(v86 + 40) = v78;
  *(v86 + 48) = v80;
  v87 = _UISolariumEnabled();
  v88 = 0;
  v89 = 0;
  v90 = ObjCClassFromMetadata;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v91 = v81;
    v92 = [v81 bundleForClass_];
    v88 = sub_20C132964();
    v89 = v93;

    v81 = v91;
  }

  if (_UISolariumEnabled())
  {

    v83 = 0;
    v85 = 0;
  }

  *&v140 = v86;
  BYTE8(v140) = 1;
  BYTE9(v140) = v87;
  *&v141 = v88;
  *(&v141 + 1) = v89;
  *&v142 = v83;
  *(&v142 + 1) = v85;
  LOBYTE(v143[0]) = 2;
  memset(v143 + 8, 0, 32);
  v94 = _UISolariumEnabled();
  v96 = sub_20C1366C4();
  v98 = v97;
  v137 = v96;
  v138 = v97;
  if (v94)
  {
    v99 = v95 & 1;
    v139 = v95 & 1;
    v136 = 1;
    sub_20B64B480();
    sub_20B64B4D4();
    v100 = sub_20C133C04();
    sub_20B583F4C(v96, v98, v99);
    v101 = v100 & 1;
  }

  else
  {
    v102 = v95 & 1;
    v139 = v95 & 1;
    v136 = 1;
    sub_20B64B480();
    sub_20B64B4D4();
    v103 = sub_20C133C04();
    sub_20B583F4C(v96, v98, v102);
    v101 = v103 & 1 | 0x80;
  }

  v104 = [v81 bundleForClass_];
  v105 = sub_20C132964();
  v107 = v106;

  v108 = swift_allocObject();
  *(v108 + 16) = v132;
  *(v108 + 32) = v101;
  *(v108 + 40) = v105;
  *(v108 + 48) = v107;
  v109 = _UISolariumEnabled();
  v110 = sub_20B6491AC();
  v112 = v111;
  v113 = [v81 &selRef:v90 :v110speedBumpEdges + 3];
  v114 = sub_20C132964();
  v116 = v115;

  if (v130)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF8, &qword_20C1523A8);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_20C1517D0;
    *(v117 + 32) = v108;
    *(v117 + 40) = 1;
    *(v117 + 41) = v109;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0;
    *(v117 + 88) = 0;
    *(v117 + 96) = 0;
    *(v117 + 104) = 0xD00000000000001ALL;
    *(v117 + 112) = 0x800000020C194E80;
    *(v117 + 120) = v112;
    *(v117 + 128) = 257;
    *(v117 + 136) = v114;
    *(v117 + 144) = v116;
    *(v117 + 152) = 0;
    *(v117 + 160) = 0;
    *(v117 + 168) = 1;
    *(v117 + 176) = 0u;
    *(v117 + 192) = 0u;
    v118 = v143[0];
    *(v117 + 240) = v142;
    *(v117 + 256) = v118;
    *(v117 + 272) = v143[1];
    *(v117 + 288) = *&v143[2];
    result = *&v140;
    v120 = v141;
    *(v117 + 208) = v140;
    *(v117 + 224) = v120;
  }

  else
  {
    sub_20B64B528(&v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF8, &qword_20C1523A8);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_20C14F320;
    *(v121 + 32) = v108;
    *(v121 + 40) = 1;
    *(v121 + 41) = v109;
    result = 0.0;
    *(v121 + 48) = 0u;
    *(v121 + 64) = 0u;
    *(v121 + 80) = 0;
    *(v121 + 88) = 0;
    *(v121 + 96) = 0;
    *(v121 + 104) = 0xD00000000000001ALL;
    *(v121 + 112) = 0x800000020C194E80;
    *(v121 + 120) = v112;
    *(v121 + 128) = 257;
    *(v121 + 136) = v114;
    *(v121 + 144) = v116;
    *(v121 + 152) = 0;
    *(v121 + 160) = 0;
    *(v121 + 168) = 1;
    *(v121 + 176) = 0u;
    *(v121 + 192) = 0u;
  }

  return result;
}

double sub_20B64A294(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v161 = a4;
  v162 = a3;
  v155 = a1;
  *&v160 = sub_20C1369A4();
  v153 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1366D4();
  v152 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C136544();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_20C13BB84();
  v13 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v156 = &v146 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v146 - v18;
  sub_20C13B564();
  v20 = *(v10 + 16);
  v154 = a2;
  v20(v12, a2, v9);
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();
  v23 = os_log_type_enabled(v21, v22);
  v151 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v149 = v8;
    v26 = v25;
    *&v163 = v25;
    *v24 = 136446210;
    v27 = sub_20C136504();
    v150 = v6;
    v29 = v28;
    (*(v10 + 8))(v12, v9);
    v30 = sub_20B51E694(v27, v29, &v163);
    v6 = v150;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_20B517000, v21, v22, "Make TV section view model with Burn bar preference: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    v8 = v149;
    MEMORY[0x20F2F6A40](v31, -1, -1);
    MEMORY[0x20F2F6A40](v24, -1, -1);

    v32 = v151;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v32 = v13;
  }

  v33 = *(v32 + 8);
  v34 = v19;
  v35 = v158;
  v33(v34, v158);
  v36 = v156;
  sub_20C13B564();
  v37 = v152;
  (*(v152 + 16))(v8, v162, v6);
  v38 = sub_20C13BB74();
  v39 = sub_20C13D1F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v8;
    v42 = swift_slowAlloc();
    *&v163 = v42;
    *v40 = 136446210;
    v43 = v33;
    v44 = sub_20C136694();
    v46 = v45;
    (*(v37 + 8))(v41, v6);
    v47 = v44;
    v33 = v43;
    v48 = sub_20B51E694(v47, v46, &v163);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_20B517000, v38, v39, "Make TV section view model Metrics preference: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x20F2F6A40](v42, -1, -1);
    v49 = v40;
    v35 = v158;
    MEMORY[0x20F2F6A40](v49, -1, -1);

    v43(v156, v35);
  }

  else
  {

    (*(v37 + 8))(v8, v6);
    v33(v36, v35);
  }

  v50 = v153;
  v51 = v157;
  sub_20C13B564();
  (*(v50 + 2))(v159, v161, v160);
  v52 = sub_20C13BB74();
  v53 = sub_20C13D1F4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = v159;
    v56 = v54;
    v57 = swift_slowAlloc();
    *&v163 = v57;
    *v56 = 136446210;
    v58 = sub_20C136964();
    v60 = v59;
    (*(v50 + 1))(v55, v160);
    v61 = sub_20B51E694(v58, v60, &v163);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_20B517000, v52, v53, "Make TV section view model  Progress preference: %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x20F2F6A40](v57, -1, -1);
    MEMORY[0x20F2F6A40](v56, -1, -1);

    v62 = v157;
    v63 = v158;
  }

  else
  {

    (*(v50 + 1))(v159, v160);
    v62 = v51;
    v63 = v35;
  }

  v33(v62, v63);
  v64 = sub_20C1366C4();
  v66 = v65;
  *&v163 = v64;
  *(&v163 + 1) = v65;
  v68 = v67 & 1;
  LOBYTE(v164) = v67 & 1;
  v172[0] = 0;
  sub_20B64B480();
  v156 = sub_20B64B4D4();
  v69 = sub_20C133C04();
  sub_20B583F4C(v64, v66, v68);
  LODWORD(v159) = v69 & 1;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = objc_opt_self();
  v72 = [v71 bundleForClass_];
  v153 = "PROGRESS_SHOW_REMAINING";
  v73 = sub_20C132964();
  v158 = v74;

  v75 = sub_20C1366C4();
  v77 = v76;
  *&v163 = v75;
  *(&v163 + 1) = v76;
  v79 = v78 & 1;
  LOBYTE(v164) = v78 & 1;
  v172[0] = 1;
  v80 = sub_20C133C04();
  sub_20B583F4C(v75, v77, v79);
  v81 = v80 & 1;
  v82 = [v71 bundleForClass_];
  v83 = sub_20C132964();
  v85 = v84;

  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF0, &qword_20C1523A0);
  v86 = swift_allocObject();
  v160 = xmmword_20C14F320;
  *(v86 + 16) = xmmword_20C14F320;
  *(v86 + 32) = v159;
  v87 = v158;
  *(v86 + 40) = v73;
  *(v86 + 48) = v87;
  *(v86 + 56) = v81;
  *(v86 + 64) = v83;
  *(v86 + 72) = v85;
  v151 = v86;
  v88 = v71;
  v89 = [v71 bundleForClass_];
  v158 = sub_20C132964();
  v159 = v90;

  v91 = sub_20C1366C4();
  v93 = v92;
  *&v163 = v91;
  *(&v163 + 1) = v92;
  LOBYTE(v71) = v94 & 1;
  LOBYTE(v164) = v94 & 1;
  sub_20C133BA4();
  sub_20B583F4C(v91, v93, v71);
  v95 = sub_20C1366A4();
  v97 = v96;
  if (v95 == sub_20C1366A4() && v97 == v98)
  {

    v99 = 0;
  }

  else
  {
    v100 = sub_20C13DFF4();

    v99 = v100 ^ 1;
  }

  v101 = sub_20B6491AC();
  v162 = v102;
  v103 = [v88 &selRef:ObjCClassFromMetadata :v101speedBumpEdges + 3];
  v156 = sub_20C132964();
  v161 = v104;

  LODWORD(v152) = v99 & 1;
  v105 = sub_20C136534();
  v107 = v106;
  *&v163 = v105;
  *(&v163 + 1) = v106;
  v109 = v108 & 1;
  LOBYTE(v164) = v108 & 1;
  v172[0] = 0;
  sub_20B64B3D8();
  sub_20B64B42C();
  v110 = sub_20C133C04();
  sub_20B583F4C(v105, v107, v109);
  LODWORD(v150) = v110 & 1;
  v111 = [v88 &selRef:ObjCClassFromMetadata :?speedBumpEdges + 3];
  v153 = sub_20C132964();
  v149 = v112;

  v113 = sub_20C136534();
  v115 = v114;
  *&v163 = v113;
  *(&v163 + 1) = v114;
  v117 = v116 & 1;
  LOBYTE(v164) = v116 & 1;
  v172[0] = 1;
  v118 = sub_20C133C04();
  sub_20B583F4C(v113, v115, v117);
  v148 = v118 & 1;
  v119 = [v88 &selRef:ObjCClassFromMetadata :?speedBumpEdges + 3];
  v147 = sub_20C132964();
  v146 = v120;

  v121 = sub_20C136534();
  v123 = v122;
  *&v163 = v121;
  *(&v163 + 1) = v122;
  LOBYTE(v113) = v124 & 1;
  LOBYTE(v164) = v124 & 1;
  v172[0] = 1;
  sub_20C133C04();
  sub_20B583F4C(v121, v123, v113);
  v125 = [v88 &selRef:ObjCClassFromMetadata :?speedBumpEdges + 3];
  v126 = sub_20C132964();
  v128 = v127;

  v129 = swift_allocObject();
  *(v129 + 16) = v160;
  *(v129 + 32) = v150;
  v130 = v149;
  *(v129 + 40) = v153;
  *(v129 + 48) = v130;
  *(v129 + 56) = v148;
  v131 = v146;
  *(v129 + 64) = v147;
  *(v129 + 72) = v131;
  v132 = [v88 &selRef:ObjCClassFromMetadata :?speedBumpEdges + 3];
  v133 = sub_20C132964();
  v135 = v134;

  *&v163 = v129;
  BYTE8(v163) = v155 & 1;
  BYTE9(v163) = 1;
  *&v164 = v133;
  *(&v164 + 1) = v135;
  v165 = 0uLL;
  LOBYTE(v166) = 2;
  *(&v166 + 1) = v126;
  v167 = v128;
  v168 = 0;
  if (v155)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF8, &qword_20C1523A8);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_20C1517D0;
    *(v136 + 32) = v151;
    *(v136 + 40) = 257;
    *(v136 + 42) = v173;
    *(v136 + 46) = v174;
    v137 = v159;
    *(v136 + 48) = v158;
    *(v136 + 56) = v137;
    *(v136 + 64) = 0;
    *(v136 + 72) = 0;
    *(v136 + 80) = 0;
    *(v136 + 81) = *v172;
    *(v136 + 84) = *&v172[3];
    *(v136 + 88) = 0u;
    *(v136 + 104) = 0u;
    *(v136 + 120) = v162;
    *(v136 + 128) = v152;
    *(v136 + 129) = 1;
    *(v136 + 130) = v170;
    *(v136 + 134) = v171;
    v138 = v161;
    *(v136 + 136) = v156;
    *(v136 + 144) = v138;
    *(v136 + 152) = 0;
    *(v136 + 160) = 0;
    *(v136 + 168) = 1;
    *(v136 + 169) = *v169;
    *(v136 + 172) = *&v169[3];
    *(v136 + 176) = 0u;
    *(v136 + 192) = 0u;
    *(v136 + 288) = v168;
    v139 = v167;
    v140 = v165;
    *(v136 + 256) = v166;
    *(v136 + 272) = v139;
    result = *&v164;
    v142 = v163;
    *(v136 + 224) = v164;
    *(v136 + 240) = v140;
    *(v136 + 208) = v142;
  }

  else
  {
    sub_20B64B528(&v163);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762CF8, &qword_20C1523A8);
    v143 = swift_allocObject();
    *(v143 + 16) = v160;
    *(v143 + 32) = v151;
    *(v143 + 40) = 257;
    *(v143 + 42) = v173;
    *(v143 + 46) = v174;
    v144 = v159;
    *(v143 + 48) = v158;
    *(v143 + 56) = v144;
    *(v143 + 64) = 0;
    *(v143 + 72) = 0;
    *(v143 + 80) = 0;
    *(v143 + 81) = *v172;
    *(v143 + 84) = *&v172[3];
    result = 0.0;
    *(v143 + 88) = 0u;
    *(v143 + 104) = 0u;
    *(v143 + 120) = v162;
    *(v143 + 128) = v152;
    *(v143 + 129) = 1;
    *(v143 + 130) = v170;
    *(v143 + 134) = v171;
    v145 = v161;
    *(v143 + 136) = v156;
    *(v143 + 144) = v145;
    *(v143 + 152) = 0;
    *(v143 + 160) = 0;
    *(v143 + 168) = 1;
    *(v143 + 169) = *v169;
    *(v143 + 172) = *&v169[3];
    *(v143 + 176) = 0u;
    *(v143 + 192) = 0u;
  }

  return result;
}

unint64_t sub_20B64B3D8()
{
  result = qword_27C7688E0;
  if (!qword_27C7688E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7688E0);
  }

  return result;
}

unint64_t sub_20B64B42C()
{
  result = qword_27C7672B0;
  if (!qword_27C7672B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672B0);
  }

  return result;
}

unint64_t sub_20B64B480()
{
  result = qword_27C7688C0;
  if (!qword_27C7688C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7688C0);
  }

  return result;
}

unint64_t sub_20B64B4D4()
{
  result = qword_27C767290;
  if (!qword_27C767290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767290);
  }

  return result;
}

unint64_t sub_20B64B57C()
{
  result = qword_27C7688D0;
  if (!qword_27C7688D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7688D0);
  }

  return result;
}

unint64_t sub_20B64B5D0()
{
  result = qword_27C7672A0;
  if (!qword_27C7672A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672A0);
  }

  return result;
}

uint64_t sub_20B64B624(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13A484();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B64B688(uint64_t a1)
{
  v2 = sub_20C13A484();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B64B968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B64BA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20B64BA78()
{
  result = qword_27C7688F0;
  if (!qword_27C7688F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7688F0);
  }

  return result;
}

unint64_t sub_20B64BACC()
{
  result = qword_27C7672C0;
  if (!qword_27C7672C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672C0);
  }

  return result;
}

unint64_t sub_20B64BB20()
{
  result = qword_27C762D40;
  if (!qword_27C762D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D40);
  }

  return result;
}

unint64_t sub_20B64BB74()
{
  result = qword_27C762D48;
  if (!qword_27C762D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D48);
  }

  return result;
}

unint64_t sub_20B64BBC8()
{
  result = qword_27C76B3E0;
  if (!qword_27C76B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B3E0);
  }

  return result;
}

unint64_t sub_20B64BC1C()
{
  result = qword_27C762D50;
  if (!qword_27C762D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D50);
  }

  return result;
}

unint64_t sub_20B64BC70()
{
  result = qword_27C76B3F0;
  if (!qword_27C76B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B3F0);
  }

  return result;
}

unint64_t sub_20B64BCC4()
{
  result = qword_27C765CC0;
  if (!qword_27C765CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765CC0);
  }

  return result;
}

unint64_t sub_20B64BD18()
{
  result = qword_27C768900;
  if (!qword_27C768900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768900);
  }

  return result;
}

unint64_t sub_20B64BD6C()
{
  result = qword_27C7672E0;
  if (!qword_27C7672E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672E0);
  }

  return result;
}

void sub_20B64BEAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_20B64BF04(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_20B64C0DC(a1);

  *a2 = v3;
}

unint64_t sub_20B64BF48()
{
  result = qword_27C762D58;
  if (!qword_27C762D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D58);
  }

  return result;
}

unint64_t sub_20B64BFA0()
{
  result = qword_27C762D60;
  if (!qword_27C762D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D60);
  }

  return result;
}

unint64_t sub_20B64BFF8()
{
  result = qword_27C762D68;
  if (!qword_27C762D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D68);
  }

  return result;
}

unint64_t sub_20B64C050()
{
  result = qword_27C762D70;
  if (!qword_27C762D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D70);
  }

  return result;
}

uint64_t sub_20B64C0A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_20B64C0DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_20B64C11C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9SeymourUI18SessionCadenceView_presenter] = a1;
  v14.receiver = v2;
  v14.super_class = ObjectType;

  v5 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_allocWithZone(MEMORY[0x277D75348]);
  v7 = v5;
  v8 = [v6 initWithWhite:0.921568627 alpha:{1.0, v14.receiver, v14.super_class}];
  [*&v7[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];
  v9 = v7;

  v10 = [objc_opt_self() paceColors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 nonGradientTextColor];

    if (v12)
    {
      [*&v9[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

      *(a1 + 24) = &off_2822D0928;
      swift_unknownObjectWeakAssign();
      v13 = v9;
      sub_20B720B78();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20B64C3B4(char a1, void *a2)
{
  v27.receiver = v2;
  v27.super_class = type metadata accessor for VignetteView();
  v4 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = [v4 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F320;
    v9 = [objc_opt_self() clearColor];
    v10 = [v9 CGColor];

    type metadata accessor for CGColor(0);
    v12 = v11;
    *(v8 + 56) = v11;
    *(v8 + 32) = v10;
    v13 = [a2 CGColor];
    *(v8 + 88) = v12;
    *(v8 + 64) = v13;
    v14 = sub_20C13CC54();

    [v7 setColors_];

    v5 = v14;
  }

  v15 = [v4 layer];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20C151490;
    sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
    *(v18 + 32) = sub_20C13D5C4();
    *(v18 + 40) = sub_20C13D5C4();
    v19 = sub_20C13CC54();

    [v17 setLocations_];

    v15 = v19;
  }

  v20 = [v4 layer];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    [v21 setStartPoint_];
  }

  v22 = [v4 layer];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    [v23 setEndPoint_];
    v24 = v22;
    v22 = v4;
  }

  else
  {
    v24 = a2;
    a2 = v4;
  }

  return v4;
}

id sub_20B64C7D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VignetteView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B64C82C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20B64C888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_20B64C900()
{
  result = qword_27C762D88;
  if (!qword_27C762D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762D88);
  }

  return result;
}

char *sub_20B64C954(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_20B60EC64();
  v12 = v11;
  v14 = v13;
  v15 = objc_allocWithZone(type metadata accessor for SpriteSheetView());
  v16 = sub_20B91A638(v10, v12, v14, 30.0);

  v17 = objc_allocWithZone(MEMORY[0x277D75348]);
  v18 = v16;
  v19 = [v17 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTintColor_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI20GymKitConnectingView_spriteView] = v18;
  v39.receiver = v5;
  v39.super_class = type metadata accessor for GymKitConnectingView();
  v20 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC9SeymourUI20GymKitConnectingView_spriteView;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI20GymKitConnectingView_spriteView];
  v23 = v20;
  [v23 addSubview_];
  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C14FE90;
  v26 = [*&v20[v21] widthAnchor];
  [*&v20[v21] intrinsicContentSize];
  v27 = [v26 constraintEqualToConstant_];

  *(v25 + 32) = v27;
  v28 = [*&v20[v21] heightAnchor];
  [*&v20[v21] intrinsicContentSize];
  v30 = [v28 constraintEqualToConstant_];

  *(v25 + 40) = v30;
  v31 = [*&v20[v21] centerXAnchor];
  v32 = [v23 centerXAnchor];

  v33 = [v31 constraintEqualToAnchor_];
  *(v25 + 48) = v33;
  v34 = [*&v20[v21] centerYAnchor];
  v35 = [v23 centerYAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v25 + 56) = v36;
  sub_20B5E29D0();
  v37 = sub_20C13CC54();

  [v24 activateConstraints_];

  return v23;
}

id sub_20B64CDA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GymKitConnectingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20B64CE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSetting(0);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C135534();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  LODWORD(a1) = (*(v8 + 88))(v11, v7);
  v12 = *MEMORY[0x277D51A28];
  result = (*(v8 + 8))(v11, v7);
  if (a1 == v12)
  {
    v14 = sub_20C13AAC4();
    v30[3] = v14;
    v30[4] = sub_20B64E844(&qword_281103AF0, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v14);
    LOBYTE(v14) = sub_20C1383C4();
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (v14)
    {
      type metadata accessor for AccountSettingLink(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v18 = sub_20C132964();
      v20 = v19;

      v6[*(v4 + 20)] = 1;
      v21 = &v6[*(v4 + 24)];
      *v21 = v18;
      v21[1] = v20;
      v22 = OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_settings;
      swift_beginAccess();
      v23 = *(a2 + v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + v22) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_20BC068C0(0, v23[2] + 1, 1, v23);
        *(a2 + v22) = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v29 = v26 + 1;
        v28 = sub_20BC068C0((v25 > 1), v26 + 1, 1, v23);
        v27 = v29;
        v23 = v28;
      }

      v23[2] = v27;
      sub_20B64E7E0(v6, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26);
      *(a2 + v22) = v23;
      swift_endAccess();
    }

    return sub_20B64D1EC();
  }

  return result;
}

char *sub_20B64D1EC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AccountSetting(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_settings;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v13 = *(v4 + 20);
    v12 = *(v4 + 24);
    v52 = v1;
    v53 = v13;
    v14 = &v7[v12];
    v15 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    v51 = v9;

    v17 = MEMORY[0x277D84F90];
    do
    {
      sub_20B64DC5C(v15, v7);
      v18 = swift_allocObject();
      v19 = *(v14 + 1);
      *(v18 + 16) = *v14;
      *(v18 + 24) = v19;
      v20 = v7[v53];

      sub_20B64DEC0(v7);
      *(v18 + 32) = v20 > 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_20BC05D3C(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_20BC05D3C((v21 > 1), v22 + 1, 1, v17);
      }

      *(v17 + 2) = v22 + 1;
      *&v17[8 * v22 + 32] = v18 | 1;
      v15 += v16;
      --v10;
    }

    while (v10);

    v1 = v52;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v54 = 0uLL;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = 0;
  *&v56 = 0;
  WORD4(v56) = 128;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = v17;
  *&v61[0] = v11;
  *(v61 + 8) = 0u;
  *(&v61[1] + 8) = 0u;
  *(&v61[2] + 1) = 0;
  v62 = 2;
  nullsub_1();
  v23 = v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 144);
  v63[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 128);
  v63[9] = v24;
  v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 160);
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 80);
  v63[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 64);
  v63[5] = v25;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 112);
  v63[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 96);
  v63[7] = v26;
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 16);
  v63[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row);
  v63[1] = v27;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 48);
  v63[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 32);
  v63[3] = v28;
  v29 = v61[2];
  *(v23 + 128) = v61[1];
  *(v23 + 144) = v29;
  *(v23 + 160) = v62;
  v30 = v59;
  *(v23 + 64) = v58;
  *(v23 + 80) = v30;
  v31 = v61[0];
  *(v23 + 96) = v60;
  *(v23 + 112) = v31;
  v32 = v55;
  *v23 = v54;
  *(v23 + 16) = v32;
  v33 = v57;
  *(v23 + 32) = v56;
  *(v23 + 48) = v33;
  sub_20B634408(v63);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    if (!*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
    {
      sub_20B61D168(v1, result);
      if (v37)
      {
        v39 = v36;
        v40 = v37;
        v41 = v38;
        sub_20B5E2E18();
        v42 = sub_20C13D374();
        v44 = v48;
        v43 = v49;
        *v48 = v42;
        v45 = v50;
        (*(v43 + 104))(v44, *MEMORY[0x277D85200], v50);
        v46 = sub_20C13C584();
        result = (*(v43 + 8))(v44, v45);
        if ((v46 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6208B4(v39, v40, v41, v1, 0, v35);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B64D630()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_contentAvailabilityClient));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountFitnessWorkoutSettingsShelf(uint64_t a1)
{
  result = qword_27C762DA8;
  if (!qword_27C762DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B64D788(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20B64D844(unint64_t a1, unint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSetting(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    v13 = OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_settings;
    result = swift_beginAccess();
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v2 + v13);
      if (*(v15 + 16) > a2)
      {
        sub_20B64DC5C(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v12);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_20B64DCC0(v12, v12[*(v9 + 20)], Strong);
          swift_unknownObjectRelease();
        }

        return sub_20B64DEC0(v12);
      }
    }

    __break(1u);
    return result;
  }

  sub_20C13B534();

  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136446210;
    v24[3] = a1;

    v21 = sub_20C13C9D4();
    v23 = sub_20B51E694(v21, v22, v24);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_20B517000, v17, v18, "Shelf lockup navigation triggered for item: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20B64DB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B64DBA8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B64DC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSetting(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B64DCC0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shouldAutomaticallyDeselectItem) == 1)
  {
    v11 = *(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v12 = [v11 indexPathsForSelectedItems];
    if (v12)
    {
      v13 = v12;
      v14 = sub_20C13CC74();

      if (*(v14 + 16))
      {
        (*(v7 + 16))(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

        v15 = sub_20C1331B4();
        [v11 deselectItemAtIndexPath:v15 animated:1];

        (*(v7 + 8))(v10, v6);
      }

      else
      {
      }
    }
  }

  v16 = a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v21 = a2;
    (*(v18 + 32))(a3, a1, &v21, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B64DEC0(uint64_t a1)
{
  v2 = type metadata accessor for AccountSetting(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B64DF1C()
{
  v1 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500, &qword_20C161210);
  v2 = *(v54 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v47 - v7;
  v48 = type metadata accessor for AccountSetting(0);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13B604();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v13 = v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_row;
  sub_20B5D8060(v59);
  v14 = v59[9];
  *(v13 + 128) = v59[8];
  *(v13 + 144) = v14;
  *(v13 + 160) = v60;
  v15 = v59[5];
  *(v13 + 64) = v59[4];
  *(v13 + 80) = v15;
  v16 = v59[7];
  *(v13 + 96) = v59[6];
  *(v13 + 112) = v16;
  v17 = v59[1];
  *v13 = v59[0];
  *(v13 + 16) = v17;
  v18 = v59[3];
  *(v13 + 32) = v59[2];
  *(v13 + 48) = v18;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_settings) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  sub_20B51C710(&v56, v0 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_contentAvailabilityClient);
  sub_20C133AA4();
  v19 = sub_20C13A6D4();
  v57 = v19;
  v58 = sub_20B64E844(&qword_27C762DB8, MEMORY[0x277D4E270], MEMORY[0x277D4E260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
  (*(*(v19 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4E268], v19);
  LOBYTE(v19) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(&v56);
  if ((v19 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v21 = sub_20C1380C4();
    (*(v10 + 104))(v12, *MEMORY[0x277D4F888], v9);
    v22 = sub_20B8D7248(v12, v21);

    (*(v10 + 8))(v12, v9);
    if (v22)
    {
      type metadata accessor for AccountSettingLink(0);
      v23 = v49;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_20C132964();
      v28 = v27;

      v29 = v48;
      *(v23 + *(v48 + 20)) = 1;
      v30 = (v23 + *(v29 + 24));
      *v30 = v26;
      v30[1] = v28;
      v31 = OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_settings;
      swift_beginAccess();
      v32 = *(v1 + v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v31) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_20BC068C0(0, v32[2] + 1, 1, v32);
        *(v1 + v31) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_20BC068C0((v34 > 1), v35 + 1, 1, v32);
      }

      v32[2] = v35 + 1;
      sub_20B64E7E0(v23, v32 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35);
      *(v1 + v31) = v32;
      swift_endAccess();
    }
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_contentAvailabilityClient), *(v1 + OBJC_IVAR____TtC9SeymourUI34AccountFitnessWorkoutSettingsShelf_contentAvailabilityClient + 24));
  sub_20C139D44();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B64E700;
  *(v36 + 24) = v1;
  v37 = v51;
  v38 = v54;
  (*(v2 + 16))(v51, v6, v54);
  v39 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v40 = swift_allocObject();
  (*(v2 + 32))(v40 + v39, v37, v38);
  v41 = (v40 + ((v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v41 = sub_20B64E71C;
  v41[1] = v36;

  v42 = v52;
  sub_20C137C94();
  (*(v2 + 8))(v6, v38);
  v43 = v55;
  v44 = sub_20C137CB4();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  v44(sub_20B52347C, v45);

  (*(v53 + 8))(v42, v43);
  return v1;
}

uint64_t sub_20B64E724(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500, &qword_20C161210) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E1494(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B64E7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSetting(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B64E844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_9SeymourUI13PageDataStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20B64E8A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B64E904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_20B64E954(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_20B64E984@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33[-v7];
  v9 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B64EF10(v3, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
      v16 = *(v15 + 48);
      sub_20B520158(&v11[*(v15 + 64)], &unk_27C768660, &unk_20C152F60);
      sub_20B520158(&v11[v16], &qword_27C7622F0, &unk_20C14FD00);
      goto LABEL_14;
    case 2u:
    case 6u:
      sub_20B64EF74(v11, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_19;
    case 3u:
      v14 = sub_20C134014();
      goto LABEL_18;
    case 4u:
      v14 = sub_20C133954();
      goto LABEL_18;
    case 5u:
    case 0xBu:
    case 0xEu:
    case 0x11u:
      goto LABEL_19;
    case 7u:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
      v20 = *(v19 + 64);
      a1 = *(v19 + 80);
      goto LABEL_9;
    case 8u:
      v23 = type metadata accessor for ButtonAction.ActionType;
      goto LABEL_13;
    case 9u:
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
      v13 = sub_20C138894();
      (*(*(v13 - 8) + 8))(&v11[v12], v13);
      v14 = sub_20C138B94();
      goto LABEL_18;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0);

      v14 = sub_20C134284();
LABEL_18:
      (*(*(v14 - 8) + 8))(v11, v14);
      goto LABEL_19;
    case 0xCu:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
      v20 = *(v21 + 48);
      a1 = *(v21 + 64);
LABEL_9:
      v22 = sub_20C137254();
      (*(*(v22 - 8) + 8))(a1 + v11, v22);
      sub_20B520158(&v11[v20], &qword_27C76A410, &unk_20C14FBC0);
      v23 = type metadata accessor for StartWorkoutSessionRequest;
LABEL_13:
      sub_20B64EF74(v11, v23);
      goto LABEL_14;
    case 0xDu:

      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0) + 48);
      v25 = sub_20C132C14();
      (*(*(v25 - 8) + 8))(&v11[v24], v25);
LABEL_19:
      v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
      result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      goto LABEL_20;
    case 0xFu:
    case 0x10u:
    case 0x13u:
LABEL_14:
      v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      result = [objc_opt_self() systemBackgroundColor];
      goto LABEL_20;
    case 0x12u:
      a1 = *MEMORY[0x277D76918];
      v33[12] = 1;
      v33[8] = 1;
      v3 = 0x90100000000;
      v29 = 1;
      v30 = objc_allocWithZone(MEMORY[0x277D75348]);
      v31 = a1;
      v28 = [v30 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v26 = 0;
      result = 0;
      goto LABEL_21;
    default:
      sub_20B64EFD4(v11, v8);
      v17 = sub_20C135814();
      if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
      {
        v18 = 0.21;
      }

      else
      {
        v32 = sub_20C138104();
        v18 = dbl_20C152970[v32 == sub_20C138104()];
      }

      v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v18 alpha:1.0];
      a1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      sub_20B520158(v8, &unk_27C762300, &unk_20C151350);
      result = a1;
LABEL_20:
      v29 = 0x4000000000000000;
LABEL_21:
      *a2 = v26;
      a2[1] = result;
      a2[2] = a1;
      a2[3] = v3;
      a2[4] = 0;
      a2[5] = v29;
      a2[6] = MEMORY[0x277D84FA0];
      a2[7] = v28;
      return result;
  }
}

uint64_t sub_20B64EF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction.ActionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B64EF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B64EFD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20B64F074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingEngagementSheetHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B64F1E4(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v7 = v1;
  v8 = a1;
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20B51E694(*&v7[OBJC_IVAR____TtC9SeymourUI31MarketingEngagementSheetHandler_placement], *&v7[OBJC_IVAR____TtC9SeymourUI31MarketingEngagementSheetHandler_placement + 8], &v19);
    *(v12 + 22) = 2114;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_20B517000, v9, v10, "[UM] <EngagementSheet> Error displaying sheet for placement %{mask.hash}s: %{public}@", v12, 0x20u);
    sub_20B64F5CC(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    return (*(v4 + 8))(v6, v11);
  }

  else
  {

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20B64F414()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v5 = v0;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 141558274;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20B51E694(*&v5[OBJC_IVAR____TtC9SeymourUI31MarketingEngagementSheetHandler_placement], *&v5[OBJC_IVAR____TtC9SeymourUI31MarketingEngagementSheetHandler_placement + 8], &v12);
    _os_log_impl(&dword_20B517000, v6, v7, "[UM] <EngagementSheet> Successfully performed dynamic action for %{mask.hash}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 1;
}

uint64_t sub_20B64F5CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762E30, &unk_20C150580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PageMetricAction(uint64_t a1)
{
  result = qword_27C762E40;
  if (!qword_27C762E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B64F6A8(uint64_t a1)
{
  sub_20B64F72C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShelfMetricAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20B64F72C(uint64_t a1)
{
  if (!qword_27C762E50)
  {
    sub_20C134544();
    v1 = sub_20C13CD04();
    if (!v2)
    {
      atomic_store(v1, &qword_27C762E50);
    }
  }
}

char *sub_20B64F784(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_layout];
  __asm { FMOV            V1.2D, #26.0 }

  *v11 = xmmword_20C1529E0;
  *(v11 + 1) = _Q1;
  *(v11 + 2) = xmmword_20C1529F0;
  *(v11 + 6) = 0x4000000000000000;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v19 = [v18 fontDescriptorWithSymbolicTraits_];
  if (v19)
  {
    v20 = v19;

    v18 = v20;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_filterLabel;
  v22 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];

  [v17 setFont_];
  v23 = objc_opt_self();
  v24 = [v23 blackColor];
  [v17 setTextColor_];

  *&v4[v21] = v17;
  v25 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_iconView;
  v26 = [objc_allocWithZone(type metadata accessor for NoIntrinsicImageView()) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v27 = [v23 blackColor];
  [v26 setTintColor_];

  *&v4[v25] = v26;
  v93.receiver = v4;
  v93.super_class = type metadata accessor for SelectedFilterCell(0);
  v28 = objc_msgSendSuper2(&v93, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = *MEMORY[0x277D76808];
  v30 = v28;
  [v30 setMaximumContentSizeCategory_];
  v31 = [v30 contentView];
  [v31 setClipsToBounds_];

  v32 = [v30 contentView];
  v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.588235294 alpha:1.0];
  [v32 setBackgroundColor_];

  v34 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_iconView;
  v35 = *&v30[OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_iconView];
  v36 = sub_20C13C914();
  v37 = [objc_opt_self() systemImageNamed_];

  if (v37)
  {
    v38 = [v37 imageWithRenderingMode_];
  }

  else
  {
    v38 = 0;
  }

  [v35 setImage_];

  v39 = [v30 contentView];
  v89 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_filterLabel;
  [v39 addSubview_];

  v40 = [v30 contentView];
  [v40 addSubview_];

  v91 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C152A00;
  v42 = [v30 contentView];
  v43 = [v42 heightAnchor];

  v44 = &v30[OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_layout];
  v45 = [v43 constraintGreaterThanOrEqualToConstant_];

  *(v41 + 32) = v45;
  v46 = [*&v30[v34] leadingAnchor];
  v47 = [v30 contentView];
  v48 = v34;
  v49 = [v47 leadingAnchor];

  v50 = [v46 constraintEqualToAnchor:v49 constant:v44[1]];
  *(v41 + 40) = v50;
  v51 = [*&v30[v48] widthAnchor];
  v52 = [v51 constraintEqualToConstant_];

  *(v41 + 48) = v52;
  v53 = [*&v30[v48] centerYAnchor];
  v54 = [v30 contentView];
  v55 = [v54 &selRef_setNumberOfTapsRequired_];

  v56 = [v53 constraintEqualToAnchor_];
  *(v41 + 56) = v56;
  v90 = v48;
  v57 = [*&v30[v48] heightAnchor];
  v58 = [v57 constraintEqualToConstant_];

  *(v41 + 64) = v58;
  v59 = [*&v30[v89] leadingAnchor];
  v60 = [*&v30[v48] trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:v44[4]];

  *(v41 + 72) = v61;
  v62 = [*&v30[v89] trailingAnchor];
  v63 = [v30 contentView];
  v64 = [v63 trailingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:-v44[5]];
  *(v41 + 80) = v65;
  v66 = [*&v30[v89] topAnchor];
  v67 = [v30 contentView];
  v68 = [v67 topAnchor];

  v69 = [v66 constraintGreaterThanOrEqualToAnchor:v68 constant:v44[6]];
  *(v41 + 88) = v69;
  v70 = [*&v30[v89] bottomAnchor];
  v71 = [v30 contentView];
  v72 = [v71 bottomAnchor];

  v73 = [v70 constraintLessThanOrEqualToAnchor:v72 constant:-v44[6]];
  *(v41 + 96) = v73;
  v74 = [*&v30[v89] topAnchor];
  v75 = [v30 contentView];
  v76 = [v75 topAnchor];

  v77 = [v74 constraintEqualToAnchor:v76 constant:v44[6]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v78) = v92;
  [v77 setPriority_];
  *(v41 + 104) = v77;
  v79 = [*&v30[v89] bottomAnchor];
  v80 = [v30 contentView];

  v81 = [v80 bottomAnchor];
  v82 = [v79 constraintEqualToAnchor:v81 constant:-v44[6]];

  sub_20C13BBA4();
  LODWORD(v83) = v92;
  [v82 setPriority_];
  *(v41 + 112) = v82;
  v84 = [*&v30[v89] centerYAnchor];
  v85 = [*&v30[v90] centerYAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v41 + 120) = v86;
  sub_20B5E29D0();
  v87 = sub_20C13CC54();

  [v91 activateConstraints_];

  return v30;
}

id sub_20B650514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectedFilterCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SelectedFilterCell(uint64_t a1)
{
  result = qword_281102F98;
  if (!qword_281102F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B65061C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B6506D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B6506F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_20B650738(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B650784@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B6507DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B650840(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x36)
  {
    swift_projectBox();
    v7 = *&v1[OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_filterLabel];

    v21 = sub_20C13C914();

    [v7 setText_];
    v8 = v21;
  }

  else
  {
    sub_20C13B534();

    v9 = v1;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = a1;
      v23 = v21;
      *v12 = 138543618;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2082;
      v14 = sub_20B5F66D0();
      v15 = v9;
      v16 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v14);
      v18 = sub_20B51E694(v16, v17, &v23);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_20B517000, v10, v11, "Attempted to configure %{public}@ with item: %{public}s", v12, 0x16u);
      sub_20B520158(v13, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      v19 = v21;
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20B650AFC()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_layout;
  __asm { FMOV            V1.2D, #26.0 }

  *v3 = xmmword_20C1529E0;
  *(v3 + 16) = _Q1;
  *(v3 + 32) = xmmword_20C1529F0;
  *(v3 + 48) = 0x4000000000000000;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_filterLabel;
  v14 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

  [v9 setFont_];
  v15 = objc_opt_self();
  v16 = [v15 blackColor];
  [v9 setTextColor_];

  *(v0 + v13) = v9;
  v17 = OBJC_IVAR____TtC9SeymourUI18SelectedFilterCell_iconView;
  v18 = [objc_allocWithZone(type metadata accessor for NoIntrinsicImageView()) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v19 = [v15 blackColor];
  [v18 setTintColor_];

  *(v0 + v17) = v18;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B650E14(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xEB00000000544E45;
  v3 = 0x4345525F54524F53;
  v4 = 0xEC00000052454E49;
  v5 = 0x4152545F54524F53;
  if (a1 != 6)
  {
    v5 = 0x4548545F54524F53;
    v4 = 0xEA0000000000454DLL;
  }

  v6 = 0x53554D5F54524F53;
  if (a1 == 4)
  {
    v7 = 0xEA00000000004349;
  }

  else
  {
    v6 = 0x4E4F4E5F54524F53;
    v7 = 0xE900000000000045;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x4D49545F54524F53;
  v9 = 0xE900000000000045;
  if (a1 != 2)
  {
    v8 = 0xD000000000000011;
    v9 = 0x800000020C1953B0;
  }

  if (!a1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000020C1953D0;
  }

  if (a1 > 1u)
  {
    v3 = v8;
    v2 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v1 <= 3)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x20F2F4230](v10, v11);

  MEMORY[0x20F2F4230](0x414352455050555FLL, 0xEA00000000004553);
  return 0;
}

BOOL sub_20B650F94()
{
  v0 = sub_20C1365C4();
  v1 = sub_20C1355F4();
  v2 = *(v0 + 16);
  v3 = 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *(v0 + v3);
    v3 += 8;
  }

  while (v6 != v1);
  v7 = v4 != 0;

  return v7;
}

uint64_t sub_20B651014()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_configurationClient));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20B651138()
{
  sub_20B651014();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanSkillLevelPickerShelf(uint64_t a1)
{
  result = qword_27C762E88;
  if (!qword_27C762E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B6511E4(uint64_t a1)
{
  result = sub_20C132EE4();
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

double sub_20B6512D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_activationState) = 1;
    sub_20C13CDC4();
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;

    sub_20B614F94(0, 0, v4, &unk_20C152BF8, v6);
  }

  return result;
}

uint64_t sub_20B6513F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA0, &unk_20C152C00);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v8 = sub_20C134104();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6515E4, 0, 0);
}

uint64_t sub_20B6515E4()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_configurationClient), *(v0[3] + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_configurationClient + 24));
  sub_20C1398E4();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanSkillLevelPickerShelf.swift";
  *(v2 + 24) = 48;
  *(v2 + 32) = 2;
  *(v2 + 40) = 89;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_20B651724;
  v4 = v0[15];
  v5 = v0[13];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B652870, v2, v5);
}

uint64_t sub_20B651724()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_20B651A10;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_20B651874;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B651874()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[3];
  v5 = sub_20C134094();
  (*(v2 + 8))(v1, v3);
  *(v4 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_filterConfigurations) = v5;

  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_catalogClient), *(v0[3] + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_catalogClient + 24));
  sub_20C13A044();
  v7 = swift_task_alloc();
  v0[19] = v7;
  *(v7 + 16) = "SeymourUI/WorkoutPlanSkillLevelPickerShelf.swift";
  *(v7 + 24) = 48;
  *(v7 + 32) = 2;
  *(v7 + 40) = 95;
  *(v7 + 48) = v6;
  v8 = swift_task_alloc();
  v0[20] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA8, &unk_20C152C10);
  *v8 = v0;
  v8[1] = sub_20B651C2C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B652888, v7, v9);
}

uint64_t sub_20B651A10()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_20C13B534();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[WorkoutPlanSkillLevelPickerShelf] failed to query configuration", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_catalogClient), *(v0[3] + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_catalogClient + 24));
  sub_20C13A044();
  v10 = swift_task_alloc();
  v0[19] = v10;
  *(v10 + 16) = "SeymourUI/WorkoutPlanSkillLevelPickerShelf.swift";
  *(v10 + 24) = 48;
  *(v10 + 32) = 2;
  *(v10 + 40) = 95;
  *(v10 + 48) = v9;
  v11 = swift_task_alloc();
  v0[20] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA8, &unk_20C152C10);
  *v11 = v0;
  v11[1] = sub_20B651C2C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B652888, v10, v12);
}

uint64_t sub_20B651C2C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20B651EE8;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];
    v2[22] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B651D8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B651D8C()
{
  v10 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_20BEDE8FC(*(v1 + 16), 0);
    v4 = *(sub_20C1334D4() - 8);
    sub_20BEE20CC(&v9, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v5;
    sub_20B583EDC(v9);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  sub_20B5FA338(v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20B651EE8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B651F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B65200C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B6520FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C13C554();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_filterConfigurations);
  if (v12)
  {
    MEMORY[0x28223BE20](v9);
    *(&v39 - 2) = a2;

    sub_20B6B7110(sub_20B652A84, v12, v11);
  }

  else
  {
    v13 = sub_20C135654();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = sub_20B6528A0(v11);
  v43 = 0uLL;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = 0;
  *&v45 = 0;
  WORD4(v45) = 128;
  v46 = 0uLL;
  v47 = xmmword_20C152AC0;
  *&v48 = v14;
  *(&v48 + 1) = v15;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = a1;
  v50 = MEMORY[0x277D84F90];
  *&v51 = 0;
  *(&v51 + 1) = v14;
  *v52 = v15;
  *&v52[8] = xmmword_20C150190;
  nullsub_1();
  v16 = v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 144);
  v53[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 128);
  v53[9] = v17;
  v54 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 160);
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 80);
  v53[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 64);
  v53[5] = v18;
  v19 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 112);
  v53[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 96);
  v53[7] = v19;
  v20 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 16);
  v53[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row);
  v53[1] = v20;
  v21 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 48);
  v53[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row + 32);
  v53[3] = v21;
  v22 = *v52;
  *(v16 + 128) = v51;
  *(v16 + 144) = v22;
  *(v16 + 160) = *&v52[16];
  v23 = v48;
  *(v16 + 64) = v47;
  *(v16 + 80) = v23;
  v24 = v50;
  *(v16 + 96) = v49;
  *(v16 + 112) = v24;
  v25 = v44;
  *v16 = v43;
  *(v16 + 16) = v25;
  v26 = v46;
  *(v16 + 32) = v45;
  *(v16 + 48) = v26;

  sub_20B520158(v53, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_20B520158(v11, &qword_27C762AE0, &unk_20C151420);
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_6;
  }

  v28 = Strong;
  sub_20B61D320(v2, Strong);
  if (!v30)
  {
    sub_20C0C2D50(0);
LABEL_6:
    swift_unknownObjectRelease();
    return sub_20B520158(v11, &qword_27C762AE0, &unk_20C151420);
  }

  v32 = v29;
  v33 = v30;
  v34 = v31;
  v40 = v2;
  sub_20B5E2E18();
  *v7 = sub_20C13D374();
  v36 = v41;
  v35 = v42;
  (*(v41 + 104))(v7, *MEMORY[0x277D85200], v42);
  v37 = sub_20C13C584();
  result = (*(v36 + 8))(v7, v35);
  if (v37)
  {
    sub_20B620BA0(v32, v33, v34, v40, 0, v28);
    swift_unknownObjectRelease();

    return sub_20B520158(v11, &qword_27C762AE0, &unk_20C151420);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B65254C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_row;
  sub_20B5D8060(v11);
  v2 = v11[9];
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v12;
  v3 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v3;
  v4 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  v6 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_optionCoordinator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762E98, &qword_20C152BC8);
  v8 = swift_allocObject();
  v8[3] = 0;
  swift_unknownObjectWeakInit();
  *(v8 + *(*v8 + 104)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768, &unk_20C152BD0);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(*v8 + 112)) = 0;
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_activationState) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_filterConfigurations) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v10, v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v10, v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_eventHub) = v10[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BF0, &unk_20C152BE0);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_filterPropertyStringBuilder) = v10[0];
  *(*(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanSkillLevelPickerShelf_optionCoordinator) + 24) = &off_2815E82D8;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_20B6527BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B6513F8(a1, v4, v5, v6);
}

uint64_t sub_20B6528A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_20B52F9E8(a1, &v13 - v3, &qword_27C762AE0, &unk_20C151420);
  v5 = sub_20C135654();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C762AE0, &unk_20C151420);
LABEL_4:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v7 = sub_20C132964();

    return v7;
  }

  v7 = sub_20C135604();
  v9 = v8;
  (*(v6 + 8))(v4, v5);
  if (!v9)
  {
    goto LABEL_4;
  }

  return v7;
}

uint64_t sub_20B652AA4(uint64_t a1, char a2)
{
  sub_20C13E164();
  if (a2)
  {
    MEMORY[0x20F2F58E0](0);
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x20F2F5910](v4);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B652B20()
{
  if (v0[1])
  {
    return MEMORY[0x20F2F58E0](0);
  }

  v2 = *v0;
  MEMORY[0x20F2F58E0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x20F2F5910](v3);
}

uint64_t sub_20B652B70(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_20C13E164();
  if (v3)
  {
    MEMORY[0x20F2F58E0](0);
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x20F2F5910](v4);
  }

  return sub_20C13E1B4();
}

BOOL sub_20B652BDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_20B652C1C()
{
  result = qword_27C762EB0;
  if (!qword_27C762EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762EB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParallaxContentInset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParallaxContentInset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20B652CC0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B652CDC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for RootShowcaseItem(uint64_t a1)
{
  result = qword_27C762EB8;
  if (!qword_27C762EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B652D80(uint64_t a1)
{
  sub_20B652F14(319);
  if (v1 <= 0x3F)
  {
    sub_20B652FC4(319, &qword_27C762ED0, &type metadata for ShelfLockupAnnotation);
    if (v2 <= 0x3F)
    {
      sub_20B652FC4(319, &qword_27C762ED8, &type metadata for ShelfLockupAttributedTagStrings);
      if (v3 <= 0x3F)
      {
        sub_20B653010(319, &qword_281103B70, MEMORY[0x277D53A78], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20B652FC4(319, &qword_2811005B8, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_20B653010(319, &qword_27C762EE0, type metadata accessor for ButtonAction, MEMORY[0x277D83940]);
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

void sub_20B652F14(uint64_t a1)
{
  if (!qword_27C762EC8)
  {
    sub_20B652F70();
    v1 = sub_20C133C24();
    if (!v2)
    {
      atomic_store(v1, &qword_27C762EC8);
    }
  }
}

unint64_t sub_20B652F70()
{
  result = qword_27C764850;
  if (!qword_27C764850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764850);
  }

  return result;
}

void sub_20B652FC4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20B653010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20B653084(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1835365481;
  }

  else
  {
    v3 = 0x6C6F686563616C70;
  }

  if (v2)
  {
    v4 = 0xEB00000000726564;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1835365481;
  }

  else
  {
    v5 = 0x6C6F686563616C70;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEB00000000726564;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20B65312C()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20B6531B0(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

uint64_t sub_20B653220(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

void sub_20B6532A0(char *a2@<X8>)
{
  v3 = sub_20C13DEA4();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_20B653300(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (!*v1)
  {
    v2 = 0x6C6F686563616C70;
  }

  v3 = 0xEB00000000726564;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_20B653344()
{
  result = qword_27C762EE8;
  if (!qword_27C762EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762EE8);
  }

  return result;
}

double sub_20B65339C(__int128 *a1)
{
  v3 = sub_20C137C24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_20C13CA64();
  sub_20C13CA64();

  v10 = *(v1 + 40);
  v22 = *(v1 + 24);
  LOBYTE(v23) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00, &unk_20C152DE0);
  sub_20B654574();
  sub_20C133BE4();
  v11 = *(v1 + 56);
  if (v11 == 1)
  {
    sub_20C13E184();
    goto LABEL_17;
  }

  v12 = *(v1 + 72);
  v20 = *(v1 + 64);
  v21 = v6;
  v19 = *(v1 + 80);
  v13 = *(v1 + 88);
  sub_20C13E184();
  if (v11)
  {
    sub_20C13E184();
    sub_20C13CA64();
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_20C13E184();
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v19);
    goto LABEL_10;
  }

  sub_20C13E184();
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_20C13E184();
  sub_20C13CA64();
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_20C13E184();
LABEL_10:
  if (v13 >> 8 == 2)
  {
    v14 = 0;
  }

  else if (v13 >> 8 == 3)
  {
    v14 = 2;
  }

  else
  {
    MEMORY[0x20F2F58E0](1);
    v14 = (v13 >> 8) & 1;
  }

  MEMORY[0x20F2F58E0](v14);
  v6 = v21;
LABEL_17:
  v15 = *(v1 + 112);
  v22 = *(v1 + 96);
  v23 = v15;
  v24 = *(v1 + 128);
  sub_20B653898(a1);
  v16 = type metadata accessor for RootShowcaseItem(0);
  sub_20B654504(v1 + v16[9], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_20C13E184();
    sub_20B6545C8(&qword_27C762F08, MEMORY[0x277D53A78], MEMORY[0x277D53A88]);
    sub_20C13C7C4();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v1 + v16[10] + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  else
  {
    sub_20C13E184();
  }

  sub_20BDA75A4(a1, *(v1 + v16[11]));
  sub_20C135184();
  sub_20C13CA64();

  return result;
}

uint64_t sub_20B6537CC()
{
  sub_20C13E164();
  sub_20B65339C(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B653810(uint64_t a1)
{
  sub_20C13E164();
  sub_20B65339C(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20B653898(uint64_t a1)
{
  if (!*v1)
  {
    return sub_20C13E184();
  }

  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_20C13E184();
  v5 = *(v4 + 16);
  MEMORY[0x20F2F58E0](v5);
  if (v5)
  {
    v6 = *(sub_20C138094() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      sub_20C138084();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v9 = *(v3 + 16);
  MEMORY[0x20F2F58E0](v9);
  if (v9)
  {
    v10 = *(sub_20C138094() - 8);
    v11 = v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      sub_20C138084();
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v13 = *(v2 + 16);
  result = MEMORY[0x20F2F58E0](v13);
  if (v13)
  {
    v15 = *(sub_20C138094() - 8);
    v16 = v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      result = sub_20C138084();
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_20B653A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137C24();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v92 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - v12;
  if (*a1 != *a2 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_36;
  }

  v105 = v11;
  if (*(a1 + 16))
  {
    v14 = 1835365481;
  }

  else
  {
    v14 = 0x6C6F686563616C70;
  }

  if (*(a1 + 16))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xEB00000000726564;
  }

  if (*(a2 + 16))
  {
    v16 = 1835365481;
  }

  else
  {
    v16 = 0x6C6F686563616C70;
  }

  if (*(a2 + 16))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xEB00000000726564;
  }

  if (v14 == v16 && v15 == v17)
  {
  }

  else
  {
    v18 = sub_20C13DFF4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v19 = *(a1 + 40);
  v111 = *(a1 + 24);
  LOBYTE(v112) = v19;
  v20 = *(a2 + 40);
  v106 = *(a2 + 24);
  LOBYTE(v107) = v20;
  sub_20B654378();
  sub_20B652F70();
  if ((sub_20C133BF4() & 1) == 0)
  {
    goto LABEL_36;
  }

  v101 = v10;
  v102 = v13;
  v100 = v7;
  v103 = v5;
  v104 = v4;
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v24 = *(a1 + 64);
  v23 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a2 + 48);
  v28 = *(a2 + 56);
  v30 = *(a2 + 64);
  v29 = *(a2 + 72);
  v31 = *(a2 + 80);
  v32 = *(a2 + 88);
  if (v21 == 1)
  {
    if (v28 == 1)
    {
      goto LABEL_26;
    }

LABEL_24:
    v98 = *(a2 + 48);
    v33 = v23;
    LODWORD(v99) = v32;
    sub_20B6543CC(v98, v28, v30, v29);
    sub_20B6543CC(v22, v21, v24, v33);
    sub_20B6222E8(v22, v21, v24, v33);
    sub_20B6222E8(v98, v28, v30, v29);
    goto LABEL_36;
  }

  if (v28 == 1)
  {
    goto LABEL_24;
  }

  *&v111 = *(a2 + 48);
  *(&v111 + 1) = v28;
  v112 = v30;
  v113 = v29;
  v114 = v31;
  v115 = v32 & 0xFF01;
  *&v106 = v22;
  *(&v106 + 1) = v21;
  v107 = v24;
  v108 = v23;
  v109 = v25;
  v110 = v26 & 0xFF01;
  v94 = v22;
  v34 = v27;
  v96 = v25;
  v95 = v23;
  v93 = v24;
  LODWORD(v97) = sub_20BAE6B20(&v106, &v111);
  sub_20B6543CC(v34, v28, v30, v29);
  v35 = v94;
  v36 = v93;
  v37 = v95;
  sub_20B6543CC(v94, v21, v93, v95);

  sub_20B6222E8(v35, v21, v36, v37);
  if ((v97 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  v39 = *(a1 + 96);
  v38 = *(a1 + 104);
  v40 = *(a1 + 112);
  v41 = *(a1 + 120);
  v43 = *(a1 + 128);
  v42 = *(a1 + 136);
  v44 = *(a2 + 96);
  v45 = *(a2 + 104);
  v46 = *(a2 + 120);
  v99 = *(a2 + 112);
  v48 = *(a2 + 128);
  v47 = *(a2 + 136);
  if (!v39)
  {
    if (!v44)
    {
      v68 = v38;
      v69 = v41;
      v98 = v41;
      v70 = v43;
      v71 = v42;
      sub_20B654414(0, v38, v40, v69, v43, v42);
      sub_20B654414(0, v45, v99, v46, v48, v47);
      sub_20B65448C(0, v68, v40, v98, v70, v71);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (!v44)
  {
LABEL_33:
    v49 = v39;
    v50 = v38;
    v104 = v39;
    v51 = v41;
    v52 = v40;
    v53 = v40;
    v54 = v43;
    v55 = v42;
    sub_20B654414(v49, v38, v53, v51, v43, v42);
    v56 = v44;
    v105 = v44;
    v57 = v45;
    v58 = v45;
    v59 = v99;
    sub_20B654414(v56, v58, v99, v46, v48, v47);
    sub_20B65448C(v104, v50, v52, v51, v54, v55);
    v60 = v105;
    v61 = v57;
    v62 = v59;
    v63 = v46;
    v64 = v48;
    v65 = v47;
LABEL_35:
    sub_20B65448C(v60, v61, v62, v63, v64, v65);
    goto LABEL_36;
  }

  v96 = v38;
  v98 = v43;
  v97 = v42;
  sub_20B654414(v39, v38, v40, v41, v43, v42);
  sub_20B654414(v44, v45, v99, v46, v48, v47);
  if ((sub_20BB803A0(v41, v46) & 1) == 0 || (sub_20BB803A0(v98, v48) & 1) == 0)
  {
    sub_20B65448C(v44, v45, v99, v46, v48, v47);
    v60 = v39;
    v61 = v96;
    v62 = v40;
    v63 = v41;
    v64 = v98;
    v65 = v97;
    goto LABEL_35;
  }

  LODWORD(v95) = sub_20BB803A0(v97, v47);
  sub_20B65448C(v44, v45, v99, v46, v48, v47);
  sub_20B65448C(v39, v96, v40, v41, v98, v97);
  if ((v95 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v72 = type metadata accessor for RootShowcaseItem(0);
  v73 = v72[9];
  v74 = v105[12];
  v75 = v102;
  sub_20B654504(a1 + v73, v102);
  sub_20B654504(a2 + v73, v75 + v74);
  v77 = v103;
  v76 = v104;
  v78 = *(v103 + 48);
  if (v78(v75, 1, v104) == 1)
  {
    if (v78(v75 + v74, 1, v76) == 1)
    {
      sub_20B520158(v75, &unk_27C766680, &unk_20C14F920);
      goto LABEL_46;
    }

LABEL_44:
    sub_20B520158(v75, &qword_27C7626D0, &qword_20C161880);
    goto LABEL_36;
  }

  v79 = v101;
  sub_20B654504(v75, v101);
  if (v78(v75 + v74, 1, v76) == 1)
  {
    (*(v77 + 8))(v79, v76);
    goto LABEL_44;
  }

  v80 = v100;
  (*(v77 + 32))(v100, v75 + v74, v76);
  sub_20B6545C8(&qword_27C7626D8, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);
  v81 = sub_20C13C894();
  v82 = *(v77 + 8);
  v82(v80, v76);
  v82(v79, v76);
  sub_20B520158(v75, &unk_27C766680, &unk_20C14F920);
  if ((v81 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_46:
  v83 = v72[10];
  v84 = (a1 + v83);
  v85 = *(a1 + v83 + 8);
  v86 = (a2 + v83);
  v87 = v86[1];
  if (!v85)
  {
    if (!v87)
    {
      goto LABEL_53;
    }

LABEL_36:
    v66 = 0;
    return v66 & 1;
  }

  if (!v87 || (*v84 != *v86 || v85 != v87) && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_53:
  if ((sub_20BB808A4(*(a1 + v72[11]), *(a2 + v72[11])) & 1) == 0)
  {
    goto LABEL_36;
  }

  v88 = sub_20C135184();
  v90 = v89;
  if (v88 == sub_20C135184() && v90 == v91)
  {

    v66 = 1;
  }

  else
  {
    v66 = sub_20C13DFF4();
  }

  return v66 & 1;
}

unint64_t sub_20B654378()
{
  result = qword_27C762EF8;
  if (!qword_27C762EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762EF8);
  }

  return result;
}

double sub_20B6543CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_20B654414(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return result;
}

double sub_20B65448C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_20B654504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B654574()
{
  result = qword_281103BE8;
  if (!qword_281103BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103BE8);
  }

  return result;
}

uint64_t sub_20B6545C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B654610(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a2 + 32);
    swift_getObjectType();
    v9 = sub_20C133E44();
    (*(v8 + 240))(v9);

    swift_unknownObjectRelease();
    v10 = sub_20C137CB4();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v10(sub_20B5DF6DC, v11);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B6547B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a2 + 32);
    swift_getObjectType();
    v9 = sub_20C133E44();
    (*(v8 + 248))(v9);

    swift_unknownObjectRelease();
    v10 = sub_20C137CB4();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v10(sub_20B5DF6DC, v11);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B654960(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a2 + 32);
    swift_getObjectType();
    v9 = sub_20C133E44();
    (*(v8 + 312))(v9);

    swift_unknownObjectRelease();
    v10 = sub_20C137CB4();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v10(sub_20B5DF6DC, v11);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B654B08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a2 + 32);
    swift_getObjectType();
    v9 = sub_20C133E44();
    (*(v8 + 320))(v9);

    swift_unknownObjectRelease();
    v10 = sub_20C137CB4();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v10(sub_20B52347C, v11);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B654CB0(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a7;
  v77 = a6;
  v63 = a5;
  v75 = a2;
  v70 = a1;
  v62 = a4;
  v65 = sub_20C134014();
  v11 = *(v65 - 8);
  v73 = *(v11 + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20B6555F8();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v64 = sub_20C138D34();
  v61 = v14;
  v15 = sub_20C13C914();
  v68 = objc_opt_self();
  v16 = [v68 smm:v15 systemImageNamed:?];

  v17 = swift_allocObject();
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  swift_unknownObjectWeakInit();
  v18 = *(v11 + 16);
  v67 = v11 + 16;
  v72 = v18;
  v19 = v65;
  v18(v13, a2, v65);
  v74 = *(v11 + 80);
  v20 = (v74 + 24) & ~v74;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v66 = *(v11 + 32);
  v76 = v11 + 32;
  v66(v21 + v20, v13, v19);
  v64 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v61 = sub_20C138D34();
  v60 = v22;
  v23 = sub_20C13C914();
  v24 = v68;
  v58 = [v68 smm:v23 systemImageNamed:?];

  v25 = swift_allocObject();
  v26 = v71;
  *(v25 + 24) = v77;
  *(v25 + 32) = v26;
  swift_unknownObjectWeakInit();
  v72(v13, v75, v19);
  v59 = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = v27 + v20;
  v29 = v66;
  v66(v28, v13, v19);
  v61 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v60 = sub_20C138D34();
  v58 = v30;
  v31 = sub_20C13C914();
  v57 = [v24 systemImageNamed_];

  v32 = swift_allocObject();
  v33 = v71;
  *(v32 + 24) = v77;
  *(v32 + 32) = v33;
  swift_unknownObjectWeakInit();
  v34 = v65;
  v72(v13, v75, v65);
  v35 = v59;
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  v29(v36 + v35, v13, v34);
  v37 = v33;
  v60 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v58 = sub_20C138D34();
  v57 = v38;
  v39 = sub_20C13C914();
  v40 = [v68 systemImageNamed_];

  v41 = swift_allocObject();
  *(v41 + 24) = v77;
  *(v41 + 32) = v33;
  swift_unknownObjectWeakInit();
  v42 = v13;
  v43 = v75;
  (v72)(v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  v66(v44 + v35, v42, v34);
  v45 = sub_20C13D624();
  if (v62 == 3)
  {
    v46 = sub_20C133E44();
    sub_20BEA9A28(v46, v47, v63, v77, v37);
    v49 = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 16) = xmmword_20C14F580;
    if (v49)
    {
      *(v50 + 32) = v61;
      v52 = v64;
LABEL_12:

      v54 = v60;
      goto LABEL_13;
    }

    *(v50 + 32) = v64;
LABEL_11:
    v52 = v61;
    goto LABEL_12;
  }

  (*(v37 + 328))(&v78, v43, v63, v37);
  sub_20B6557F0(&v78);
  if (v80 != 255 && (v80 & 1) != 0 && ((1 << v79) & 0x1DD) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F580;
    *(v51 + 32) = v45;

    v54 = v61;
    v45 = v60;
    goto LABEL_13;
  }

  if ((v78 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20C14F580;
    *(v51 + 32) = v64;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C151490;
  v53 = v60;
  *(v51 + 32) = v61;
  *(v51 + 40) = v53;
  v54 = v64;
LABEL_13:

  return v51;
}

unint64_t sub_20B6555F8()
{
  result = qword_27C7713A0;
  if (!qword_27C7713A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7713A0);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B655768(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20C134014() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_20B655844@<X0>(id a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  while (2)
  {
    v5 = a4;
    v277 = a2;
    v278 = a3;
    v279 = a1;
    v285 = a5;
    v6 = type metadata accessor for RootShowcaseItem(0);
    v7 = *(v6 - 1);
    v266 = v6;
    v267 = v7;
    MEMORY[0x28223BE20](v6);
    v259 = &v257 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v9);
    v258 = &v257 - v10;
    MEMORY[0x28223BE20](v11);
    v257 = &v257 - v12;
    MEMORY[0x28223BE20](v13);
    v15 = &v257 - v14;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766270, &qword_20C152E00);
    MEMORY[0x28223BE20](v16 - 8);
    v260 = &v257 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v18);
    v20 = &v257 - v19;
    MEMORY[0x28223BE20](v21);
    v261 = &v257 - v22;
    MEMORY[0x28223BE20](v23);
    v262 = &v257 - v24;
    v25 = sub_20C132C14();
    v264 = *(v25 - 8);
    v265 = v25;
    MEMORY[0x28223BE20](v25);
    v263 = &v257 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = sub_20C134014();
    v269 = *(v27 - 8);
    v270 = v27;
    MEMORY[0x28223BE20](v27);
    v268 = &v257 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v276 = sub_20C13C5F4();
    v273 = *(v276 - 8);
    MEMORY[0x28223BE20](v276);
    v272 = &v257 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v30);
    v284 = &v257 - v31;
    v32 = sub_20C13C5A4();
    v33 = *(v32 - 8);
    v274 = v32;
    v275 = v33;
    MEMORY[0x28223BE20](v32);
    v271 = &v257 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v35);
    v280 = &v257 - v36;
    v37 = sub_20C1352E4();
    v38 = *(v37 - 8);
    v282 = v37;
    v283 = v38;
    MEMORY[0x28223BE20](v37);
    v281 = &v257 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = type metadata accessor for ButtonAction.ActionType(0);
    MEMORY[0x28223BE20](v40);
    v42 = &v257 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v43);
    v45 = &v257 - v44;
    v46 = sub_20C138894();
    MEMORY[0x28223BE20](v46);
    v48 = &v257 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v49);
    v51 = &v257 - v50;
    v55.n128_f64[0] = MEMORY[0x28223BE20](v52);
    v57 = &v257 - v56;
    switch((v5 >> 57) & 0x78 | v5 & 7)
    {
      case 2uLL:
        v58 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v59 = v285;
        v60 = v277;
        v61 = v278;

        return sub_20B657C58(v58, v60, v61, v59);
      case 9uLL:
        v88 = v285;
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v175 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x28);
        if (!*(v175 + 16))
        {
          goto LABEL_49;
        }

        v176 = v54;
        v177 = v53;
        v178 = type metadata accessor for ButtonAction(0);
        sub_20B6596F8(v175 + *(v178 + 28) + ((*(*(v178 - 8) + 80) + 32) & ~*(*(v178 - 8) + 80)), v45, type metadata accessor for ButtonAction.ActionType);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0);
          (*(v176 + 32))(v57, &v45[*(v179 + 48)], v177);
          v180 = sub_20C138B94();
          (*(*(v180 - 8) + 8))(v45, v180);
          sub_20B658B0C(v277, v278, v279, v88);
          (*(v176 + 8))(v57, v177);
LABEL_7:
          v89 = sub_20C13C634();
          v90 = *(*(v89 - 8) + 56);
          v91 = v88;
          return v90(v91, 0, 1, v89);
        }

        sub_20B659760(v45, type metadata accessor for ButtonAction.ActionType);
LABEL_49:
        v256 = sub_20C13C634();
        return (*(*(v256 - 8) + 56))(v88, 1, 1, v256);
      case 0x10uLL:
        sub_20C1355B4();
        (*(v283 + 104))(v281, *MEMORY[0x277D51760], v282);
        v157 = sub_20C1349B4();
        v268 = v158;
        v269 = v157;
        v270 = sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C13C594();

        v159 = v284;
        v160 = v279;
        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_20C152DF0;
        *(v161 + 32) = 1701667182;
        v162 = MEMORY[0x277D837D0];
        *(v161 + 40) = 0xE400000000000000;
        *(v161 + 48) = 0;
        *(v161 + 56) = 0xE000000000000000;
        *(v161 + 72) = v162;
        strcpy((v161 + 80), "impressionType");
        *(v161 + 95) = -18;
        *(v161 + 96) = sub_20C1352D4();
        *(v161 + 104) = v163;
        *(v161 + 120) = v162;
        *(v161 + 128) = 0x6973736572706D69;
        v164 = MEMORY[0x277D83B88];
        *(v161 + 136) = 0xEF7865646E496E6FLL;
        *(v161 + 144) = v160;
        *(v161 + 168) = v164;
        *(v161 + 176) = 0x657079546469;
        *(v161 + 216) = v162;
        v165 = v268;
        v166 = v269;
        *(v161 + 184) = 0xE600000000000000;
        *(v161 + 192) = v166;
        *(v161 + 200) = v165;
        v167 = sub_20B6B1778(v161);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = v167;
        sub_20BEF5D68(v270, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, v286);

        v279 = v286[0];
        v169 = v273;
        v170 = v276;
        (*(v273 + 16))(v272, v159, v276);
        v172 = v274;
        v171 = v275;
        v173 = v280;
        (*(v275 + 16))(v271, v280, v274);
        v174 = MEMORY[0x277D84F90];
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C0B8920(v174);
        v85 = v285;
        sub_20C13C604();
        (*(v169 + 8))(v284, v170);
        goto LABEL_30;
      case 0x1CuLL:
        a4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x20);
        a5 = v285;
        a3 = v278;
        a1 = v279;
        a2 = v277;

        continue;
      case 0x1DuLL:
        v86 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v87 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18);
        sub_20B51D968((v5 & 0xFFFFFFFFFFFFFF8) + 32, v286);

        v88 = v285;
        sub_20B65909C(v86, v87, v285);

        sub_20B51D9C4(v286);
        goto LABEL_7;
      case 0x20uLL:
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
        v113 = swift_projectBox() + *(v112 + 64);
        v115 = *v113;
        v114 = *(v113 + 8);
        v116 = *(v113 + 16);
        v265 = *(v113 + 24);
        v117 = *(v113 + 32);
        v262 = *(v113 + 40);
        v263 = v117;
        (*(v269 + 16))();
        v118 = v115;
        v264 = v118;
        v267 = v114;
        v266 = v116;

        sub_20C133E44();
        v119 = [v118 string];
        v120 = sub_20C13C954();
        v122 = v121;

        (*(v283 + 104))();
        v123 = sub_20C1349B4();
        v261 = v124;
        v105 = sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C13C594();

        v125 = v279;
        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        v126 = swift_allocObject();
        *(v126 + 32) = 1701667182;
        *(v126 + 16) = xmmword_20C152DF0;
        v127 = MEMORY[0x277D837D0];
        *(v126 + 40) = 0xE400000000000000;
        *(v126 + 48) = v120;
        *(v126 + 56) = v122;
        *(v126 + 72) = v127;
        strcpy((v126 + 80), "impressionType");
        *(v126 + 95) = -18;
        *(v126 + 96) = sub_20C1352D4();
        *(v126 + 104) = v128;
        *(v126 + 120) = v127;
        *(v126 + 128) = 0x6973736572706D69;
        v129 = MEMORY[0x277D83B88];
        *(v126 + 136) = 0xEF7865646E496E6FLL;
        *(v126 + 144) = v125;
        *(v126 + 168) = v129;
        *(v126 + 176) = 0x657079546469;
        *(v126 + 216) = v127;
        *(v126 + 184) = 0xE600000000000000;
        *(v126 + 192) = v123;
        *(v126 + 200) = v261;
        v111 = sub_20B6B1778(v126);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_10;
      case 0x22uLL:
        v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
        v182 = swift_projectBox();
        v183 = v182 + *(v181 + 80);
        v185 = *v183;
        v184 = *(v183 + 8);
        v186 = *(v183 + 16);
        v187 = *(v183 + 24);
        v188 = *(v183 + 32);
        v189 = *(v183 + 40);
        (v264)[2](v263, v182 + *(v181 + 96), v265);
        v190 = v185;
        v191 = v184;
        v266 = v186;

        v269 = v188;

        v268 = v189;

        sub_20BD09848(v192);
        v270 = v187;
        v267 = v191;
        if (v193)
        {
          v194 = v279;
        }

        else
        {
          sub_20BD09C88();
          v194 = v279;
          if (!v235)
          {
            sub_20C132B54();
          }
        }

        v236 = [v190 string];
        v279 = v190;
        v237 = v236;
        v238 = sub_20C13C954();
        v240 = v239;

        (*(v283 + 104))();
        v241 = sub_20C1349B4();
        v277 = v242;
        v278 = sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C13C594();

        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        v243 = swift_allocObject();
        *(v243 + 32) = 1701667182;
        *(v243 + 16) = xmmword_20C152DF0;
        v244 = MEMORY[0x277D837D0];
        *(v243 + 40) = 0xE400000000000000;
        *(v243 + 48) = v238;
        *(v243 + 56) = v240;
        *(v243 + 72) = v244;
        strcpy((v243 + 80), "impressionType");
        *(v243 + 95) = -18;

        *(v243 + 96) = sub_20C1352D4();
        *(v243 + 104) = v245;
        *(v243 + 120) = v244;
        *(v243 + 128) = 0x6973736572706D69;
        v246 = MEMORY[0x277D83B88];
        *(v243 + 136) = 0xEF7865646E496E6FLL;
        *(v243 + 144) = v194;
        *(v243 + 168) = v246;
        *(v243 + 176) = 0x657079546469;
        *(v243 + 216) = v244;
        *(v243 + 184) = 0xE600000000000000;
        *(v243 + 192) = v241;
        *(v243 + 200) = v277;
        v247 = sub_20B6B1778(v243);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v248 = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = v247;
        sub_20BEF5D68(v278, sub_20C0B88D4, 0, v248, v286);

        v249 = v273;
        (*(v273 + 16))(v272, v284, v276);
        v251 = v274;
        v250 = v275;
        v252 = v280;
        (*(v275 + 16))(v271, v280, v274);
        v253 = MEMORY[0x277D84F90];
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C0B8920(v253);
        v254 = v285;
        sub_20C13C604();

        (*(v249 + 8))(v284, v276);
        (*(v250 + 8))(v252, v251);
        (*(v283 + 8))(v281, v282);
        (v264[1])(v263, v265);
        v89 = sub_20C13C634();
        v90 = *(*(v89 - 8) + 56);
        v91 = v254;
        return v90(v91, 0, 1, v89);
      case 0x23uLL:
        v195 = v53;
        v196 = v54;
        v197 = swift_projectBox();
        (*(v196 + 16))(v51, v197, v195);
        v85 = v285;
        sub_20B658B0C(v277, v278, v279, v285);
        (*(v196 + 8))(v51, v195);
        goto LABEL_32;
      case 0x2AuLL:
        v207 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v269 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        (*(v283 + 104))(v55);

        v270 = sub_20B6B1778(MEMORY[0x277D84F90]);
        v208 = sub_20C1349B4();
        v210 = v209;
        sub_20C13C594();

        v211 = v284;
        v212 = v279;
        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        v213 = swift_allocObject();
        *(v213 + 32) = 1701667182;
        *(v213 + 16) = xmmword_20C152DF0;
        v214 = MEMORY[0x277D837D0];
        v215 = v269;
        *(v213 + 40) = 0xE400000000000000;
        *(v213 + 48) = v215;
        *(v213 + 56) = v207;
        *(v213 + 72) = v214;
        strcpy((v213 + 80), "impressionType");
        *(v213 + 95) = -18;
        *(v213 + 96) = sub_20C1352D4();
        *(v213 + 104) = v216;
        *(v213 + 120) = v214;
        *(v213 + 128) = 0x6973736572706D69;
        v217 = MEMORY[0x277D83B88];
        *(v213 + 136) = 0xEF7865646E496E6FLL;
        *(v213 + 144) = v212;
        *(v213 + 168) = v217;
        *(v213 + 176) = 0x657079546469;
        *(v213 + 216) = v214;
        *(v213 + 184) = 0xE600000000000000;
        *(v213 + 192) = v208;
        *(v213 + 200) = v210;
        v218 = sub_20B6B1778(v213);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = v218;
        sub_20BEF5D68(v270, sub_20C0B88D4, 0, v219, v286);

        v279 = v286[0];
        v220 = v273;
        v221 = v276;
        (*(v273 + 16))(v272, v211, v276);
        v172 = v274;
        v171 = v275;
        v173 = v280;
        (*(v275 + 16))(v271, v280, v274);
        v222 = MEMORY[0x277D84F90];
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C0B8920(v222);
        v85 = v285;
        sub_20C13C604();
        (*(v220 + 8))(v284, v221);
LABEL_30:
        (*(v171 + 8))(v173, v172);
        goto LABEL_31;
      case 0x32uLL:
        v282 = v54;
        v283 = v53;
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771D90, &qword_20C152E10);
        v199 = swift_projectBox();
        v284 = *v199;
        v200 = v262;
        sub_20B52F9E8(v199 + *(v198 + 48), v262, &qword_27C766270, &qword_20C152E00);
        sub_20B52F9E8(v200, v20, &qword_27C766270, &qword_20C152E00);
        v201 = v267[6];
        if (v201(v20, 1, v266) != 1)
        {
          sub_20B659694(v20, v15);
          v206 = v15;
          goto LABEL_35;
        }

        v202 = v284;

        sub_20B520158(v20, &qword_27C766270, &qword_20C152E00);
        if (*(v202 + 2))
        {
          v203 = v258;
          sub_20B6596F8(&v202[(*(v267 + 80) + 32) & ~*(v267 + 80)], v258, type metadata accessor for RootShowcaseItem);

          v204 = v203;
          v205 = v257;
          sub_20B659694(v204, v257);
          v206 = v205;
LABEL_35:
          v223 = v261;
          sub_20B659694(v206, v261);
          v224 = 0;
          goto LABEL_36;
        }

        v224 = 1;
        v223 = v261;
LABEL_36:
        v225 = v266;
        (v267[7])(v223, v224, 1, v266);
        v226 = v260;
        sub_20B52F9E8(v223, v260, &qword_27C766270, &qword_20C152E00);
        if (v201(v226, 1, v225) == 1)
        {
          sub_20B520158(v223, &qword_27C766270, &qword_20C152E00);
          sub_20B520158(v262, &qword_27C766270, &qword_20C152E00);
          v227 = v226;
LABEL_46:
          sub_20B520158(v227, &qword_27C766270, &qword_20C152E00);
          v85 = v285;
LABEL_47:
          v255 = sub_20C13C634();
          return (*(*(v255 - 8) + 56))(v85, 1, 1, v255);
        }

        v228 = v259;
        sub_20B659694(v226, v259);
        if ((*(v228 + 16) & 1) == 0)
        {
          sub_20B659760(v228, type metadata accessor for RootShowcaseItem);
          sub_20B520158(v223, &qword_27C766270, &qword_20C152E00);
          v227 = v262;
          goto LABEL_46;
        }

        v229 = *(v228 + v266[11]);
        v85 = v285;
        if (!*(v229 + 16))
        {
          sub_20B659760(v228, type metadata accessor for RootShowcaseItem);
          sub_20B520158(v223, &qword_27C766270, &qword_20C152E00);
          sub_20B520158(v262, &qword_27C766270, &qword_20C152E00);
          goto LABEL_47;
        }

        v230 = type metadata accessor for ButtonAction(0);
        sub_20B6596F8(v229 + ((*(*(v230 - 8) + 80) + 32) & ~*(*(v230 - 8) + 80)) + *(v230 + 28), v42, type metadata accessor for ButtonAction.ActionType);
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          sub_20B659760(v228, type metadata accessor for RootShowcaseItem);
          sub_20B520158(v223, &qword_27C766270, &qword_20C152E00);
          sub_20B520158(v262, &qword_27C766270, &qword_20C152E00);
          sub_20B659760(v42, type metadata accessor for ButtonAction.ActionType);
          goto LABEL_47;
        }

        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0);
        v233 = v282;
        v232 = v283;
        (*(v282 + 32))(v48, &v42[*(v231 + 48)], v283);
        v234 = sub_20C138B94();
        (*(*(v234 - 8) + 8))(v42, v234);
        sub_20B658B0C(v277, v278, v279, v85);
        (*(v233 + 8))(v48, v232);
        sub_20B659760(v228, type metadata accessor for RootShowcaseItem);
        sub_20B520158(v223, &qword_27C766270, &qword_20C152E00);
        sub_20B520158(v262, &qword_27C766270, &qword_20C152E00);
LABEL_32:
        v89 = sub_20C13C634();
        v90 = *(*(v89 - 8) + 56);
        v91 = v85;
        return v90(v91, 0, 1, v89);
      case 0x45uLL:
        v63 = swift_projectBox();
        v65 = *v63;
        v64 = v63[1];
        (*(v283 + 104))(v281, *MEMORY[0x277D51748], v282);

        v66 = sub_20C1349B4();
        v269 = v67;
        v270 = v66;
        v68 = sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C13C594();

        v69 = v284;
        v70 = v279;
        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        inited = swift_initStackObject();
        *(inited + 32) = 1701667182;
        *(inited + 16) = xmmword_20C152DF0;
        v72 = MEMORY[0x277D837D0];
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v65;
        *(inited + 56) = v64;
        *(inited + 72) = v72;
        strcpy((inited + 80), "impressionType");
        *(inited + 95) = -18;
        *(inited + 96) = sub_20C1352D4();
        *(inited + 104) = v73;
        *(inited + 120) = v72;
        *(inited + 128) = 0x6973736572706D69;
        v74 = MEMORY[0x277D83B88];
        *(inited + 136) = 0xEF7865646E496E6FLL;
        *(inited + 144) = v70;
        *(inited + 168) = v74;
        *(inited + 176) = 0x657079546469;
        *(inited + 216) = v72;
        v75 = v269;
        v76 = v270;
        *(inited + 184) = 0xE600000000000000;
        *(inited + 192) = v76;
        *(inited + 200) = v75;
        v77 = sub_20B6B1778(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = v77;
        sub_20BEF5D68(v68, sub_20C0B88D4, 0, v78, v286);

        v279 = v286[0];
        v79 = v273;
        v80 = v276;
        (*(v273 + 16))(v272, v69, v276);
        v82 = v274;
        v81 = v275;
        v83 = v280;
        (*(v275 + 16))(v271, v280, v274);
        v84 = MEMORY[0x277D84F90];
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C0B8920(v84);
        v85 = v285;
        sub_20C13C604();
        (*(v79 + 8))(v284, v80);
        (*(v81 + 8))(v83, v82);
        goto LABEL_31;
      case 0x48uLL:
        (*(v283 + 104))(v281, *MEMORY[0x277D51778], v282, v55);
        v270 = sub_20B6B1778(MEMORY[0x277D84F90]);
        v137 = sub_20C1349B4();
        v139 = v138;
        sub_20C13C594();

        v140 = v279;
        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        v141 = swift_initStackObject();
        *(v141 + 16) = xmmword_20C152DF0;
        *(v141 + 32) = 1701667182;
        v142 = MEMORY[0x277D837D0];
        *(v141 + 40) = 0xE400000000000000;
        *(v141 + 48) = 0;
        *(v141 + 56) = 0xE000000000000000;
        *(v141 + 72) = v142;
        strcpy((v141 + 80), "impressionType");
        *(v141 + 95) = -18;
        *(v141 + 96) = sub_20C1352D4();
        *(v141 + 104) = v143;
        *(v141 + 120) = v142;
        *(v141 + 128) = 0x6973736572706D69;
        v144 = MEMORY[0x277D83B88];
        *(v141 + 136) = 0xEF7865646E496E6FLL;
        *(v141 + 144) = v140;
        *(v141 + 168) = v144;
        *(v141 + 176) = 0x657079546469;
        *(v141 + 216) = v142;
        *(v141 + 184) = 0xE600000000000000;
        *(v141 + 192) = v137;
        *(v141 + 200) = v139;
        v145 = sub_20B6B1778(v141);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
        v146 = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = v145;
        sub_20BEF5D68(v270, sub_20C0B88D4, 0, v146, v286);

        v279 = v286[0];
        v147 = v273;
        v148 = v276;
        (*(v273 + 16))(v272, v284, v276);
        v150 = v274;
        v149 = v275;
        v151 = v280;
        (*(v275 + 16))(v271, v280, v274);
        v152 = MEMORY[0x277D84F90];
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C0B8920(v152);
        v85 = v285;
        sub_20C13C604();
        (*(v147 + 8))(v284, v148);
        (*(v149 + 8))(v151, v150);
LABEL_31:
        (*(v283 + 8))(v281, v282);
        goto LABEL_32;
      case 0x4AuLL:
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70, &unk_20C1512E0);
        v93 = swift_projectBox() + *(v92 + 80);
        v95 = *v93;
        v94 = *(v93 + 8);
        v96 = *(v93 + 16);
        v265 = *(v93 + 24);
        v97 = *(v93 + 32);
        v262 = *(v93 + 40);
        v263 = v97;
        (*(v269 + 16))();
        v98 = v95;
        v264 = v98;
        v267 = v94;
        v266 = v96;

        sub_20C133E44();
        v99 = [v98 string];
        v100 = sub_20C13C954();
        v102 = v101;

        (*(v283 + 104))();
        v103 = sub_20C1349B4();
        v261 = v104;
        v105 = sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C13C594();

        v106 = v279;
        sub_20C13C5C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
        v107 = swift_initStackObject();
        *(v107 + 32) = 1701667182;
        *(v107 + 16) = xmmword_20C152DF0;
        v108 = MEMORY[0x277D837D0];
        *(v107 + 40) = 0xE400000000000000;
        *(v107 + 48) = v100;
        *(v107 + 56) = v102;
        *(v107 + 72) = v108;
        strcpy((v107 + 80), "impressionType");
        *(v107 + 95) = -18;
        *(v107 + 96) = sub_20C1352D4();
        *(v107 + 104) = v109;
        *(v107 + 120) = v108;
        *(v107 + 128) = 0x6973736572706D69;
        v110 = MEMORY[0x277D83B88];
        *(v107 + 136) = 0xEF7865646E496E6FLL;
        *(v107 + 144) = v106;
        *(v107 + 168) = v110;
        *(v107 + 176) = 0x657079546469;
        *(v107 + 216) = v108;
        *(v107 + 184) = 0xE600000000000000;
        *(v107 + 192) = v103;
        *(v107 + 200) = v261;
        v111 = sub_20B6B1778(v107);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
        swift_arrayDestroy();
LABEL_10:
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = v111;
        sub_20BEF5D68(v105, sub_20C0B88D4, 0, v130, v286);

        v279 = v286[0];
        v131 = v273;
        v132 = v284;
        v133 = v276;
        (*(v273 + 16))(v272, v284, v276);
        v135 = v274;
        v134 = v275;
        v136 = v280;
        (*(v275 + 16))(v271, v280, v274);
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C0B8920(MEMORY[0x277D84F90]);
        sub_20C13C604();
        (*(v131 + 8))(v132, v133);
        (*(v134 + 8))(v136, v135);
        (*(v283 + 8))(v281, v282);
        (*(v269 + 8))(v268, v270);

        v89 = sub_20C13C634();
        v90 = *(*(v89 - 8) + 56);
        v91 = v285;
        return v90(v91, 0, 1, v89);
      default:
        v153 = sub_20C13C634();
        v154 = *(*(v153 - 8) + 56);
        v155 = v153;
        v156 = v285;

        return v154(v156, 1, 1, v155);
    }
  }
}

uint64_t sub_20B657C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v98 = a2;
  v113 = a4;
  v105 = sub_20C13C5F4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v110 = &v85 - v7;
  v103 = sub_20C13C5A4();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = &v85 - v10;
  v109 = sub_20C1352E4();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_20C136E94();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_20C138894();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v89 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_20C1388B4();
  v95 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - v16;
  v18 = sub_20C138B94();
  v94 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v112 = &v85 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0, &unk_20C14FD00);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v111 = &v85 - v33;
  v34 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v34);
  v38 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 16) <= v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v40 = *(v35 + 72);
  v93 = v37;
  sub_20B6596F8(v39 + v40 * v37, &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAction);
  sub_20B6596F8(&v38[*(v34 + 28)], v23, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20B659760(v38, type metadata accessor for ButtonAction);
    v47 = type metadata accessor for ButtonAction.ActionType;
    v48 = v23;
    goto LABEL_7;
  }

  v41 = *v23;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
  v43 = *(v42 + 64);
  v44 = v111;
  sub_20B5DF134(&v23[*(v42 + 48)], v111, &qword_27C7622F0, &unk_20C14FD00);
  v45 = &v23[v43];
  v46 = v112;
  sub_20B5DF134(v45, v112, &unk_27C768660, &unk_20C152F60);
  if (v41)
  {
    sub_20B520158(v46, &unk_27C768660, &unk_20C152F60);
    sub_20B520158(v44, &qword_27C7622F0, &unk_20C14FD00);
    v47 = type metadata accessor for ButtonAction;
    v48 = v38;
LABEL_7:
    sub_20B659760(v48, v47);
    v49 = 1;
    v50 = v113;
LABEL_21:
    v83 = sub_20C13C634();
    return (*(*(v83 - 8) + 56))(v50, v49, 1, v83);
  }

  sub_20B52F9E8(v44, v31, &qword_27C7622F0, &unk_20C14FD00);
  v51 = v94;
  if ((*(v94 + 48))(v31, 1, v18) == 1)
  {
    sub_20B520158(v31, &qword_27C7622F0, &unk_20C14FD00);
LABEL_14:
    v58 = v97;
    v59 = sub_20B6B1778(MEMORY[0x277D84F90]);
    sub_20B52F9E8(v46, v26, &unk_27C768660, &unk_20C152F60);
    v60 = v96;
    if ((*(v96 + 48))(v26, 1, v58) == 1)
    {
      v97 = v59;
      sub_20B520158(v26, &unk_27C768660, &unk_20C152F60);
    }

    else
    {

      v61 = v89;
      (*(v60 + 32))(v89, v26, v58);
      sub_20C138814();
      v62 = v90;
      sub_20C136DF4();
      v97 = MetricClickMarketingFields.impressionDictionary()();
      (*(v91 + 8))(v62, v92);
      (*(v60 + 8))(v61, v58);
    }

    v63 = *(v38 + 5);
    v86 = v38;
    if (v63)
    {
      v64 = *(v38 + 4);
      v65 = v63;
    }

    else
    {
      v65 = 0xE600000000000000;
      v64 = 0x744920797254;
    }

    (*(v107 + 104))();

    v66 = sub_20C1349B4();
    v68 = v67;
    sub_20C13C594();

    v69 = v110;
    v70 = v93;
    sub_20C13C5C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_20C152DF0;
    v72 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v64;
    *(inited + 56) = v65;
    *(inited + 72) = v72;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = sub_20C1352D4();
    *(inited + 104) = v73;
    *(inited + 120) = v72;
    *(inited + 128) = 0x6973736572706D69;
    v74 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = v70;
    *(inited + 168) = v74;
    *(inited + 176) = 0x657079546469;
    *(inited + 216) = v72;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = v66;
    *(inited + 200) = v68;
    v75 = sub_20B6B1778(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v75;
    sub_20BEF5D68(v97, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, &v114);

    v77 = v104;
    v78 = v105;
    (*(v104 + 16))(v102, v69, v105);
    v79 = v101;
    v80 = v108;
    v81 = v103;
    (*(v101 + 16))(v100, v108, v103);
    v82 = MEMORY[0x277D84F90];
    sub_20C0B8920(MEMORY[0x277D84F90]);
    sub_20C0B8920(v82);
    v50 = v113;
    sub_20C13C604();
    (*(v77 + 8))(v110, v78);
    (*(v79 + 8))(v80, v81);
    (*(v107 + 8))(v106, v109);
    sub_20B520158(v112, &unk_27C768660, &unk_20C152F60);
    sub_20B520158(v111, &qword_27C7622F0, &unk_20C14FD00);
    sub_20B659760(v86, type metadata accessor for ButtonAction);
    v49 = 0;
    goto LABEL_21;
  }

  (*(v51 + 32))(v20, v31, v18);
  sub_20C138B74();
  v52 = v95;
  v53 = v88;
  v54 = (*(v95 + 88))(v17, v88);
  if (v54 == *MEMORY[0x277D540C8])
  {
    v55 = *(v52 + 8);
    v95 = v52 + 8;
    v85 = v55;
    v55(v17, v53);
    v56 = v87;
    sub_20C138B74();
    sub_20C1388A4();
    v85(v56, v53);
    (*(v51 + 8))(v20, v18);
    goto LABEL_14;
  }

  if (v54 == *MEMORY[0x277D540D0])
  {
    (*(v52 + 96))(v17, v53);
    sub_20C134994();
    (*(v51 + 8))(v20, v18);
    v57 = sub_20C132C14();
    (*(*(v57 - 8) + 8))(v17, v57);
    goto LABEL_14;
  }

LABEL_24:
  result = sub_20C13DFE4();
  __break(1u);
  return result;
}