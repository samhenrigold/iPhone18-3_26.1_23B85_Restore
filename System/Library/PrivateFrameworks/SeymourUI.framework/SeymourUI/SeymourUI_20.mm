uint64_t sub_20B75F304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = v2;
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v42 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_5:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v9 = Strong;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 8))(v9, &off_2822B2B58, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_8:
  v42 = v5;
  v53 = v8;
  sub_20B526D44(0, v13, 0);
  v14 = v53;
  v15 = v12 + 32;
  do
  {
    sub_20B51CC64(v15, v50);
    v16 = v51;
    v17 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1(v50);
    v53 = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_20B526D44((v21 > 1), v22 + 1, 1);
      v14 = v53;
    }

    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v15 += 40;
    --v13;
  }

  while (v13);

  v5 = v42;
LABEL_13:

  v24 = sub_20B71C584();
  v50[0] = v14;
  sub_20B8D9590(v24);
  v25 = v50[0];
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));

  sub_20B527580(v26);

  v27 = v45;
  sub_20C13A1D4();

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B760068;
  *(v30 + 24) = v29;
  v32 = v47;
  v31 = v48;
  v33 = v44;
  (*(v47 + 16))(v44, v27, v48);
  v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v32 + 32))(v36 + v34, v33, v31);
  v37 = (v36 + v35);
  *v37 = sub_20B760084;
  v37[1] = v30;
  v38 = v46;
  sub_20C137C94();
  (*(v32 + 8))(v27, v31);
  v39 = sub_20C137CB4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_20B52347C, v40);

  return (*(v49 + 8))(v38, v5);
}

void sub_20B75F814(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20B75CB0C(*a1);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 40);
    do
    {
      v8 = *v7;
      v9[0] = *(v7 - 1);
      v9[1] = v8;

      sub_20B75F8B4(v9, a3, v5);

      v7 += 2;
      --v6;
    }

    while (v6);
  }
}

void sub_20B75F8B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (sub_20B75FBFC(v10, v9, v24), v11 = , v12 = v24[0], v24[0] != 2))
  {
    v22 = v25;
    v38 = v26;
    v23 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    *&v31 = v10;
    *(&v31 + 1) = v9;
    MEMORY[0x28223BE20](v11);
    *(&v21 - 2) = &v31;
    v20 = sub_20B79692C(sub_20B606650, (&v21 - 4), a3) & 1;
    if (v20 == (v12 & 1) || (v37 = v19 & 1, LOBYTE(v31) = v20, *(&v31 + 1) = v22, v32 = v38, v33 = v23, v34 = v17, v35 = v18, v36 = v19 & 1, swift_beginAccess(), !swift_weakLoadStrong()))
    {
      sub_20B520158(v24, &qword_27C764BC0, &unk_20C1606C0);
    }

    else
    {
      sub_20B75E770(v10, v9, &v31);
      sub_20B520158(v24, &qword_27C764BC0, &unk_20C1606C0);
    }
  }

  else
  {
    sub_20C13B4E4();

    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v31 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_20B51E694(v10, v9, &v31);
      _os_log_impl(&dword_20B517000, v13, v14, "No download entry for identifier: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_20B75FBFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 152);
  if (*(v7 + 16))
  {

    v8 = sub_20B65AA60(a1, a2);
    if (v9)
    {
      v10 = *(v7 + 56) + 56 * v8;
      v23 = *(v10 + 16);
      v25 = *v10;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 45) | (*(v10 + 47) << 16);
      v14 = *(v10 + 41);
      v15 = *(v10 + 48);
      sub_20B760050(*(v10 + 24), v11, *(v10 + 40));

      v17 = v23;
      v16 = v25;
      v18 = (v14 << 8) | (v13 << 40) | v12;
      goto LABEL_13;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 24);
      ObjectType = swift_getObjectType();
      (*(v21 + 16))(v31, v20, &off_2822B2B58, a1, a2, ObjectType, v21);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
LABEL_10:
  sub_20B52F9E8(v31, &v28, &qword_27C764BB8, &unk_20C156DA0);
  if (v29)
  {
    sub_20B51C710(&v28, v30);
    sub_20B51CC64(v30, v27);
    sub_20B6A6428(v27, v33);
    v24 = v33[1];
    v26 = v33[0];
    v11 = v34;
    v18 = v35;
    v15 = v36;
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_20B520158(v31, &qword_27C764BB8, &unk_20C156DA0);
    v17 = v24;
    v16 = v26;
  }

  else
  {
    sub_20B520158(v31, &qword_27C764BB8, &unk_20C156DA0);
    sub_20B520158(&v28, &qword_27C764BB8, &unk_20C156DA0);
    v11 = 0;
    v18 = 0;
    v15 = 0;
    v16 = xmmword_20C14F2B0;
    v17 = 0uLL;
  }

LABEL_13:
  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v11;
  *(a3 + 40) = v18;
  *(a3 + 48) = v15;
}

uint64_t sub_20B75FE38()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20B75FEC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 2);
  v9[0] = *(a1 + 1);
  v9[1] = v4;
  v10 = *(a1 + 3);
  v5 = v10;
  v11 = *(a1 + 64);
  v6 = v11;
  *(a2 + 16) = v9[0];
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_20B7600B4(v9, v8);
}

void *sub_20B75FF20()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v3, (v0 + 6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v3, (v0 + 11));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v1 = *(&v3[0] + 1);
  v0[16] = *&v3[0];
  v0[17] = v1;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[18] = sub_20C13A914();
  v0[19] = sub_20B6B2458(MEMORY[0x277D84F90]);
  return v0;
}

double sub_20B760050(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20B6A6418(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_20B760110()
{
  result = qword_27C764BD0;
  if (!qword_27C764BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764BD0);
  }

  return result;
}

uint64_t sub_20B760164(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result != 2)
  {
    return sub_20B584078(a4, a5, a6);
  }

  return result;
}

void sub_20B760184(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v66 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v10; ; v10 = i)
  {
    v17 = v9;
    v18 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(a1 + 56) + 56 * v20;
    v26 = *(v24 + 16);
    v25 = *(v24 + 32);
    v27 = *v24;
    v57 = *(v24 + 48);
    v56[1] = v26;
    v56[2] = v25;
    v56[0] = v27;
    v28 = *(v24 + 16);
    v52 = *v24;
    v53 = v28;
    v54 = *(v24 + 32);
    v55 = *(v24 + 48);
    *&v51 = v23;
    *(&v51 + 1) = v22;

    sub_20B7600B4(v56, v58);
    a2(&v60, &v51);
    v58[2] = v53;
    v58[3] = v54;
    v59 = v55;
    v58[0] = v51;
    v58[1] = v52;
    sub_20B520158(v58, &unk_27C764BE0, &unk_20C156DD0);
    v29 = v61;
    if (!v61)
    {
LABEL_22:
      sub_20B583EDC(a1);

      return;
    }

    v30 = v60;
    v31 = *v66;
    v33 = sub_20B65AA60(v60, v61);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_24;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA105C0();
      }
    }

    else
    {
      sub_20BA0A5E8(v36, a4 & 1);
      v38 = sub_20B65AA60(v30, v29);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_26;
      }

      v33 = v38;
    }

    v50 = (v17 - 1) & v17;
    v40 = *v66;
    if (v37)
    {

      v12 = v40[7] + 56 * v33;
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      *(v12 + 48) = v65;
      v15 = v63;
      *v12 = v62;
      *(v12 + 16) = v15;
      v16 = *(v12 + 40);
      *(v12 + 32) = v64;
      sub_20B584078(v13, v14, v16);
    }

    else
    {
      v40[(v33 >> 6) + 8] |= 1 << v33;
      v41 = (v40[6] + 16 * v33);
      *v41 = v30;
      v41[1] = v29;
      v42 = v40[7] + 56 * v33;
      v43 = v63;
      *v42 = v62;
      *(v42 + 16) = v43;
      *(v42 + 32) = v64;
      *(v42 + 48) = v65;
      v44 = v40[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_25;
      }

      v40[2] = v46;
    }

    a4 = 1;
    v11 = v18;
    v9 = v50;
  }

  v19 = v11;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v6 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_20C13E054();
  __break(1u);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_20B583F4C(*(v0 + 40), *(v0 + 48), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B760588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B7606EC()
{
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView);
  v1 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  v2 = v6;
  if (v6)
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x20F2F43B0](v3);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v1 = v5;
  }

  sub_20B520158(&v6, &unk_27C764C80, &unk_20C156F70);
  return v1;
}

char *sub_20B7607B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v5[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell__canBecomeFocused] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView] = 0;
  v12 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView;
  v13 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v14 = sub_20BFBFE48();

  swift_getObjectType();
  v15 = sub_20BFBFE70(3);

  swift_getObjectType();
  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  v18 = sub_20BFBFE9C(v17);

  swift_getObjectType();
  v19 = [v16 labelColor];
  v20 = sub_20BFBFEC8(v19);

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v12] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView;
  v22 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v22 setAxis_];
  [v22 setAlignment_];
  [v22 setDistribution_];
  [v22 setSpacing_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v21] = v22;
  v23 = &v5[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout];
  sub_20B7633A8(v61);
  v24 = v61[3];
  v23[2] = v61[2];
  v23[3] = v24;
  v25 = v61[5];
  v23[4] = v61[4];
  v23[5] = v25;
  v26 = v61[1];
  *v23 = v61[0];
  v23[1] = v26;
  v27 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttons] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonActions] = v27;
  v60.receiver = v5;
  v60.super_class = type metadata accessor for TVEditorialCollectionDetailHeaderCell(0);
  v28 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = [v28 contentView];
  v30 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView;
  [v29 addSubview_];

  v31 = [v28 &selRef_setMaximumFractionDigits_];
  v32 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView;
  [v31 addSubview_];

  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20C150AE0;
  v34 = [*&v28[v30] leadingAnchor];
  v35 = [v28 &selRef_setMaximumFractionDigits_];
  v36 = [v35 leadingAnchor];

  v37 = &v28[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout];
  v38 = [v34 constraintEqualToAnchor:v36 constant:*&v28[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout + 24]];

  *(v33 + 32) = v38;
  v39 = [*&v28[v30] widthAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v33 + 40) = v40;
  v41 = [*&v28[v30] topAnchor];
  v42 = [*&v28[v32] topAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v33 + 48) = v43;
  v44 = [*&v28[v32] leadingAnchor];
  v45 = [*&v28[v30] trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:v37[1] + 80.0];

  *(v33 + 56) = v46;
  v47 = [*&v28[v32] trailingAnchor];
  v48 = [v28 contentView];
  v49 = [v48 trailingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:-80.0];
  *(v33 + 64) = v50;
  v51 = [*&v28[v32] bottomAnchor];
  v52 = [v28 contentView];

  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:-40.0];

  *(v33 + 72) = v54;
  v55 = [*&v28[v32] heightAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v33 + 80) = v56;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v57 = sub_20C13CC54();

  [v59 activateConstraints_];

  return v28;
}

void sub_20B761094(uint64_t a1)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764C50, &qword_20C156F48);
  MEMORY[0x28223BE20](v63);
  v4 = (v60 - v3);
  v5 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonActions;
  *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonActions] = a1;

  v6 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttons;
  swift_beginAccess();
  v7 = *(v6 + v1);
  if (v7 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {
    v9 = *(*&v1[v5] + 16);
    v10 = *(v6 + v1);
    v11 = v10 >> 62;
    if (v9 < i)
    {
      break;
    }

    if (v11)
    {
      goto LABEL_61;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      goto LABEL_62;
    }

LABEL_20:
    v16 = *(v6 + v1);
    if (v16 >> 62)
    {
      goto LABEL_90;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = __OFSUB__(v9, v17);
    v19 = v9 - v17;
    if (v18)
    {
      goto LABEL_92;
    }

LABEL_22:
    if (v19 < 0)
    {
      goto LABEL_93;
    }

    if (!v19)
    {
      goto LABEL_63;
    }

    v20 = 0;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      sub_20B761758(v64, v1);
      ++v20;
      if (v21 == v19)
      {
        goto LABEL_63;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  if (v11)
  {
    v12 = sub_20C13DB34();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v12 < 0)
  {
    v13 = v9;
  }

  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v12 >= v14)
  {
    v9 = a1;
    if (v11)
    {
      if (v10 < 0)
      {
        a1 = v10;
      }

      else
      {
        a1 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_20C13DB34() >= v14)
      {
        v15 = sub_20C13DB34();
        goto LABEL_33;
      }

LABEL_85:
      __break(1u);
    }

    else
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 < v14)
      {
        goto LABEL_85;
      }

LABEL_33:
      if (v15 >= v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          if ((v10 & 0xC000000000000001) == 0 || v14 == v12)
          {
            swift_bridgeObjectRetain_n();
          }

          else
          {
            if (v14 >= v12)
            {
              goto LABEL_94;
            }

            a1 = sub_20B51C88C(0, &qword_27C7676C0, 0x277D753C8);
            swift_bridgeObjectRetain_n();

            v22 = v14;
            do
            {
              v23 = v22 + 1;
              sub_20C13DCB4();
              v22 = v23;
            }

            while (v12 != v23);
          }

          v61 = v6;

          v62 = v5;
          if (v11)
          {
            v26 = sub_20C13DE54();
            v25 = v27;
            v14 = v28;
            v30 = v29;

            v24 = v26;
            v12 = v30 >> 1;
          }

          else
          {
            v24 = v10 & 0xFFFFFFFFFFFFFF8;
            v25 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
          }

          v9 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView;
          v60[1] = v24;
          swift_unknownObjectRetain();
          v5 = v12 - v14;
          if (v12 != v14)
          {
            if (v14 <= v12)
            {
              v31 = v12;
            }

            else
            {
              v31 = v14;
            }

            a1 = v31 - v14;
            v32 = (v25 + 8 * v14);
            v6 = &off_277D9A000;
            while (a1)
            {
              v33 = *v32++;
              v34 = *&v1[v9];
              v35 = v33;
              [v34 removeArrangedSubview_];
              [v35 removeFromSuperview];

              --a1;
              if (!--v5)
              {
                goto LABEL_52;
              }
            }

            __break(1u);
            goto LABEL_57;
          }

LABEL_52:
          swift_unknownObjectRelease_n();
          v6 = v61;
          v11 = *(v61 + v1);
          if (!(v11 >> 62))
          {
            v36 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:
            v5 = v62;
            v37 = *(*&v1[v62] + 16);
            v38 = v36 - v37;
            if (!__OFSUB__(v36, v37))
            {

              *(v6 + v1) = sub_20BBD1490(v38, v11);

              goto LABEL_63;
            }

            __break(1u);
LABEL_90:
            v59 = sub_20C13DB34();
            v18 = __OFSUB__(v9, v59);
            v19 = v9 - v59;
            if (v18)
            {
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
              return;
            }

            goto LABEL_22;
          }

LABEL_88:
          v36 = sub_20C13DB34();
          goto LABEL_54;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  __break(1u);
LABEL_61:
  v39 = sub_20C13DB34();
  v9 = *(*&v1[v5] + 16);
  if (v39 < v9)
  {
    goto LABEL_20;
  }

LABEL_62:

LABEL_63:
  v40 = *(v6 + v1);
  v41 = *&v1[v5];
  if (v40 >> 62)
  {
    goto LABEL_83;
  }

  v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_65:

  if (v42)
  {
    v43 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x20F2F5430](v43, v40);
      }

      else
      {
        if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v42 = sub_20C13DB34();
          goto LABEL_65;
        }

        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = *(v41 + 16);
      if (v43 == v46)
      {

        break;
      }

      if (v43 >= v46)
      {
        goto LABEL_82;
      }

      v47 = v43 + 1;
      v48 = *(type metadata accessor for ButtonAction(0) - 8);
      v49 = v41 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v43;
      v50 = *(v63 + 48);
      *v4 = v45;
      sub_20B7632E0(v49, v4 + v50, type metadata accessor for ButtonAction);
      sub_20B761A64(v45, v4 + v50, v1);
      sub_20B520158(v4, &unk_27C764C50, &qword_20C156F48);
      v43 = v47;
    }

    while (v42 != v47);
  }

  v51 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView];
  v52 = [v51 subviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v53 = sub_20C13CC74();

  if (v53 >> 62)
  {
    v54 = sub_20C13DB34();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v54)
  {
    [v51 removeFromSuperview];
    v55 = [*&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView] leadingAnchor];
    v56 = [v1 contentView];
    v57 = [v56 leadingAnchor];

    v58 = [v55 constraintEqualToAnchor:v57 constant:80.0];
    [v58 setActive_];
  }
}

void sub_20B761758(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  if (_UISolariumEnabled())
  {
    v6 = [objc_opt_self() buttonWithType_];
    sub_20C13D714();
    v7 = sub_20C13D874();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    sub_20C13D894();
    v8 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttons;
    swift_beginAccess();
    v9 = v6;
    MEMORY[0x20F2F43B0]();
    if (*((*(a2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(a2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    swift_endAccess();
    [*(a2 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView) addArrangedSubview_];
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
    v11 = TVButtonTextContentView.init(title:)(0, 0);
    v12 = objc_allocWithZone(type metadata accessor for TVButton());
    v13 = sub_20BB87F6C(v11, 0, 0, v12, 0.0, 0.0, 0.0, 0.0);
    v14 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttons;
    swift_beginAccess();
    v15 = v13;
    MEMORY[0x20F2F43B0]();
    if (*((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    swift_endAccess();
    v16 = *(a2 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView);
    v17 = v15;
    [v16 addArrangedSubview_];
    v18 = [v17 heightAnchor];

    v9 = [v18 constraintEqualToConstant_];
    [v9 setActive_];
  }
}

void sub_20B761A64(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v42 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v42 - v19;
  v21 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v21);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ButtonAction(0);
  sub_20B7632E0(a2 + *(v24 + 28), v23, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_20B763348(v23, type metadata accessor for ButtonAction.ActionType);
LABEL_7:
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v42[1] = a2;
      v44 = a3;
      v43 = a1;
      sub_20C13D884();
      v29 = sub_20C13D874();
      v30 = *(*(v29 - 8) + 48);
      if (v30(v11, 1, v29))
      {
        sub_20B52F9E8(v11, v17, &qword_27C764C60, &unk_20C156F50);
        sub_20C13D894();
        sub_20B520158(v11, &qword_27C764C60, &unk_20C156F50);
      }

      else
      {
        sub_20C13D784();
        sub_20C13D894();
      }

      sub_20C13D884();
      if (v30(v8, 1, v29))
      {
        sub_20B52F9E8(v8, v17, &qword_27C764C60, &unk_20C156F50);
        sub_20C13D894();
        sub_20B520158(v8, &qword_27C764C60, &unk_20C156F50);
      }

      else
      {

        sub_20C13D824();
        sub_20C13D894();
      }

      v37 = v43;
      [v28 addTarget:v44 action:sel_handleTappedButton_ forControlEvents:0x2000];
    }

    else
    {
      type metadata accessor for TVButton();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        return;
      }

      v32 = v31;
      v33 = a3;
      v34 = *(a2 + 32);
      v35 = *(a2 + 40);
      objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

      v36 = a1;
      v37 = TVButtonTextContentView.init(title:)(v34, v35);
      sub_20BB88C24(v37, v32);
      v32[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
      sub_20B9DDDD4();
      [v32 addTarget:v33 action:sel_handleTappedButton_ forControlEvents:0x2000];
    }

    goto LABEL_24;
  }

  if (*v23)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v44 = a3;
    v43 = a1;
    sub_20C13D884();
    v25 = sub_20C13D874();
    v26 = *(*(v25 - 8) + 48);
    if (v26(v20, 1, v25))
    {
      sub_20B52F9E8(v20, v17, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      sub_20B520158(v20, &qword_27C764C60, &unk_20C156F50);
    }

    else
    {
      sub_20C13D784();
      sub_20C13D894();
    }

    sub_20C13D884();
    if (v26(v14, 1, v25))
    {
      sub_20B52F9E8(v14, v17, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      sub_20B520158(v14, &qword_27C764C60, &unk_20C156F50);
    }

    else
    {
      sub_20C13D824();
      sub_20C13D894();
    }

    v37 = v43;
    [v43 removeTarget:v44 action:sel_handleTappedButton_ forControlEvents:0x2000];
  }

  else
  {
    type metadata accessor for TVButton();
    v38 = swift_dynamicCastClass();
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
    v41 = a1;
    v37 = TVButtonTextContentView.init(title:)(0, 0);
    sub_20BB88C24(v37, v39);
    v39[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 1;
    sub_20B9DDDD4();
    [v39 removeTarget:a3 action:sel_handleTappedButton_ forControlEvents:0x2000];
  }

LABEL_24:
}

void sub_20B762070(uint64_t a1)
{
  v3 = sub_20C133244();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView) subviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v15 = sub_20C13CC74();

  v16 = sub_20BBD1754(v15);

  if (v16)
  {
    v17 = sub_20BD903E4(a1, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonActions);
      if (v17 < *(v20 + 16))
      {
        if (v17 < 0)
        {
          __break(1u);
        }

        else
        {
          sub_20B7632E0(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v13, type metadata accessor for ButtonAction);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = Strong;
            sub_20B7632E0(v13, v8, type metadata accessor for ButtonAction);
            v23 = swift_storeEnumTagMultiPayload();
            v24 = MEMORY[0x28223BE20](v23);
            *(&v29 - 4) = 0;
            *(&v29 - 24) = 1;
            *(&v29 - 2) = v8;
            *(&v29 - 1) = v22;
            v25 = [*(v22 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
            if (v25)
            {
              v26 = v25;
              sub_20C1331E4();

              sub_20C0C1CDC(v5, sub_20B5E27BC);
              (*(v30 + 8))(v5, v3);
            }

            swift_unknownObjectRelease();
            sub_20B763348(v13, type metadata accessor for ButtonAction);
            v27 = type metadata accessor for ShelfItemAction;
            v28 = v8;
          }

          else
          {
            v27 = type metadata accessor for ButtonAction;
            v28 = v13;
          }

          sub_20B763348(v28, v27);
        }
      }
    }
  }
}

double sub_20B762488(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v4 = (type metadata accessor for PageAlertAction(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F980;
  v7 = v6 + v5;
  sub_20C132ED4();
  v8 = (v7 + v4[8]);
  *v8 = 0;
  v8[1] = 0;
  *(v7 + v4[7]) = 2;
  v9 = (v7 + v4[9]);
  *v9 = 0;
  v9[1] = 0;
  v17[0] = v6;
  v17[1] = MEMORY[0x277D84F90];
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v18 = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 232);

      v15(v11, v17, ObjectType, v13);
      sub_20B76328C(v17);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_20B76328C(v17);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    sub_20B76328C(v17);
  }

  return result;
}

id sub_20B7626D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVEditorialCollectionDetailHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVEditorialCollectionDetailHeaderCell(uint64_t a1)
{
  result = qword_27C764C38;
  if (!qword_27C764C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B762838(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_20B762934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_20B76297C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20B7629E4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a3 string];
    v8 = sub_20C13C954();
    v10 = v9;

    sub_20B762488(v8, v10);
  }

  return result;
}

void sub_20B762A80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_20B762AE8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B762B34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B762B9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

CGFloat sub_20B762C00()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v2;
  v10 = v4;
  v11 = v6;
  v12 = v8;

  return CGRectGetWidth(*&v9);
}

void sub_20B762CA4(double a1, double a2)
{
  if (a2 <= 0.0)
  {
    v9 = [v2 contentView];
    [v9 setAlpha_];

    v2[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell__canBecomeFocused] = 0;
LABEL_8:
    [v2 setNeedsFocusUpdate];
    [v2 updateFocusIfNeeded];
    goto LABEL_9;
  }

  v4 = &v2[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout];
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout + 72];
  v6 = [v2 contentView];
  v7 = v6;
  v8 = v4[10];
  if (v5 <= a2)
  {
    [v6 setAlpha_];

    v2[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell__canBecomeFocused] = 1;
    goto LABEL_8;
  }

  if (v8 <= 1.0 - a2 / v5)
  {
    v8 = 1.0 - a2 / v5;
  }

  [v6 setAlpha_];

LABEL_9:
  if (a2 <= 100.0 && v2[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell__canBecomeFocused] == 1)
  {
    v2[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell__canBecomeFocused] = 0;
    [v2 setNeedsFocusUpdate];

    [v2 updateFocusIfNeeded];
  }
}

void sub_20B762E28(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xF)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView];
    v10 = sub_20C13C914();
    [v9 setMoreLabelText_];

    v11 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v12 = [v11 length];
    sub_20B905400(*&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout + 32]);
    type metadata accessor for Key(0);
    sub_20B76322C();
    v13 = sub_20C13C744();

    [v11 addAttributes:v13 range:{0, v12}];

    [v9 setDescriptionText_];
    sub_20B761094(v8);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v7;
    aBlock[4] = sub_20B763284;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B762A80;
    aBlock[3] = &block_descriptor_9;
    v16 = _Block_copy(aBlock);
    v17 = v7;

    [v9 setSelectionHandler_];
    _Block_release(v16);
  }

  else
  {
    sub_20C13B534();

    v18 = v1;
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v21 = 138543618;
      *(v21 + 4) = v18;
      *v22 = v18;
      *(v21 + 12) = 2082;
      aBlock[6] = a1;
      v23 = sub_20B5F66D0();
      v24 = v18;
      v25 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v23);
      v27 = sub_20B51E694(v25, v26, aBlock);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_20B517000, v19, v20, "Attempted to configure %{public}@ with item: %{public}s", v21, 0x16u);
      sub_20B520158(v22, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v22, -1, -1);
      v28 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_20B76322C()
{
  result = qword_27C761D80;
  if (!qword_27C761D80)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761D80);
  }

  return result;
}

uint64_t sub_20B7632E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B763348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20B7633A8@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C68, qword_20C16F5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76918];
  v6 = v3;
  *(inited + 40) = [v4 preferredFontForTextStyle_];
  v7 = sub_20B6B3F64(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C764C70, &unk_20C156F60);
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v8 labelColor];
  *a1 = xmmword_20C156DE0;
  *(a1 + 16) = xmmword_20C156DF0;
  *(a1 + 32) = v7;
  *(a1 + 40) = xmmword_20C156E00;
  *(a1 + 56) = v9;
  result = 982.0;
  *(a1 + 64) = xmmword_20C156E10;
  *(a1 + 80) = 0x3F1A36E2EB1C432DLL;
  *(a1 + 88) = v10;
  return result;
}

void sub_20B763514()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell__canBecomeFocused) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView) = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView;
  v5 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v6 = sub_20BFBFE48();

  swift_getObjectType();
  v7 = sub_20BFBFE70(3);

  swift_getObjectType();
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = sub_20BFBFE9C(v9);

  swift_getObjectType();
  v11 = [v8 labelColor];
  v12 = sub_20BFBFEC8(v11);

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v14 setAxis_];
  [v14 setAlignment_];
  [v14 setDistribution_];
  [v14 setSpacing_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v13) = v14;
  v15 = (v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_layout);
  sub_20B7633A8(v20);
  v16 = v20[3];
  v15[2] = v20[2];
  v15[3] = v16;
  v17 = v20[5];
  v15[4] = v20[4];
  v15[5] = v17;
  v18 = v20[1];
  *v15 = v20[0];
  v15[1] = v18;
  v19 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttons) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonActions) = v19;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B7637F4(void *a1)
{
  v2 = [a1 nextFocusedView];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView];
  if (v2)
  {
    v15 = v2;
    if ([v2 isDescendantOfView_])
    {
      v4 = v3;
    }

    else
    {
      v4 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView];
      if (([v15 isDescendantOfView_] & 1) == 0)
      {
        v10 = [v3 subviews];
        sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
        v11 = sub_20C13CC74();

        v12 = v11 >> 62 ? sub_20C13DB34() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v12)
        {
          v4 = v3;
        }
      }
    }

    v13 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView];
    *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView] = v4;
    v14 = v4;

    [v1 setNeedsFocusUpdate];
    [v1 updateFocusIfNeeded];
  }

  else
  {
    v5 = [*&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_buttonStackView] subviews];
    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v6 = sub_20C13CC74();

    if (v6 >> 62)
    {
      v7 = sub_20C13DB34();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      v3 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_textView];
    }

    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView];
    *&v1[OBJC_IVAR____TtC9SeymourUI37TVEditorialCollectionDetailHeaderCell_preferredFocusView] = v3;
    v9 = v3;

    [v1 setNeedsFocusUpdate];

    [v1 updateFocusIfNeeded];
  }
}

void sub_20B763A44(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v33 - v12;
  v14 = sub_20C1333A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v34 = v15;
    v20 = [Strong presentedViewController];
    v21 = sub_20C1393F4();
    v22 = v21;
    if (v20)
    {
      sub_20B62BB28();
      v23 = sub_20C13D5F4();

      if (v23)
      {
        v35 = v19;
        v24 = (*(*&v19[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider] + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
        v25 = *v24;
        v33[1] = v24[1];
        v33[2] = v25;
        v26 = *MEMORY[0x277D51838];
        v27 = sub_20C1352F4();
        v28 = *(v27 - 8);
        (*(v28 + 104))(v13, v26, v27);
        (*(v28 + 56))(v13, 0, 1, v27);
        v29 = sub_20C132C14();
        (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
        v30 = sub_20C135ED4();
        (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
        v31 = sub_20C136914();
        (*(*(v31 - 8) + 56))(v4, 1, 1, v31);

        sub_20C133384();
        type metadata accessor for CatalogTipGalleryViewController();
        sub_20B766090(&qword_27C764CE8, v32, type metadata accessor for CatalogTipGalleryViewController, &unk_20C157158);
        sub_20C138C54();
        (*(v34 + 8))(v17, v14);
      }
    }

    else
    {
    }
  }
}

id sub_20B763F5C()
{
  sub_20B764A38();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogTipGalleryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20B764078(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogTipGalleryViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = [v1 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  sub_20B79514C(0);
  v4 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider] + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 48);
      swift_unknownObjectRetain();
      v9(ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_20B7642B8(char a1)
{
  v2 = v1;
  v4 = sub_20C1395D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13B604();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CatalogTipGalleryViewController();
  v19.receiver = v2;
  v19.super_class = v12;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  v13 = sub_20C1380C4();
  (*(v9 + 104))(v11, *MEMORY[0x277D4F8B8], v8);
  v14 = sub_20B8D7248(v11, v13);

  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedEnterEvent;
    if ((*(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedEnterEvent) & 1) == 0)
    {
      swift_getObjectType();
      sub_20C1395C4();
      sub_20B766090(&qword_281103B00, 255, MEMORY[0x277D54428], MEMORY[0x277D54420]);
      sub_20C13A764();
      (*(v5 + 8))(v7, v4);
      *(v2 + v15) = 1;
    }
  }

  sub_20BCD83F4();
  sub_20BCD85CC();
  sub_20B766090(&qword_27C764CF8, v16, type metadata accessor for CatalogTipGalleryViewController, &unk_20C157198);
  sub_20B766090(&qword_27C764D00, v17, type metadata accessor for CatalogTipGalleryViewController, &unk_20C156FA0);
  return sub_20C139364();
}

void sub_20B764604(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogTipGalleryViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20B766090(&qword_27C764CF8, v9, type metadata accessor for CatalogTipGalleryViewController, &unk_20C157198);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B62BB28();
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      sub_20B764A38();
      v17 = v2;
      sub_20B766090(&qword_27C764CE8, v15, type metadata accessor for CatalogTipGalleryViewController, &unk_20C157158);
      sub_20C138C64();
    }
  }
}

uint64_t sub_20B764A38()
{
  v1 = sub_20C1395B4();
  v111 = *(v1 - 8);
  v112 = v1;
  MEMORY[0x28223BE20](v1);
  v110 = v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C1391E4();
  v4 = *(v3 - 8);
  v123 = v3;
  v124 = v4;
  MEMORY[0x28223BE20](v3);
  v113 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v122 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v8 - 8);
  v121 = v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v12 - 8);
  v117 = v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v14 - 8);
  v115 = v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v16 - 8);
  v114 = v76 - v17;
  v120 = sub_20C134F74();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v108 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = v76 - v20;
  MEMORY[0x28223BE20](v21);
  v116 = v76 - v22;
  v23 = sub_20C135D24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v107 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v76 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v76 - v30;
  v32 = sub_20C13B604();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v0;
  v36 = sub_20C1380C4();
  (*(v33 + 104))(v35, *MEMORY[0x277D4F8B8], v32);
  v37 = sub_20B8D7248(v35, v36);

  result = (*(v33 + 8))(v35, v32);
  if ((v37 & 1) != 0 && (*(v125 + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedExitEvent) & 1) == 0)
  {
    v39 = *MEMORY[0x277D50F68];
    v105 = OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedExitEvent;
    v40 = sub_20C134C34();
    v41 = *(*(v40 - 8) + 104);
    v104 = v31;
    v41(v31, v39, v40);
    v42 = *MEMORY[0x277D52110];
    v103 = v24;
    v43 = *(v24 + 104);
    v101 = v24 + 104;
    v102 = v43;
    v106 = v23;
    v43(v31, v42, v23);
    v44 = *(v24 + 16);
    v99 = v24 + 16;
    v100 = v44;
    v44(v28, v31, v23);
    v97 = sub_20C1333A4();
    v45 = *(v97 - 8);
    v96 = *(v45 + 56);
    v98 = v45 + 56;
    v96(v114, 1, 1, v97);
    v94 = sub_20C135664();
    v46 = *(v94 - 8);
    v93 = *(v46 + 56);
    v95 = v46 + 56;
    v93(v115, 1, 1, v94);
    v91 = sub_20C135674();
    v47 = *(v91 - 8);
    v90 = *(v47 + 56);
    v92 = v47 + 56;
    v90(v117, 1, 1, v91);
    v88 = sub_20C134FB4();
    v48 = *(v88 - 8);
    v87 = *(v48 + 56);
    v89 = v48 + 56;
    v87(v119, 1, 1, v88);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
    v49 = *(v85 - 8);
    v84 = *(v49 + 56);
    v86 = v49 + 56;
    v84(v121, 1, 1, v85);
    v82 = sub_20C135F14();
    v50 = *(v82 - 8);
    v81 = *(v50 + 56);
    v83 = v50 + 56;
    v81(v122, 1, 1, v82);
    v51 = v116;
    sub_20C134F54();
    v53 = *(v125 + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_eventHub);
    v52 = *(v125 + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_eventHub + 8);
    ObjectType = swift_getObjectType();
    v55 = *(v118 + 16);
    v79 = v118 + 16;
    v80 = v55;
    v56 = v109;
    v55(v109, v51, v120);
    v57 = v113;
    sub_20C1391F4();
    v78 = sub_20B766090(&qword_281103B30, 255, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
    v58 = v123;
    v76[1] = v53;
    v76[3] = ObjectType;
    v76[2] = v52;
    sub_20C13A764();
    v59 = *(v124 + 8);
    v124 += 8;
    v77 = v59;
    v59(v57, v58);
    v60 = v110;
    sub_20C1395A4();
    sub_20B766090(&qword_281103B08, 255, MEMORY[0x277D54418], MEMORY[0x277D54410]);
    v61 = v112;
    sub_20C13A764();
    (*(v111 + 8))(v60, v61);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0, &unk_20C16A310);
    v63 = v62[12];
    v64 = v62[16];
    v65 = &v28[v62[20]];
    v66 = *MEMORY[0x277D514D8];
    v67 = sub_20C134F84();
    (*(*(v67 - 8) + 104))(v28, v66, v67);
    v68 = sub_20C132C14();
    v69 = *(*(v68 - 8) + 56);
    v69(&v28[v63], 1, 1, v68);
    v69(&v28[v64], 1, 1, v68);
    *v65 = 0;
    *(v65 + 1) = 0;
    v70 = v106;
    v102(v28, *MEMORY[0x277D52128], v106);
    v100(v107, v28, v70);
    v96(v114, 1, 1, v97);
    v93(v115, 1, 1, v94);
    v90(v117, 1, 1, v91);
    v87(v119, 1, 1, v88);
    v84(v121, 1, 1, v85);
    v81(v122, 1, 1, v82);
    sub_20C134F54();
    v71 = v120;
    v80(v108, v56, v120);
    sub_20C1391F4();
    v72 = v123;
    sub_20C13A764();
    v77(v57, v72);
    v73 = *(v118 + 8);
    v73(v56, v71);
    v74 = *(v103 + 8);
    v75 = v106;
    v74(v28, v106);
    v73(v116, v71);
    result = (v74)(v104, v75);
    *(v125 + v105) = 1;
  }

  return result;
}

uint64_t sub_20B7658B0()
{
  v0 = sub_20C13B604();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C1380C4();
  (*(v1 + 104))(v3, *MEMORY[0x277D4F8B8], v0);
  v5 = sub_20B8D7248(v3, v4);

  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

double sub_20B7659D4@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider);

  return result;
}

double sub_20B765A34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B765AEC(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B765B50(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

char *sub_20B765BC0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_resignActiveObserver] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedEnterEvent] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedExitEvent] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_bag] = v15;
  *&a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_eventHub] = v15;
  sub_20B51CC64(v17, &a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_platform] = v15;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_subscriptionToken] = sub_20C13A914();
  v16.receiver = a4;
  v16.super_class = type metadata accessor for CatalogTipGalleryViewController();
  v12 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822A3438;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B766090(&unk_27C769C10, 255, MEMORY[0x277D54398], MEMORY[0x277D54390]);
  v13 = v12;
  swift_unknownObjectRetain();

  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v15);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v13;
}

char *sub_20B765EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v26 - v20;
  (*(v15 + 32))(&v26 - v20, v19);
  type metadata accessor for CatalogTipGalleryPageDataProvider(0);
  swift_allocObject();
  v22 = sub_20BCDAE6C(a3, a4, a5, a6, a1);
  v23 = objc_allocWithZone(type metadata accessor for CatalogTipGalleryViewController());
  (*(v15 + 16))(v17, v21, a8);
  v24 = sub_20B765BC0(a1, v22, v17, v23, a8, a9);

  (*(v15 + 8))(v21, a8);
  return v24;
}

uint64_t sub_20B766090(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_20B7660E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double), uint64_t a7, uint64_t (*a8)(_OWORD *, uint64_t, uint64_t, uint64_t, __n128), double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t (*a18)(uint64_t), uint64_t a19, void *a20, double a21)
{
  v23 = v255;
  v24 = a20;
  v25 = MEMORY[0x277D84F90];
  v253 = MEMORY[0x277D84F90];
  sub_20B9C8094(v254, a20, a3 & 1);
  v217 = v254[5];
  v218 = v254[4];
  v215 = v254[7];
  v216 = v254[6];
  v214 = v254[9];
  v255[0] = v25;
  v26 = *(a1 + 16);
  v27 = &off_277D9A000;
  v28 = &off_277D9A000;
  v219 = a21;
  if (v26)
  {
    v29 = a1 + 32;
    v30 = 0;
    v225 = *(MEMORY[0x277D768C8] + 8);
    v227 = *MEMORY[0x277D768C8];
    v31 = 0.0;
    v33 = *(MEMORY[0x277D768C8] + 16);
    v32 = *(MEMORY[0x277D768C8] + 24);
    v239 = a21;
    v34 = v25;
    v221 = v29;
    v223 = v26;
    while (1)
    {
      v35 = v29 + 168 * v30;
      v36 = *(v35 + 144);
      v256[8] = *(v35 + 128);
      v256[9] = v36;
      v257 = *(v35 + 160);
      v37 = *(v35 + 80);
      v256[4] = *(v35 + 64);
      v256[5] = v37;
      v38 = *(v35 + 112);
      v256[6] = *(v35 + 96);
      v256[7] = v38;
      v39 = *(v35 + 16);
      v256[0] = *v35;
      v256[1] = v39;
      v40 = *(v35 + 48);
      v256[2] = *(v35 + 32);
      v256[3] = v40;
      if (v30 == (*&a21 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        v105 = sub_20C13DB34();
        goto LABEL_57;
      }

      v41 = *(v35 + 144);
      v261 = *(v35 + 128);
      v262 = v41;
      v263 = *(v35 + 160);
      v42 = *(v35 + 80);
      v258[4] = *(v35 + 64);
      v258[5] = v42;
      v43 = *(v35 + 112);
      v259 = *(v35 + 96);
      v260 = v43;
      v44 = *(v35 + 16);
      v258[0] = *v35;
      v258[1] = v44;
      v45 = *(v35 + 48);
      v258[2] = *(v35 + 32);
      v258[3] = v45;
      if (sub_20B5EAF8C(v258) != 1)
      {
        v235 = v30;
        v46 = *(&v259 + 1);
        if (!*(*(&v259 + 1) + 16))
        {
          goto LABEL_4;
        }

        v47 = *(*(&v259 + 1) + 32);

        sub_20B5EAED4(v256, v264);

        v48 = a18(v47);
        v50 = a6(v46, v24, v48, v49, v227, v225, v33, v32);
        if (!v50)
        {

          sub_20B634408(v256);
LABEL_4:
          v30 = v235;
          goto LABEL_5;
        }

        v248 = v50;
        v51 = [v50 heightDimension];
        [v51 dimension];
        v53 = v52;

        v23 = *(v46 + 16);

        v54 = (a8)(v256, v47, *&v239, v24);
        sub_20B634408(v256);
        v55 = MEMORY[0x277D84F90];
        v264[0] = MEMORY[0x277D84F90];
        v251[0] = MEMORY[0x277D84F90];
        if (v54 >> 62)
        {
          v104 = sub_20C13DB34();
          v55 = MEMORY[0x277D84F90];
          v24 = v104;
        }

        else
        {
          v24 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v237 = v23;
        v231 = v47;
        if (v24)
        {
          if (v24 < 1)
          {
            goto LABEL_132;
          }

          v56 = 0;
          v21 = 0.0;
          v57 = 0.0;
          v241 = v55;
          v243 = v55;
          do
          {
            if ((v54 & 0xC000000000000001) != 0)
            {
              v58 = MEMORY[0x20F2F5430](v56, v54);
            }

            else
            {
              v58 = *(v54 + 8 * v56 + 32);
            }

            v59 = v58;
            v60 = [v58 v27[414]];
            v61 = [v60 edges];

            if (v61)
            {
              v69 = [v59 layoutSize];
              v70 = [v69 heightDimension];

              [v70 dimension];
              v72 = v71;

              v73 = v59;
              MEMORY[0x20F2F43B0]();
              if (*((v264[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v264[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20C13CCA4();
              }

              v57 = v57 + v72;
              sub_20C13CCE4();

              v243 = v264[0];
            }

            else
            {
              v62 = [v59 v27[414]];
              v63 = [v62 edges];

              if ((v63 & 4) != 0)
              {
                v64 = [v59 layoutSize];
                v65 = [v64 heightDimension];

                [v65 dimension];
                v67 = v66;

                v68 = v59;
                MEMORY[0x20F2F43B0]();
                if (*((v251[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_20C13CCA4();
                }

                v21 = v21 + v67;
                sub_20C13CCE4();

                v241 = v251[0];
              }

              else
              {
              }
            }

            ++v56;
          }

          while (v24 != v56);
        }

        else
        {
          v21 = 0.0;
          v57 = 0.0;
          v241 = v55;
          v243 = v55;
        }

        v24 = a20;
        v74 = a4(v231, a20);
        v75 = v237;
        if (v237)
        {
          v76 = objc_opt_self();
          v77 = objc_opt_self();
          v245 = objc_opt_self();
          v78 = 0;
          while (1)
          {
            if (v74)
            {
              v79 = [v74 top];
              if (v79)
              {
                v80 = v79;
                [v79 spacing];
                v82 = v81;
              }

              else
              {
                v82 = 0.0;
              }

              v84 = [v74 bottom];
              if (v84)
              {
                v85 = v84;
                [v84 spacing];
                v83 = v86;

                if (v78)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v83 = 0.0;
                if (v78)
                {
LABEL_39:
                  if (v75 == 1)
                  {
                    v87 = [objc_opt_self() fixedSpacing_];
                    v88 = [objc_opt_self() spacingForLeading:0 top:0 trailing:0 bottom:v87];

                    v89 = v88;
LABEL_46:

                    goto LABEL_47;
                  }

                  v89 = 0;
                  goto LABEL_47;
                }
              }
            }

            else
            {
              v83 = 0.0;
              if (v78)
              {
                goto LABEL_39;
              }

              v82 = 0.0;
            }

            if (v237 != 1)
            {
              v95 = [objc_opt_self() fixedSpacing_];
              v96 = [objc_opt_self() spacingForLeading:0 top:v95 trailing:0 bottom:0];

              v89 = v96;
              goto LABEL_46;
            }

            v90 = objc_opt_self();
            v91 = [v90 fixedSpacing_];
            v92 = [v90 fixedSpacing_];
            v93 = [objc_opt_self() spacingForLeading:0 top:v91 trailing:0 bottom:v92];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D18, &qword_20C157238);
            v94 = swift_allocObject();
            *(v94 + 16) = xmmword_20C14F320;
            *(v94 + 32) = v243;
            *(v94 + 40) = v241;
            v89 = v93;

            sub_20C1144BC(v94);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D20, qword_20C157240);
            swift_arrayDestroy();
            swift_deallocClassInstance();
LABEL_47:
            v97 = [v76 fractionalWidthDimension_];
            v98 = [v248 heightDimension];
            v99 = [v77 sizeWithWidthDimension:v97 heightDimension:v98];

            sub_20B51C88C(0, &qword_27C764D10, 0x277CFB880);
            v100 = v99;
            v101 = sub_20C13CC54();

            v102 = [v245 itemWithLayoutSize:v100 supplementaryItems:v101];

            [v102 setEdgeSpacing_];
            v103 = v102;
            MEMORY[0x20F2F43B0]();
            if (*((v255[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();

            --v78;
            --v75;
            v27 = &off_277D9A000;
            if (!v75)
            {
              v34 = v255[0];

              v24 = a20;
              v75 = v237;
              goto LABEL_52;
            }
          }
        }

LABEL_52:
        v30 = v235;
        v31 = v31 + v53 * v75;

        v23 = v255;
        v28 = &off_277D9A000;
        v29 = v221;
        v26 = v223;
      }

LABEL_5:
      ++v30;
      ++*&v239;
      if (v30 == v26)
      {
        goto LABEL_55;
      }
    }
  }

  v31 = 0.0;
  v34 = v25;
LABEL_55:
  if (v34 >> 62)
  {
    goto LABEL_134;
  }

  v105 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_57:
  if (v105)
  {
    v106 = [objc_opt_self() estimatedDimension_];
    v107 = [objc_opt_self() sizeWithWidthDimension:v214 heightDimension:v106];

    v108 = objc_opt_self();
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
    v109 = sub_20C13CC54();

    v110 = [v108 verticalGroupWithLayoutSize:v107 subitems:v109];

    v111 = v110;
    [v111 setContentInsets_];

    v112 = v111;
    MEMORY[0x20F2F43B0]();
    if (*((v253 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v222 = v253;
    v113 = [v112 layoutSize];
    v114 = [v113 heightDimension];

    [v114 dimension];
    v116 = v115;

    [v112 setEdgeSpacing_];
  }

  else
  {

    v222 = MEMORY[0x277D84F90];
    *&v116 = 0.0;
  }

  v117 = a2;
  v118 = *&v219 + v26;
  if (__OFADD__(*&v219, v26))
  {
    __break(1u);
  }

  else
  {
    v219 = *&v254[21];
    a2 = v116;
    v217 = v254[23];
    v218 = v254[22];
    v216 = v254[24];
    v215 = v254[26];
    v252 = MEMORY[0x277D84F90];
    v119 = *(v117 + 16);
    if (v119)
    {
      v26 = 0;
      v236 = v117 + 32;
      v226 = *(MEMORY[0x277D768C8] + 8);
      v228 = *MEMORY[0x277D768C8];
      v21 = 0.0;
      v120 = *(MEMORY[0x277D768C8] + 16);
      v121 = *(MEMORY[0x277D768C8] + 24);
      v246 = MEMORY[0x277D84F90];
      v224 = *(v117 + 16);
      while (1)
      {
        v122 = v236 + 168 * v26;
        v123 = *(v122 + 144);
        *(v23 + 128) = *(v122 + 128);
        *(v23 + 144) = v123;
        v255[20] = *(v122 + 160);
        v124 = *(v122 + 80);
        *(v23 + 64) = *(v122 + 64);
        *(v23 + 80) = v124;
        v125 = *(v122 + 112);
        *(v23 + 96) = *(v122 + 96);
        *(v23 + 112) = v125;
        v126 = *(v122 + 16);
        *v23 = *v122;
        *(v23 + 16) = v126;
        v127 = *(v122 + 48);
        *(v23 + 32) = *(v122 + 32);
        *(v23 + 48) = v127;
        if (__OFADD__(v118, 1))
        {
          goto LABEL_131;
        }

        v240 = v118 + 1;
        v128 = *(v122 + 144);
        *(v23 + 656) = *(v122 + 128);
        *(v23 + 672) = v128;
        v266 = *(v122 + 160);
        v129 = *(v122 + 80);
        *(v23 + 592) = *(v122 + 64);
        *(v23 + 608) = v129;
        v130 = *(v122 + 112);
        *(v23 + 624) = *(v122 + 96);
        *(v23 + 640) = v130;
        v131 = *(v122 + 16);
        *(v23 + 528) = *v122;
        *(v23 + 544) = v131;
        v132 = *(v122 + 48);
        *(v23 + 560) = *(v122 + 32);
        *(v23 + 576) = v132;
        if (sub_20B5EAF8C(v264) != 1)
        {
          v133 = v265;
          if (*(v265 + 16))
          {
            v134 = *(v265 + 32);

            sub_20B5EAED4(v255, v251);

            v135 = a18(v134);
            v137 = a6(v133, v24, v135, v136, v228, v226, v120, v121);
            if (v137)
            {
              v249 = v137;
              v138 = [v137 heightDimension];
              [v138 dimension];
              v140 = v139;

              v238 = *(v133 + 16);

              v234 = v134;
              v23 = (a8)(v255, v134, v118, v24);
              sub_20B634408(v255);
              v141 = MEMORY[0x277D84F90];
              v250 = MEMORY[0x277D84F90];
              v251[0] = MEMORY[0x277D84F90];
              if (v23 >> 62)
              {
                v190 = sub_20C13DB34();
                v141 = MEMORY[0x277D84F90];
                v24 = v190;
              }

              else
              {
                v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v142 = v238;
              v232 = v26;
              if (v24)
              {
                if (v24 < 1)
                {
                  goto LABEL_133;
                }

                v143 = 0;
                v144 = 0.0;
                v145 = 0.0;
                v242 = v141;
                v244 = v141;
                do
                {
                  if ((v23 & 0xC000000000000001) != 0)
                  {
                    v146 = MEMORY[0x20F2F5430](v143, v23);
                  }

                  else
                  {
                    v146 = *(v23 + 8 * v143 + 32);
                  }

                  v147 = v146;
                  v148 = [v146 v27[414]];
                  v149 = [v148 v28[415]];

                  if (v149)
                  {
                    v157 = [v147 layoutSize];
                    v158 = [v157 heightDimension];

                    [v158 dimension];
                    v160 = v159;

                    v161 = v147;
                    MEMORY[0x20F2F43B0]();
                    if (*((v251[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_20C13CCA4();
                    }

                    v145 = v145 + v160;
                    sub_20C13CCE4();

                    v244 = v251[0];
                  }

                  else
                  {
                    v150 = [v147 v27[414]];
                    v151 = [v150 v28[415]];

                    if ((v151 & 4) != 0)
                    {
                      v152 = [v147 layoutSize];
                      v153 = [v152 heightDimension];

                      [v153 dimension];
                      v155 = v154;

                      v156 = v147;
                      MEMORY[0x20F2F43B0]();
                      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_20C13CCA4();
                      }

                      v144 = v144 + v155;
                      sub_20C13CCE4();

                      v242 = v250;
                    }

                    else
                    {
                    }
                  }

                  ++v143;
                }

                while (v24 != v143);
              }

              else
              {
                v144 = 0.0;
                v145 = 0.0;
                v242 = v141;
                v244 = v141;
              }

              v24 = a20;
              v162 = a4(v234, a20);
              if (v238)
              {
                v163 = objc_opt_self();
                v164 = objc_opt_self();
                v247 = objc_opt_self();
                v165 = 0;
                while (1)
                {
                  if (v162)
                  {
                    v166 = [v162 top];
                    if (v166)
                    {
                      v167 = v166;
                      [v166 spacing];
                      v31 = v168;
                    }

                    else
                    {
                      v31 = 0.0;
                    }

                    v170 = [v162 bottom];
                    if (v170)
                    {
                      v171 = v170;
                      [v170 spacing];
                      v169 = v172;

                      if (v165)
                      {
                        goto LABEL_100;
                      }
                    }

                    else
                    {
                      v169 = 0.0;
                      if (v165)
                      {
LABEL_100:
                        if (v142 == 1)
                        {
                          v173 = [objc_opt_self() fixedSpacing_];
                          v174 = [objc_opt_self() spacingForLeading:0 top:0 trailing:0 bottom:v173];

                          v175 = v174;
LABEL_107:

                          goto LABEL_108;
                        }

                        v175 = 0;
                        goto LABEL_108;
                      }
                    }
                  }

                  else
                  {
                    v169 = 0.0;
                    if (v165)
                    {
                      goto LABEL_100;
                    }

                    v31 = 0.0;
                  }

                  if (v238 != 1)
                  {
                    v181 = [objc_opt_self() fixedSpacing_];
                    v182 = [objc_opt_self() spacingForLeading:0 top:v181 trailing:0 bottom:0];

                    v175 = v182;
                    goto LABEL_107;
                  }

                  v176 = objc_opt_self();
                  v177 = [v176 fixedSpacing_];
                  v178 = [v176 fixedSpacing_];
                  v179 = [objc_opt_self() spacingForLeading:0 top:v177 trailing:0 bottom:v178];

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D18, &qword_20C157238);
                  v180 = swift_allocObject();
                  *(v180 + 16) = xmmword_20C14F320;
                  *(v180 + 32) = v244;
                  *(v180 + 40) = v242;
                  v175 = v179;

                  sub_20C1144BC(v180);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D20, qword_20C157240);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
LABEL_108:
                  v183 = [v163 fractionalWidthDimension_];
                  v184 = [v249 heightDimension];
                  v185 = [v164 sizeWithWidthDimension:v183 heightDimension:v184];

                  sub_20B51C88C(0, &qword_27C764D10, 0x277CFB880);
                  v186 = v185;
                  v187 = sub_20C13CC54();

                  v188 = [v247 itemWithLayoutSize:v186 supplementaryItems:v187];

                  [v188 setEdgeSpacing_];
                  v189 = v188;
                  MEMORY[0x20F2F43B0]();
                  if (*((v252 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v252 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_20C13CCA4();
                  }

                  sub_20C13CCE4();

                  --v165;
                  --v142;
                  v27 = &off_277D9A000;
                  v28 = &off_277D9A000;
                  if (!v142)
                  {
                    v246 = v252;

                    v24 = a20;
                    v142 = v238;
                    goto LABEL_113;
                  }
                }
              }

LABEL_113:
              v21 = v21 + v140 * v142;

              v23 = v255;
              v119 = v224;
              v26 = v232;
            }

            else
            {

              sub_20B634408(v255);
            }
          }
        }

        ++v26;
        v118 = v240;
        if (v26 == v119)
        {
          goto LABEL_116;
        }
      }
    }

    v21 = 0.0;
    v246 = MEMORY[0x277D84F90];
LABEL_116:
    if (!(v246 >> 62))
    {
      v191 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_118;
    }
  }

  v191 = sub_20C13DB34();
LABEL_118:
  v192 = *&a2;
  v193 = v222;
  if (v191)
  {
    v194 = [objc_opt_self() estimatedDimension_];
    v195 = [objc_opt_self() sizeWithWidthDimension:v215 heightDimension:v194];

    v196 = objc_opt_self();
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
    v197 = sub_20C13CC54();

    v198 = [v196 verticalGroupWithLayoutSize:v195 subitems:v197];

    v199 = v198;
    [v199 setContentInsets_];

    v200 = v199;
    MEMORY[0x20F2F43B0]();
    if (*((v253 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v193 = v253;
    v201 = [v200 layoutSize];
    v202 = [v201 heightDimension];

    [v202 dimension];
    v204 = v203;

    if (*&a2 <= v204)
    {
      v192 = v204;
    }

    [v200 setEdgeSpacing_];
  }

  else
  {
  }

  if (v193 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_127;
    }

LABEL_138:

    sub_20B767A8C(v254);
    return 0;
  }

  if (!*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_138;
  }

LABEL_127:
  v205 = objc_opt_self();
  v206 = [v205 fractionalWidthDimension_];
  v207 = [v205 estimatedDimension_];
  v208 = [objc_opt_self() sizeWithWidthDimension:v206 heightDimension:v207];

  if (v193 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);

    sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
  }

  v209 = objc_opt_self();
  sub_20B51C88C(0, &qword_27C764D08, 0x277CFB860);
  v210 = sub_20C13CC54();

  v211 = [v209 horizontalGroupWithLayoutSize:v208 subitems:v210];

  v212 = [objc_opt_self() sectionWithGroup_];
  [v212 setContentInsets_];

  sub_20B767A8C(v254);
  return v212;
}

uint64_t sub_20B767AE0()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return 0x7465656873;
    }

    else if (*v0)
    {
      return 0x7473696765726E75;
    }

    else
    {
      return 0x6576697463616E69;
    }
  }

  else if (*(v0 + 8))
  {
    return 0x6954656C62627562;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

char *NavigationInterceptionWindow.init(presenter:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_blurredBackgroundView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v5;
  v6 = &v1[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationDeactivation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationTermination];
  v8 = type metadata accessor for PlaceholderViewController();
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_placeholderViewController] = v9;
  v10 = [objc_allocWithZone(type metadata accessor for NavigationViewController()) initWithRootViewController_];
  *&v1[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController] = v10;
  [*&v10[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_menuGestureRecognizer] setEnabled_];
  *&v1[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_presenter] = a1;
  v58.receiver = v1;
  v58.super_class = type metadata accessor for NavigationInterceptionWindow();

  v11 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display + 8) = &protocol witness table for NavigationInterceptionWindow;
  swift_unknownObjectWeakAssign();
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 blackColor];
  [v13 setBackgroundColor_];

  [v13 setWindowLevel_];
  [v13 setAlpha_];
  [v13 setHidden_];

  v15 = OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_blurredBackgroundView;
  [v13 addSubview_];
  v57 = objc_opt_self();
  v17 = *MEMORY[0x277D768C8];
  v16 = *(MEMORY[0x277D768C8] + 8);
  v18 = *(MEMORY[0x277D768C8] + 16);
  v19 = *(MEMORY[0x277D768C8] + 24);
  v20 = *&v13[v15];
  v21 = [v20 leadingAnchor];
  v22 = [v13 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v16];

  LODWORD(v24) = 1148846080;
  [v23 setPriority_];
  v25 = v23;
  v26 = [v20 trailingAnchor];
  v27 = [v13 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-v19];

  LODWORD(v29) = 1148846080;
  [v28 setPriority_];
  v30 = v28;
  v31 = [v20 topAnchor];
  v32 = [v13 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v17];

  LODWORD(v34) = 1148846080;
  [v33 setPriority_];
  v35 = [v20 bottomAnchor];
  v36 = [v13 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-v18];

  LODWORD(v38) = 1148846080;
  [v37 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C14FE90;
  *(v39 + 32) = v25;
  *(v39 + 40) = v30;
  *(v39 + 48) = v33;
  *(v39 + 56) = v37;
  v40 = v33;

  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v41 = sub_20C13CC54();

  [v57 activateConstraints_];

  v42 = OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController;
  v43 = *&v13[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController];
  v44 = v13;
  v45 = v43;
  [v44 setRootViewController_];

  v46 = *&v13[v42];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = v46;

  v49 = &v48[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onMenuTapped];
  v50 = *&v48[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onMenuTapped];
  v51 = *&v48[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onMenuTapped + 8];
  *v49 = sub_20B7683BC;
  v49[1] = v47;

  sub_20B583ECC(v50, v51);

  v52 = *&v13[v42];

  v53 = &v52[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing];
  v54 = *&v52[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing];
  v55 = *&v52[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_onShouldBeginRecognizing + 8];
  *v53 = sub_20B7683C4;
  v53[1] = 0;
  sub_20B583ECC(v54, v55);

  return v44;
}

void sub_20B768210(uint64_t a1)
{
  v1 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_presenter);
    v6 = Strong;

    v7 = OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_state;
    swift_beginAccess();
    sub_20B76BAC8(v5 + v7, v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D60, "^>\a");
      sub_20B76BB2C(v3 + *(v8 + 48), type metadata accessor for NavigationRequest);
      v9 = v5 + OBJC_IVAR____TtC9SeymourUI39TVNavigationRouterInterceptionPresenter_display;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 88))(ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }

    else
    {

      sub_20B76BB2C(v3, type metadata accessor for TVNavigationRouterInterceptionPresenter.State);
    }
  }
}

void sub_20B7683C4(char *a1, void *a2)
{
  v4 = sub_20C13D014();
  v5 = [a2 allowedPressTypes];
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  v6 = sub_20C13CC74();

  v16 = v4;
  v15[2] = &v16;
  LOBYTE(v5) = sub_20B79AEEC(sub_20B76BA60, v15, v6);

  if ((v5 & 1) == 0)
  {

    return;
  }

  sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
  sub_20C13D5F4();
  v7 = [a1 viewControllers];
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v8 = sub_20C13CC74();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x20F2F5430](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  sub_20C13D5F4();

  v11 = [a1 viewControllers];
  v12 = sub_20C13CC74();

  if (v12 >> 62)
  {
    sub_20C13DB34();
  }

  v13 = [a1 viewControllers];
  v14 = sub_20C13CC74();

  if (v14 >> 62)
  {
    sub_20C13DB34();
  }
}

void sub_20B768690(void (*a1)(void **), uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong makeKeyAndVisible];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);

    v13 = *&v12[OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController];
    v14 = [v13 view];

    if (!v14)
    {
      __break(1u);
      return;
    }

    [v14 setAlpha_];
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_placeholderViewController);

    v18 = *&v17[OBJC_IVAR____TtC9SeymourUI25PlaceholderViewController_activityIndicator];
    [v18 startAnimating];
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19 || (v20 = v19, [v19 alpha], v22 = v21, v20, v22 == 1.0))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    v23 = v32;
    v24 = v33;
    v40 = v32;
    v41 = v33;
    v25 = &v40;
LABEL_11:
    a1(v25);
    sub_20B583FB8(v23, v24);
    return;
  }

  if ((a4 & 1) == 0)
  {

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      [v30 setAlpha_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    v23 = v40;
    v24 = v41;
    v38 = v40;
    v39 = v41;
    v25 = &v38;
    goto LABEL_11;
  }

  v26 = objc_opt_self();
  v36 = sub_20B76BA08;
  v37 = a3;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_20B7B548C;
  v35 = &block_descriptor_10;
  v27 = _Block_copy(&v32);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_20B5D9B44;
  *(v28 + 24) = v8;
  v36 = sub_20B76BA10;
  v37 = v28;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_20B5E3874;
  v35 = &block_descriptor_110;
  v29 = _Block_copy(&v32);

  [v26 animateWithDuration:v27 animations:v29 completion:0.33];
  _Block_release(v29);
  _Block_release(v27);
}

void sub_20B768A9C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAlpha_];
  }
}

void sub_20B768AFC(uint64_t a1, void (*a2)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  sub_20C13E1D4();
  a2(v3, v4);
  sub_20B583FB8(v3, v4);
}

uint64_t sub_20B768B78@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v25 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v11 = *(v8 + 8);
  v11(v10, v7);
  sub_20C13B534();
  sub_20C13BB64();
  v11(v10, v7);
  v12 = *(v24[1] + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = 0;
  v14 = v12;
  sub_20C137C94();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B76BA20;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B76BBC0;
  *(v17 + 24) = v16;
  v18 = v25;
  (*(v2 + 16))(v25, v6, v1);
  v19 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v20 = (v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v2 + 32))(v21 + v19, v18, v1);
  v22 = (v21 + v20);
  *v22 = sub_20B66A8B4;
  v22[1] = v17;
  sub_20C137C94();
  return (*(v2 + 8))(v6, v1);
}

uint64_t NavigationInterceptionWindow.reset(animated:)(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = v8;
  return sub_20C137C94();
}

double sub_20B769090(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);

    v5 = OBJC_IVAR____TtC9SeymourUI24NavigationViewController_viewControllerAppearanceCompletion;
    swift_beginAccess();
    *&v4[v5] = MEMORY[0x277D84F98];
  }

  return result;
}

id NavigationInterceptionWindow.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene_];

  return v3;
}

id NavigationInterceptionWindow.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NavigationInterceptionWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationInterceptionWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NavigationInterceptionWindow.currentViewController.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  result = [v2 topViewController];
  if (!result)
  {

    return v2;
  }

  return result;
}

void *sub_20B7693E0(void *result)
{
  v2 = v1 + *result;
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);

    v3(v5);

    return sub_20B583ECC(v3, v4);
  }

  return result;
}

uint64_t NavigationInterceptionWindow.deactivate(animated:)(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  v9 = v2;
  return sub_20C137C94();
}

id sub_20B7695A0(uint64_t a1, uint64_t a2, char *a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = swift_allocObject();
  v13 = *&a3[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController];
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v14 = *(v13 + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController);

  result = [v14 view];
  if (result)
  {
    v16 = result;
    [result setAlpha_];

    sub_20B768B78(v11);
    if (a4)
    {
      v17 = sub_20B76BA34;
    }

    else
    {
      v17 = sub_20B76BA28;
    }

    if (a4)
    {
      v18 = sub_20B5DF6DC;
    }

    else
    {
      v18 = sub_20B52347C;
    }

    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = sub_20B5DF614;
    v19[4] = v12;
    v20 = a3;
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = v19;

    v21(v18, v22);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B76980C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v18 = sub_20B76BA40;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B7B548C;
  v17 = &block_descriptor_153;
  v9 = _Block_copy(&v14);
  v10 = a2;

  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v18 = sub_20B76BA54;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20B5E3874;
  v17 = &block_descriptor_159;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v7 animateWithDuration:v9 animations:v12 completion:0.33];
  _Block_release(v12);
  _Block_release(v9);
}

void sub_20B7699B4(int a1, char *a2, void (*a3)(void *, void))
{
  [a2 setHidden_];
  v5 = [*(*&a2[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController] + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController) view];
  if (v5)
  {
    v6 = v5;
    [v5 setAlpha_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    a3(v7, v8);
    sub_20B583FB8(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_20B769A98(int a1, char *a2, void (*a3)(void *, void))
{
  [a2 setAlpha_];
  [a2 setHidden_];
  v5 = [*(*&a2[OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController] + OBJC_IVAR____TtC9SeymourUI24NavigationViewController_rootViewController) view];
  if (v5)
  {
    v6 = v5;
    [v5 setAlpha_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    a3(v7, v8);
    sub_20B583FB8(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t NavigationInterceptionWindow.activate(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v41 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v10;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v34 = v8;
  sub_20B768B78(v8);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B76B750;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20B76B758;
  *(v18 + 24) = v17;
  v38 = *(v3 + 16);
  v19 = v8;
  v20 = v39;
  v38(v5, v19, v39);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v36 = v21;
  v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v35 = *(v3 + 32);
  v35(v23 + v21, v5, v20);
  v24 = (v23 + v22);
  *v24 = sub_20B5DF3D4;
  v24[1] = v18;
  v25 = v37;
  v26 = v40;
  sub_20C137C94();
  v27 = *(v3 + 8);
  v37 = (v3 + 8);
  v28 = v34;
  v27(v34, v20);
  v29 = swift_allocObject();
  *(v29 + 16) = nullsub_1;
  *(v29 + 24) = 0;
  v30 = v26;
  v38(v28, v26, v20);
  v31 = swift_allocObject();
  v35(v31 + v36, v28, v20);
  v32 = (v31 + v22);
  *v32 = sub_20B66A8B4;
  v32[1] = v29;
  sub_20C137C94();
  return (v27)(v30, v20);
}

void sub_20B769FF0(void *a1, uint64_t a2)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4)
    {
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v6 = 0.0;
      v8 = 0.0;
      v10 = 0.0;
      v12 = 0.0;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if (!v4)
      {
        v15 = [objc_opt_self() mainScreen];
        [v15 bounds];
        v6 = v16;
        v8 = v17;
        v10 = v18;
        v12 = v19;
      }

      [v14 setFrame_];
    }

    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      [v20 makeKeyAndVisible];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NavigationInterceptionWindow.show(animated:)(char a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  return sub_20C137C94();
}

uint64_t NavigationInterceptionWindow.pushViewController(_:animated:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a1;
  v31 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v13 = *(v10 + 8);
  v13(v12, v9);
  sub_20C13B534();
  sub_20C13BB64();
  v13(v12, v9);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  LOBYTE(v10) = v28;
  *(v15 + 24) = v28;
  sub_20C137C94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B76B8B0;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20B76BBC0;
  *(v20 + 24) = v19;
  v21 = v30;
  (*(v4 + 16))(v30, v8, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v21, v3);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20B66A8B4;
  v24[1] = v20;
  v25 = v18;
  sub_20C137C94();
  return (*(v4 + 8))(v8, v3);
}

void sub_20B76A6D8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);

    v8 = [v7 parentViewController];
    if (v8)
    {
LABEL_3:

      v13.receiver = v7;
      v13.super_class = type metadata accessor for NavigationViewController();
      objc_msgSendSuper2(&v13, sel_pushViewController_animated_, a2, a3 & 1);
LABEL_7:

      return;
    }

    v9 = [v7 parentViewController];
    if (v9)
    {
    }

    else
    {
      v10 = [v7 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = [v10 window];

      if (v12)
      {
        v8 = v12;
        goto LABEL_3;
      }
    }

    v14.receiver = v7;
    v14.super_class = type metadata accessor for NavigationViewController();
    objc_msgSendSuper2(&v14, sel_pushViewController_animated_, a2, 0);
    goto LABEL_7;
  }
}

uint64_t NavigationInterceptionWindow.popViewController(animated:)(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766F30, &qword_20C157280);
  return sub_20C137C94();
}

uint64_t NavigationInterceptionWindow.popToRootViewController(animated:)(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D58, &qword_20C157288);
  return sub_20C137C94();
}

uint64_t NavigationInterceptionWindow.present(_:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = *(v3 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  v12 = v10;
  v13 = a1;
  return sub_20C137C94();
}

uint64_t NavigationInterceptionWindow.dismiss(animated:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = v3;

  return sub_20C137C94();
}

uint64_t sub_20B76AD24(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = *(v3 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  v12 = v10;
  v13 = a1;
  return sub_20C137C94();
}

uint64_t sub_20B76AE9C(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766F30, &qword_20C157280);
  return sub_20C137C94();
}

uint64_t sub_20B76B010(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D58, &qword_20C157288);
  return sub_20C137C94();
}

uint64_t sub_20B76B184(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = v3;

  return sub_20C137C94();
}

uint64_t sub_20B76B218(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = v8;
  return sub_20C137C94();
}

uint64_t sub_20B76B380(char a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  return sub_20C137C94();
}

uint64_t sub_20B76B4FC(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  v9 = v2;
  return sub_20C137C94();
}

void sub_20B76B670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);

    sub_20B583ECC(v5, v6);
  }
}

id sub_20B76B6D4()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_navigationController);
  result = [v2 topViewController];
  if (!result)
  {

    return v2;
  }

  return result;
}

uint64_t sub_20B76B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_20C137C94();
}

void sub_20B76B814(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_20B583FB8(v4, 0);
}

void sub_20B76B918()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_blurredBackgroundView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v3;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationDeactivation);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI28NavigationInterceptionWindow_onRequestApplicationTermination);
  *v5 = 0;
  v5[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B76BAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVNavigationRouterInterceptionPresenter.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B76BB2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B76BBD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64657472617473;
  if (v2 != 1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7472617453746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657472617473;
  if (*a2 != 1)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617453746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20C13DFF4();
  }

  return v11 & 1;
}

uint64_t sub_20B76BCE4()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20B76BD90(uint64_t a1)
{
  sub_20C13CA64();

  return result;
}

uint64_t sub_20B76BE28(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

unint64_t sub_20B76BED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20B76EA44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20B76BF00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617453746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *sub_20B76BF68(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_remotePlaybackState] = 4;
  v3 = &v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onExitButtonTapped];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onAirplayButtonTapped];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onStartIntentExpressed];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState] = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_workoutDeviceConnection;
  v7 = sub_20C136484();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_gymKitConnectionState] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810, &unk_20C1524D0);
  sub_20C133AA4();
  sub_20B52E424(v13, &v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient]);
  *&v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionToken] = sub_20C13A464();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_subscriptionToken] = sub_20C13A914();
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SessionCastingPresenter(0);
  v8 = objc_msgSendSuper2(&v12, sel_init);
  swift_getObjectType();
  sub_20C13B2F4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v8;

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_20C13AEE4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_20C13A6A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_20C13A734();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A784();
  swift_unknownObjectRelease();

  sub_20B64B688(a2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

void *sub_20B76C3D4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_20C136484();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_20C13B2E4();
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v11 = OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B76EB20(v4, v10 + v11);
    swift_endAccess();
    sub_20B76CCBC();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_20B76C598(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C134C04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13AED4();
    v8 = sub_20C134BF4();
    (*(v3 + 8))(v5, v2);
    sub_20B76CB48(v8 | ((HIDWORD(v8) & 1) << 32));
  }
}

void *sub_20B76C6B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C138184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_20C13A694();
    sub_20B76C818();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_20B76C7BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState] = 1;
  }
}

double sub_20B76C818()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C138174();
  if ((v5 & 0x100000000) == 0)
  {
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20B517000, v6, v7, "Received unknown playback state. This is unexpected", v8, 2u);
      MEMORY[0x20F2F6A40](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return result;
  }

  v10 = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_remotePlaybackState) = v5;
  v11 = OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState) && *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState) == 1)
  {

    goto LABEL_9;
  }

  v12 = sub_20C13DFF4();

  if (v12)
  {
LABEL_9:
    v13 = sub_20C138164();
    if (v13 == sub_20C138164())
    {
      *(v0 + v11) = 2;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem) setSelected_];
    swift_unknownObjectRelease();
  }

  if (*(v0 + v11) && *(v0 + v11) != 1)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    [*(v16 + OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem) setEnabled_];

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20B76CB48(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_gymKitConnectionState) = a1;

    return sub_20B76CCBC();
  }

  else
  {
    sub_20C13B534();
    v7 = sub_20C13BB74();
    v8 = sub_20C13D1D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20B517000, v7, v8, "Encountered unknown GymKit connection state. This is unexpected", v9, 2u);
      MEMORY[0x20F2F6A40](v9, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  return result;
}

double sub_20B76CCBC()
{
  v1 = v0;
  v2 = sub_20C136484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B76EA90(v1 + v9, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_20B520158(v8, &unk_27C765CB0, &unk_20C1523C0);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_20B520158(v8, &unk_27C765CB0, &unk_20C1523C0);
    v10 = sub_20C136464();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v21 = v10;
    v22 = v12;
    v23 = v14 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0, &unk_20C1574C0);
    sub_20C133BD4();
    sub_20B583F4C(v10, v12, v14 & 1);
    if (v20[15] - 3 <= 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return result;
      }

      v17 = Strong;
      v18 = sub_20C134BC4();
      v19 = v17;
      goto LABEL_8;
    }
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    return result;
  }

  v18 = 1;
LABEL_8:
  [*(v19 + OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem) setHidden_];
  swift_unknownObjectRelease();
  return result;
}

void sub_20B76CF50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v2 - 8);
  v133 = &v122 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070, &unk_20C157440);
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v122 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v122 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v122 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v122 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v122 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v122 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0, &unk_20C157470);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v122 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v122 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0, &unk_20C153BF0);
  MEMORY[0x28223BE20](v27 - 8);
  v137 = &v122 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  MEMORY[0x28223BE20](v29 - 8);
  v136 = &v122 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0, &unk_20C153C00);
  MEMORY[0x28223BE20](v31 - 8);
  v135 = &v122 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v33 - 8);
  v149 = &v122 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v35 - 8);
  v148 = &v122 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20, &unk_20C152420);
  MEMORY[0x28223BE20](v37 - 8);
  v147 = &v122 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v39 - 8);
  v146 = &v122 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v41 - 8);
  v145 = &v122 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v43 - 8);
  v144 = &v122 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v45 - 8);
  v143 = &v122 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v47 - 8);
  v142 = &v122 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v49 - 8);
  v141 = &v122 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v51 - 8);
  v140 = &v122 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v53 - 8);
  v139 = &v122 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  MEMORY[0x28223BE20](v55 - 8);
  v138 = &v122 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState;
  v60 = v1;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_countdownState))
  {
    v131 = v26;
    v128 = v23;
    v130 = v20;
    v61 = v17;
    v129 = v11;
    v134 = &v122 - v58;
    v62 = v14;
    v63 = sub_20C13DFF4();

    if (v63)
    {
      goto LABEL_5;
    }

    v68 = *(v1 + v59);
    v127 = v8;
    if (v68 > 1)
    {

      v69 = v61;
      v71 = v130;
      v72 = v131;
    }

    else
    {
      v69 = v61;
      v70 = sub_20C13DFF4();

      v71 = v130;
      v72 = v131;
      if ((v70 & 1) == 0)
      {
        return;
      }
    }

    v73 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_remotePlaybackState);
    if (v73 > 2)
    {
      if (v73 != 3)
      {
        return;
      }
    }

    else if (v73 - 1 < 2)
    {
      v123 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient + 24);
      v124 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient + 32);
      v126 = __swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient), v123);
      v125 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionToken);
      v74 = sub_20C133D84();
      (*(*(v74 - 8) + 56))(v134, 1, 1, v74);
      v75 = sub_20C135854();
      (*(*(v75 - 8) + 56))(v138, 1, 1, v75);
      v76 = sub_20C136194();
      (*(*(v76 - 8) + 56))(v139, 1, 1, v76);
      v77 = sub_20C133DD4();
      (*(*(v77 - 8) + 56))(v140, 1, 1, v77);
      v78 = sub_20C135274();
      (*(*(v78 - 8) + 56))(v141, 1, 1, v78);
      v79 = sub_20C134514();
      (*(*(v79 - 8) + 56))(v142, 1, 1, v79);
      v80 = sub_20C133B04();
      (*(*(v80 - 8) + 56))(v143, 1, 1, v80);
      v81 = sub_20C134C04();
      (*(*(v81 - 8) + 56))(v144, 1, 1, v81);
      v82 = sub_20C1368F4();
      (*(*(v82 - 8) + 56))(v145, 1, 1, v82);
      v83 = sub_20C134914();
      (*(*(v83 - 8) + 56))(v146, 1, 1, v83);
      v84 = sub_20C133374();
      (*(*(v84 - 8) + 56))(v147, 1, 1, v84);
      v85 = sub_20C135B74();
      (*(*(v85 - 8) + 56))(v148, 1, 1, v85);
      v86 = sub_20C134CD4();
      (*(*(v86 - 8) + 56))(v149, 1, 1, v86);
      v87 = sub_20C136EB4();
      (*(*(v87 - 8) + 56))(v135, 1, 1, v87);
      v88 = sub_20C133494();
      (*(*(v88 - 8) + 56))();
      sub_20C13CE94();
      v150 = 1;
LABEL_20:
      v104 = v137;
      sub_20C134574();
      v105 = sub_20C134594();
      (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
      v106 = sub_20C138184();
      (*(*(v106 - 8) + 56))(v72, 1, 1, v106);
      v107 = sub_20C1363D4();
      v108 = v128;
      (*(*(v107 - 8) + 56))(v128, 1, 1, v107);
      v109 = sub_20C1337A4();
      (*(*(v109 - 8) + 56))(v71, 1, 1, v109);
      v110 = sub_20C1337D4();
      (*(*(v110 - 8) + 56))(v69, 1, 1, v110);
      v111 = sub_20C134A94();
      (*(*(v111 - 8) + 56))(v14, 1, 1, v111);
      v112 = sub_20C135364();
      v113 = v129;
      (*(*(v112 - 8) + 56))(v129, 1, 1, v112);
      v114 = sub_20C136484();
      v115 = v127;
      (*(*(v114 - 8) + 56))(v127, 1, 1, v114);
      v116 = sub_20C136784();
      v117 = v132;
      (*(*(v116 - 8) + 56))(v132, 1, 1, v116);
      v118 = sub_20C137FE4();
      v119 = v133;
      (*(*(v118 - 8) + 56))(v133, 1, 1, v118);
      v120 = v137;
      v121 = v135;
      sub_20C13A174();
      sub_20B520158(v119, &unk_27C768AC0, &unk_20C1523B0);
      sub_20B520158(v117, &unk_27C765070, &unk_20C157440);
      sub_20B520158(v115, &unk_27C765CB0, &unk_20C1523C0);
      sub_20B520158(v113, &unk_27C765080, &unk_20C157450);
      sub_20B520158(v62, &unk_27C768AD0, &unk_20C1523D0);
      sub_20B520158(v69, &unk_27C765090, &unk_20C157460);
      sub_20B520158(v130, &unk_27C768AE0, &unk_20C1523E0);
      sub_20B520158(v108, &unk_27C7650A0, &unk_20C157470);
      sub_20B520158(v131, &unk_27C768AF0, &unk_20C1523F0);
      sub_20B520158(v120, &unk_27C7650B0, &unk_20C153BF0);
      sub_20B520158(v136, &unk_27C768B00, &unk_20C152400);
      sub_20B520158(v121, &unk_27C7650C0, &unk_20C153C00);
      sub_20B520158(v149, &unk_27C768B10, &unk_20C152410);
      sub_20B520158(v148, &unk_27C7650D0, &unk_20C157480);
      sub_20B520158(v147, &unk_27C768B20, &unk_20C152420);
      sub_20B520158(v146, &unk_27C7650E0, &unk_20C157490);
      sub_20B520158(v145, &unk_27C767260, &unk_20C152430);
      sub_20B520158(v144, &unk_27C7650F0, &unk_20C1574A0);
      sub_20B520158(v143, &qword_27C768B30, &unk_20C152440);
      sub_20B520158(v142, &unk_27C765050, &unk_20C153C10);
      sub_20B520158(v141, &unk_27C765100, &unk_20C152450);
      sub_20B520158(v140, &unk_27C7687F0, &unk_20C153C20);
      sub_20B520158(v139, &unk_27C765110, &unk_20C152460);
      sub_20B520158(v138, &unk_27C76BBF0, &unk_20C1574B0);
      sub_20B520158(v134, &unk_27C765120, &unk_20C152470);
      return;
    }

    v123 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient + 24);
    v124 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient + 32);
    v126 = __swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionClient), v123);
    v125 = *(v60 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_sessionToken);
    v89 = sub_20C133D84();
    (*(*(v89 - 8) + 56))(v134, 1, 1, v89);
    v90 = sub_20C135854();
    (*(*(v90 - 8) + 56))(v138, 1, 1, v90);
    v91 = sub_20C136194();
    (*(*(v91 - 8) + 56))(v139, 1, 1, v91);
    v92 = sub_20C133DD4();
    (*(*(v92 - 8) + 56))(v140, 1, 1, v92);
    v93 = sub_20C135274();
    (*(*(v93 - 8) + 56))(v141, 1, 1, v93);
    v94 = sub_20C134514();
    (*(*(v94 - 8) + 56))(v142, 1, 1, v94);
    v95 = sub_20C133B04();
    (*(*(v95 - 8) + 56))(v143, 1, 1, v95);
    v96 = sub_20C134C04();
    (*(*(v96 - 8) + 56))(v144, 1, 1, v96);
    v97 = sub_20C1368F4();
    (*(*(v97 - 8) + 56))(v145, 1, 1, v97);
    v98 = sub_20C134914();
    (*(*(v98 - 8) + 56))(v146, 1, 1, v98);
    v99 = sub_20C133374();
    (*(*(v99 - 8) + 56))(v147, 1, 1, v99);
    v100 = sub_20C135B74();
    (*(*(v100 - 8) + 56))(v148, 1, 1, v100);
    v101 = sub_20C134CD4();
    (*(*(v101 - 8) + 56))(v149, 1, 1, v101);
    v102 = sub_20C136EB4();
    (*(*(v102 - 8) + 56))(v135, 1, 1, v102);
    v103 = sub_20C133494();
    (*(*(v103 - 8) + 56))();
    sub_20C13CE94();
    v151 = 1;
    goto LABEL_20;
  }

LABEL_5:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9SeymourUI18SessionCastingView_playControlItem) setEnabled_];
    swift_unknownObjectRelease();
  }

  v65 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onStartIntentExpressed);
  if (v65)
  {
    v66 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionCastingPresenter_onStartIntentExpressed + 8);

    v65(v67);

    sub_20B583ECC(v65, v66);
  }
}

id sub_20B76E75C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionCastingPresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SessionCastingPresenter(uint64_t a1)
{
  result = qword_27C764DC0;
  if (!qword_27C764DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B76E8A4(uint64_t a1)
{
  sub_20B76E984(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B76E984(uint64_t a1)
{
  if (!qword_27C76B320)
  {
    sub_20C136484();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76B320);
    }
  }
}

unint64_t sub_20B76E9F0()
{
  result = qword_27C764DD0;
  if (!qword_27C764DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764DD0);
  }

  return result;
}

unint64_t sub_20B76EA44(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20B76EA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B76EB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SummaryActivityRingsMetricViewModel(uint64_t a1)
{
  result = qword_281100690;
  if (!qword_281100690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B76EC04(uint64_t a1)
{
  result = sub_20C133D84();
  if (v2 <= 0x3F)
  {
    result = sub_20B76EC8C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20B76EC8C()
{
  result = qword_281100520;
  if (!qword_281100520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281100520);
  }

  return result;
}

double sub_20B76ECD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764DF8, &unk_20C1746A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_20C136D94();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_item;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v2 + v12, &qword_27C764DF8, &unk_20C1746A0);
  swift_endAccess();
  sub_20C136D74();
  v13 = sub_20C137C24();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_artwork;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v14, &unk_27C766680, &unk_20C14F920);
  swift_endAccess();
  v15 = sub_20C136D84();
  v16 = (v2 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_cropCode);
  *v16 = v15;
  v16[1] = v17;

  *(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_titleTags) = MEMORY[0x277D84F90];

  return result;
}

uint64_t sub_20B76EF34(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_20C135A04();
  v7 = sub_20C137C24();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_artwork;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v8, &unk_27C766680, &unk_20C14F920);
  swift_endAccess();
  v9 = sub_20C135AC4();
  v10 = (v2 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_cropCode);
  *v10 = v9;
  v10[1] = v11;

  *(v2 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_titleTags) = sub_20C135AD4();

  return sub_20B76F09C(1, v3);
}

uint64_t sub_20B76F09C(int a1, int a2)
{
  v3 = v2;
  LODWORD(v77) = a2;
  v72 = a1;
  v4 = sub_20C13BB84();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C554();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764DF8, &unk_20C1746A0);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_20C137C24();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_artwork;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v18, v13, &unk_27C766680, &unk_20C14F920);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v19 = *(v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_cropCode + 8);
    if (!v19)
    {
      (*(v15 + 8))(v17, v14);
      goto LABEL_9;
    }

    v79 = v17;
    v70 = v15;
    v71 = v14;
    v68 = *(v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_cropCode);
    v69 = v19;

    v20 = sub_20C1380F4();
    v21 = v20;
    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_24;
      }

      if (v77)
      {
        v21 = 2;
      }

      else
      {
        v26 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_item;
        swift_beginAccess();
        v27 = v3 + v26;
        v28 = v76;
        sub_20B52F9E8(v27, v76, &qword_27C764DF8, &unk_20C1746A0);
        v29 = sub_20C136D94();
        v21 = (*(*(v29 - 8) + 48))(v28, 1, v29) == 1;
        sub_20B520158(v28, &qword_27C764DF8, &unk_20C1746A0);
      }
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00, &unk_20C15CD70);
    v78 = swift_allocBox();
    v32 = v31;
    v67 = v30[12];
    v33 = (v31 + v30[16]);
    v76 = v30[20];
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder), *(v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder + 24));

    v77 = v3;
    v34 = sub_20C138544();
    v35 = v77;
    v36 = v34;

    *v32 = v36;
    v38 = v70;
    v37 = v71;
    v39 = v79;
    (*(v70 + 16))(v32 + v67, v79, v71);
    v40 = v69;
    *v33 = v68;
    v33[1] = v40;
    v41 = v78;
    v76[v32] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_20C14F980;
    *(v42 + 32) = v41 | 0x1000000000000000;
    v83 = 0uLL;
    LOBYTE(v84[0]) = 1;
    *(v84 + 1) = *v82;
    DWORD1(v84[0]) = *&v82[3];
    *(v84 + 8) = xmmword_20C157520;
    strcpy(&v84[1] + 8, "@");
    *(&v84[1] + 10) = *&v80[7];
    HIWORD(v84[1]) = v81;
    LOBYTE(v88) = 0;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    *(&v88 + 1) = *v80;
    DWORD1(v88) = *&v80[3];
    *(&v88 + 1) = v42;
    *&v89[0] = MEMORY[0x277D84F90];
    *(v89 + 8) = 0u;
    *(&v89[1] + 8) = 0u;
    *(&v89[2] + 1) = 0;
    v90 = 2;
    nullsub_1();
    v43 = v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row;
    v44 = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 144);
    v91[8] = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 128);
    v91[9] = v44;
    v92 = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 160);
    v45 = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 80);
    v91[4] = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 64);
    v91[5] = v45;
    v46 = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 112);
    v91[6] = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 96);
    v91[7] = v46;
    v47 = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 16);
    v91[0] = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row);
    v91[1] = v47;
    v48 = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 48);
    v91[2] = *(v35 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 32);
    v91[3] = v48;
    v49 = v89[0];
    v50 = v89[2];
    *(v43 + 128) = v89[1];
    *(v43 + 144) = v50;
    *(v43 + 160) = v90;
    v51 = v87;
    *(v43 + 64) = v86;
    *(v43 + 80) = v51;
    *(v43 + 96) = v88;
    *(v43 + 112) = v49;
    v52 = v84[0];
    *v43 = v83;
    *(v43 + 16) = v52;
    v53 = v85;
    *(v43 + 32) = v84[1];
    *(v43 + 48) = v53;

    sub_20B520158(v91, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_16:

      return (*(v38 + 8))(v39, v37);
    }

    if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
    {
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v76 = Strong;
    sub_20B61D0F0(v35, Strong);
    if (!v56)
    {
      sub_20C0C2D50(0);

      swift_unknownObjectRelease();
      return (*(v38 + 8))(v39, v37);
    }

    v58 = v55;
    v59 = v56;
    v60 = v57;
    sub_20B5E2E18();
    v61 = sub_20C13D374();
    v62 = v73;
    v63 = v74;
    *v73 = v61;
    v64 = v75;
    (*(v63 + 104))(v62, *MEMORY[0x277D85200], v75);
    v65 = sub_20C13C584();
    (*(v63 + 8))(v62, v64);
    if (v65)
    {
      sub_20B6207E8(v58, v59, v60, v77, v72 & 1, v76);

      swift_unknownObjectRelease();

      v39 = v79;
      return (*(v38 + 8))(v39, v37);
    }

    __break(1u);
LABEL_24:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
LABEL_9:
  sub_20C13B534();
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1F4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_20B517000, v22, v23, "[CatalogWorkoutDetailHeaderShelf] no artwork nor crop code, not updating row", v24, 2u);
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  return (*(v78 + 8))(v6, v79);
}

uint64_t sub_20B76F8EC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder));
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_artwork, &unk_27C766680, &unk_20C14F920);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_item, &qword_27C764DF8, &unk_20C1746A0);
  return v0;
}

uint64_t sub_20B76FA38()
{
  sub_20B76F8EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogWorkoutDetailHeaderShelf(uint64_t a1)
{
  result = qword_27C764DE0;
  if (!qword_27C764DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B76FAE4(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B76FC60(319, &qword_281103B70, MEMORY[0x277D53A78]);
    if (v2 <= 0x3F)
    {
      sub_20B76FC60(319, &qword_27C764DF0, MEMORY[0x277D52FA0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B76FC60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_20B76FCB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B76FD2C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row + 32);
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

uint64_t sub_20B76FDF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_canonicalIdentifier);

  return v1;
}

uint64_t sub_20B76FE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_row;
  sub_20B5D8060(v20);
  v7 = v20[9];
  *(v6 + 128) = v20[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v21;
  v8 = v20[5];
  *(v6 + 64) = v20[4];
  *(v6 + 80) = v8;
  v9 = v20[7];
  *(v6 + 96) = v20[6];
  *(v6 + 112) = v9;
  v10 = v20[1];
  *v6 = v20[0];
  *(v6 + 16) = v10;
  v11 = v20[3];
  *(v6 + 32) = v20[2];
  *(v6 + 48) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_artwork;
  v13 = sub_20C137C24();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = (v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_cropCode);
  *v14 = 0;
  v14[1] = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_titleTags) = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_item;
  v16 = sub_20C136D94();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = (v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_canonicalIdentifier);
  *v17 = a2;
  v17[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B52E424(&v19, v3 + OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder);
  return v3;
}

void sub_20B77001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_20C133954();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlan;
  swift_beginAccess();
  sub_20B621C90(v9, v3 + v12);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlanReferenceMetrics) = a3;

  *(v3 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_nextScheduledWorkouts) = a2;

  sub_20B7704A8();
  sub_20B770934();
  sub_20B7710F0();
  sub_20B7701A4();
}

void sub_20B7701A4()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_lazyLockupFetcher);

  sub_20C02FAB4(v6, v1);
  v8 = v7;

  v9 = sub_20C132EA4();
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_title + 8))
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_title);
    v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_title + 8);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  *&v38 = v9;
  *(&v38 + 1) = v10;
  v39 = 0uLL;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = v8;
  v41 = MEMORY[0x277D84F90];
  *&v42 = 0;
  *(&v42 + 1) = v11;
  *v43 = v12;
  *&v43[8] = xmmword_20C150190;
  nullsub_1();
  v13 = v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 128);
  v44[9] = v14;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 160);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 64);
  v44[5] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 96);
  v44[7] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row);
  v44[1] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 32);
  v44[3] = v18;
  v19 = *v43;
  *(v13 + 128) = v42;
  *(v13 + 144) = v19;
  *(v13 + 160) = *&v43[16];
  v20 = v39;
  *(v13 + 64) = v38;
  *(v13 + 80) = v20;
  v21 = v41;
  *(v13 + 96) = v40;
  *(v13 + 112) = v21;
  v22 = v35;
  *v13 = v34;
  *(v13 + 16) = v22;
  v23 = v37;
  *(v13 + 32) = v36;
  *(v13 + 48) = v23;

  sub_20B520158(v44, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D208(v1, Strong);
      if (v27)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        sub_20B5E2E18();
        *v5 = sub_20C13D374();
        (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
        v32 = sub_20C13C584();
        (*(v3 + 8))(v5, v2);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6209C4(v29, v30, v31, v1, 0, v25);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

double sub_20B7704A8()
{
  v1 = sub_20C132E94();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C135214();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270, &qword_20C155560);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_20C133954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v15, v10, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C76A970, &qword_20C14FC10);
LABEL_7:
    v21 = (v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_title);
    *v21 = 0;
    v21[1] = 0;
    goto LABEL_10;
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_nextScheduledWorkouts);
  if (!v16)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_7;
  }

  v17 = v0;
  if (*(v16 + 16))
  {
    sub_20B52F9E8(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v7, &unk_27C772270, &qword_20C155560);

    v18 = v30;
    sub_20C135C04();
    v19 = sub_20C135C54();
    (*(*(v19 - 8) + 8))(v7, v19);
    v20 = sub_20C135204();
    (*(v31 + 8))(v18, v32);
  }

  else
  {
    v20 = 0;
  }

  v22 = v33;
  sub_20C132E64();
  sub_20BAB10E4(v14, v20, v22);
  v24 = v23;
  v26 = v25;
  (*(v34 + 8))(v22, v35);
  (*(v12 + 8))(v14, v11);
  v27 = (v17 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_title);
  *v27 = v24;
  v27[1] = v26;
LABEL_10:

  return result;
}

void sub_20B770934()
{
  v1 = v0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270, &qword_20C155560);
  v2 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v77 = sub_20C136104();
  v7 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135C54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v58 - v13;
  v14 = sub_20C137294();
  v79 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workouts;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v1 + v17);
  v68 = v16;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_20B7A1FE8(0, *(v19 + 16));
  }

  else
  {
    *(v1 + v17) = sub_20BEDEBA0(0, *(v19 + 24) >> 1);
  }

  swift_endAccess();
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_nextScheduledWorkouts);
  if (v20)
  {
    v62 = v2;
    v65 = v17;
    v66 = v1;
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlanReferenceMetrics);
    v22 = (v21 + 56);
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v21 + 56);
    v26 = (v23 + 63) >> 6;
    v72 = (v7 + 8);
    v73 = v79 + 16;
    v69 = (v79 + 8);
    v61 = (v10 + 32);
    v78 = v21;
    swift_bridgeObjectRetain_n();
    v67 = v20;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    v70 = v26;
    v71 = v22;
LABEL_8:
    v29 = v27;
    v30 = v68;
    if (!v25)
    {
      goto LABEL_10;
    }

    do
    {
      v27 = v29;
LABEL_13:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v79 + 16))(v30, *(v78 + 48) + *(v79 + 72) * (v31 | (v27 << 6)), v14);
      v32 = v14;
      v33 = v74;
      v34 = v30;
      sub_20C137264();
      v35 = sub_20C1360F4();
      (*v72)(v33, v77);
      if (v35)
      {
        v36 = v63;
        sub_20C137284();
        v37 = *v69;
        v59 = v32;
        v37(v34, v32);
        v38 = *v61;
        (*v61)(v64, v36, v9);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v38;
        if ((v39 & 1) == 0)
        {
          v28 = sub_20BC06EE4(0, *(v28 + 2) + 1, 1, v28);
        }

        v22 = v71;
        v41 = *(v28 + 2);
        v40 = *(v28 + 3);
        v60 = v41 + 1;
        v14 = v59;
        v26 = v70;
        if (v41 >= v40 >> 1)
        {
          v28 = sub_20BC06EE4((v40 > 1), v60, 1, v28);
        }

        *(v28 + 2) = v60;
        v58(&v28[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v41], v64, v9);
        goto LABEL_8;
      }

      (*v69)(v34, v32);
      v29 = v27;
      v14 = v32;
      v30 = v34;
      v26 = v70;
      v22 = v71;
    }

    while (v25);
    while (1)
    {
LABEL_10:
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return;
      }

      if (v27 >= v26)
      {
        break;
      }

      v25 = v22[v27];
      ++v29;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    v42 = v67;
    v43 = *(v67 + 16);
    if (v43)
    {
      v80 = MEMORY[0x277D84F90];
      sub_20BB5DE74(0, v43, 0);
      v44 = 0;
      v79 = v80;
      v73 = v42 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v74 = v43;
      v45 = *(v62 + 72);
      v71 = (v10 + 8);
      v72 = v45;
      do
      {
        sub_20B52F9E8(v73 + v72 * v44, v6, &unk_27C772270, &qword_20C155560);
        v46 = 0;
        v47 = *(v28 + 2);
        do
        {
          v48 = v46;
          if (v47 == v46)
          {
            break;
          }

          ++v46;
          sub_20B771E5C();
        }

        while ((sub_20C13C894() & 1) == 0);
        v49 = v75;
        sub_20B52F9E8(v6, v75, &unk_27C772270, &qword_20C155560);
        v50 = sub_20C1367E4();
        v77 = v51;
        v78 = v50;

        sub_20B520158(v6, &unk_27C772270, &qword_20C155560);
        (*v71)(v49, v9);
        v52 = v79;
        v80 = v79;
        v54 = *(v79 + 16);
        v53 = *(v79 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_20BB5DE74((v53 > 1), v54 + 1, 1);
          v52 = v80;
        }

        *(v52 + 16) = v54 + 1;
        v79 = v52;
        v55 = v52 + 24 * v54;
        *(v55 + 32) = v47 != v48;
        ++v44;
        v56 = v77;
        *(v55 + 40) = v78;
        *(v55 + 48) = v56;
      }

      while (v44 != v74);

      v57 = v79;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_20B8D984C(v57);
    swift_endAccess();
  }
}

uint64_t sub_20B7710F0()
{
  v1 = sub_20C136594();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v22 = v19 - v7;
  v8 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workouts;
  swift_beginAccess();
  v9 = *(v0 + v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v19[2] = v0;
    v20 = v6;
    v21 = v5;
    v23 = MEMORY[0x277D84F90];

    sub_20BB5D604(0, v10, 0);
    v11 = v23;
    v19[1] = v9;
    v12 = v9 + 48;
    do
    {

      sub_20C136554();
      v23 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20BB5D604((v13 > 1), v14 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v14 + 1;
      (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v4, v1);
      v12 += 24;
      --v10;
    }

    while (v10);

    v6 = v20;
    v5 = v21;
  }

  v15 = v22;
  sub_20C02BC6C(v11, v22);

  v16 = sub_20C137CB4();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v16(sub_20B5DF6DC, v17);

  return (*(v6 + 8))(v15, v5);
}

uint64_t sub_20B7713EC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlan, &unk_27C76A970, &qword_20C14FC10);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_remoteBrowsingSource));
  return v0;
}

uint64_t sub_20B771554()
{
  sub_20B7713EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanDetailNextWorkoutsShelf(uint64_t a1)
{
  result = qword_27C764E08;
  if (!qword_27C764E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B771600(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B61B238(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B77171C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20B771764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B7717B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B771BAC;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B771A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B771AF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row + 32);
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

uint64_t sub_20B771BB4(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlan;
  v3 = sub_20C133954();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_nextScheduledWorkouts) = 0;
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_title);
  *v4 = 0;
  v4[1] = 0;
  v5 = v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_row;
  sub_20B5D8060(v17);
  v6 = v17[9];
  *(v5 + 128) = v17[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v18;
  v7 = v17[5];
  *(v5 + 64) = v17[4];
  *(v5 + 80) = v7;
  v8 = v17[7];
  *(v5 + 96) = v17[6];
  *(v5 + 112) = v8;
  v9 = v17[1];
  *v5 = v17[0];
  *(v5 + 16) = v9;
  v10 = v17[3];
  *(v5 + 32) = v17[2];
  *(v5 + 48) = v10;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlanStringBuilder) = *&v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v16, v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_mediaTagStringBuilder);
  type metadata accessor for ShelfLazyLockupFetcher();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 152) = MEMORY[0x277D84F90];

  v13 = sub_20B6B0C04(v12);
  v14 = MEMORY[0x277D84FA0];
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v11 + 136) = 5;
  *(v11 + 144) = 45;
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_lazyLockupFetcher) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v16, v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_remoteBrowsingSource);
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workoutPlanReferenceMetrics) = v14;
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanDetailNextWorkoutsShelf_workouts) = v12;
  return v1;
}

unint64_t sub_20B771E5C()
{
  result = qword_27C7640F0;
  if (!qword_27C7640F0)
  {
    sub_20C135C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7640F0);
  }

  return result;
}

uint64_t sub_20B771EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  if (!a2)
  {
    sub_20C13E184();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    return sub_20C13E1B4();
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

uint64_t sub_20B771F80(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  MEMORY[0x20F2F58E0](0);
  if (!v2)
  {
    sub_20C13E184();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_20C13E184();
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v3)
  {
    return sub_20C13E184();
  }

LABEL_3:
  sub_20C13E184();

  return sub_20C13CA64();
}

uint64_t sub_20B772030(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  if (!v2)
  {
    sub_20C13E184();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    return sub_20C13E1B4();
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  return sub_20C13E1B4();
}

unint64_t sub_20B772104()
{
  result = qword_27C764E18;
  if (!qword_27C764E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E18);
  }

  return result;
}

uint64_t sub_20B772158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a8;
      v11 = a7;
      v12 = sub_20C13DFF4();
      a3 = v8;
      a4 = v9;
      a7 = v11;
      a8 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8 && (a3 == a7 && a4 == a8 || (sub_20C13DFF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_20B772214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_20B772270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t WorkoutPlanDetailInterceptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t WorkoutPlanDetailInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = v4;
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880, &unk_20C157820);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  v55 = &v46 - v14;
  v15 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  sub_20B77FEA0(a1, v17, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 22)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = "SeymourUI/WorkoutPlanDetailInterceptor.swift";
    *(v22 + 24) = 44;
    *(v22 + 32) = 2;
    *(v22 + 40) = 30;
    *(v22 + 48) = &unk_20C157838;
    *(v22 + 56) = v49;
    sub_20C133954();

    v48 = v10;
    sub_20C137C94();
    v49 = type metadata accessor for NavigationRequest;
    v47 = v5;
    sub_20B77FEA0(a1, v5, type metadata accessor for NavigationRequest);
    v23 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v24 = swift_allocObject();
    v58 = type metadata accessor for NavigationRequest;
    sub_20B77FF08(v5, v24 + v23, type metadata accessor for NavigationRequest);
    v26 = v52;
    v25 = v53;
    v27 = v50;
    (*(v52 + 16))(v50, v10, v53);
    v28 = *(v26 + 80);
    v46 = a1;
    v29 = (v28 + 16) & ~v28;
    v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v25);
    v32 = (v31 + v30);
    *v32 = sub_20B7769DC;
    v32[1] = v24;
    v33 = v55;
    sub_20C137C94();
    (*(v26 + 8))(v48, v25);
    v34 = v47;
    sub_20B77FEA0(v46, v47, v49);
    v35 = swift_allocObject();
    sub_20B77FF08(v34, v35 + v23, v58);
    v37 = v56;
    v36 = v57;
    v38 = v54;
    (*(v56 + 16))(v54, v33, v57);
    v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v40 = (v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v37 + 32))(v41 + v39, v38, v36);
    v42 = (v41 + v40);
    *v42 = sub_20B776B18;
    v42[1] = v35;
    sub_20C137C94();
    return (*(v37 + 8))(v33, v36);
  }

  else
  {
    sub_20B77FEA0(a1, v5, type metadata accessor for NavigationRequest);
    v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v45 = swift_allocObject();
    sub_20B77FF08(v5, v45 + v44, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
    return sub_20B77FF74(v17, type metadata accessor for NavigationResource);
  }
}

uint64_t sub_20B772A2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20B772A4C, 0, 0);
}

uint64_t sub_20B772A4C()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20B772B0C;
  v5 = v0[2];

  return MEMORY[0x2821ADE88](v5, v2, v3);
}

uint64_t sub_20B772B0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B772C00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  sub_20B77FEA0(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_20B77FF08(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  sub_20B5E2E18();
  v15 = sub_20C13D374();
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  *(v18 + v17) = v15;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_20B772EB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v83 = a1;
  v88 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = v2;
  v85 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v86 = &v72 - v4;
  v5 = type metadata accessor for NavigationSource(0);
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for NavigationIntent(0);
  v7 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v94 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationResource(0);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800, &unk_20C15EC70);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E40, &unk_20C157A60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810, &unk_20C169F00);
  MEMORY[0x28223BE20](v20 - 8);
  v72 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  v25 = type metadata accessor for NavigationRequest(0);
  v76 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v77 = v26;
  v78 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v72 - v28;
  v30 = sub_20C13BB84();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  v34 = sub_20C13BB74();
  v35 = sub_20C13D1F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v73 = v25;
    v37 = v17;
    v38 = v29;
    v39 = v7;
    v40 = v36;
    *v36 = 0;
    _os_log_impl(&dword_20B517000, v34, v35, "No active plan, navigating to gallery instead", v36, 2u);
    v41 = v40;
    v7 = v39;
    v29 = v38;
    v17 = v37;
    v25 = v73;
    MEMORY[0x20F2F6A40](v41, -1, -1);
  }

  (*(v31 + 8))(v33, v30);
  v42 = v75;
  swift_storeEnumTagMultiPayload();
  v43 = v74;
  (*(v74 + 56))(v24, 0, 1, v42);
  v73 = v7;
  (*(v7 + 56))(v90, 1, 1, v92);
  v45 = v80;
  v44 = v81;
  (*(v80 + 56))(v91, 1, 1, v81);
  v46 = v72;
  sub_20B5DF134(v24, v72, &unk_27C767810, &unk_20C169F00);
  v47 = *(v43 + 48);
  if (v47(v46, 1, v42) == 1)
  {
    v48 = v83;
    sub_20B77FEA0(v83, v93, type metadata accessor for NavigationResource);
    v49 = v47(v46, 1, v42);
    v50 = v82;
    if (v49 != 1)
    {
      sub_20B520158(v46, &unk_27C767810, &unk_20C169F00);
    }
  }

  else
  {
    sub_20B77FF08(v46, v93, type metadata accessor for NavigationResource);
    v50 = v82;
    v48 = v83;
  }

  sub_20B5DF134(v90, v17, &qword_27C764E40, &unk_20C157A60);
  v51 = *(v73 + 6);
  v52 = v17;
  v53 = v17;
  v54 = v92;
  if (v51(v52, 1, v92) == 1)
  {
    sub_20B77FEA0(v48 + v25[5], v94, type metadata accessor for NavigationIntent);
    v55 = v51(v53, 1, v54);
    v56 = v79;
    if (v55 != 1)
    {
      sub_20B520158(v53, &qword_27C764E40, &unk_20C157A60);
    }
  }

  else
  {
    sub_20B77FF08(v53, v94, type metadata accessor for NavigationIntent);
    v56 = v79;
  }

  sub_20B5DF134(v91, v56, &unk_27C767800, &unk_20C15EC70);
  v57 = *(v45 + 48);
  if (v57(v56, 1, v44) == 1)
  {
    sub_20B77FEA0(v48 + v25[6], v50, type metadata accessor for NavigationSource);
    if (v57(v56, 1, v44) != 1)
    {
      sub_20B520158(v56, &unk_27C767800, &unk_20C15EC70);
    }
  }

  else
  {
    sub_20B77FF08(v56, v50, type metadata accessor for NavigationSource);
  }

  v58 = *(v48 + v25[8]);
  v59 = *(v48 + v25[9]);
  sub_20B77FF08(v93, v29, type metadata accessor for NavigationResource);
  sub_20B77FF08(v94, &v29[v25[5]], type metadata accessor for NavigationIntent);
  sub_20B77FF08(v50, &v29[v25[6]], type metadata accessor for NavigationSource);
  v29[v25[7]] = 0;
  v29[v25[8]] = v58;
  *&v29[v25[9]] = v59;
  v60 = v78;
  sub_20B77FEA0(v29, v78, type metadata accessor for NavigationRequest);
  v61 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v62 = swift_allocObject();
  sub_20B77FF08(v60, v62 + v61, type metadata accessor for NavigationRequest);
  v63 = v86;
  sub_20C137CA4();
  sub_20B5E2E18();
  v64 = sub_20C13D374();
  v65 = v87;
  v66 = v85;
  v67 = v89;
  (*(v87 + 16))(v85, v63, v89);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v84 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  *(v70 + v69) = v64;
  sub_20C137C94();
  (*(v65 + 8))(v63, v67);
  return sub_20B77FF74(v29, type metadata accessor for NavigationRequest);
}

uint64_t sub_20B77397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_20B52F9E8(a3, v23 - v10, &unk_27C762220, &qword_20C151250);
  v12 = sub_20C13CDF4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C762220, &qword_20C151250);
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

  sub_20C13CDE4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_20C13CD24();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_20C13CA14() + 32;
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

    sub_20B520158(a3, &unk_27C762220, &qword_20C151250);

    return v21;
  }

LABEL_8:
  sub_20B520158(a3, &unk_27C762220, &qword_20C151250);
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

uint64_t sub_20B774268(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C135AE4();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C7641D8, &unk_20C155D20);
  }
}

void sub_20B774504(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_20B718F14, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    v17 = a1;
    a3(&v18);
    sub_20B539018(a1);
  }
}

void sub_20B7746A0(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_20B52E438, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    v17 = a1;
    a3(&v18);
    sub_20B539018(a1);
  }
}

void sub_20B77483C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_20B52E438, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    v17 = a1;
    a3(&v18);
    sub_20B539018(a1);
  }
}

double sub_20B7749D8(void *a1, uint64_t a2, char a3, void (*a4)(void *, __n128), uint64_t a5, void (*a6)(void *, double))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21[-1] - v15;
  if (a3)
  {
    a6(a1, v14);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    v17(sub_20B77F844, v18);

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v21[0] = a1;
    v21[1] = a2;
    v22 = 0;

    (a4)(v21);
    return sub_20B62E744(a1, a2, 0);
  }

  return result;
}

uint64_t sub_20B774B88(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764730, &qword_20C1524B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764738, &unk_20C156100);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C764738, &unk_20C156100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C1369A4();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C764738, &unk_20C156100);
  }
}

uint64_t sub_20B774E24(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764740, &qword_20C1524B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764748, &unk_20C156110);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C764748, &unk_20C156110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C1366D4();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C764748, &unk_20C156110);
  }
}

uint64_t sub_20B7750C0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764750, &unk_20C1524C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764758, &unk_20C156120);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C764758, &unk_20C156120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C136544();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C764758, &unk_20C156120);
  }
}

uint64_t sub_20B77535C(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, void (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764600, &qword_20C153B88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  sub_20B52F9E8(a1, v17, &qword_27C764608, &unk_20C156050);
  if (v18)
  {
    v12 = *&v17[0];
    a4(*&v17[0]);
    v13 = sub_20C137CB4();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    v13(sub_20B5306F0, v14);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_20B52E424(v17, v16);
    v16[40] = 0;
    a2(v16);
    return sub_20B520158(v16, &qword_27C764608, &unk_20C156050);
  }
}

uint64_t sub_20B775530(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v21[1] = a5;
  v22 = a2;
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &unk_27C76D250, &unk_20C155D00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v22;
    *(v19 + 24) = v23;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_20B77FF08(v16, v13, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v22(v13);
    return sub_20B520158(v13, &unk_27C76D250, &unk_20C155D00);
  }
}

double sub_20B7757B0(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, double), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    a5(a1, v17);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    v20(a10, v21);

    (*(v16 + 8))(v19, v15);
  }

  else
  {
    v23 = a1;
    v24 = 0;

    a3(&v23);
    return sub_20B71C190(a1, 0);
  }

  return result;
}

uint64_t sub_20B775938(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    a5(a1, v17);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    v20(a10, v21);

    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v23 = a1;
    v24 = 0;
    return a3(&v23, v17);
  }
}

uint64_t sub_20B775AAC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0, &qword_20C156190);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D8, &qword_20C156198);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C7647D8, &qword_20C156198);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C136354();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C7647D8, &qword_20C156198);
  }
}

uint64_t sub_20B775D48(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764270, &qword_20C155DC0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &unk_27C764270, &qword_20C155DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C1387E4();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &unk_27C764270, &qword_20C155DC0);
  }
}

uint64_t sub_20B775FE4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0, &unk_20C153B90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790, &qword_20C156150);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C764790, &qword_20C156150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C137EA4();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C764790, &qword_20C156150);
  }
}

uint64_t sub_20B776280(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20B52F9E8(a1, v22 - v15, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52F238, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C135734();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20B520158(v13, &qword_27C764238, &unk_20C155D70);
  }
}

uint64_t sub_20B77651C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B772A2C(a1, v1);
}

double sub_20B776630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v11 = a5;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_20C13BB84();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1F4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_20C13DCA4();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = v11;
    v30 = a2;
    v31 = sub_20B51E694(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    v11 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_20B517000, v22, v23, "Converting from Async-Await to Promise: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x20F2F6A40](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_20C13CDF4();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = v11;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_20B77397C(0, 0, v18, v49, v37);

  return result;
}

uint64_t sub_20B7769DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20B772C00(v4, a1);
}

uint64_t sub_20B776A5C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880, &unk_20C157820) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E1C4C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B776B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20B772EB4(v4, a1);
}

uint64_t sub_20B776B98(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20B51EDA4(a1, a2, v2 + v6, *v7, v7[1], &qword_27C7641C0, &qword_20C161470, &unk_2822A4AA8, sub_20B77FE94);
}

unint64_t sub_20B776C84(uint64_t a1, uint64_t a2)
{
  result = sub_20B776CAC(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20B776CAC(uint64_t a1, uint64_t a2)
{
  result = qword_27C764E20;
  if (!qword_27C764E20)
  {
    type metadata accessor for WorkoutPlanDetailInterceptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764E20);
  }

  return result;
}

uint64_t sub_20B777174(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C135734();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B777398;

  return v15(v12);
}

uint64_t sub_20B777398()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B777714;
  }

  else
  {
    v2 = sub_20B7774AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B7774AC(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C764238, &unk_20C155D70);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B777714(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C764238, &unk_20C155D70);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B777950(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20B777AD8;

  return v13(v8 + 16);
}

uint64_t sub_20B777AD8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20B7809F0;
  }

  else
  {
    v2 = sub_20B7809E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B777BEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764888, &unk_20C156210);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C133954();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B777E10;

  return v15(v12);
}

uint64_t sub_20B777E10()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B77818C;
  }

  else
  {
    v2 = sub_20B777F24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B777F24(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C764888, &unk_20C156210);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B77818C(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C764888, &unk_20C156210);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B7783C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646E0, &unk_20C1560D0);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C138204();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B7785EC;

  return v15(v12);
}

uint64_t sub_20B7785EC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B778968;
  }

  else
  {
    v2 = sub_20B778700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B778700(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C7646E0, &unk_20C1560D0);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B778968(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C7646E0, &unk_20C1560D0);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B778BA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20B778D2C;

  return v13(v8 + 16);
}

uint64_t sub_20B778D2C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20B779034;
  }

  else
  {
    v2 = sub_20B778E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B778E40(uint64_t a1)
{
  v22 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v17 = v1[6];
    v19 = v1[12];
    v8 = v1[3];
    v18 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C13DCA4();
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v20 = v1[2];
  v21 = 0;

  v14(&v20);
  swift_bridgeObjectRelease_n();

  v15 = v1[1];

  return v15();
}

uint64_t sub_20B779034(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v19 = v1[6];
    v21 = v1[11];
    v8 = v1[3];
    v20 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C13DCA4();
    v13 = sub_20B51E694(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v19;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = v1[14];
  v15 = v1[7];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_20B779230(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643C0, &unk_20C155EC0);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C1353F4();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B779454;

  return v15(v12);
}

uint64_t sub_20B779454()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B7797D0;
  }

  else
  {
    v2 = sub_20B779568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B779568(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C7643C0, &unk_20C155EC0);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B7797D0(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C7643C0, &unk_20C155EC0);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B779A0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 113) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_20B779B94;

  return v13(v8 + 112);
}

uint64_t sub_20B779B94()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20B779E98;
  }

  else
  {
    v2 = sub_20B779CA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B779CA8(uint64_t a1)
{
  v22 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 72);
    v18 = *(v1 + 64);
    v19 = *(v1 + 88);
    v17 = *(v1 + 40);
    v5 = *(v1 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v17;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v19, v18);
  }

  else
  {
    v11 = *(v1 + 88);
    v12 = *(v1 + 64);
    v13 = *(v1 + 72);

    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v1 + 48);
  v20 = *(v1 + 112);
  v21 = 0;
  v14(&v20);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_20B779E98(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v20 = v1[8];
    v21 = v1[10];
    v19 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v22);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v19;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v12 = v1[9];
    v11 = v1[10];
    v13 = v1[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[13];
  v15 = v1[6];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_20B77A0A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20B77A22C;

  return v13(v8 + 16);
}

uint64_t sub_20B77A22C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20B7809F0;
  }

  else
  {
    v2 = sub_20B7809F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20B77A340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B77A0A4);
}

void sub_20B77A454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20B777950);
}

uint64_t sub_20B77A568(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 112) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_20B77A6E8;

  return v13();
}

uint64_t sub_20B77A6E8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20B77A9E8;
  }

  else
  {
    v2 = sub_20B77A7FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77A7FC(uint64_t a1)
{
  v22 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v18 = v1[8];
    v19 = v1[11];
    v17 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v17;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v19, v18);
  }

  else
  {
    v11 = v1[11];
    v12 = v1[8];
    v13 = v1[9];

    (*(v13 + 8))(v11, v12);
  }

  v14 = v1[6];
  v20 = 0;
  v21 = 0;
  v14(&v20);

  v15 = v1[1];

  return v15();
}

uint64_t sub_20B77A9E8(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v20 = v1[8];
    v21 = v1[10];
    v19 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v22);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v19;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v12 = v1[9];
    v11 = v1[10];
    v13 = v1[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[13];
  v15 = v1[6];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_20B77ABF4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 113) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_20B77AD7C;

  return v13(v8 + 112);
}

uint64_t sub_20B77AD7C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20B7809EC;
  }

  else
  {
    v2 = sub_20B7809E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77AE90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20B77B018;

  return v13(v8 + 16);
}

uint64_t sub_20B77B018()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20B7809F0;
  }

  else
  {
    v2 = sub_20B77B12C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77B12C(uint64_t a1)
{
  v23 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v18 = v1[6];
    v20 = v1[12];
    v8 = v1[3];
    v19 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C13DCA4();
    v13 = sub_20B51E694(v11, v12, &v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v21 = v1[2];
  v22 = 0;
  v15 = v21;
  v14(&v21);

  v16 = v1[1];

  return v16();
}

uint64_t sub_20B77B31C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640B0, &qword_20C155C40);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C134F74();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B77B540;

  return v15(v12);
}

uint64_t sub_20B77B540()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B77B8BC;
  }

  else
  {
    v2 = sub_20B77B654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77B654(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C7640B0, &qword_20C155C40);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B77B8BC(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C7640B0, &qword_20C155C40);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B77BAF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640A0, &qword_20C155C30);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C1362F4();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B77BD1C;

  return v15(v12);
}

uint64_t sub_20B77BD1C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B77C098;
  }

  else
  {
    v2 = sub_20B77BE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77BE30(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C7640A0, &qword_20C155C30);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B77C098(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C7640A0, &qword_20C155C30);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B77C2D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764090, &unk_20C155C20);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C134C84();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20B77C4F8;

  return v15(v12);
}

uint64_t sub_20B77C4F8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B77C874;
  }

  else
  {
    v2 = sub_20B77C60C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77C60C(uint64_t a1)
{
  v25 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20B520158(v17, &qword_27C764090, &unk_20C155C20);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B77C874(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C13DCA4();
    v10 = sub_20B51E694(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F6A40](v7, -1, -1);
    MEMORY[0x20F2F6A40](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20B520158(v15, &qword_27C764090, &unk_20C155C20);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20B77CAB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 56) = v16;
  *(v8 + 128) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_20C13BB84();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 112) = v11;
  *v11 = v8;
  v11[1] = sub_20B77CC38;

  return v13(v8 + 16);
}

uint64_t sub_20B77CC38()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20B77CF40;
  }

  else
  {
    v2 = sub_20B77CD4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B77CD4C(uint64_t a1)
{
  v23 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v7 = v1[10];
  v6 = v1[11];
  if (v4)
  {
    v18 = v1[7];
    v20 = v1[13];
    v8 = v1[4];
    v19 = v1[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C13DCA4();
    v13 = sub_20B51E694(v11, v12, v21);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[8];
  v15 = v1[3];
  v21[0] = v1[2];
  v21[1] = v15;
  v22 = 0;

  v14(v21);
  swift_bridgeObjectRelease_n();

  v16 = v1[1];

  return v16();
}

uint64_t sub_20B77CF40(uint64_t a1)
{
  v24 = v1;
  sub_20C13B524();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v19 = v1[7];
    v21 = v1[12];
    v8 = v1[4];
    v20 = v1[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C13DCA4();
    v13 = sub_20B51E694(v11, v12, v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v19;
    _os_log_impl(&dword_20B517000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = v1[15];
  v15 = v1[8];
  v22[0] = v14;
  v22[1] = 0;
  v23 = 1;
  v16 = v14;
  v15(v22);

  v17 = v1[1];

  return v17();
}