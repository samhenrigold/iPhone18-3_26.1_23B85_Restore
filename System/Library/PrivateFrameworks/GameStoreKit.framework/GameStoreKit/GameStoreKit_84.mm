uint64_t sub_24EE8E8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628, &qword_24F9AA158);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630, &qword_24F9AA160);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  MEMORY[0x28223BE20](v42);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  sub_24F922E58();
  if (*(&v44 + 1))
  {
    v38 = a1;
    v39 = v12;
    v40 = v7;
    v41 = v6;
    v46[0] = v43;
    v46[1] = v44;
    v47 = v45;
    v18 = v2 + *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    swift_beginAccess();
    sub_24E60169C(v18, v14, &qword_27F22ACF0, &qword_24F990A30);
    sub_24EE8F4E0(v46, v17);
    sub_24E601704(v14, &qword_27F22ACF0, &qword_24F990A30);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v17, 1, v19) == 1)
    {
      v34 = v19;
      v33 = v9;
      v37 = a2;
      sub_24E601704(v17, &qword_27F228650, &qword_24F9B0470);
      if (qword_27F2105A8 != -1)
      {
        swift_once();
      }

      v36 = sub_24F92AAE8();
      v35 = __swift_project_value_buffer(v36, qword_27F39C458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      *(&v44 + 1) = MEMORY[0x277D837D0];
      v21 = MEMORY[0x277D837D0];
      *&v43 = 0xD000000000000034;
      *(&v43 + 1) = 0x800000024FA604B0;
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      *(&v44 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v43 = swift_allocObject();
      sub_24E772724(v46, v43 + 16);
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      *(&v44 + 1) = v21;
      strcpy(&v43, "at indexPath:");
      HIWORD(v43) = -4864;
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      v22 = sub_24F91FA78();
      *(&v44 + 1) = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v38, v22);
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      v24 = MEMORY[0x277D837D0];
      *(&v44 + 1) = MEMORY[0x277D837D0];
      *&v43 = 0xD00000000000002BLL;
      *(&v43 + 1) = 0x800000024FA604F0;
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      v25 = (v18 + *(v42 + 52));
      v27 = *v25;
      v26 = v25[1];
      *(&v44 + 1) = v24;
      *&v43 = v27;
      *(&v43 + 1) = v26;

      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5B8();

      v28 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
      swift_beginAccess();
      v29 = v39;
      sub_24E60169C(v3 + v28, v39, &qword_27F232630, &qword_24F9AA160);
      if ((*(v40 + 48))(v29, 1, v41))
      {
        sub_24E772780(v46);
        sub_24E601704(v29, &qword_27F232630, &qword_24F9AA160);
        return (*(v20 + 56))(v37, 1, 1, v34);
      }

      else
      {
        v32 = v33;
        sub_24E60169C(v29, v33, &qword_27F232628, &qword_24F9AA158);
        sub_24E601704(v29, &qword_27F232630, &qword_24F9AA160);
        sub_24EE8F0F8(v46, v37);
        sub_24E601704(v32, &qword_27F232628, &qword_24F9AA158);
        return sub_24E772780(v46);
      }
    }

    else
    {
      sub_24E772780(v46);
      (*(v20 + 32))(a2, v17, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    sub_24E601704(&v43, &qword_27F228658, &qword_24F9C31B0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_24EE8F0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650, &qword_24F9B0470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  sub_24EE8F4E0(a1, v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v18 = a2;
    sub_24E601704(v7, &qword_27F228650, &qword_24F9B0470);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    v16[1] = __swift_project_value_buffer(v17, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    v16[0] = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v10 = MEMORY[0x277D837D0];
    v21 = MEMORY[0x277D837D0];
    v19 = 0xD000000000000019;
    v20 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0, &unk_24F945320);
    v11 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 52));
    v13 = *v11;
    v12 = v11[1];
    v21 = v10;
    v19 = v13;
    v20 = v12;

    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0, &unk_24F945320);
    v21 = v10;
    v19 = 0xD000000000000031;
    v20 = 0x800000024FA60540;
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0, &unk_24F945320);
    v21 = &type metadata for DiffablePageContentIdentifier;
    v19 = swift_allocObject();
    sub_24E772724(a1, v19 + 16);
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0, &unk_24F945320);
    v21 = v10;
    v19 = 0xD000000000000019;
    v20 = 0x800000024FA60580;
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v14 = 1;
    a2 = v18;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_24EE8F4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 44));
  if (*(v5 + 16) && (v6 = sub_24E76DD40(a1), (v7 & 1) != 0))
  {
    sub_24E60169C(*(v5 + 56) + 88 * v6, v12, &qword_27F21EC48, &unk_24F963C20);
    sub_24E615E00(v12, v13);
    sub_24E601704(v12, &qword_27F21EC48, &unk_24F963C20);
    sub_24E612C80(v13, v14);
    sub_24E615E00(v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    sub_24F928A78();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

char *sub_24EE8F688(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628, &qword_24F9AA158);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630, &qword_24F9AA160);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v45 = v1;
  v18 = v1 + v17;
  swift_beginAccess();
  v50 = v18;
  sub_24E60169C(v18, v16, &qword_27F22ACF0, &qword_24F990A30);
  v19 = *(v8 + 16);
  v51 = a1;
  v43 = v19;
  v19(v10, a1, v7);
  v20 = type metadata accessor for Shelf(0);
  v52 = v20;
  v44 = sub_24EE907F8(&qword_27F22CE68, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v53 = v44;
  swift_getKeyPath();
  sub_24F928A48();

  v21 = *(v8 + 8);
  v21(v10, v7);
  v46 = v11;
  if (*(*&v16[*(v11 + 36) + 8] + 16) && (sub_24E76DD40(&v54), (v22 & 1) != 0))
  {
    sub_24E772780(&v54);
    sub_24E601704(v16, &qword_27F22ACF0, &qword_24F990A30);
    sub_24E60169C(v50, v13, &qword_27F22ACF0, &qword_24F990A30);
    v23 = sub_24EE90360(v51);
    v24 = v13;
    v25 = &qword_27F22ACF0;
    v26 = &qword_24F990A30;
  }

  else
  {
    v40 = v21;
    sub_24E772780(&v54);
    sub_24E601704(v16, &qword_27F22ACF0, &qword_24F990A30);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v42 = sub_24F92AAE8();
    v41 = __swift_project_value_buffer(v42, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v56 = MEMORY[0x277D837D0];
    v54 = 0xD00000000000003BLL;
    v55 = 0x800000024FA605A0;
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    v43(v10, v51, v7);
    v56 = &type metadata for DiffablePageContentIdentifier;
    v54 = swift_allocObject();
    MEMORY[0x28223BE20](v54);
    v27 = v44;
    *(&v38 - 2) = v20;
    *(&v38 - 1) = v27;
    swift_getKeyPath();
    sub_24F928A48();

    v40(v10, v7);
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    v28 = MEMORY[0x277D837D0];
    v56 = MEMORY[0x277D837D0];
    v54 = 0xD000000000000044;
    v55 = 0x800000024FA605E0;
    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    v29 = (v50 + *(v46 + 52));
    v31 = *v29;
    v30 = v29[1];
    v56 = v28;
    v54 = v31;
    v55 = v30;

    sub_24F928438();
    sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    v32 = v45;
    v33 = *((*MEMORY[0x277D85000] & *v45) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v34 = v32 + v33;
    v35 = v47;
    sub_24E60169C(v34, v47, &qword_27F232630, &qword_24F9AA160);
    if ((*(v48 + 48))(v35, 1, v49))
    {
      sub_24E601704(v35, &qword_27F232630, &qword_24F9AA160);
      return 0;
    }

    v37 = v39;
    sub_24E60169C(v35, v39, &qword_27F232628, &qword_24F9AA158);
    sub_24E601704(v35, &qword_27F232630, &qword_24F9AA160);
    v23 = sub_24EE8FE68(v51);
    v24 = v37;
    v25 = &qword_27F232628;
    v26 = &qword_24F9AA158;
  }

  sub_24E601704(v24, v25, v26);
  return v23;
}

char *sub_24EE8FE68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v30 = *(v4 + 16);
  v28 = v4 + 16;
  v30(&v20 - v6, a1, v3, v5);
  v8 = type metadata accessor for Shelf(0);
  v32 = v8;
  v9 = sub_24EE907F8(&qword_27F22CE68, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v33 = v9;
  swift_getKeyPath();
  sub_24F928A48();

  v10 = *(v4 + 8);
  v29 = v4 + 8;
  v10(v7, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v12 = *(v11 + 36);
  v31 = v1;
  if (*(*(v1 + v12 + 8) + 16) && (sub_24E76DD40(&v34), (v13 & 1) != 0))
  {
    sub_24E772780(&v34);
    return sub_24EE90360(a1);
  }

  else
  {
    v24 = v10;
    v25 = v9;
    v26 = v8;
    v27 = a1;
    sub_24E772780(&v34);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    v23 = __swift_project_value_buffer(v21, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    v22 = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v36 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837D0];
    v34 = 0xD000000000000019;
    v35 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
    v16 = (v31 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];
    v36 = v15;
    v34 = v18;
    v35 = v17;

    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
    v36 = v15;
    v34 = 0xD00000000000003BLL;
    v35 = 0x800000024FA605A0;
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
    (v30)(v7, v27, v3);
    v36 = &type metadata for DiffablePageContentIdentifier;
    v34 = swift_allocObject();
    MEMORY[0x28223BE20](v34);
    v19 = v25;
    *(&v20 - 2) = v26;
    *(&v20 - 1) = v19;
    swift_getKeyPath();
    sub_24F928A48();

    v24(v7, v3);
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
    v36 = MEMORY[0x277D837D0];
    v34 = 0xD00000000000002DLL;
    v35 = 0x800000024FA60630;
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();

    return 0;
  }
}

char *sub_24EE90360(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  (*(v5 + 16))(v7, a1, v4, v9);
  v12 = type metadata accessor for Shelf(0);
  v20[0] = v12;
  v13 = sub_24EE907F8(&qword_27F22CE68, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v20[1] = v13;
  swift_getKeyPath();
  sub_24F928A48();

  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_24EE8B364(v21, v11);
  sub_24E772780(v21);
  v15 = (*(v5 + 48))(v11, 1, v4);
  if (v15 == 1)
  {
    sub_24E601704(v11, &unk_27F23A690, &qword_24F982880);
    return 0;
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v20[-2] = v12;
    v20[-1] = v13;
    swift_getKeyPath();
    sub_24F928A48();

    v17 = v21[0];
    v18 = (v14)(v11, v4);
    MEMORY[0x28223BE20](v18);
    v20[-2] = v2;
    v19 = sub_24EB0B440(sub_24EE90850, &v20[-4], v17);

    return v19;
  }
}

uint64_t sub_24EE9064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E615E00(a1, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_24EE8F4E0(v5, a2);
  return sub_24E772780(v5);
}

uint64_t sub_24EE906DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE9073C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE907A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

__n128 sub_24EE907EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EE907F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE90870(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232638, &unk_24F9AA1D0);
  MEMORY[0x28223BE20](v53);
  v56 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - v7;
  v8 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant(0);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = 0;
    v55 = a1;
    while (1)
    {
      v19 = *(a1 + 16);
      if (v18 >= v19)
      {
        break;
      }

      v1 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v2 = *(v10 + 72);
      sub_24EE90F78(a1 + v1 + v2 * v18, v15, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
      if ((*(v15 + 8) & 1) != 0 || *v15 != 1)
      {
        sub_24EE90F1C(v15);
      }

      else
      {
        sub_24EE91048(v15, v12, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457CC0(0, *(v17 + 16) + 1, 1);
          v17 = v57;
        }

        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        v3 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          sub_24F457CC0((v21 > 1), v22 + 1, 1);
          v17 = v57;
        }

        *(v17 + 16) = v3;
        sub_24EE91048(v12, v17 + v1 + v22 * v2, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
        a1 = v55;
      }

      if (v16 == ++v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_36:
    sub_24F457A38((v19 > 1), v10, 1);
    v23 = v57;
    goto LABEL_27;
  }

LABEL_13:
  v12 = *(v17 + 16);
  if (v12 == 1)
  {

    v2 = v54;
  }

  else
  {
    v2 = v54;
    if (v12)
    {

      a1 = v17;
    }

    else
    {
    }
  }

  v3 = *(a1 + 16);
  if (v3 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = *(a1 + 16);
  }

  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v57 = MEMORY[0x277D84F90];
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  sub_24F457A38(0, v15, 0);
  v23 = v57;
  v50 = *(v10 + 72);
  v24 = a1;
  v26 = v52;
  v25 = v53;
  v27 = *(v53 + 48);
  v55 = v24;
  sub_24EE90F78(v24 + v16, &v52[v27], type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
  v28 = v56;
  *v56 = 0;
  v29 = v28 + *(v25 + 48);
  sub_24EE91048(&v26[v27], v29, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
  sub_24EE90F78(v29 + *(v51 + 20), v2, type metadata accessor for PlayerAvatar);
  if (v12 == 1)
  {
    v30 = *v29;
    v31 = *(v29 + 8);
  }

  else
  {
    v30 = 0;
    v31 = 1;
  }

  v32 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78, &qword_24F93E8B0) + 48);
  *v32 = v30;
  *(v32 + 8) = v31;
  sub_24EE90FE0(v56);
  v57 = v23;
  v1 = *(v23 + 16);
  v19 = *(v23 + 24);
  v10 = v1 + 1;
  if (v1 >= v19 >> 1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v47 = v12;
  *(v23 + 16) = v10;
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v33 = *(v48 + 72);
  sub_24EE91048(v2, v23 + v49 + v33 * v1, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  if (v3 != 1)
  {
    v35 = v55 + v50 + v16;
    v36 = 1;
    do
    {
      v37 = v15;
      v39 = v52;
      v38 = v53;
      v40 = *(v53 + 48);
      sub_24EE90F78(v35, &v52[v40], type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
      v41 = v56;
      *v56 = v36;
      v42 = v41 + *(v38 + 48);
      v43 = v54;
      sub_24EE91048(&v39[v40], v42, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
      sub_24EE90F78(v42 + *(v51 + 20), v43, type metadata accessor for PlayerAvatar);
      v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78, &qword_24F93E8B0) + 48);
      *v44 = 0;
      *(v44 + 8) = 1;
      sub_24EE90FE0(v41);
      v57 = v23;
      v46 = *(v23 + 16);
      v45 = *(v23 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_24F457A38((v45 > 1), v46 + 1, 1);
        v23 = v57;
      }

      *(v23 + 16) = v46 + 1;
      sub_24EE91048(v43, v23 + v49 + v33 * v46, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      ++v36;
      v35 += v50;
      v15 = v37;
    }

    while (v37 != v36);
  }

  return v23;
}

uint64_t type metadata accessor for ChallengeVisualOutcomeMetrics.Participant(uint64_t a1)
{
  result = qword_27F232640;
  if (!qword_27F232640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE90F1C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE90F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE90FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232638, &unk_24F9AA1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE91048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE910B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_24EE910F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE9115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EE911E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PlayerAvatar(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24EE91264(uint64_t a1)
{
  sub_24E659BE8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ContingentOffer.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);

  return v1;
}

uint64_t ContingentOffer.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);

  return v1;
}

uint64_t ContingentOffer.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);

  return v1;
}

uint64_t ContingentOffer.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);

  return v1;
}

uint64_t ContingentOffer.learnMoreTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);

  return v1;
}

uint64_t ContingentOffer.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup);
  *(v1 + 56) = type metadata accessor for Lockup(0);
  *(v1 + 64) = sub_24EE932BC(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t ContingentOffer.__allocating_init(id:backgroundArtwork:backgroundVideo:mediaOverlayStyle:title:subtitle:additionalInfo:description:label:badge:offerLockup:trunkAppIcon:supportsStreamlinedBuy:learnMoreTitle:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v51 = a8;
  v48 = a7;
  v47 = a6;
  v52 = a21;
  v53 = a1;
  v58 = a19;
  v59 = a20;
  v57 = a18;
  v56 = a17;
  v54 = a16;
  v55 = a15;
  v50 = a14;
  v49 = a13;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = *a4;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundArtwork) = a2;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundVideo) = a3;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_mediaOverlayStyle) = v28;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_title) = a5;
  v29 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);
  v30 = v48;
  *v29 = v47;
  v29[1] = v30;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_additionalInfo) = v51;
  v31 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);
  *v31 = a9;
  v31[1] = a10;
  v32 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);
  *v32 = a11;
  v32[1] = a12;
  v34 = v52;
  v33 = v53;
  v35 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);
  v36 = v50;
  *v35 = v49;
  v35[1] = v36;
  v37 = v55;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_trunkAppIcon) = v54;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup) = v37;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_supportsStreamlinedBuy) = v56;
  v38 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);
  v39 = v58;
  *v38 = v57;
  v38[1] = v39;
  sub_24E60169C(v33, v65, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v34, v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v65, &v62, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v63 + 1))
  {
    v40 = v63;
    *(v27 + 24) = v62;
    *(v27 + 40) = v40;
    *(v27 + 56) = v64;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v45 + 8))(v26, v46);
    v60 = v41;
    v61 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v62, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v34, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v65, &qword_27F235830, &qword_24F93B8C0);
  *(v27 + 16) = 1;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v59;
  return v27;
}

uint64_t ContingentOffer.init(id:backgroundArtwork:backgroundVideo:mediaOverlayStyle:title:subtitle:additionalInfo:description:label:badge:offerLockup:trunkAppIcon:supportsStreamlinedBuy:learnMoreTitle:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v58 = a8;
  v54 = a7;
  v53 = a6;
  v55 = a21;
  v63 = a19;
  v64 = a20;
  v62 = a18;
  v61 = a17;
  v60 = a15;
  v59 = a16;
  v57 = a14;
  v56 = a13;
  v52 = a12;
  v51 = a11;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v48 - v31;
  LOBYTE(v31) = *a4;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundArtwork) = a2;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundVideo) = a3;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_mediaOverlayStyle) = v31;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_title) = a5;
  v33 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_additionalInfo) = v58;
  v35 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);
  *v35 = a9;
  v35[1] = a10;
  v36 = v55;
  v37 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);
  v38 = v52;
  *v37 = v51;
  v37[1] = v38;
  v39 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);
  v40 = v57;
  *v39 = v56;
  v39[1] = v40;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_trunkAppIcon) = v59;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup) = v60;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_supportsStreamlinedBuy) = v61;
  v41 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);
  v42 = v63;
  *v41 = v62;
  v41[1] = v42;
  sub_24E60169C(a1, v73, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v36, v32, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v73, &v67, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v49 + 8))(v29, v50);
    v65 = v43;
    v66 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v36, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v73, &qword_27F235830, &qword_24F93B8C0);
  v46 = v71;
  *(v22 + 24) = v70;
  *(v22 + 40) = v46;
  *(v22 + 56) = v72;
  *(v22 + 16) = 1;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v64;
  sub_24E65E0D4(v32, v22 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
  return v22;
}

void (*ContingentOffer.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v3 = v2;
  v142 = a2;
  v137 = v3;
  v136 = *v3;
  v5 = sub_24F9285B8();
  v140 = *(v5 - 8);
  v141 = v5;
  MEMORY[0x28223BE20](v5);
  v126 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v108 - v8;
  MEMORY[0x28223BE20](v9);
  v130 = &v108 - v10;
  MEMORY[0x28223BE20](v11);
  v134 = &v108 - v12;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v125 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v108 - v17;
  MEMORY[0x28223BE20](v18);
  v129 = &v108 - v19;
  MEMORY[0x28223BE20](v20);
  v133 = &v108 - v21;
  MEMORY[0x28223BE20](v22);
  v132 = &v108 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v108 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v108 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v108 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v108 - v34;
  v36 = a1;
  sub_24F928398();
  v123 = sub_24F928348();
  v124 = v14;
  v38 = v37;
  v39 = *(v14 + 8);
  v39(v35, v13);
  v135 = v38;
  v138 = v13;
  if (!v38)
  {
    v58 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v60 = v59;
    *v59 = 0x6567646162;
LABEL_9:
    v61 = v136;
    v59[1] = 0xE500000000000000;
    v59[2] = v61;
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    v53 = v36;
    v62 = v142;
    goto LABEL_10;
  }

  v139 = v39;
  sub_24F928398();
  v40 = sub_24F928348();
  v39 = v139;
  v120 = v40;
  v42 = v41;
  v139(v32, v13);
  if (!v42)
  {

    v58 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v60 = v59;
    *v59 = 0x6C6562616CLL;
    goto LABEL_9;
  }

  v122 = v42;
  sub_24F928398();
  v43 = sub_24F928348();
  v39 = v139;
  v119 = v43;
  v45 = v44;
  v139(v29, v13);
  v121 = v45;
  if (v45)
  {
    sub_24F928398();
    v46 = sub_24F928348();
    v39 = v139;
    v117 = v46;
    v48 = v47;
    v139(v26, v13);
    v118 = v48;
    if (v48)
    {
      v49 = v132;
      v50 = v39;
      sub_24F928398();
      v51 = sub_24F928278();
      v132 = (v14 + 8);
      v50(v49, v13);
      v52 = (v140 + 16);
      v53 = v36;
      v114 = v51;
      if (v51)
      {
        type metadata accessor for InAppPurchaseLockup(0);
        sub_24F928398();
        v54 = *v52;
        v55 = v141;
        (*v52)(v134, v142, v141);
        v56 = &qword_27F228A00;
        v57 = type metadata accessor for InAppPurchaseLockup;
      }

      else
      {
        type metadata accessor for Lockup(0);
        sub_24F928398();
        v54 = *v52;
        v55 = v141;
        (*v52)(v134, v142, v141);
        v56 = &qword_27F221FB8;
        v57 = type metadata accessor for Lockup;
      }

      sub_24EE932BC(v56, v57, &protocol conformance descriptor for Lockup);
      sub_24F929548();
      if (v143)
      {
        v68 = v54;
        v116 = v143;

        v69 = type metadata accessor for Artwork(0);
        sub_24F928398();
        v70 = v142;
        (v54)(v134, v142, v55);
        v71 = sub_24EE932BC(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v112 = v69;
        sub_24F929548();
        v72 = v143;
        v73 = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v74 = v129;
        v115 = v53;
        sub_24F928398();
        v75 = v130;
        v113 = v73;
        (v68)(v130, v70, v55);
        v76 = v131;
        v77 = sub_24F0151C0(v74, v75);
        if (v76)
        {

          v62 = v142;
          v39 = v139;
          v53 = v115;
          goto LABEL_10;
        }

        v80 = v55;
        v130 = v71;
        v131 = v77;
        v111 = v72;
        v81 = v127;
        v82 = v115;
        sub_24F928398();
        v83 = v128;
        v84 = v142;
        (v68)(v128, v142, v80);
        v53 = v82;
        v128 = sub_24F0151C0(v81, v83);
        v129 = v68;
        v85 = v133;
        sub_24F928398();
        sub_24EA303C8();
        sub_24F928208();
        v87 = v138;
        v86 = v139;
        v139(v85, v138);
        v110 = v143;
        sub_24F928398();
        v109 = sub_24F928348();
        v127 = v88;
        v86(v85, v87);
        sub_24F928398();
        v89 = v134;
        v90 = v141;
        (v129)(v134, v84, v141);
        sub_24F929548();
        v130 = v143;
        type metadata accessor for Video(0);
        sub_24F928398();
        (v129)(v89, v84, v90);
        sub_24EE932BC(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
        sub_24F929548();
        v91 = v143;
        if (v130 | v143)
        {
          v95 = v137;
          *(v137 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundArtwork) = v130;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundVideo) = v91;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_mediaOverlayStyle) = v110;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_title) = v128;
          v96 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);
          v97 = v127;
          *v96 = v109;
          v96[1] = v97;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_additionalInfo) = v131;
          v98 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);
          v99 = v118;
          *v98 = v117;
          v98[1] = v99;
          v100 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);
          v102 = v122;
          v101 = v123;
          *v100 = v120;
          v100[1] = v102;
          v103 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);
          *v103 = v101;
          v103[1] = v135;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_trunkAppIcon) = v111;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup) = v116;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_supportsStreamlinedBuy) = v114 & 1;
          v104 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);
          v105 = v121;
          *v104 = v119;
          v104[1] = v105;
          v106 = v125;
          (*(v124 + 16))(v125, v53, v138);
          v107 = v126;
          (v129)(v126, v142, v141);

          v39 = AppPromotion.init(deserializing:using:)(v106, v107);

          (*(v140 + 8))(v142, v141);
          v139(v53, v138);
          return v39;
        }

        v92 = sub_24F92AC38();
        sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
        swift_allocError();
        v93 = MEMORY[0x277D84F90];
        *v94 = v136;
        v94[1] = v93;
        (*(*(v92 - 8) + 104))(v94, *MEMORY[0x277D22538], v92);
        swift_willThrow();
      }

      else
      {

        v78 = sub_24F92AC38();
        sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
        swift_allocError();
        *v79 = 0x636F4C726566666FLL;
        v79[1] = 0xEB0000000070756BLL;
        v79[2] = v136;
        (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277D22530], v78);
        swift_willThrow();
      }

      v62 = v142;
      v39 = v139;
      goto LABEL_10;
    }

    v66 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v67 = 0x7470697263736564;
    v67[1] = 0xEB000000006E6F69;
    v67[2] = v136;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
    swift_willThrow();
    v62 = v142;
    v53 = v36;
  }

  else
  {

    v64 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v65, "learnMoreTitle");
    v65[15] = -18;
    *(v65 + 2) = v136;
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D22530], v64);
    swift_willThrow();
    v62 = v142;
    v53 = v36;
  }

LABEL_10:
  (*(v140 + 8))(v62, v141);
  v39(v53, v138);
  swift_deallocPartialClassInstance();
  return v39;
}

uint64_t sub_24EE92F5C()
{
}

uint64_t ContingentOffer.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t ContingentOffer.__deallocating_deinit()
{
  ContingentOffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EE931B4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup);
  *(v2 + 56) = type metadata accessor for Lockup(0);
  *(v2 + 64) = sub_24EE932BC(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_24EE93264(uint64_t a1)
{
  result = sub_24EE932BC(&qword_27F232650, type metadata accessor for ContingentOffer, &protocol conformance descriptor for AppPromotion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EE932BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ContingentOffer(uint64_t a1)
{
  result = qword_27F232658;
  if (!qword_27F232658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RenderPipelineDiagnostics.Recorder.__allocating_init()()
{
  v0 = swift_allocObject();
  RenderPipelineDiagnostics.Recorder.init()();
  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v1 = [objc_opt_self() defaultCenter];
  v2 = qword_27F210798;

  if (v2 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:sel_recordNotification_ name:qword_27F232668 object:0];

  v3 = qword_27F2107A0;

  if (v3 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:sel_recordNotification_ name:qword_27F232670 object:0];

  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

id sub_24EE936C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  [v9 lock];
  (*(v5 + 16))(v8, a1, v4);
  swift_beginAccess();
  v10 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_24E61977C(0, v10[2] + 1, 1, v10);
    *(v2 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_24E61977C((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(v2 + 16) = v10;
  swift_endAccess();
  return [v9 unlock];
}

uint64_t RenderPipelineDiagnostics.Recorder.snapshot()()
{
  v1 = *(v0 + 24);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 16);

  [v1 unlock];
  return v2;
}

uint64_t sub_24EE939D4()
{
  result = sub_24F92B098();
  qword_27F232668 = result;
  return result;
}

uint64_t sub_24EE93A44()
{
  result = sub_24F92B098();
  qword_27F232670 = result;
  return result;
}

void sub_24EE93AC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_27F2107A0 != -1)
    {
      swift_once();
    }

    v5 = qword_27F232670;
    sub_24E94E17C(a2, v16);
    v6 = v17;
    if (v17)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
      (*(v8 + 16))(v11, v9);
      v12 = sub_24F92CDE8();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      v12 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v16[0] = 0x746E656469636E69;
    v16[1] = 0xE900000000000073;
    sub_24F92C7F8();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232678, &qword_24F9AA358);
    *(inited + 72) = a1;

    sub_24E608210(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
    v14 = sub_24F92AE28();

    [v4 postNotificationName:v5 object:v12 userInfo:v14];

    swift_unknownObjectRelease();
  }
}

void sub_24EE93D6C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_27F210798 != -1)
  {
    swift_once();
  }

  v4 = qword_27F232668;
  sub_24E94E17C(a2, v19);
  v5 = v20;
  if (v20)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_24F92CDE8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v19[0] = 0x726F727265;
  v19[1] = 0xE500000000000000;
  sub_24F92C7F8();
  swift_getErrorValue();
  v13 = v17[1];
  v14 = v18;
  *(inited + 96) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v13, v14);
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
  v16 = sub_24F92AE28();

  [v3 postNotificationName:v4 object:v11 userInfo:v16];

  swift_unknownObjectRelease();
}

uint64_t _s12GameStoreKit25RenderPipelineDiagnosticsV9incidents2ofSay9JetEngine10JSIncidentVGSg10Foundation12NotificationV_tFZ_0()
{
  v0 = sub_24F91EB48();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0x746E656469636E69;
  *(&v6 + 1) = 0xE900000000000073;
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934(v5), (v3 & 1) == 0))
  {

    sub_24E6585F8(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, &v6);
  sub_24E6585F8(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232678, &qword_24F9AA358);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s12GameStoreKit25RenderPipelineDiagnosticsV5error2ofs5Error_pSg10Foundation12NotificationV_tFZ_0()
{
  v0 = sub_24F91EB48();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0x726F727265;
  *(&v6 + 1) = 0xE500000000000000;
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934(v5), (v3 & 1) == 0))
  {

    sub_24E6585F8(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, &v6);
  sub_24E6585F8(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EE942F4()
{
  swift_getKeyPath();
  sub_24ECCC910();
  sub_24F91FD88();

  return *(v0 + 24);
}

double sub_24EE94364(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  if (v4 == a1)
  {
    sub_24ECCC910();
    sub_24F91FD88();

    if (*(v2 + 24) != a1)
    {
      sub_24F9280C8();
    }
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCC910();
    sub_24F91FD78();
  }

  return result;
}

void sub_24EE94488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  swift_getKeyPath();
  sub_24ECCC910();
  sub_24F91FD88();

  if (v3 != *(a1 + 24))
  {
    sub_24F9280C8();
  }
}

uint64_t sub_24EE94520()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit38GameMediaPreviewPlatformOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameMediaPreviewPlatformOptionProvider(uint64_t a1)
{
  result = qword_27F232688;
  if (!qword_27F232688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE94618(uint64_t a1)
{
  result = sub_24F91FDC8();
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

BOOL sub_24EE946E8(unsigned __int8 a1)
{
  v3 = sub_24F928C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v21 - v10;
  if (*(v1 + 16) != 1)
  {
    return 0;
  }

  v12 = a1;
  if (!a1)
  {
    return 1;
  }

  v13 = v8;
  v14 = *(v1 + 32);
  if (v12 == 1)
  {
    [*(v1 + 32) lock];
    sub_24F928C28();
    v15 = v1 + OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 10.0;
  }

  else
  {
    [*(v1 + 32) lock];
    sub_24F928C28();
    v15 = v1 + OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 5.0;
  }

  (*(v4 + 16))(v6, v15, v13);
  sub_24F928C08();
  v19 = v18;
  v20 = *(v4 + 8);
  v20(v6, v13);
  v20(v11, v13);
  [v14 unlock];
  return v19 > v16;
}

uint64_t sub_24EE948E8(char a1)
{
  v2 = v1;
  v12 = sub_24F928C38();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v7 = sub_24F92AAE8();
  __swift_project_value_buffer(v7, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F928448();
  sub_24F9283A8();
  v14 = &type metadata for JSGarbageCollector.Methodology;
  v13[0] = a1 & 1;
  sub_24F928438();
  sub_24E857CC8(v13);
  sub_24F92A588();

  if ((a1 & 1) == 0)
  {
    return sub_24F92A8A8();
  }

  v8 = *(v1 + 32);
  [*(v2 + 32) lock];
  sub_24F928C28();
  v9 = OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v9, v6, v12);
  swift_endAccess();
  [v8 unlock];
  return sub_24F92A898();
}

void sub_24EE94BA0(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EE94BFC()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
  v2 = sub_24F928C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JSGarbageCollector(uint64_t a1)
{
  result = qword_27F2326A0;
  if (!qword_27F2326A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE94CFC(uint64_t a1)
{
  result = sub_24F928C38();
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

unint64_t sub_24EE94DC8()
{
  result = qword_27F2326B0;
  if (!qword_27F2326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2326B0);
  }

  return result;
}

__n128 sub_24EE94E1C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  if (qword_27F210D60 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v5 = qword_27F39D300;
  v6 = *(a2 + 16);
  *(v4 + 32) = xmmword_24F944DE0;
  *(v4 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = a1;
  *(v4 + 96) = a1;
  *(v4 + 104) = v5;
  *(v4 + 112) = v5;
  *(v4 + 120) = v5;
  *(v4 + 128) = v5;
  *(v4 + 136) = v6;
  *(v4 + 144) = v6;
  v7 = MEMORY[0x277D768C8];
  *(v4 + 152) = 1;
  result = *v7;
  v9 = *(v7 + 16);
  *(v4 + 160) = *v7;
  *(v4 + 176) = v9;
  return result;
}

void *DiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:advertLifecycleMetricsReporter:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_24EE9AA30(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v8;
}

void sub_24EE94FA4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F91F648();
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14 < 0)
  {
    sub_24E60169C(v2 + qword_27F39CBF8, v7 + *(v5 + 20), &qword_27F228530, &unk_24F93C6E0);
    *v7 = v12;
    v18 = sub_24EA09500();
    if (v18)
    {
      v19 = v18;
      sub_24EE9C210(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v51 = swift_allocError();
      sub_24EBDEC38(v7, v20);
      v21 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v22 = *(v19 + v21);

      sub_24EE9BFB8(v12, v13, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + v21) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
        *(v19 + v21) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_24E617130((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      v22[v25 + 4] = v51;
      *(v19 + v21) = v22;
      swift_endAccess();
    }

    else
    {
      v45 = v12;
    }

    sub_24EE9C210(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v46 = swift_allocError();
    sub_24EBDEC38(v7, v47);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = *(v4 + 552);
    *(v49 + 32) = *(v4 + 568);
    *(v49 + 40) = *(v4 + 576);
    *(v49 + 56) = *(v4 + 592);
    *(v49 + 64) = v48;
    v54 = v46;
    *&v55 = sub_24EE9BFA4;
    *(&v55 + 1) = v49;
    LOBYTE(v56) = 1;

    sub_24EA093A4(&v54);
    sub_24EB24A60(v54, v55, *(&v55 + 1), v56);
    sub_24EBDECA4(v7);
  }

  else
  {
    v51 = v9;
    v15 = *(v4 + 1184);

    v15(v12, v14 & 1);
    *(v2 + qword_27F39CC10) = v13;

    v55 = 0uLL;
    v54 = v12;
    LOBYTE(v56) = 0;
    swift_unknownObjectRetain();
    sub_24EA093A4(&v54);
    v16 = sub_24EB24A60(v54, v55, *(&v55 + 1), v56);
    if (*(v2 + qword_27F2326C8))
    {
      v17 = (*(*v2 + 1192))(v16);
    }

    else
    {
      v17 = 1;
    }

    v52 = v13;
    v53 = 0;
    if (v14)
    {
      v26 = *(v4 + 576);
      v27 = *(v4 + 552);
      v28 = (*(v26 + 24))(v27, v26) ^ 1;
    }

    else
    {
      v27 = *(v4 + 552);
      v26 = *(v4 + 576);
      v28 = 1;
    }

    v54 = v27;
    v55 = *(v4 + 560);
    v56 = v26;
    v57 = *(v4 + 584);
    v29 = type metadata accessor for DiffablePagePresenter(0, &v54);
    WitnessTable = swift_getWitnessTable();
    sub_24EE86944(&v52, v17 & 1, 1, v28 & 1, v29, WitnessTable);
    sub_24E96513C(v52, v53);
    *(v2 + qword_27F2326C8) = v14 & 1;
    v31 = sub_24EA09500();
    if (v31)
    {
      v32 = v31;

      sub_24F91F638();
      sub_24F91F5E8();
      v34 = v33;
      (*(v51 + 8))(v11, v8);
      v35 = v32 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v35 = v34;
      *(v35 + 8) = 0;
      v36 = *(v32 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v36 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    v37 = *v2;
    v38 = (v2 + *(*v2 + 752));
    v39 = *v38;
    if (*v38)
    {
      v40 = v38[1];
      v41 = sub_24E5FCA4C(*v38, v40);
      v39(v41);
      sub_24E824448(v39, v40);
      v37 = *v2;
    }

    v42 = (v2 + *(v37 + 752));
    v43 = *v42;
    v44 = v42[1];
    *v42 = 0;
    v42[1] = 0;
    sub_24E824448(v43, v44);
  }
}

void sub_24EE95628(uint64_t a1, char a2)
{
  v17 = *v2;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17[69];
  v20 = v18;
  v16 = v17[73];
  v21 = v16;
  v15 = v17[74];
  v22 = v15;
  v19[0] = a1;
  swift_unknownObjectRetain();
  sub_24EA07F34(v19);
  v9 = a2;
  if (a2)
  {
    v10 = v17[72];
    v11 = *(v10 + 24);
    if (v11(v18, v10))
    {
LABEL_7:
      if (v11(v18, v10))
      {
        return;
      }

      goto LABEL_8;
    }
  }

  if (sub_24EA09500())
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    PendingPageRender.initialRequestEndTime.setter(v13, 0);
  }

  if (v9)
  {
    v10 = v17[72];
    v11 = *(v10 + 24);
    goto LABEL_7;
  }

LABEL_8:
  if (sub_24EA09500())
  {
    v21 = v16;
    v22 = v15;
    v20 = v18;
    v19[0] = a1;
    swift_unknownObjectRetain();

    PendingPageRender.use(pageRenderEventFrom:)(v19);

    sub_24E601704(v19, &qword_27F224F98, &unk_24F974A70);
  }

  if ((v9 & 1) == 0)
  {
    v19[0] = a1;
    v14 = (*(v17[71] + 8))(v18);
    sub_24EE99478(v14);
  }
}

double sub_24EE958DC(uint64_t a1, __n128 result)
{
  v3 = *(a1 + 16);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *v2;
    v5 = *(a1 + 8);
    (*(*v2 + 1184))(*a1, v3 & 1, result);
    sub_24EE98804(v5, 1);
    if (*(v2 + *(*v2 + 736)))
    {
      v6 = *(v4 + 568);
      v7 = *(v6 + 8);
      v8 = *(v4 + 552);

      v9 = v7(v8, v6);
      v10 = sub_24ED64DBC(v9);
    }

    else
    {
      v10 = (*(*(v4 + 568) + 8))(*(v4 + 552));
    }

    sub_24EE99478(v10);
  }

  return result.n128_f64[0];
}

char *DiffablePagePresenter.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = TimedMetricsPagePresenter.deinit();
  sub_24E601704(&v3[qword_27F39CBF8], &qword_27F228530, &unk_24F93C6E0);

  v4 = *(*v3 + 640);
  v15 = *(v1 + 592);
  v5 = v15;
  v12 = *(v2 + 576);
  v13 = *(v2 + 552);
  v11 = v13;
  v14 = v12;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v13);
  sub_24F929528();
  v6 = sub_24F92C4A8();
  v7 = *(*(v6 - 8) + 8);
  v7(&v3[v4], v6);
  sub_24E601704(&v3[*(*v3 + 648)], &qword_27F22AC08, &qword_24F989C48);
  v8 = *(*v3 + 656);
  v13 = v11;
  v14 = v12;
  v15 = v5;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v13);
  sub_24F929528();
  v9 = sub_24F92C4A8();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);
  v7(&v3[*(*v3 + 664)], v6);
  sub_24E601704(&v3[*(*v3 + 672)], &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(&v3[*(*v3 + 680)], &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(&v3[*(*v3 + 696)], &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(&v3[*(*v3 + 704)]);

  sub_24E601704(&v3[*(*v3 + 744)], &qword_27F229490, &unk_24F984C40);
  sub_24E824448(*&v3[*(*v3 + 752)], *&v3[*(*v3 + 752) + 8]);
  return v3;
}

double sub_24EE95DF0(char a1)
{
  sub_24EA08880(&v10);
  if (!v13)
  {
    result = sub_24EB24A60(v10, v11, v12, 0);
    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v13 == 1)
  {
    result = sub_24EB24A60(v10, v11, v12, 1);
    if ((a1 & 1) == 0)
    {
      return result;
    }

LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 2;
    sub_24EA093A4(&v10);
    sub_24EB24A60(v10, v11, v12, v13);
    v4 = sub_24EE96C1C();
    sub_24EE9A9E4(v4);

    (*(*v1 + 544))(1);
    return result;
  }

  if (v12 | v11 | v10)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  v6 = 1;
  v9 = 2;
  sub_24EA093A4(&v6);
  sub_24EB24A60(v6, v7, v8, v9);
  *(v1 + *(*v1 + 736)) = 0;

  if (*(v1 + qword_27F39CC00))
  {

    sub_24ED910C4(v5);
  }

  return result;
}

id sub_24EE95F54()
{
  v0 = sub_24EE9A984();

  return v0;
}

void sub_24EE95F7C(uint64_t a1)
{
  v3 = qword_27F39CC08;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24EE9600C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 640);
  swift_beginAccess();
  v6 = *(v3 + 592);
  v7 = *(v4 + 576);
  v10[0] = *(v4 + 552);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, v10);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  return (*(*(v8 - 8) + 16))(a1, v1 + v5, v8);
}

uint64_t sub_24EE96118(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 640);
  swift_beginAccess();
  v6 = *(v3 + 592);
  v7 = *(v4 + 576);
  v10[0] = *(v4 + 552);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, v10);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  (*(*(v8 - 8) + 40))(v1 + v5, a1, v8);
  return swift_endAccess();
}

uint64_t sub_24EE9622C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 648);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22AC08, &qword_24F989C48);
}

uint64_t sub_24EE962A0(uint64_t a1)
{
  v3 = *(*v1 + 648);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22AC08, &qword_24F989C48);
  return swift_endAccess();
}

uint64_t sub_24EE9631C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 656);
  swift_beginAccess();
  v6 = *(v3 + 592);
  v7 = *(v4 + 576);
  v10[0] = *(v4 + 552);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, v10);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  return (*(*(v8 - 8) + 16))(a1, v1 + v5, v8);
}

uint64_t sub_24EE96428(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 656);
  swift_beginAccess();
  v6 = *(v3 + 592);
  v7 = *(v4 + 576);
  v10[0] = *(v4 + 552);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, v10);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  (*(*(v8 - 8) + 40))(v1 + v5, a1, v8);
  return swift_endAccess();
}

uint64_t sub_24EE9653C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 664);
  swift_beginAccess();
  v6 = *(v3 + 592);
  v7 = *(v4 + 576);
  v10[0] = *(v4 + 552);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, v10);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  return (*(*(v8 - 8) + 16))(a1, v1 + v5, v8);
}

uint64_t sub_24EE96648(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 664);
  swift_beginAccess();
  v6 = *(v3 + 592);
  v7 = *(v4 + 576);
  v10[0] = *(v4 + 552);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, v10);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  (*(*(v8 - 8) + 40))(v1 + v5, a1, v8);
  return swift_endAccess();
}

uint64_t sub_24EE9675C(uint64_t a1)
{
  v3 = *(*v1 + 672);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22ABE8, &unk_24F9AA4F0);
  return swift_endAccess();
}

uint64_t sub_24EE967D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 680);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22ABF0, &qword_24F989C30);
}

uint64_t sub_24EE9684C(uint64_t a1)
{
  v3 = *(*v1 + 680);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22ABF0, &qword_24F989C30);
  return swift_endAccess();
}

uint64_t sub_24EE968C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 696);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22ACF0, &qword_24F990A30);
}

uint64_t sub_24EE9693C(uint64_t a1)
{
  v3 = *(*v1 + 696);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22ACF0, &qword_24F990A30);
  return swift_endAccess();
}

uint64_t sub_24EE96A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 704);
  swift_beginAccess();
  return sub_24E9B7D88(v1 + v3, a1);
}

uint64_t sub_24EE96A88(uint64_t a1)
{
  v3 = *(*v1 + 704);
  swift_beginAccess();
  sub_24EBD46D4(a1, v1 + v3);
  swift_endAccess();
  sub_24EE9A1F0();
  return sub_24E94E128(a1);
}

uint64_t sub_24EE96B00()
{
  sub_24EE9B350();
}

double sub_24EE96B28(uint64_t a1)
{
  v3 = *(*v1 + 712);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_24EE96BF8(uint64_t a1)
{
  *(v1 + *(*v1 + 736)) = a1;

  return result;
}

uint64_t sub_24EE96C1C()
{
  v1 = sub_24EA09500();

  v2.n128_f64[0] = sub_24EA06074(0);
  v3 = (*(*v0 + 1112))(0, v2);
  sub_24EE99638(v1);

  return v3;
}

void sub_24EE96CA8(uint64_t a1)
{
  v130 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8, &unk_24F9AA4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v119 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0, &qword_24F989C30);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v115 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  v128 = *(v10 - 8);
  v129 = v10;
  MEMORY[0x28223BE20](v10);
  v114 = &v103 - v11;
  v12 = *(v2 + 592);
  *&v138[16] = v12;
  v133 = *(v3 + 552);
  v121 = v3;
  v134 = *(v3 + 576);
  v137 = v133;
  *v138 = v134;
  Result = type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v137);
  v13 = sub_24F929528();
  v107 = sub_24F92C4A8();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v103 - v16;
  v127 = v13;
  v125 = *(v13 - 8);
  MEMORY[0x28223BE20](v17);
  v105 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08, &qword_24F989C48);
  MEMORY[0x28223BE20](v19 - 8);
  v116 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v103 = &v103 - v24;
  v137 = v133;
  *v138 = v134;
  v132 = v12;
  *&v138[16] = v12;
  v122 = type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v137);
  v25 = sub_24F929528();
  v26 = sub_24F92C4A8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v117 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v103 - v30;
  MEMORY[0x28223BE20](v32);
  v110 = &v103 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v103 - v35;
  v37 = *(v25 - 8);
  MEMORY[0x28223BE20](v38);
  v104 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v103 - v41;
  v131 = v1;
  sub_24EE9600C(v36);
  v109 = *(v37 + 48);
  v43 = v109(v36, 1, v25);
  v126 = v25;
  v113 = v31;
  v111 = v26;
  if (v43 == 1)
  {
    v44 = v37;
    (*(v27 + 8))(v36, v26);
    v45 = v130;
  }

  else
  {
    (*(v37 + 32))(v42, v36, v25);
    v45 = v130;
    if (v130)
    {
      sub_24F92AD78();
    }

    v44 = v37;
    (*(v37 + 8))(v42, v25);
  }

  v46 = v110;
  sub_24EE9622C(v23);
  v47 = v123;
  v48 = v124;
  v49 = (*(v123 + 48))(v23, 1, v124);
  v50 = v125;
  if (v49 == 1)
  {
    sub_24E601704(v23, &qword_27F22AC08, &qword_24F989C48);
  }

  else
  {
    v51 = v103;
    (*(v47 + 32))(v103, v23, v48);
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v47 + 8))(v51, v48);
  }

  v52 = v128;
  v53 = v112;
  sub_24EE9631C(v112);
  v54 = v53;
  v55 = v53;
  v56 = v127;
  v57 = v44;
  if ((*(v50 + 48))(v55, 1, v127) == 1)
  {
    (*(v106 + 8))(v54, v107);
  }

  else
  {
    v58 = v105;
    (*(v50 + 32))(v105, v54, v56);
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v50 + 8))(v58, v56);
  }

  v59 = v129;
  sub_24EE9653C(v46);
  v60 = v126;
  if (v109(v46, 1, v126) == 1)
  {
    (*(v27 + 8))(v46, v111);
    v61 = v121;
    v62 = v115;
    v63 = v114;
  }

  else
  {
    v64 = v104;
    (*(v57 + 32))(v104, v46, v60);
    v61 = v121;
    v63 = v114;
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v57 + 8))(v64, v60);
    v62 = v115;
  }

  v65 = v131;
  sub_24EE967D8(v62);
  if ((*(v52 + 48))(v62, 1, v59) == 1)
  {
    sub_24E601704(v62, &qword_27F22ABF0, &qword_24F989C30);
  }

  else
  {
    (*(v52 + 32))(v63, v62, v59);
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v52 + 8))(v63, v59);
  }

  if (*(v65 + qword_27F39CC00))
  {
    v66 = swift_allocObject();
    *(v66 + 16) = sub_24EE9C018;
    *(v66 + 24) = 0;
    sub_24F92ADB8();
    v67 = v61[71];

    v137 = v133;
    *v138 = v67;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter(0, &v137);
    swift_getWitnessTable();
    sub_24F9288B8();
    v68 = v113;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v68 = v113;
  }

  v70 = *(v57 + 56);
  v71 = 1;
  v131 = (v57 + 56);
  v121 = v70;
  (v70)(v68, v69, 1, v60);
  sub_24EE96118(v68);
  if (*(v65 + qword_27F39CC00))
  {
    v72 = swift_allocObject();
    *(v72 + 16) = sub_24EE9C090;
    *(v72 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
    v73 = v61;
    v74 = v61[71];
    v137 = v133;
    *v138 = v74;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter(0, &v137);
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8, &unk_24F96A5F0, MEMORY[0x277D22570]);
    sub_24F9288B8();
    v75 = v116;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v71 = 0;
    v76 = v118;
  }

  else
  {
    v76 = v118;
    v73 = v61;
    v75 = v116;
  }

  v77 = 1;
  (*(v123 + 56))(v75, v71, 1, v124);
  sub_24EE962A0(v75);
  if (*(v65 + qword_27F39CC00))
  {
    v78 = swift_allocObject();
    *(v78 + 16) = sub_24EBD39F8;
    *(v78 + 24) = 0;
    sub_24F92ADB8();
    v79 = v73[71];

    v137 = v133;
    *v138 = v79;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter(0, &v137);
    swift_getWitnessTable();
    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v77 = 0;
  }

  v80 = v76;
  v81 = v126;
  v82 = 1;
  (*(v125 + 56))(v80, v77, 1, v127);
  sub_24EE96428(v80);
  if (*(v65 + qword_27F39CC00))
  {
    v83 = swift_allocObject();
    *(v83 + 16) = sub_24EBD3338;
    *(v83 + 24) = 0;
    sub_24F92ADB8();
    v84 = v73[71];

    v137 = v133;
    *v138 = v84;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter(0, &v137);
    swift_getWitnessTable();
    sub_24F9288B8();
    v85 = v117;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v82 = 0;
  }

  else
  {
    v85 = v117;
  }

  v86 = 1;
  (v121)(v85, v82, 1, v81);
  sub_24EE96648(v85);
  if (*(v65 + qword_27F39CC00))
  {
    v87 = swift_allocObject();
    *(v87 + 16) = sub_24EE9C0D0;
    *(v87 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
    v88 = v73[71];
    v137 = v133;
    *v138 = v88;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter(0, &v137);
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600, MEMORY[0x277D22570]);
    sub_24F9288B8();
    v89 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v86 = 0;
    v90 = v120;
  }

  else
  {
    v90 = v120;
    v89 = v119;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v92 = 1;
  (*(*(v91 - 8) + 56))(v89, v86, 1, v91);
  sub_24EE9675C(v89);
  if (*(v65 + qword_27F39CC00))
  {
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EE9C138;
    *(v93 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
    v94 = v73[71];
    v137 = v133;
    *v138 = v94;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter(0, &v137);
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0, &unk_24F989C70, MEMORY[0x277D22570]);
    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v92 = 0;
  }

  v95 = v130;
  (*(v128 + 56))(v90, v92, 1, v129);
  v96 = sub_24EE9684C(v90);
  if (*(v65 + qword_27F39CC00))
  {
    v97 = qword_27F39CC08;
    swift_beginAccess();
    v98 = *(v65 + v97);

    v99 = v98;
    sub_24ED9100C(v98);
  }

  if (v95)
  {
    if ((*(*v65 + 1128))(v96))
    {
      v135 = 0;
      v136 = 0x80;
      v100 = v73[71];
      v137 = v133;
      *v138 = v100;
      *&v138[8] = v134;
      v139 = v132;
      v101 = type metadata accessor for DiffablePagePresenter(0, &v137);
      WitnessTable = swift_getWitnessTable();
      sub_24EE86944(&v135, 1, 1, 0, v101, WitnessTable);
    }
  }
}

double sub_24EE980B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 752));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_24E824448(v4, v5);
}

void sub_24EE980E0(void (*a1)(double), uint64_t a2)
{
  sub_24EA08880(&v9);
  if (v12)
  {
    sub_24EB24A60(v9, v10, v11, v12);
    v5 = (v2 + *(*v2 + 752));
    v6 = *v5;
    v7 = v5[1];
    *v5 = a1;
    v5[1] = a2;

    sub_24E824448(v6, v7);
  }

  else
  {
    v8 = sub_24EB24A60(v9, v10, v11, 0);
    a1(v8);
  }
}

double sub_24EE98178(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  if (v11)
  {
    v12 = sub_24EA09500();
    if (!v12)
    {
      return result;
    }

    v2 = v12;
    v7 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v14 = *(v2 + v7);

    v15 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v14 = sub_24E617130(0, v14[2] + 1, 1, v14);
      *(v2 + v7) = v14;
    }

    v18 = v14[2];
    v17 = v14[3];
    if (v18 >= v17 >> 1)
    {
      v14 = sub_24E617130((v17 > 1), v18 + 1, 1, v14);
    }

    v14[2] = v18 + 1;
    v14[v18 + 4] = v11;
    *(v2 + v7) = v14;
    swift_endAccess();
  }

  else
  {
    v19 = a1[3];
    sub_24EE98804(*a1, 1);
    if (!v19)
    {
      return result;
    }

    if (sub_24EA09500())
    {
      swift_beginAccess();

      sub_24EA0A8D8(v20);
      swift_endAccess();
    }

    else
    {
    }

    if (sub_24EA09500())
    {
      swift_beginAccess();

      sub_24EA0A904(v21);
      swift_endAccess();
    }

    v22 = *(v2 + *(*v2 + 736));
    if (v22)
    {
      v45 = v10;
      v46 = v19;
      v23 = *(v22 + 32);
      v24 = *(v19 + 16);
      v14 = (v24 + 64);
      v25 = 1 << *(v24 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v24 + 64);
      v28 = (v25 + 63) >> 6;
      v49 = (v8 + 48);
      v50 = v24;
      v43 = v8;
      v44 = (v8 + 32);
      swift_bridgeObjectRetain_n();
      v47 = v23;

      v11 = 0;
      v48 = MEMORY[0x277D84F90];
LABEL_17:
      v29 = v11;
      if (!v27)
      {
        goto LABEL_19;
      }

      do
      {
        v11 = v29;
LABEL_22:
        v30 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        sub_24E60169C(*(*(v50 + 56) + ((v11 << 9) | (8 * v30))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v6, &unk_27F22EC30, &qword_24F939880);
        if ((*v49)(v6, 1, v7) != 1)
        {
          v31 = *v44;
          (*v44)(v45, v6, v7);
          v32 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_24E616878(0, *(v32 + 2) + 1, 1, v32);
          }

          v34 = *(v32 + 2);
          v33 = *(v32 + 3);
          v35 = (v34 + 1);
          if (v34 >= v33 >> 1)
          {
            v48 = (v34 + 1);
            v37 = v32;
            v38 = v34;
            v39 = sub_24E616878((v33 > 1), v34 + 1, 1, v37);
            v35 = v48;
            v34 = v38;
            v32 = v39;
          }

          *(v32 + 2) = v35;
          v36 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v48 = v32;
          v31(&v32[v36 + *(v43 + 72) * v34], v45, v7);
          goto LABEL_17;
        }

        sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
        v29 = v11;
      }

      while (v27);
      while (1)
      {
LABEL_19:
        v11 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v11 >= v28)
        {
          break;
        }

        v27 = v14[v11];
        ++v29;
        if (v27)
        {
          goto LABEL_22;
        }
      }

      v40 = sub_24ED6555C(v48);

      if (v40)
      {

        sub_24EE99478(v41);
      }
    }
  }

  return result;
}

void sub_24EE986C0(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(a1 + 8);
  v8 = *a1;
  v9 = v3;
  v4 = *(v2 + 568);
  v7[0] = *(v2 + 552);
  v7[1] = v4;
  v7[2] = *(v2 + 584);
  v5 = type metadata accessor for DiffablePagePresenter(0, v7);
  WitnessTable = swift_getWitnessTable();
  sub_24EE86944(&v8, 1, 1, 0, v5, WitnessTable);
}

double sub_24EE98780()
{
  if (*(v0 + qword_27F39CC00))
  {

    sub_24ED92928();
  }

  return result;
}

uint64_t sub_24EE98804(uint64_t a1, char a2)
{
  v5 = *v2;
  *(v2 + qword_27F39CC10) = a1;

  if (a2)
  {
    v11 = a1;
    v12 = 0;

    v7 = *(v5 + 568);
    v10[0] = *(v5 + 552);
    v10[1] = v7;
    v10[2] = *(v5 + 584);
    v8 = type metadata accessor for DiffablePagePresenter(0, v10);
    WitnessTable = swift_getWitnessTable();
    sub_24EE86944(&v11, 1, 1, 0, v8, WitnessTable);
    return sub_24E96513C(v11, v12);
  }

  return result;
}

uint64_t sub_24EE9890C(uint64_t result)
{
  if (*(v1 + qword_27F39CC00))
  {
    v2 = result;
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2326B8, &unk_24F9AA500);
    v4[4] = sub_24E602068(&qword_27F2326C0, &qword_27F2326B8, &unk_24F9AA500, MEMORY[0x277D83B78]);
    v4[0] = v2;
    v3 = 1;

    sub_24ED91BFC(v4, &v3);

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t sub_24EE989D0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8, &qword_24F99AA88);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v39, &v35);
    if ((a3 & 1) == 0)
    {
      v8 = v37;
      v9 = v38;
      __swift_project_boxed_opaque_existential_1(&v35, v37);
      (*(v9 + 8))(v33, a2, v8, v9);
      if (*&v33[0])
      {
        v30 = v33[0];
        v31 = v33[1];
        *&v32 = v34;
        sub_24E60169C(&v30, v33, &qword_27F22CE40, &qword_24F99AAA0);
        v10 = *&v33[0];
        sub_24E60169C(&v30, &v27, &qword_27F22CE40, &qword_24F99AAA0);

        v24 = v10;
        v25 = v28;
        v26 = v29;
        sub_24F92AD88();
        sub_24E601704(&v24, &qword_27F22CE40, &qword_24F99AAA0);
        sub_24E601704(&v30, &qword_27F22CE40, &qword_24F99AAA0);
        sub_24E601704(v33 + 8, &qword_27F2129B0, &unk_24F945320);
      }

      else
      {
        sub_24E601704(v33, &qword_27F22ECF8, &unk_24F9AA510);
        v19 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(&v35, v37);
        if ((*(v20 + 16))(a2, v19, v20))
        {
          v21 = *(v7 + 568);
          v30 = *(v7 + 552);
          v31 = v21;
          v32 = *(v7 + 584);
          v22 = type metadata accessor for DiffablePagePresenter(0, &v30);
          ReloadableItemPagePresenter.reloadItem(_:)(a1, v22, &protocol witness table for DiffablePagePresenter<A>);
        }
      }
    }

    v18 = &v35;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38, &unk_24F992830);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v30, &v39);
    v11 = v40;
    v12 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v13 = (*(v12 + 8))(v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = v40;
      v16 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, v40);
      v17 = *(v16 + 16);

      v17(&v36, v15, v16);
      v35 = v14;
      sub_24F92AD88();

      sub_24E601704(&v35, &qword_27F22CE40, &qword_24F99AAA0);
    }

    v18 = &v39;
    goto LABEL_12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_24EE98D70()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  if (v1)
  {
    v0 = *(v1 + 104);

    if (v0)
    {
      *(&v5 + 1) = type metadata accessor for Shelf(0);

      sub_24F928A58();
      v1 = v0;
      v2 = v4;
      v3 = v5;
      sub_24F92AD88();

      sub_24E601704(&v1, &qword_27F22CE40, &qword_24F99AAA0);
    }
  }
}

void sub_24EE98E7C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  if (v1)
  {
    v0 = *(v1 + 136);

    if (v0)
    {
      *(&v5 + 1) = type metadata accessor for Shelf(0);

      sub_24F928A58();
      v1 = v0;
      v2 = v4;
      v3 = v5;
      sub_24F92AD88();

      sub_24E601704(&v1, &qword_27F22CE40, &qword_24F99AAA0);
    }
  }
}

void sub_24EE98F88()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  if (v1)
  {
    v0 = *(v1 + 56);

    if (v0)
    {
      *(&v5 + 1) = type metadata accessor for Shelf(0);

      sub_24F928A58();
      v1 = v0;
      v2 = v4;
      v3 = v5;
      sub_24F92AD88();

      sub_24E601704(&v1, &qword_27F22CE40, &qword_24F99AAA0);
    }
  }
}

void sub_24EE990AC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  if (v2)
  {
    *(&v6 + 1) = type metadata accessor for Shelf(0);

    sub_24F928A58();
    v3 = v5;
    v4 = v6;
    sub_24F92AD88();

    sub_24E601704(&v2, &qword_27F22CE40, &qword_24F99AAA0);
  }
}

uint64_t sub_24EE99194(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = v3;
    v30 = v1;
    v37 = MEMORY[0x277D84F90];
    sub_24F457E94(0, v10, 0);
    v11 = v37;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = (a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v31 = *(v12 + 56);
    v32 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v32;
      v32(v9, v14, v4);
      v17 = v33;
      v16(v33, v9, v4);
      swift_getKeyPath();
      sub_24F928A48();

      v18 = *v15;
      (*v15)(v17, v4);
      v18(v9, v4);
      v37 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24F457E94((v19 > 1), v20 + 1, 1);
        v11 = v37;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 40 * v20;
      v22 = v34;
      v23 = v35;
      *(v21 + 64) = v36;
      *(v21 + 32) = v22;
      *(v21 + 48) = v23;
      v14 += v31;
      --v10;
    }

    while (v10);
    v3 = v29;
  }

  v37 = v11;
  v38 = 64;
  v24 = *(v3 + 568);
  v34 = *(v3 + 552);
  v35 = v24;
  v36 = *(v3 + 584);
  v25 = type metadata accessor for DiffablePagePresenter(0, &v34);
  WitnessTable = swift_getWitnessTable();
  sub_24EE86944(&v37, 1, 1, 0, v25, WitnessTable);
  return sub_24E96513C(v37, v38);
}

double sub_24EE99478(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (a1)
  {
    type metadata accessor for PageRefreshGate(0);
    swift_allocObject();

    v5 = sub_24EA69948(v4);

    *(v2 + *(*v2 + 736)) = v5;

    v7 = *(v2 + *(*v2 + 736));
    if (v7)
    {
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = *(v3 + 552);
      *(v9 + 32) = *(v3 + 568);
      *(v9 + 40) = *(v3 + 576);
      *(v9 + 56) = *(v3 + 592);
      *(v9 + 64) = v8;
      swift_beginAccess();
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      *(v7 + 16) = sub_24EE9C004;
      *(v7 + 24) = v9;

      sub_24E824448(v10, v11);
    }
  }

  else
  {
    *(v1 + *(*v1 + 736)) = 0;
  }

  return result;
}

void sub_24EE99638(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    if ((*(v2 + 8) & 1) == 0)
    {
      v3 = *(*v1 + 1352);

      v3(v4);
    }
  }

  else
  {
    v5 = *(*v1 + 1352);

    v5();
  }
}

void sub_24EE99724()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 40) = 1;
    sub_24EA67DA8();
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

void sub_24EE99828()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24EA09500();
  if (v4)
  {
    v5 = v4;

    sub_24F91F638();
    sub_24F91F5E8();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    v8 = v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v9 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }
}

void sub_24EE999A8()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 40) = 0;
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_24EE99AA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8, &qword_24F98BA80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  result = sub_24EA09500();
  if (result)
  {
    v12 = result;
    v13 = sub_24F929FB8();
    (*(*(v13 - 8) + 16))(v10, a1, v13);

    sub_24F91F638();
    sub_24F91F5E8();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
    *&v10[*(v16 + 20)] = v15;
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
    swift_beginAccess();
    sub_24EBFE1C8(v10, v12 + v17);
    swift_endAccess();
    sub_24ED71208();

    result = sub_24E601704(v10, &qword_27F22B5C8, &qword_24F98BA80);
  }

  v18 = *(v2 + *(*v2 + 736));
  if (v18)
  {

    sub_24F91F638();
    *(v18 + 40) = 0;
    sub_24EA68EC8(v7);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_24EE99D2C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 41) = 1;
    sub_24EA67DA8();
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

void sub_24EE99E30()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 41) = 0;
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

void sub_24EE99F28()
{
  v1 = *v0;
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9287F8();
  v3 = __swift_project_value_buffer(v2, qword_27F2230B8);
  v4 = *(v1 + 568);
  v7[0] = *(v1 + 552);
  v7[1] = v4;
  v7[2] = *(v1 + 584);
  v5 = type metadata accessor for DiffablePagePresenter(0, v7);
  WitnessTable = swift_getWitnessTable();
  MetricsPagePresenter.sendEventsFor(invocationPoint:)(v3, v5, WitnessTable);
}

void *DiffablePagePresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:advertLifecycleMetricsReporter:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  v16 = sub_24EE9AA30(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

id DiffablePagePresenter.snapshotQueue.getter()
{
  v0 = sub_24EE9A9C8();

  return v0;
}

uint64_t sub_24EE9A144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F22ACF0, &qword_24F990A30);
  return sub_24EE9693C(v4);
}

uint64_t sub_24EE9A1F0()
{
  v1 = *(*v0 + 704);
  swift_beginAccess();
  sub_24E9B7D88(v0 + v1, v3);
  sub_24F92AD88();
  return sub_24E94E128(v3);
}

uint64_t DiffablePagePresenter.onPaginationStateChanged.getter()
{
  sub_24EE9B3E8();
}

double sub_24EE9A2C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 544))(1);
  }

  return result;
}

uint64_t sub_24EE9A348@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.seeAllAction.getter();
  *a1 = result;
  return result;
}

double sub_24EE9A374(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 544))(1);
  }

  return result;
}

double sub_24EE9A478()
{
  v1 = *v0;
  v2 = *v0;
  sub_24E601704(&v0[qword_27F39CBF8], &qword_27F228530, &unk_24F93C6E0);

  v3 = *(*v0 + 640);
  v14 = *(v1 + 592);
  v4 = v14;
  v11 = *(v2 + 576);
  v12 = *(v2 + 552);
  v10 = v12;
  v13 = v11;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v12);
  sub_24F929528();
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v3], v5);
  sub_24E601704(&v0[*(*v0 + 648)], &qword_27F22AC08, &qword_24F989C48);
  v7 = *(*v0 + 656);
  v12 = v10;
  v13 = v11;
  v14 = v4;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v12);
  sub_24F929528();
  v8 = sub_24F92C4A8();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v6(&v0[*(*v0 + 664)], v5);
  sub_24E601704(&v0[*(*v0 + 672)], &qword_27F22ABE8, &unk_24F9AA4F0);
  sub_24E601704(&v0[*(*v0 + 680)], &qword_27F22ABF0, &qword_24F989C30);

  sub_24E601704(&v0[*(*v0 + 696)], &qword_27F22ACF0, &qword_24F990A30);
  sub_24E94E128(&v0[*(*v0 + 704)]);

  sub_24E601704(&v0[*(*v0 + 744)], &qword_27F229490, &unk_24F984C40);
  return sub_24E824448(*&v0[*(*v0 + 752)], *&v0[*(*v0 + 752) + 8]);
}

uint64_t DiffablePagePresenter.__deallocating_deinit()
{
  DiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

id sub_24EE9A854()
{
  v0 = sub_24EE9A9C8();

  return v0;
}

void (*sub_24EE9A884(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24EE969B8(v2);
  return sub_24E622878;
}

uint64_t sub_24EE9A914()
{
  sub_24EE9B3E8();
}

uint64_t sub_24EE9A984()
{
  v1 = qword_27F39CC08;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_24EE9A9E4(uint64_t a1)
{
  v2 = *(v1 + qword_27F39CC00);
  *(v1 + qword_27F39CC00) = a1;

  sub_24EE96CA8(v2);

  return result;
}

void *sub_24EE9AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v66 = a7;
  v67 = a8;
  v64 = a1;
  v65 = a6;
  v61 = a5;
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v10 = *v8;
  v11 = *v8;
  v53 = sub_24F928188();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92BEE8();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F92BE88();
  MEMORY[0x28223BE20](v15);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  MEMORY[0x28223BE20](v17 - 8);
  *&v8[qword_27F39CC00] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v8[qword_27F39CC10] = MEMORY[0x277D84F90];
  v8[qword_27F2326C8] = 0;
  v19 = *(*v8 + 640);
  v71 = *(v10 + 592);
  v20 = v71;
  v54 = *(v11 + 552);
  v55 = *(v11 + 576);
  v69 = v54;
  v70 = v55;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v69);
  v21 = sub_24F929528();
  v22 = *(*(v21 - 8) + 56);
  v22(&v8[v19], 1, 1, v21);
  v23 = *(*v8 + 648);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v24 - 8) + 56))(&v8[v23], 1, 1, v24);
  v25 = *(*v8 + 656);
  v69 = v54;
  v70 = v55;
  v71 = v20;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v69);
  v26 = sub_24F929528();
  (*(*(v26 - 8) + 56))(&v8[v25], 1, 1, v26);
  v22(&v9[*(*v9 + 664)], 1, 1, v21);
  v27 = *(*v8 + 672);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v28 - 8) + 56))(&v8[v27], 1, 1, v28);
  v29 = *(*v8 + 680);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v30 - 8) + 56))(&v8[v29], 1, 1, v30);
  v31 = *(*v8 + 688);
  sub_24E74EC40();
  sub_24F927DA8();
  *&v69 = v18;
  sub_24EE9C210(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v58 + 104))(v57, *MEMORY[0x277D85260], v59);
  v32 = v60;
  v33 = v61;
  v34 = v62;
  *&v8[v31] = sub_24F92BF38();
  sub_24EBD3128(&v9[*(*v9 + 696)]);
  v35 = &v9[*(*v9 + 704)];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 25) = 0u;
  v36 = *(*v8 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *&v8[v36] = sub_24F92ADA8();
  v37 = *(*v8 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *&v8[v37] = sub_24F92ADA8();
  v38 = *(*v8 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  v39 = sub_24F92ADA8();
  v40 = v63;
  *&v9[v38] = v39;
  *&v9[*(*v9 + 736)] = 0;
  v41 = &v9[*(*v9 + 752)];
  *v41 = 0;
  *(v41 + 1) = 0;
  sub_24E60169C(v32, &v9[qword_27F39CBF8], &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v33, &v9[*(*v9 + 744)], &qword_27F229490, &unk_24F984C40);
  v42 = type metadata accessor for InlineUnifiedMessagePresenter();
  v68.receiver = objc_allocWithZone(v42);
  v68.super_class = v42;
  *&v9[qword_27F39CC08] = objc_msgSendSuper2(&v68, sel_init);
  if (v34 && v40)
  {
    sub_24F92A0F8();
    *&v69 = v40;

    v43 = v51;
    sub_24F928168();
    v44 = sub_24F928F88();
    (*(v52 + 8))(v43, v53);
    v45 = v67;
  }

  else
  {
    v45 = v67;

    v44 = v64;
  }

  v46 = v65;
  swift_unknownObjectRetain();
  v47 = TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(v44, v46, v66, v45);
  v48 = *(*v47 + 1112);

  *(v47 + qword_27F39CC00) = v48(v34);

  sub_24EE96CA8(0);

  sub_24E601704(v33, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v32, &qword_27F228530, &unk_24F93C6E0);
  return v47;
}

uint64_t sub_24EE9B350()
{
  v1 = *(*v0 + 712);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EE9B3B8@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.seeAllAction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24EE9B44C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EE9B488(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EE9B4C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_24EE9B51C@<X0>(void *a1@<X8>)
{
  v2 = sub_24EE9A984();
  *a1 = v2;

  return v2;
}

__n128 sub_24EE9B590(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24EE9B644@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24EE9B350();
}

void sub_24EE9B6B8(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v3 <= 0x3F)
  {
    v25 = *(v2 - 8) + 64;
    v26 = "\b";
    v4 = MEMORY[0x277D833E8];
    v27 = MEMORY[0x277D833E8] + 64;
    v28 = MEMORY[0x277D833F0] + 64;
    v29 = &unk_24F9AA720;
    v5 = *(a1 + 576);
    v6 = *(a1 + 592);
    v21 = *(a1 + 552);
    v22 = v21;
    v20 = v5;
    v23 = v5;
    v24 = v6;
    type metadata accessor for DiffablePageContentPresenter.PageFetchResult(255, &v22);
    sub_24F929528();
    v7 = sub_24F92C4A8();
    if (v8 <= 0x3F)
    {
      v9 = *(v7 - 8) + 64;
      v30 = v9;
      sub_24E8EF898(319, &qword_27F232750, &qword_27F22AB90, &unk_24F9B1AC0);
      if (v11 <= 0x3F)
      {
        v31 = *(v10 - 8) + 64;
        v22 = v21;
        v23 = v20;
        v24 = v6;
        type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult(255, &v22);
        sub_24F929528();
        v12 = sub_24F92C4A8();
        if (v13 <= 0x3F)
        {
          v32 = *(v12 - 8) + 64;
          v33 = v9;
          sub_24E8EF898(319, &qword_27F232758, &qword_27F22ABA0, &unk_24F9AA740);
          if (v15 <= 0x3F)
          {
            v34 = *(v14 - 8) + 64;
            sub_24E8EF898(319, &qword_27F232760, &qword_27F22ABA8, &unk_24F989B80);
            if (v17 <= 0x3F)
            {
              v35 = *(v16 - 8) + 64;
              v36 = v4 + 64;
              sub_24EE9BEA0(319);
              if (v19 <= 0x3F)
              {
                v37 = *(v18 - 8) + 64;
                v38 = &unk_24F9AA750;
                v39 = MEMORY[0x277D83428] + 64;
                v40 = MEMORY[0x277D83428] + 64;
                v41 = MEMORY[0x277D83428] + 64;
                v42 = "\b";
                v43 = &unk_24F9AA768;
                v44 = &unk_24F9AA780;
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EE9BEA0(uint64_t a1)
{
  if (!qword_27F232768[0])
  {
    v2 = type metadata accessor for Shelf(255);
    v3 = sub_24EE9C210(&qword_27F22CE68, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_27F232768);
    }
  }
}

uint64_t sub_24EE9BF34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EE9BF6C()
{

  return swift_deallocObject();
}

void sub_24EE9BFB8(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {

    v4 = a1;
  }

  else
  {
    swift_unknownObjectRetain();
  }
}

uint64_t sub_24EE9C058()
{

  return swift_deallocObject();
}

uint64_t (*sub_24EE9C178())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24EBD46CC;
}

void sub_24EE9C1DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_24EE986C0(&v2);
}

uint64_t sub_24EE9C210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE9C2F8()
{
  v0 = sub_24F928AE8();
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x28223BE20](v0);
  v38 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - v3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  sub_24F91F638();
  v41 = objc_opt_self();
  v12 = [v41 standardUserDefaults];
  v13 = *(v6 + 16);
  v13(v4, v11, v5);
  v42 = v6;
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_24F006F70(v4);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9220D8();
  v15 = __swift_project_value_buffer(v14, qword_27F39E8E0);
  v13(v8, v11, v5);
  v16 = sub_24F9220B8();
  v17 = sub_24F92BD98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37[1] = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315138;
    sub_24EE9C814(&qword_27F229EE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v21 = sub_24F92CD88();
    v23 = v22;
    v24 = *(v42 + 8);
    v24(v8, v5);
    v25 = sub_24E7620D4(v21, v23, &v43);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_24E5DD000, v16, v17, "A friend request was last sent on %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2530542D0](v20, -1, -1);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  else
  {

    v24 = *(v42 + 8);
    v24(v8, v5);
  }

  v26 = v41;
  v27 = [v41 standardUserDefaults];
  v28 = sub_24F006468(v27);
  v29 = __OFADD__(v28, 1);
  result = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    sub_24F007258(result);

    v31 = sub_24F9220B8();
    v32 = sub_24F92BD98();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = [v26 standardUserDefaults];
      v35 = sub_24F006468(v34);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Increased friend request send count to %ld", v33, 0xCu);
      MEMORY[0x2530542D0](v33, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    (*(v39 + 104))(v38, *MEMORY[0x277D21CA8], v40);
    v36 = sub_24F92A988();
    v24(v11, v5);
    return v36;
  }

  return result;
}

uint64_t sub_24EE9C814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GameCenterGameplayHistoryRecord.__allocating_init(playerId:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t GameCenterGameplayHistoryRecord.init(playerId:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

double *GameCenterGameplayHistoryRecord.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v26 = a2;
  v3 = 0x6449726579616C70;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  sub_24F928398();
  v11 = sub_24F928348();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (v13)
  {
    v25[0] = v11;
    v15 = 0xE900000000000070;
    v3 = 0x6D617473656D6974;
    sub_24F928398();
    v16 = sub_24F928338();
    v14(v7, v4);
    v17 = a1;
    if (v16)
    {
      sub_24F91FE38();
      v19 = v18;

      v20 = sub_24F9285B8();
      (*(*(v20 - 8) + 8))(v26, v20);
      v14(a1, v4);
      type metadata accessor for GameCenterGameplayHistoryRecord();
      result = swift_allocObject();
      result[2] = *v25;
      *(result + 3) = v13;
      *(result + 4) = v19;
      return result;
    }
  }

  else
  {
    v17 = a1;
    v15 = 0xE800000000000000;
  }

  v22 = sub_24F92AC38();
  sub_24EE9DFA4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  *v23 = v3;
  v23[1] = v15;
  v23[2] = v25[2];
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
  swift_willThrow();
  v24 = sub_24F9285B8();
  (*(*(v24 - 8) + 8))(v26, v24);
  return (v14)(v17, v4);
}

uint64_t GameCenterGameplayHistoryRecord.playerId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_24EE9CC40(void *a1)
{
  v3 = objc_opt_self();
  if (![v3 valueWithNewObjectInContext_])
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v1[2];
  v15 = v1[3];

  v4 = [v3 valueWithObject:sub_24F92CF68() inContext:{a1, v12, v15}];
  swift_unknownObjectRelease();
  if (v4)
  {
    v13 = v4;
    sub_24EB3EB94();
    v5 = a1;
    v4 = sub_24F92CDE8();
  }

  else
  {
    v6 = a1;
  }

  v7 = [v3 valueWithObject:v4 inContext:{a1, v13}];
  swift_unknownObjectRelease();

  if (!v7)
  {
    goto LABEL_12;
  }

  sub_24F92C328();
  v8 = [v3 valueWithObject:sub_24F92CF68() inContext:{a1, v1[4]}];
  swift_unknownObjectRelease();
  if (v8)
  {
    v14 = v8;
    sub_24EB3EB94();
    v9 = a1;
    v8 = sub_24F92CDE8();
  }

  else
  {
    v10 = a1;
  }

  v11 = [v3 valueWithObject:v8 inContext:{a1, v14}];
  swift_unknownObjectRelease();

  if (v11)
  {
    sub_24F92C328();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_24EE9CE60()
{
  MEMORY[0x253050C20](*(v0 + 16), *(v0 + 24));
  MEMORY[0x253050C20](64, 0xE100000000000000);
  sub_24F92BA58();
  return 0;
}

uint64_t GameCenterGameplayHistoryRecord.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double *sub_24EE9CF24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  result = GameCenterGameplayHistoryRecord.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EE9CF74()
{
  MEMORY[0x253050C20](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x253050C20](64, 0xE100000000000000);
  sub_24F92BA58();
  return 0;
}

uint64_t GameCenterGameplayHistory.__allocating_init(adamId:platformId:isArcade:records:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = a1[1];
  *(result + 16) = *a1;
  *(result + 24) = v9;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t GameCenterGameplayHistory.init(adamId:platformId:isArcade:records:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 24) = v5;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

uint64_t GameCenterGameplayHistory.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41[-v4];
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  v17 = 0xE600000000000000;
  sub_24F928398();
  v45 = sub_24F928348();
  v19 = v18;
  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v16, v5);
  if (!v19)
  {
    v24 = 0x64496D616461;
    v27 = v5;
    goto LABEL_6;
  }

  v23 = v19;
  v24 = 0x6D726F6674616C70;
  sub_24F928398();
  v43 = sub_24F928258();
  v26 = v25;
  v21(v13, v5);
  v27 = v5;
  if ((v26 & 1) != 0 || (v24 = 0x6564616372417369, sub_24F928398(), v28 = sub_24F928278(), v21(v10, v27), v28 == 2))
  {

    v17 = 0xE800000000000000;
LABEL_6:
    v29 = sub_24F92AC38();
    sub_24EE9DFA4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v30 = v24;
    v30[1] = v17;
    v30[2] = v47;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    v21(a1, v27);
    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v48, v31);
    return a1;
  }

  v42 = v28;
  v33 = v44;
  sub_24F928398();
  v34 = v46;
  sub_24F9282B8();
  v47 = v27;
  v21(v33, v27);
  v35 = sub_24F92AC28();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  if (v37 == 1)
  {
    sub_24E8F2EE8(v34);
    v38 = MEMORY[0x277D84F90];
    v39 = v48;
  }

  else
  {
    v44 = v20;
    MEMORY[0x28223BE20](v37);
    v39 = v48;
    *&v41[-16] = v48;
    type metadata accessor for GameCenterGameplayHistoryRecord();
    v38 = sub_24F92ABB8();
    (*(v36 + 8))(v34, v35);
  }

  v21(a1, v47);
  type metadata accessor for GameCenterGameplayHistory();
  a1 = swift_allocObject();
  *(a1 + 16) = v45;
  *(a1 + 24) = v23;
  *(a1 + 32) = v43;
  *(a1 + 40) = v42 & 1;
  *(a1 + 48) = v38;
  v40 = sub_24F9285B8();
  (*(*(v40 - 8) + 8))(v39, v40);
  return a1;
}

uint64_t sub_24EE9D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameCenterGameplayHistoryRecord();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EE9DFA4(&qword_27F2327F0, v13, type metadata accessor for GameCenterGameplayHistoryRecord, &protocol conformance descriptor for GameCenterGameplayHistoryRecord);
  return sub_24F929548();
}

double GameCenterGameplayHistory.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

void sub_24EE9D80C(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (![v4 valueWithNewObjectInContext_])
  {
    goto LABEL_25;
  }

  v19 = v1[2];
  v25 = v1[3];

  v5 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v19, v25}];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_24F92C328();
  v6 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v1[4]}];
  swift_unknownObjectRelease();
  if (v6)
  {
    v20 = v6;
    sub_24EB3EB94();
    v7 = a1;
    v6 = sub_24F92CDE8();
  }

  else
  {
    v8 = a1;
  }

  v9 = [v4 valueWithObject:v6 inContext:{a1, v20}];
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_27;
  }

  sub_24F92C328();
  LOBYTE(v21) = *(v2 + 40);
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v21}];
  swift_unknownObjectRelease();
  if (v10)
  {
    v22 = v10;
    sub_24EB3EB94();
    v11 = a1;
    v10 = sub_24F92CDE8();
  }

  else
  {
    v12 = a1;
  }

  v13 = [v4 valueWithObject:v10 inContext:{a1, v22}];
  swift_unknownObjectRelease();

  if (!v13)
  {
    goto LABEL_28;
  }

  sub_24F92C328();
  v14 = v2[6];
  if (v14 >> 62)
  {
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_21;
  }

  v23 = MEMORY[0x277D84F90];
  sub_24F92C978();
  if (v15 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x253052270](v17, v14);
    }

    else
    {
    }

    ++v17;
    sub_24EE9CC40(a1);

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v15 != v17);
  v16 = v23;
LABEL_21:
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v18 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v24}];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_24F92C328();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_24EE9DBFC()
{
  sub_24F92C888();
  MEMORY[0x253050C20](*(v0 + 16), *(v0 + 24));
  MEMORY[0x253050C20](93, 0xE100000000000000);

  MEMORY[0x253050C20](0x6F6674616C705B20, 0xEB00000000206D72);
  v1 = sub_24F92CD88();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](0x656463617261202CLL, 0xEA0000000000203FLL);
  if (*(v0 + 40))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v2, v3);

  MEMORY[0x253050C20](0x64726F636552205DLL, 0xEB00000000203A73);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for GameCenterGameplayHistoryRecord();
  v6 = MEMORY[0x253050F40](v4, v5);
  MEMORY[0x253050C20](v6);

  return 0x5B2064496D616441;
}

uint64_t GameCenterGameplayHistory.deinit()
{

  return v0;
}

uint64_t GameCenterGameplayHistory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EE9DDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GameCenterGameplayHistory.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EE9DFA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t BootstrapResult.init(objectGraph:freshnessWatchdog:metricsPipelineTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Shelf.ContentType.isCompatible(with:)(_BYTE *a1, __n128 a2)
{
  if (*a1 != 104)
  {
    v4 = *v2;
    if (v4 > 5)
    {
      if (v4 - 6 < 2)
      {
        if (Shelf.ContentType.rawValue.getter() != 0xD000000000000013 || 0x800000024FA3F170 != v19)
        {
          v20 = sub_24F92CE08();

          if ((v20 & 1) == 0)
          {
            if (Shelf.ContentType.rawValue.getter() != 0xD000000000000018 || 0x800000024FA3F190 != v21)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          goto LABEL_40;
        }

        goto LABEL_29;
      }

      if (v4 == 50)
      {
        v22 = Shelf.ContentType.rawValue.getter();
        v24 = v23;
        if (v22 == Shelf.ContentType.rawValue.getter() && v24 == v25)
        {
        }

        else
        {
          v26 = sub_24F92CE08();

          if (v26)
          {
            goto LABEL_40;
          }

          if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x800000024FA3F3A0 != v28)
          {
            v29 = sub_24F92CE08();

            if ((v29 & 1) == 0)
            {
LABEL_47:
              if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x800000024FA3F520 != v30)
              {
LABEL_41:
                v3 = sub_24F92CE08();
                goto LABEL_42;
              }

LABEL_33:
              v3 = 1;
LABEL_42:

              return v3 & 1;
            }

LABEL_40:
            v3 = 1;
            return v3 & 1;
          }
        }

LABEL_29:

        v3 = 1;
        return v3 & 1;
      }

      if (v4 == 94)
      {
        goto LABEL_40;
      }
    }

    else if (v4 - 1 < 4)
    {
      if (Shelf.ContentType.rawValue.getter() != 0x636F4C6C6C616D73 || v5 != 0xEB0000000070756BLL)
      {
        v6 = sub_24F92CE08();

        if (v6)
        {
          goto LABEL_40;
        }

        if (Shelf.ContentType.rawValue.getter() != 0x6F4C6D756964656DLL || v7 != 0xEC00000070756B63)
        {
          v8 = sub_24F92CE08();

          if (v8)
          {
            goto LABEL_40;
          }

          if (Shelf.ContentType.rawValue.getter() != 0x636F4C656772616CLL || v9 != 0xEB0000000070756BLL)
          {
            v10 = sub_24F92CE08();

            if (v10)
            {
              goto LABEL_40;
            }

            if (Shelf.ContentType.rawValue.getter() != 0xD000000000000011 || 0x800000024FA3F430 != v11)
            {
              v12 = sub_24F92CE08();

              if (v12)
              {
                goto LABEL_40;
              }

              if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x800000024FA3F3A0 != v13)
              {
                v14 = sub_24F92CE08();

                if ((v14 & 1) == 0)
                {
                  goto LABEL_47;
                }

                goto LABEL_40;
              }
            }
          }
        }
      }

      goto LABEL_29;
    }

    v15 = Shelf.ContentType.rawValue.getter();
    v17 = v16;
    if (v15 == Shelf.ContentType.rawValue.getter() && v17 == v18)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_24F92CE08();
    }

    goto LABEL_42;
  }

  v3 = 0;
  return v3 & 1;
}

void *Shelf.ContentType.init(string:)@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.ContentType.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t Shelf.ContentType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CF18();

  v6 = 0;
  v7 = 86;
  switch(v4)
  {
    case 0:
      goto LABEL_99;
    case 1:
      v6 = 1;
      goto LABEL_99;
    case 2:
      v6 = 2;
      goto LABEL_99;
    case 3:
      v6 = 3;
      goto LABEL_99;
    case 4:
      v6 = 4;
      goto LABEL_99;
    case 5:
      v6 = 5;
      goto LABEL_99;
    case 6:
      v6 = 6;
      goto LABEL_99;
    case 7:
      v6 = 7;
      goto LABEL_99;
    case 8:
      v6 = 8;
      goto LABEL_99;
    case 9:
      v6 = 9;
      goto LABEL_99;
    case 10:
      v6 = 10;
      goto LABEL_99;
    case 11:
      v6 = 11;
      goto LABEL_99;
    case 12:
      v6 = 12;
      goto LABEL_99;
    case 13:
      v6 = 13;
      goto LABEL_99;
    case 14:
      v6 = 14;
      goto LABEL_99;
    case 15:
      v6 = 15;
      goto LABEL_99;
    case 16:
      v6 = 16;
      goto LABEL_99;
    case 17:
      v6 = 17;
      goto LABEL_99;
    case 18:
      v6 = 18;
      goto LABEL_99;
    case 19:
      v6 = 19;
      goto LABEL_99;
    case 20:
      v6 = 20;
      goto LABEL_99;
    case 21:
      v6 = 21;
      goto LABEL_99;
    case 22:
      v6 = 22;
      goto LABEL_99;
    case 23:
      v6 = 23;
      goto LABEL_99;
    case 24:
      v6 = 24;
      goto LABEL_99;
    case 25:
      v6 = 25;
      goto LABEL_99;
    case 26:
      v6 = 26;
      goto LABEL_99;
    case 27:
      v6 = 27;
      goto LABEL_99;
    case 28:
      v6 = 28;
      goto LABEL_99;
    case 29:
      v6 = 29;
      goto LABEL_99;
    case 30:
      v6 = 30;
      goto LABEL_99;
    case 31:
      v6 = 31;
      goto LABEL_99;
    case 32:
      v6 = 32;
      goto LABEL_99;
    case 33:
      v6 = 33;
      goto LABEL_99;
    case 34:
      v6 = 34;
      goto LABEL_99;
    case 35:
      v6 = 35;
      goto LABEL_99;
    case 36:
      v6 = 36;
      goto LABEL_99;
    case 37:
      v6 = 37;
      goto LABEL_99;
    case 38:
      v6 = 38;
      goto LABEL_99;
    case 39:
      v6 = 39;
      goto LABEL_99;
    case 40:
      v6 = 40;
      goto LABEL_99;
    case 41:
      v6 = 41;
      goto LABEL_99;
    case 42:
      v6 = 42;
      goto LABEL_99;
    case 43:
      v6 = 43;
      goto LABEL_99;
    case 44:
      v6 = 44;
      goto LABEL_99;
    case 45:
      v6 = 45;
      goto LABEL_99;
    case 46:
      v6 = 46;
      goto LABEL_99;
    case 47:
      v6 = 47;
      goto LABEL_99;
    case 48:
      v6 = 48;
      goto LABEL_99;
    case 49:
      v6 = 49;
      goto LABEL_99;
    case 50:
      v6 = 50;
      goto LABEL_99;
    case 51:
      v6 = 51;
      goto LABEL_99;
    case 52:
      v6 = 52;
      goto LABEL_99;
    case 53:
      v6 = 53;
      goto LABEL_99;
    case 54:
      v6 = 54;
      goto LABEL_99;
    case 55:
      v6 = 55;
      goto LABEL_99;
    case 56:
      v6 = 56;
      goto LABEL_99;
    case 57:
      v6 = 57;
      goto LABEL_99;
    case 58:
      v6 = 58;
      goto LABEL_99;
    case 59:
      v6 = 59;
      goto LABEL_99;
    case 60:
      v6 = 60;
      goto LABEL_99;
    case 61:
      v6 = 61;
      goto LABEL_99;
    case 62:
      v6 = 62;
      goto LABEL_99;
    case 63:
      v6 = 63;
      goto LABEL_99;
    case 64:
      v6 = 64;
      goto LABEL_99;
    case 65:
      v6 = 65;
      goto LABEL_99;
    case 66:
      v6 = 66;
      goto LABEL_99;
    case 67:
      v6 = 67;
      goto LABEL_99;
    case 68:
      v6 = 68;
      goto LABEL_99;
    case 69:
      v6 = 69;
      goto LABEL_99;
    case 70:
      v6 = 70;
      goto LABEL_99;
    case 71:
      v6 = 71;
      goto LABEL_99;
    case 72:
      v6 = 72;
      goto LABEL_99;
    case 73:
      v6 = 73;
      goto LABEL_99;
    case 74:
      v6 = 74;
      goto LABEL_99;
    case 75:
      v6 = 75;
      goto LABEL_99;
    case 76:
      v6 = 76;
      goto LABEL_99;
    case 77:
      v6 = 77;
      goto LABEL_99;
    case 78:
      v6 = 78;
      goto LABEL_99;
    case 79:
      v6 = 79;
      goto LABEL_99;
    case 80:
      v6 = 80;
      goto LABEL_99;
    case 81:
      v6 = 81;
      goto LABEL_99;
    case 82:
      v6 = 82;
      goto LABEL_99;
    case 83:
      v6 = 83;
      goto LABEL_99;
    case 84:
      v6 = 84;
      goto LABEL_99;
    case 85:
      v6 = 85;
LABEL_99:
      v7 = v6;
      break;
    case 86:
      break;
    case 87:
      v7 = 87;
      break;
    case 88:
      v7 = 88;
      break;
    case 89:
      v7 = 89;
      break;
    case 90:
      v7 = 90;
      break;
    case 91:
      v7 = 91;
      break;
    case 92:
      v7 = 92;
      break;
    case 93:
      v7 = 93;
      break;
    case 94:
      v7 = 94;
      break;
    case 95:
      v7 = 95;
      break;
    case 96:
      v7 = 96;
      break;
    case 97:
      v7 = 97;
      break;
    case 98:
      v7 = 98;
      break;
    case 99:
      v7 = 99;
      break;
    case 100:
      v7 = 100;
      break;
    case 101:
      v7 = 101;
      break;
    case 102:
      v7 = 102;
      break;
    case 103:
      v7 = 103;
      break;
    default:
      v7 = 104;
      break;
  }

  *a3 = v7;
  return result;
}

uint64_t Shelf.ContentType.init(string:)@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v4 = Shelf.ContentType.init(rawValue:)(&v6);
    v5 = v6;
  }

  else
  {
    v5 = 104;
  }

  *a3 = v5;
  return v4;
}

unint64_t Shelf.ContentType.rawValue.getter()
{
  result = 0x72656B72616DLL;
  switch(*v0)
  {
    case 1:
      v2 = 0x4C6C6C616D73;
      return v2 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 2:
      return 0x6573616863727570;
    case 3:
      v5 = 0x6D756964656DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
    case 4:
      v2 = 0x4C656772616CLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 5:
      return 0xD000000000000010;
    case 6:
    case 0x2D:
    case 0x60:
      return 0xD000000000000013;
    case 7:
      return 0xD000000000000018;
    case 8:
      return 0xD000000000000029;
    case 9:
      return 0xD000000000000027;
    case 0xA:
      return 0xD000000000000023;
    case 0xB:
      return 0x6E6F69746361;
    case 0xC:
      return 0x6B726F77747261;
    case 0xD:
      return 0x61426E6F62626972;
    case 0xE:
      return 0x6C466E6F62626972;
    case 0xF:
      return 0x7061726761726170;
    case 0x10:
      return 0x697461746F6E6E61;
    case 0x11:
      return 0x65746F6E746F6F66;
    case 0x12:
      return 0x615064656C746974;
    case 0x13:
      return 0x6169726F74696465;
    case 0x14:
      v6 = 0x436F65646976;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 0x15:
      return 0x6B63697262;
    case 0x16:
      return 0x79726F6765746163;
    case 0x17:
      v4 = 0x426C6C616D73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    case 0x18:
      v4 = 0x42656772616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    case 0x19:
    case 0x32:
    case 0x34:
    case 0x3A:
    case 0x4C:
    case 0x52:
    case 0x63:
      return 0xD000000000000011;
    case 0x1A:
      return 0x73776569766572;
    case 0x1B:
      return 0xD000000000000010;
    case 0x1C:
      return 0x4373726F74696465;
    case 0x1D:
      v6 = 0x437961646F74;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 0x1E:
      return 0x61646F54696E696DLL;
    case 0x1F:
    case 0x42:
      return 0x6169726F74696465;
    case 0x20:
      return 0x694C686372616573;
    case 0x21:
      return 0x65746F7571;
    case 0x22:
      return 0x746E6F7A69726F68;
    case 0x23:
      return 0x724164656D617266;
    case 0x24:
      return 0x68736E6565726373;
    case 0x25:
      return 0x4D746375646F7270;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 0x63776F6853707061;
    case 0x28:
    case 0x47:
    case 0x48:
      v7 = 5;
      goto LABEL_89;
    case 0x29:
      return 0xD000000000000010;
    case 0x2A:
      return 0x50746375646F7270;
    case 0x2B:
    case 0x2C:
      return 0x52746375646F7270;
    case 0x2E:
      return 0x656C62616B6E696CLL;
    case 0x2F:
      return 0x695664656D617266;
    case 0x30:
    case 0x3D:
    case 0x4D:
      return 0xD000000000000012;
    case 0x31:
      return 0x72656E6E6162;
    case 0x33:
      return 0x426465646E756F72;
    case 0x35:
      return 0x7475426567616D69;
    case 0x36:
      v3 = 0x536C6C616D73;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
    case 0x37:
      return 0x74536D756964656DLL;
    case 0x38:
      v3 = 0x53656772616CLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
    case 0x39:
      return 0xD000000000000020;
    case 0x3B:
      return 0x72426C6C65737075;
    case 0x3C:
      return 0x6572426C6C616D73;
    case 0x3E:
      return 0xD000000000000010;
    case 0x3F:
      return 0x6F46656461637261;
    case 0x40:
      return 0x6567646162;
    case 0x41:
      return 0x6472614374786574;
    case 0x43:
      return 0x6853656461637261;
    case 0x44:
      v7 = 10;
      goto LABEL_89;
    case 0x45:
    case 0x46:
      return 0xD000000000000016;
    case 0x49:
      return 0xD000000000000026;
    case 0x4A:
      v5 = 0x726574736F70;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
    case 0x4B:
      return 0xD000000000000010;
    case 0x4E:
      return 0x4879636176697270;
    case 0x4F:
      return 0x4679636176697270;
    case 0x50:
      return 0x5479636176697270;
    case 0x51:
      return 0x4379636176697270;
    case 0x53:
      return 0x6F6D6F7250707061;
    case 0x54:
      return 0x6552686372616573;
    case 0x55:
      v7 = 9;
LABEL_89:
      result = v7 | 0xD000000000000010;
      break;
    case 0x56:
      result = 0x7362615465676170;
      break;
    case 0x57:
      result = 0x6F7261436F726568;
      break;
    case 0x58:
      result = 1919246965;
      break;
    case 0x59:
      result = 0x42746375646F7270;
      break;
    case 0x5A:
      result = 0x676150616964656DLL;
      break;
    case 0x5B:
      result = 0x6B63697242676174;
      break;
    case 0x5C:
      result = 0xD000000000000021;
      break;
    case 0x5D:
      result = 0x6C6F686563616C70;
      break;
    case 0x5E:
      result = 0x6863746566657270;
      break;
    case 0x5F:
      result = 0x4D64656966696E75;
      break;
    case 0x61:
      result = 0xD000000000000014;
      break;
    case 0x62:
      result = 0xD000000000000010;
      break;
    case 0x64:
      result = 0xD000000000000010;
      break;
    case 0x65:
      result = 0x754264656C746974;
      break;
    case 0x66:
      result = 0x6461654865676170;
      break;
    case 0x67:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Shelf.ContentType.axString.getter()
{
  v1 = 0;
  v2 = 0xD000000000000013;
  v3 = *v0;
  if (v3 > 0x37)
  {
    if (v3 == 56)
    {
      v5 = "AX_LARGE_STORY_CARD";
    }

    else
    {
      if (v3 != 76)
      {
        return v1;
      }

      v5 = "AX_INFORMATION_CARD";
    }

    v4 = v5 - 32;
    goto LABEL_11;
  }

  if (v3 == 19)
  {
    v4 = "AX_INFORMATION_CARD";
    v2 = 0xD000000000000017;
    goto LABEL_11;
  }

  if (v3 == 55)
  {
    v4 = "AX_EDITORIAL_STORY_CARD";
    v2 = 0xD000000000000014;
LABEL_11:
    v6 = v4 | 0x8000000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    return localizedString(_:comment:)(*&v2, v7)._countAndFlagsBits;
  }

  return v1;
}

char *sub_24EE9F8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v38 = a3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = *v3;
  if (qword_27F2107B0 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810, &qword_24F9AAA58);
  __swift_project_value_buffer(v17, qword_27F2327F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232820, &unk_24FA20400);
  sub_24F9285D8();
  if (*&v41[0])
  {
    v36 = v15;
    v37 = v12;
    type metadata accessor for Shelf(0);
    v18 = v42;
    sub_24EE9FEC0(v39);
    if (!v18)
    {
      sub_24E612C80(v39, v41);
      return sub_24E612C80(v41, v38);
    }

    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_24E8E800C(v39);
    v42 = 0;
    v15 = v36;
    v12 = v37;
  }

  if (v16 > 83)
  {
    if (v16 == 84)
    {
      sub_24F928398();
      sub_24EABA7D4();
      v30 = v42;
      sub_24F928218();
      if (v30)
      {
        return (*(v7 + 8))(v12, v6);
      }

      (*(v7 + 8))(v12, v6);
      LOBYTE(v39[0]) = v41[0];
      v25 = sub_24EABB1CC(v39, a1, a2);
      v34 = type metadata accessor for SearchResult(0);
      v26 = v38;
      v38[3] = v34;
      v27 = &qword_27F22B8A0;
      v28 = type metadata accessor for SearchResult;
      v32 = &protocol conformance descriptor for SearchResult;
      goto LABEL_26;
    }

    if (v16 == 92)
    {
      sub_24F928398();
      sub_24E9C07DC();
      v21 = v42;
      sub_24F928218();
      if (v21)
      {
        return (*(v7 + 8))(v15, v6);
      }

      (*(v7 + 8))(v15, v6);
      v25 = sub_24E9C0F28(v41, a1, a2);
      v33 = type metadata accessor for ProductRatingsAndReviewsComponent(0);
      v26 = v38;
      v38[3] = v33;
      v27 = &unk_27F232838;
      v28 = type metadata accessor for ProductRatingsAndReviewsComponent;
      v32 = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
      goto LABEL_26;
    }
  }

  else
  {
    if (v16 == 11)
    {
      v23 = type metadata accessor for Action(0);
      v24 = v42;
      result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
      if (v24)
      {
        return result;
      }

      v25 = result;
      v26 = v38;
      v38[3] = v23;
      v27 = &unk_27F232840;
      v28 = type metadata accessor for Action;
      v29 = &protocol conformance descriptor for Action;
      goto LABEL_27;
    }

    if (v16 == 83)
    {
      sub_24F928398();
      sub_24EA21600();
      v19 = v42;
      sub_24F928218();
      if (v19)
      {
        return (*(v7 + 8))(v9, v6);
      }

      (*(v7 + 8))(v9, v6);
      v25 = sub_24ED97520(v41, a1, a2);
      v31 = type metadata accessor for AppPromotion(0);
      v26 = v38;
      v38[3] = v31;
      v27 = &qword_27F232830;
      v28 = type metadata accessor for AppPromotion;
      v32 = &protocol conformance descriptor for AppPromotion;
LABEL_26:
      v29 = v32;
LABEL_27:
      result = sub_24EEA4998(v27, v28, v29);
      v26[4] = result;
      *v26 = v25;
      return result;
    }
  }

  if (qword_27F2107A8 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232828, &unk_24F9AACB0);
  __swift_project_value_buffer(v22, qword_27F39CC18);
  LOBYTE(v41[0]) = v16;
  return sub_24F928DA8();
}

void *sub_24EE9FEC0@<X0>(uint64_t a4@<X8>)
{
  sub_24F9280E8();
  swift_getWitnessTable();
  result = sub_24F9282F8();
  if (!v4)
  {
    return sub_24E612C80(&v7, a4);
  }

  return result;
}

uint64_t sub_24EE9FF6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232828, &unk_24F9AACB0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v286 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v286 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v286 - v8;
  MEMORY[0x28223BE20](v10);
  v287 = &v286 - v11;
  MEMORY[0x28223BE20](v12);
  v288 = &v286 - v13;
  MEMORY[0x28223BE20](v14);
  v289 = &v286 - v15;
  MEMORY[0x28223BE20](v16);
  v290 = &v286 - v17;
  MEMORY[0x28223BE20](v18);
  v291 = &v286 - v19;
  MEMORY[0x28223BE20](v20);
  v292 = &v286 - v21;
  MEMORY[0x28223BE20](v22);
  v293 = &v286 - v23;
  MEMORY[0x28223BE20](v24);
  v379 = &v286 - v25;
  MEMORY[0x28223BE20](v26);
  v380 = &v286 - v27;
  MEMORY[0x28223BE20](v28);
  v381 = &v286 - v29;
  MEMORY[0x28223BE20](v30);
  v294 = &v286 - v31;
  MEMORY[0x28223BE20](v32);
  v295 = &v286 - v33;
  MEMORY[0x28223BE20](v34);
  v296 = &v286 - v35;
  MEMORY[0x28223BE20](v36);
  v297 = &v286 - v37;
  MEMORY[0x28223BE20](v38);
  v298 = &v286 - v39;
  MEMORY[0x28223BE20](v40);
  v299 = &v286 - v41;
  MEMORY[0x28223BE20](v42);
  v300 = &v286 - v43;
  MEMORY[0x28223BE20](v44);
  v301 = &v286 - v45;
  MEMORY[0x28223BE20](v46);
  v302 = &v286 - v47;
  MEMORY[0x28223BE20](v48);
  v303 = &v286 - v49;
  MEMORY[0x28223BE20](v50);
  v304 = &v286 - v51;
  MEMORY[0x28223BE20](v52);
  v305 = &v286 - v53;
  MEMORY[0x28223BE20](v54);
  v306 = &v286 - v55;
  MEMORY[0x28223BE20](v56);
  v307 = &v286 - v57;
  MEMORY[0x28223BE20](v58);
  v308 = &v286 - v59;
  MEMORY[0x28223BE20](v60);
  v309 = &v286 - v61;
  MEMORY[0x28223BE20](v62);
  v310 = &v286 - v63;
  MEMORY[0x28223BE20](v64);
  v311 = &v286 - v65;
  MEMORY[0x28223BE20](v66);
  v312 = &v286 - v67;
  MEMORY[0x28223BE20](v68);
  v313 = &v286 - v69;
  MEMORY[0x28223BE20](v70);
  v314 = &v286 - v71;
  MEMORY[0x28223BE20](v72);
  v315 = &v286 - v73;
  MEMORY[0x28223BE20](v74);
  v316 = &v286 - v75;
  MEMORY[0x28223BE20](v76);
  v317 = &v286 - v77;
  MEMORY[0x28223BE20](v78);
  v318 = &v286 - v79;
  MEMORY[0x28223BE20](v80);
  v319 = &v286 - v81;
  MEMORY[0x28223BE20](v82);
  v320 = &v286 - v83;
  MEMORY[0x28223BE20](v84);
  v321 = &v286 - v85;
  MEMORY[0x28223BE20](v86);
  v322 = &v286 - v87;
  MEMORY[0x28223BE20](v88);
  v323 = &v286 - v89;
  MEMORY[0x28223BE20](v90);
  v324 = &v286 - v91;
  MEMORY[0x28223BE20](v92);
  v325 = &v286 - v93;
  MEMORY[0x28223BE20](v94);
  v326 = &v286 - v95;
  MEMORY[0x28223BE20](v96);
  v327 = &v286 - v97;
  MEMORY[0x28223BE20](v98);
  v328 = &v286 - v99;
  MEMORY[0x28223BE20](v100);
  v329 = &v286 - v101;
  MEMORY[0x28223BE20](v102);
  v330 = &v286 - v103;
  MEMORY[0x28223BE20](v104);
  v331 = &v286 - v105;
  MEMORY[0x28223BE20](v106);
  v332 = &v286 - v107;
  MEMORY[0x28223BE20](v108);
  v333 = &v286 - v109;
  MEMORY[0x28223BE20](v110);
  v334 = &v286 - v111;
  MEMORY[0x28223BE20](v112);
  v335 = &v286 - v113;
  MEMORY[0x28223BE20](v114);
  v336 = &v286 - v115;
  MEMORY[0x28223BE20](v116);
  v337 = &v286 - v117;
  MEMORY[0x28223BE20](v118);
  v338 = &v286 - v119;
  MEMORY[0x28223BE20](v120);
  v339 = &v286 - v121;
  MEMORY[0x28223BE20](v122);
  v340 = &v286 - v123;
  MEMORY[0x28223BE20](v124);
  v341 = &v286 - v125;
  MEMORY[0x28223BE20](v126);
  v342 = &v286 - v127;
  MEMORY[0x28223BE20](v128);
  v343 = &v286 - v129;
  MEMORY[0x28223BE20](v130);
  v344 = &v286 - v131;
  MEMORY[0x28223BE20](v132);
  v345 = &v286 - v133;
  MEMORY[0x28223BE20](v134);
  v346 = &v286 - v135;
  MEMORY[0x28223BE20](v136);
  v347 = &v286 - v137;
  MEMORY[0x28223BE20](v138);
  v348 = &v286 - v139;
  MEMORY[0x28223BE20](v140);
  v349 = &v286 - v141;
  MEMORY[0x28223BE20](v142);
  v350 = &v286 - v143;
  MEMORY[0x28223BE20](v144);
  v351 = &v286 - v145;
  MEMORY[0x28223BE20](v146);
  v352 = &v286 - v147;
  MEMORY[0x28223BE20](v148);
  v353 = &v286 - v149;
  MEMORY[0x28223BE20](v150);
  v354 = &v286 - v151;
  MEMORY[0x28223BE20](v152);
  v355 = &v286 - v153;
  MEMORY[0x28223BE20](v154);
  v359 = &v286 - v155;
  MEMORY[0x28223BE20](v156);
  v360 = &v286 - v157;
  MEMORY[0x28223BE20](v158);
  v361 = &v286 - v159;
  MEMORY[0x28223BE20](v160);
  v362 = &v286 - v161;
  MEMORY[0x28223BE20](v162);
  v363 = &v286 - v163;
  MEMORY[0x28223BE20](v164);
  v364 = &v286 - v165;
  MEMORY[0x28223BE20](v166);
  v365 = &v286 - v167;
  MEMORY[0x28223BE20](v168);
  v366 = &v286 - v169;
  MEMORY[0x28223BE20](v170);
  v367 = &v286 - v171;
  MEMORY[0x28223BE20](v172);
  v368 = &v286 - v173;
  MEMORY[0x28223BE20](v174);
  v369 = &v286 - v175;
  MEMORY[0x28223BE20](v176);
  v370 = &v286 - v177;
  MEMORY[0x28223BE20](v178);
  v371 = &v286 - v179;
  MEMORY[0x28223BE20](v180);
  v372 = &v286 - v181;
  MEMORY[0x28223BE20](v182);
  v373 = &v286 - v183;
  MEMORY[0x28223BE20](v184);
  v374 = &v286 - v185;
  MEMORY[0x28223BE20](v186);
  v375 = &v286 - v187;
  __swift_allocate_value_buffer(v188, qword_27F39CC18);
  v376 = __swift_project_value_buffer(v0, qword_27F39CC18);
  sub_24EEA489C();
  sub_24EEA48F0();
  sub_24F928DB8();
  type metadata accessor for SearchChartOrCategory(0);
  sub_24EEA4998(&qword_27F232858, type metadata accessor for SearchChartOrCategory, &protocol conformance descriptor for SearchChartOrCategory);
  sub_24EEA4998(&qword_27F232860, type metadata accessor for SearchChartOrCategory, &protocol conformance descriptor for SearchChartOrCategory);
  v382 = 85;
  sub_24F928D98();
  v189 = *(v1 + 8);
  v189(v3, v0);
  v358 = type metadata accessor for Lockup(0);
  v378 = &protocol conformance descriptor for Lockup;
  v190 = sub_24EEA4998(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v377 = &protocol conformance descriptor for Lockup;
  v191 = sub_24EEA4998(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v382 = 1;
  v192 = v191;
  sub_24F928D98();
  v189(v6, v0);
  v382 = 2;
  v193 = v287;
  sub_24F928D98();
  v189(v9, v0);
  v382 = 3;
  v194 = v288;
  v356 = v190;
  v357 = v192;
  sub_24F928D98();
  v189(v193, v0);
  v382 = 4;
  v195 = v289;
  sub_24F928D98();
  v189(v194, v0);
  type metadata accessor for InAppPurchaseLockup(0);
  v196 = v378;
  sub_24EEA4998(&qword_27F232868, type metadata accessor for InAppPurchaseLockup, v378);
  sub_24EEA4998(&qword_27F228A00, type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  v382 = 6;
  v197 = v290;
  sub_24F928D98();
  v189(v195, v0);
  v382 = 7;
  v198 = v291;
  sub_24F928D98();
  v189(v197, v0);
  type metadata accessor for Artwork(0);
  sub_24EEA4998(&qword_27F232870, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24EEA4998(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v382 = 12;
  v199 = v292;
  sub_24F928D98();
  v189(v198, v0);
  type metadata accessor for Paragraph(0);
  sub_24EEA4998(&qword_27F232878, type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);
  sub_24EEA4998(&qword_27F214718, type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);
  v382 = 15;
  v200 = v293;
  sub_24F928D98();
  v189(v199, v0);
  sub_24EEA4944();
  sub_24E631DB0();
  v382 = 16;
  v201 = v379;
  sub_24F928D98();
  v189(v200, v0);
  type metadata accessor for Footnote();
  sub_24EEA4998(&qword_27F2248E0, type metadata accessor for Footnote, &protocol conformance descriptor for Footnote);
  sub_24EEA4998(&qword_27F22B298, type metadata accessor for Footnote, &protocol conformance descriptor for Footnote);
  v382 = 17;
  v202 = v380;
  sub_24F928D98();
  v189(v201, v0);
  type metadata accessor for TitledParagraph();
  sub_24EEA4998(&qword_27F232888, type metadata accessor for TitledParagraph, &protocol conformance descriptor for TitledParagraph);
  sub_24EEA4998(&qword_27F232890, type metadata accessor for TitledParagraph, &protocol conformance descriptor for TitledParagraph);
  v382 = 18;
  v203 = v381;
  sub_24F928D98();
  v189(v202, v0);
  type metadata accessor for EditorialCard(0);
  sub_24EEA4998(&qword_27F232898, type metadata accessor for EditorialCard, &protocol conformance descriptor for EditorialCard);
  sub_24EEA4998(&qword_27F2328A0, type metadata accessor for EditorialCard, &protocol conformance descriptor for EditorialCard);
  v382 = 19;
  v204 = v294;
  sub_24F928D98();
  v189(v203, v0);
  v381 = type metadata accessor for Brick(0);
  v205 = sub_24EEA4998(&qword_27F222768, type metadata accessor for Brick, &protocol conformance descriptor for Brick);
  v206 = sub_24EEA4998(&qword_27F2328A8, type metadata accessor for Brick, &protocol conformance descriptor for Brick);
  v382 = 21;
  v207 = v295;
  v379 = v206;
  v380 = v205;
  sub_24F928D98();
  v189(v204, v0);
  v382 = 22;
  v208 = v296;
  sub_24F928D98();
  v189(v207, v0);
  type metadata accessor for ProductCapability();
  sub_24EEA4998(&qword_27F2328B0, type metadata accessor for ProductCapability, &protocol conformance descriptor for ProductCapability);
  sub_24EEA4998(&qword_27F2328B8, type metadata accessor for ProductCapability, &protocol conformance descriptor for ProductCapability);
  v382 = 25;
  v209 = v297;
  sub_24F928D98();
  v189(v208, v0);
  type metadata accessor for Review(0);
  sub_24EEA4998(&qword_27F2328C0, type metadata accessor for Review, &protocol conformance descriptor for Review);
  sub_24EEA4998(&qword_27F2328C8, type metadata accessor for Review, &protocol conformance descriptor for Review);
  v382 = 26;
  v210 = v298;
  sub_24F928D98();
  v189(v209, v0);
  type metadata accessor for ReviewsContainer();
  sub_24EEA4998(&qword_27F2328D0, type metadata accessor for ReviewsContainer, &protocol conformance descriptor for ReviewsContainer);
  sub_24EEA4998(&qword_27F2328D8, type metadata accessor for ReviewsContainer, &protocol conformance descriptor for ReviewsContainer);
  v382 = 27;
  v211 = v299;
  sub_24F928D98();
  v189(v210, v0);
  type metadata accessor for EditorsChoice(0);
  sub_24EEA4998(&qword_27F2328E0, type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  sub_24EEA4998(&qword_27F2328E8, type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  v382 = 28;
  v212 = v300;
  sub_24F928D98();
  v189(v211, v0);
  type metadata accessor for TodayCard(0);
  sub_24EEA4998(&qword_27F2328F0, type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_24EEA4998(&qword_27F2294D0, type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  v382 = 29;
  v213 = v301;
  sub_24F928D98();
  v189(v212, v0);
  v382 = 30;
  v214 = v302;
  sub_24F928D98();
  v189(v213, v0);
  v382 = 54;
  v215 = v303;
  sub_24F928D98();
  v189(v214, v0);
  v382 = 55;
  v216 = v304;
  sub_24F928D98();
  v189(v215, v0);
  v382 = 56;
  v217 = v305;
  sub_24F928D98();
  v189(v216, v0);
  type metadata accessor for EditorialLink(0);
  sub_24EEA4998(&qword_27F2328F8, type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
  sub_24EEA4998(&qword_27F232900, type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
  v382 = 31;
  v218 = v306;
  sub_24F928D98();
  v189(v217, v0);
  type metadata accessor for SearchLink(0);
  sub_24EEA4998(&qword_27F232908, type metadata accessor for SearchLink, &protocol conformance descriptor for SearchLink);
  sub_24EEA4998(&qword_27F232910, type metadata accessor for SearchLink, &protocol conformance descriptor for SearchLink);
  v382 = 32;
  v219 = v307;
  sub_24F928D98();
  v189(v218, v0);
  type metadata accessor for Quote(0);
  sub_24EEA4998(&qword_27F232918, type metadata accessor for Quote, &protocol conformance descriptor for Quote);
  sub_24EEA4998(&qword_27F232920, type metadata accessor for Quote, &protocol conformance descriptor for Quote);
  v382 = 33;
  v220 = v308;
  sub_24F928D98();
  v189(v219, v0);
  type metadata accessor for FramedArtwork(0);
  v307 = &protocol conformance descriptor for FramedMedia;
  sub_24EEA4998(&qword_27F232928, type metadata accessor for FramedArtwork, &protocol conformance descriptor for FramedMedia);
  sub_24EEA4998(&qword_27F232930, type metadata accessor for FramedArtwork, &protocol conformance descriptor for FramedMedia);
  v382 = 35;
  v221 = v309;
  sub_24F928D98();
  v189(v220, v0);
  type metadata accessor for Screenshots();
  sub_24EEA4998(&qword_27F232938, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  sub_24EEA4998(&qword_27F2273E0, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  v382 = 36;
  v222 = v310;
  sub_24F928D98();
  v189(v221, v0);
  type metadata accessor for ProductMedia();
  sub_24EEA4998(&qword_27F232940, type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  sub_24EEA4998(&qword_27F226330, type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v382 = 37;
  v223 = v311;
  sub_24F928D98();
  v189(v222, v0);
  type metadata accessor for ProductMediaItem();
  sub_24EEA4998(&qword_27F232948, type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  sub_24EEA4998(&qword_27F232950, type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  v382 = 38;
  v224 = v312;
  sub_24F928D98();
  v189(v223, v0);
  type metadata accessor for AppShowcase(0);
  sub_24EEA4998(&qword_27F232958, type metadata accessor for AppShowcase, &protocol conformance descriptor for AppShowcase);
  sub_24EEA4998(&qword_27F232960, type metadata accessor for AppShowcase, &protocol conformance descriptor for AppShowcase);
  v382 = 39;
  v225 = v313;
  sub_24F928D98();
  v189(v224, v0);
  type metadata accessor for InAppPurchaseShowcase();
  sub_24EEA4998(&qword_27F232968, type metadata accessor for InAppPurchaseShowcase, &protocol conformance descriptor for InAppPurchaseShowcase);
  sub_24EEA4998(&qword_27F232970, type metadata accessor for InAppPurchaseShowcase, &protocol conformance descriptor for InAppPurchaseShowcase);
  v382 = 40;
  v226 = v314;
  sub_24F928D98();
  v189(v225, v0);
  type metadata accessor for MixedMediaLockup(0);
  sub_24EEA4998(&qword_27F232978, type metadata accessor for MixedMediaLockup, v196);
  sub_24EEA4998(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup, v377);
  v382 = 41;
  v227 = v315;
  sub_24F928D98();
  v189(v226, v0);
  v382 = 50;
  v228 = v316;
  sub_24F928D98();
  v189(v227, v0);
  v382 = 62;
  v229 = v317;
  sub_24F928D98();
  v189(v228, v0);
  type metadata accessor for ProductPageLink();
  sub_24EEA4998(&qword_27F232980, type metadata accessor for ProductPageLink, &protocol conformance descriptor for ProductPageLink);
  sub_24EEA4998(&qword_27F221038, type metadata accessor for ProductPageLink, &protocol conformance descriptor for ProductPageLink);
  v382 = 42;
  v230 = v318;
  sub_24F928D98();
  v189(v229, v0);
  type metadata accessor for FramedVideo(0);
  sub_24EEA4998(&qword_27F232988, type metadata accessor for FramedVideo, v307);
  sub_24EEA4998(&qword_27F232990, type metadata accessor for FramedVideo, &protocol conformance descriptor for FramedMedia);
  v382 = 47;
  v231 = v319;
  sub_24F928D98();
  v189(v230, v0);
  type metadata accessor for ProductDescription();
  sub_24EEA4998(&qword_27F232998, type metadata accessor for ProductDescription, &protocol conformance descriptor for ProductDescription);
  sub_24EEA4998(&qword_27F2329A0, type metadata accessor for ProductDescription, &protocol conformance descriptor for ProductDescription);
  v382 = 48;
  v232 = v320;
  sub_24F928D98();
  v189(v231, v0);
  type metadata accessor for Banner();
  sub_24EEA4998(&qword_27F2329A8, type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  sub_24EEA4998(&qword_27F2258D8, type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  v382 = 49;
  v233 = v321;
  sub_24F928D98();
  v189(v232, v0);
  type metadata accessor for RoundedButton();
  sub_24EEA4998(&qword_27F2329B0, type metadata accessor for RoundedButton, &protocol conformance descriptor for RoundedButton);
  sub_24EEA4998(&qword_27F2329B8, type metadata accessor for RoundedButton, &protocol conformance descriptor for RoundedButton);
  v382 = 51;
  v234 = v322;
  sub_24F928D98();
  v189(v233, v0);
  type metadata accessor for TitledButtonStack(0);
  sub_24EEA4998(&qword_27F2329C0, type metadata accessor for TitledButtonStack, &protocol conformance descriptor for TitledButtonStack);
  sub_24EEA4998(&qword_27F2329C8, type metadata accessor for TitledButtonStack, &protocol conformance descriptor for TitledButtonStack);
  v382 = 52;
  v235 = v323;
  sub_24F928D98();
  v189(v234, v0);
  type metadata accessor for ImageButton();
  sub_24EEA4998(&qword_27F2329D0, type metadata accessor for ImageButton, &protocol conformance descriptor for ImageButton);
  sub_24EEA4998(&qword_27F2329D8, type metadata accessor for ImageButton, &protocol conformance descriptor for ImageButton);
  v382 = 53;
  v236 = v324;
  sub_24F928D98();
  v189(v235, v0);
  type metadata accessor for PersonalizationFeedbackRequest();
  sub_24EEA4998(&qword_27F2329E0, type metadata accessor for PersonalizationFeedbackRequest, &protocol conformance descriptor for PersonalizationFeedbackRequest);
  sub_24EEA4998(&qword_27F2329E8, type metadata accessor for PersonalizationFeedbackRequest, &protocol conformance descriptor for PersonalizationFeedbackRequest);
  v382 = 57;
  v237 = v325;
  sub_24F928D98();
  v189(v236, v0);
  type metadata accessor for LargeHeroBreakout(0);
  sub_24EEA4998(&qword_27F2329F0, type metadata accessor for LargeHeroBreakout, &protocol conformance descriptor for LargeHeroBreakout);
  sub_24EEA4998(&qword_27F2329F8, type metadata accessor for LargeHeroBreakout, &protocol conformance descriptor for LargeHeroBreakout);
  v382 = 58;
  v238 = v326;
  sub_24F928D98();
  v189(v237, v0);
  type metadata accessor for UpsellBreakout(0);
  sub_24EEA4998(&qword_27F232A00, type metadata accessor for UpsellBreakout, &protocol conformance descriptor for UpsellBreakout);
  sub_24EEA4998(&qword_27F232A08, type metadata accessor for UpsellBreakout, &protocol conformance descriptor for UpsellBreakout);
  v382 = 59;
  v239 = v327;
  sub_24F928D98();
  v189(v238, v0);
  type metadata accessor for SmallBreakout(0);
  sub_24EEA4998(&qword_27F232A10, type metadata accessor for SmallBreakout, &protocol conformance descriptor for SmallBreakout);
  sub_24EEA4998(&qword_27F232A18, type metadata accessor for SmallBreakout, &protocol conformance descriptor for SmallBreakout);
  v382 = 60;
  v240 = v328;
  sub_24F928D98();
  v189(v239, v0);
  v327 = type metadata accessor for EditorialStoryCard(0);
  v326 = sub_24EEA4998(&qword_27F232A20, type metadata accessor for EditorialStoryCard, &protocol conformance descriptor for EditorialStoryCard);
  v325 = sub_24EEA4998(&qword_27F2294E8, type metadata accessor for EditorialStoryCard, &protocol conformance descriptor for EditorialStoryCard);
  v382 = 61;
  v241 = v329;
  sub_24F928D98();
  v189(v240, v0);
  type metadata accessor for ArcadeFooter(0);
  sub_24EEA4998(&qword_27F22B2A8, type metadata accessor for ArcadeFooter, &protocol conformance descriptor for ArcadeFooter);
  sub_24EEA4998(&qword_27F232A28, type metadata accessor for ArcadeFooter, &protocol conformance descriptor for ArcadeFooter);
  v382 = 63;
  v242 = v330;
  sub_24F928D98();
  v189(v241, v0);
  v329 = type metadata accessor for Badge(0);
  sub_24EEA4998(&qword_27F232A30, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
  sub_24EEA4998(&qword_27F2144A0, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
  v382 = 64;
  v243 = v331;
  sub_24F928D98();
  v189(v242, v0);
  type metadata accessor for InformationRibbon(0);
  sub_24EEA4998(&qword_27F232A38, type metadata accessor for InformationRibbon, &protocol conformance descriptor for InformationRibbon);
  sub_24EEA4998(&qword_27F232A40, type metadata accessor for InformationRibbon, &protocol conformance descriptor for InformationRibbon);
  v382 = 76;
  v244 = v332;
  sub_24F928D98();
  v189(v243, v0);
  type metadata accessor for RibbonBar(0);
  sub_24EEA4998(&qword_27F232A48, type metadata accessor for RibbonBar, &protocol conformance descriptor for RibbonBar);
  sub_24EEA4998(&qword_27F232A50, type metadata accessor for RibbonBar, &protocol conformance descriptor for RibbonBar);
  v382 = 13;
  v245 = v333;
  sub_24F928D98();
  v189(v244, v0);
  type metadata accessor for PreorderDisclaimer(0);
  sub_24EEA4998(&qword_27F232A58, type metadata accessor for PreorderDisclaimer, &protocol conformance descriptor for PreorderDisclaimer);
  sub_24EEA4998(&qword_27F232A60, type metadata accessor for PreorderDisclaimer, &protocol conformance descriptor for PreorderDisclaimer);
  v382 = 77;
  v246 = v334;
  sub_24F928D98();
  v189(v245, v0);
  type metadata accessor for PrivacyHeader();
  sub_24EEA4998(&qword_27F232A68, type metadata accessor for PrivacyHeader, &protocol conformance descriptor for PrivacyHeader);
  sub_24EEA4998(&qword_27F232A70, type metadata accessor for PrivacyHeader, &protocol conformance descriptor for PrivacyHeader);
  v382 = 78;
  v247 = v335;
  sub_24F928D98();
  v189(v246, v0);
  type metadata accessor for PrivacyType(0);
  sub_24EEA4998(&qword_27F232A78, type metadata accessor for PrivacyType, &protocol conformance descriptor for PrivacyType);
  sub_24EEA4998(&qword_27F224818, type metadata accessor for PrivacyType, &protocol conformance descriptor for PrivacyType);
  v382 = 80;
  v248 = v336;
  sub_24F928D98();
  v189(v247, v0);
  type metadata accessor for PrivacyCategory();
  sub_24EEA4998(&qword_27F232A80, type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  sub_24EEA4998(&qword_27F232A88, type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  v382 = 81;
  v249 = v337;
  sub_24F928D98();
  v189(v248, v0);
  type metadata accessor for PrivacyDefinition();
  sub_24EEA4998(&qword_27F232A90, type metadata accessor for PrivacyDefinition, &protocol conformance descriptor for PrivacyDefinition);
  sub_24EEA4998(&qword_27F232A98, type metadata accessor for PrivacyDefinition, &protocol conformance descriptor for PrivacyDefinition);
  v382 = 82;
  v250 = v338;
  sub_24F928D98();
  v189(v249, v0);
  type metadata accessor for AppPromotion(0);
  sub_24EEA4998(&qword_27F232830, type metadata accessor for AppPromotion, &protocol conformance descriptor for AppPromotion);
  sub_24EEA4998(&qword_27F232AA0, type metadata accessor for AppPromotion, &protocol conformance descriptor for AppPromotion);
  v382 = 83;
  v251 = v339;
  sub_24F928D98();
  v189(v250, v0);
  type metadata accessor for Placeholder();
  sub_24EEA4998(&qword_27F232AA8, type metadata accessor for Placeholder, &protocol conformance descriptor for Placeholder);
  sub_24EEA4998(&qword_27F232AB0, type metadata accessor for Placeholder, &protocol conformance descriptor for Placeholder);
  v382 = 93;
  v252 = v340;
  sub_24F928D98();
  v189(v251, v0);
  type metadata accessor for PageTabs();
  sub_24EEA4998(&qword_27F232AB8, type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  sub_24EEA4998(&qword_27F232AC0, type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  v382 = 86;
  v253 = v341;
  sub_24F928D98();
  v189(v252, v0);
  v382 = 89;
  v254 = v342;
  sub_24F928D98();
  v189(v253, v0);
  type metadata accessor for Ratings(0);
  sub_24EEA4998(&qword_27F21AD50, type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_24EEA4998(&qword_27F213ED0, type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  v382 = 43;
  v255 = v343;
  sub_24F928D98();
  v189(v254, v0);
  type metadata accessor for ProductReview(0);
  sub_24EEA4998(&qword_27F232AC8, type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_24EEA4998(&qword_27F232AD0, type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  v382 = 44;
  v256 = v344;
  sub_24F928D98();
  v189(v255, v0);
  type metadata accessor for ProductReviewAction();
  sub_24EEA4998(&qword_27F232AD8, type metadata accessor for ProductReviewAction, &protocol conformance descriptor for ProductReviewAction);
  sub_24EEA4998(&qword_27F232AE0, type metadata accessor for ProductReviewAction, &protocol conformance descriptor for ProductReviewAction);
  v382 = 45;
  v257 = v345;
  sub_24F928D98();
  v189(v256, v0);
  type metadata accessor for LinkableText();
  sub_24EEA4998(&qword_27F232AE8, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_24EEA4998(&qword_27F21C360, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v382 = 46;
  v258 = v346;
  sub_24F928D98();
  v189(v257, v0);
  type metadata accessor for MediaPageHeader(0);
  sub_24EEA4998(&qword_27F232AF0, type metadata accessor for MediaPageHeader, &protocol conformance descriptor for PageHeader);
  sub_24EEA4998(&qword_27F232AF8, type metadata accessor for MediaPageHeader, &protocol conformance descriptor for PageHeader);
  v382 = 90;
  v259 = v347;
  sub_24F928D98();
  v189(v258, v0);
  v382 = 91;
  v260 = v348;
  sub_24F928D98();
  v189(v259, v0);
  type metadata accessor for HorizontalRule();
  sub_24EEA4998(&qword_27F232B00, type metadata accessor for HorizontalRule, &protocol conformance descriptor for HorizontalRule);
  sub_24EEA4998(&qword_27F232B08, type metadata accessor for HorizontalRule, &protocol conformance descriptor for HorizontalRule);
  v382 = 34;
  v261 = v349;
  sub_24F928D98();
  v189(v260, v0);
  type metadata accessor for TextCard();
  sub_24EEA4998(&qword_27F232B10, type metadata accessor for TextCard, &protocol conformance descriptor for TextCard);
  sub_24EEA4998(&qword_27F232B18, type metadata accessor for TextCard, &protocol conformance descriptor for TextCard);
  v382 = 65;
  v262 = v350;
  sub_24F928D98();
  v189(v261, v0);
  type metadata accessor for ArcadeShowcase(0);
  sub_24EEA4998(&qword_27F232B20, type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  sub_24EEA4998(&qword_27F232B28, type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  v382 = 67;
  v263 = v351;
  sub_24F928D98();
  v189(v262, v0);
  type metadata accessor for VideoCard(0);
  sub_24EEA4998(&qword_27F232B30, type metadata accessor for VideoCard, &protocol conformance descriptor for VideoCard);
  sub_24EEA4998(&qword_27F232B38, type metadata accessor for VideoCard, &protocol conformance descriptor for VideoCard);
  v382 = 20;
  v264 = v352;
  sub_24F928D98();
  v189(v263, v0);
  type metadata accessor for GameCenterReengagement(0);
  sub_24EEA4998(&qword_27F230328, type metadata accessor for GameCenterReengagement, &protocol conformance descriptor for GameCenterReengagement);
  sub_24EEA4998(&qword_27F232B40, type metadata accessor for GameCenterReengagement, &protocol conformance descriptor for GameCenterReengagement);
  v382 = 70;
  v265 = v353;
  sub_24F928D98();
  v189(v264, v0);
  type metadata accessor for SmallGameCenterPlayer(0);
  sub_24EEA4998(&qword_27F232B48, type metadata accessor for SmallGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  sub_24EEA4998(&qword_27F232B50, type metadata accessor for SmallGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  v382 = 71;
  v266 = v354;
  sub_24F928D98();
  v189(v265, v0);
  type metadata accessor for LargeGameCenterPlayer(0);
  sub_24EEA4998(&qword_27F232B58, type metadata accessor for LargeGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  sub_24EEA4998(&qword_27F232B60, type metadata accessor for LargeGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  v382 = 72;
  v267 = v355;
  sub_24F928D98();
  v189(v266, v0);
  type metadata accessor for AchievementSummary();
  sub_24EEA4998(&qword_27F232B68, type metadata accessor for AchievementSummary, &protocol conformance descriptor for AchievementSummary);
  sub_24EEA4998(&qword_27F232B70, type metadata accessor for AchievementSummary, &protocol conformance descriptor for AchievementSummary);
  v382 = 73;
  v268 = v359;
  sub_24F928D98();
  v189(v267, v0);
  type metadata accessor for PosterLockup(0);
  sub_24EEA4998(&qword_27F232B78, type metadata accessor for PosterLockup, v378);
  sub_24EEA4998(&qword_27F232B80, type metadata accessor for PosterLockup, v377);
  v382 = 74;
  v269 = v360;
  sub_24F928D98();
  v189(v268, v0);
  type metadata accessor for PrivacyFooter();
  sub_24EEA4998(&qword_27F232B88, type metadata accessor for PrivacyFooter, &protocol conformance descriptor for PrivacyFooter);
  sub_24EEA4998(&qword_27F232B90, type metadata accessor for PrivacyFooter, &protocol conformance descriptor for PrivacyFooter);
  v382 = 79;
  v270 = v361;
  sub_24F928D98();
  v189(v269, v0);
  type metadata accessor for GamesHeroCarousel(0);
  sub_24EEA4998(&qword_27F2270E0, type metadata accessor for GamesHeroCarousel, &unk_24F97D744);
  sub_24EEA4998(&qword_27F232B98, type metadata accessor for GamesHeroCarousel, &unk_24F97D714);
  v382 = 87;
  v271 = v362;
  sub_24F928D98();
  v189(v270, v0);
  type metadata accessor for Uber();
  sub_24EEA4998(&qword_27F232BA0, type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  sub_24EEA4998(&qword_27F232BA8, type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  v382 = 88;
  v272 = v363;
  sub_24F928D98();
  v189(v271, v0);
  v382 = 23;
  v273 = v364;
  sub_24F928D98();
  v189(v272, v0);
  v382 = 24;
  v274 = v365;
  sub_24F928D98();
  v189(v273, v0);
  v382 = 96;
  v275 = v366;
  sub_24F928D98();
  v189(v274, v0);
  v382 = 97;
  v276 = v367;
  sub_24F928D98();
  v189(v275, v0);
  type metadata accessor for ImageLockup(0);
  sub_24EEA4998(&qword_27F232BB0, type metadata accessor for ImageLockup, &protocol conformance descriptor for ImageLockup);
  sub_24EEA4998(&qword_27F232BB8, type metadata accessor for ImageLockup, &protocol conformance descriptor for ImageLockup);
  v382 = 98;
  v277 = v368;
  sub_24F928D98();
  v189(v276, v0);
  v382 = 99;
  v278 = v369;
  sub_24F928D98();
  v189(v277, v0);
  v382 = 100;
  v279 = v370;
  sub_24F928D98();
  v189(v278, v0);
  type metadata accessor for TitledButton();
  sub_24EEA4998(&qword_27F232BC0, type metadata accessor for TitledButton, &protocol conformance descriptor for TitledButton);
  sub_24EEA4998(&qword_27F22A898, type metadata accessor for TitledButton, &protocol conformance descriptor for TitledButton);
  v382 = 101;
  v280 = v371;
  sub_24F928D98();
  v189(v279, v0);
  v382 = 54;
  v281 = v372;
  sub_24F928D98();
  v189(v280, v0);
  v382 = 55;
  v282 = v373;
  sub_24F928D98();
  v189(v281, v0);
  v382 = 56;
  v283 = v374;
  sub_24F928D98();
  v189(v282, v0);
  type metadata accessor for SearchResultsLearnMoreNotice();
  sub_24EEA4998(&qword_27F232BC8, type metadata accessor for SearchResultsLearnMoreNotice, &protocol conformance descriptor for SearchResultsLearnMoreNotice);
  sub_24EEA4998(&qword_27F232BD0, type metadata accessor for SearchResultsLearnMoreNotice, &protocol conformance descriptor for SearchResultsLearnMoreNotice);
  v382 = 103;
  v284 = v375;
  sub_24F928D98();
  v189(v283, v0);
  type metadata accessor for GamesPageHeader(0);
  sub_24EEA4998(&qword_27F232BD8, type metadata accessor for GamesPageHeader, &unk_24F96D720);
  sub_24EEA4998(&qword_27F232BE0, type metadata accessor for GamesPageHeader, &unk_24F96D6F0);
  v382 = 102;
  sub_24F928D98();
  return (v189)(v284, v0);
}

uint64_t sub_24EEA43B4()
{
  v0 = Shelf.ContentType.rawValue.getter();
  v2 = v1;
  if (v0 == Shelf.ContentType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24EEA445C@<X0>(unint64_t *a1@<X8>)
{
  result = Shelf.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24EEA4484()
{
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEA44EC(uint64_t a1)
{
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24EEA4550()
{
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEA45B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810, &qword_24F9AAA58);
  __swift_allocate_value_buffer(v0, qword_27F2327F8);
  __swift_project_value_buffer(v0, qword_27F2327F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232820, &unk_24FA20400);
  return sub_24F928588();
}

uint64_t static JSONContext.Property<A>.componentKindTable.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2107B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810, &qword_24F9AAA58);
  v3 = __swift_project_value_buffer(v2, qword_27F2327F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_24EEA46F8()
{
  result = qword_27F232818;
  if (!qword_27F232818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232818);
  }

  return result;
}

uint64_t _s11ContentTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x99)
  {
    goto LABEL_17;
  }

  if (a2 + 103 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 103) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 103;
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

      return (*a1 | (v4 << 8)) - 103;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 103;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x68;
  v8 = v6 - 104;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 103 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 103) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x99)
  {
    v4 = 0;
  }

  if (a2 > 0x98)
  {
    v5 = ((a2 - 153) >> 8) + 1;
    *result = a2 + 103;
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
    *result = a2 + 103;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24EEA489C()
{
  result = qword_27F232848;
  if (!qword_27F232848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232848);
  }

  return result;
}

unint64_t sub_24EEA48F0()
{
  result = qword_27F232850;
  if (!qword_27F232850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232850);
  }

  return result;
}

unint64_t sub_24EEA4944()
{
  result = qword_27F232880;
  if (!qword_27F232880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232880);
  }

  return result;
}

uint64_t sub_24EEA4998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EEA49E0(__int128 *a1, char a2)
{
  v3 = *(v2 + 104);
  if (!v3)
  {
    return result;
  }

  v4 = v2;
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  v7 = a1[3];
  *v22 = a1[2];
  *&v22[16] = v7;
  ProductTopLockup.primaryBanner(for:)(&v20, v19);
  v8 = v19[0];
  if ((~v19[0] & 0xF000000000000007) == 0)
  {

LABEL_4:
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_12;
  }

  if ((v19[0] & 0x8000000000000000) != 0)
  {
    v9 = v19[0] & 0x7FFFFFFFFFFFFFFFLL;
    v10 = *((v19[0] & 0x7FFFFFFFFFFFFFFFLL) + 0x58);
    if (v10 == 1)
    {
    }

    else
    {
      v11 = *((v19[0] & 0x7FFFFFFFFFFFFFFFLL) + 0x50);
      v12 = objc_opt_self();
      sub_24E6AD46C(v11, v10);

      sub_24E6AD46C(v11, v10);
      v13 = sub_24F92B588();

      v14 = [v12 isCapableOfAction:v11 capabilities:v13];

      sub_24EEA5774(v11, v10);
      if (v14)
      {
        sub_24EEA575C(v8);
        goto LABEL_4;
      }
    }
  }

  else
  {

    v9 = v8;
  }

  sub_24E65864C(v9 + 104, &v20);
  sub_24EEA575C(v8);
  v24 = v20;
  v25 = v21;
  v26 = *v22;
LABEL_12:
  swift_beginAccess();
  sub_24E65E064(v4 + 64, &v20);
  sub_24E65E064(&v24, &v22[8]);
  if (*(&v21 + 1))
  {
    sub_24E65E064(&v20, v19);
    if (*&v22[32])
    {
      v17[0] = *&v22[8];
      v17[1] = *&v22[24];
      v18 = v23;
      v15 = MEMORY[0x253052150](v19, v17);
      sub_24E6585F8(v17);
      sub_24E6585F8(v19);
      sub_24E601704(&v20, &qword_27F235830, &qword_24F93B8C0);
      if (v15)
      {

LABEL_18:
        sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);
        return result;
      }

      goto LABEL_21;
    }

    sub_24E6585F8(v19);
  }

  else if (!*&v22[32])
  {

    sub_24E601704(&v20, &qword_27F235830, &qword_24F93B8C0);
    goto LABEL_18;
  }

  sub_24E601704(&v20, &qword_27F21B438, &unk_24F95FB00);
LABEL_21:
  swift_beginAccess();
  sub_24EEA56EC(&v24, v4 + 64);
  swift_endAccess();
  if (a2)
  {
    *&v20 = v3;
    sub_24F9280C8();
  }

  sub_24E601704(&v24, &qword_27F235830, &qword_24F93B8C0);

  return result;
}

id sub_24EEA4CD4(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v43 = *v1;
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EB58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v14 = v2[13];
    if (v14)
    {
      v15 = qword_27F2105D0;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F22D7F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      v17 = v43;
      *(&v46 + 1) = swift_getMetatypeMetadata();
      *&aBlock = v17;
      sub_24F928438();
      sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      sub_24F92A588();

      v18 = v2[3];
      ObjectType = swift_getObjectType();
      v20 = *(v14 + 16);
      v21 = *(v20 + 24);
      *&aBlock = *(v20 + 16);
      *(&aBlock + 1) = v21;
      v22 = *(v18 + 56);

      v22(&aBlock, ObjectType, v18);
      v24 = v23;

      v25 = swift_getObjectType();
      (*(v24 + 16))(v44, v25, v24);
      swift_unknownObjectRelease();
      sub_24EEA49E0(v44, 1);

      aBlock = v44[0];
      v46 = v44[1];
      v47 = v44[2];
      v48 = v44[3];
      return sub_24E88D2AC(&aBlock);
    }
  }

  else
  {
    v36 = v9;
    v37 = v6;
    v38 = v7;
    v39 = v4;
    v40 = v3;
    if (qword_27F2105D0 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    v35[1] = __swift_project_value_buffer(v26, qword_27F22D7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    v27 = v43;
    *(&v46 + 1) = swift_getMetatypeMetadata();
    *&aBlock = v27;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();

    sub_24E74EC40();
    v28 = sub_24F92BEF8();
    (*(v11 + 16))(v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v10);
    v29 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    (*(v11 + 32))(v30 + v29, v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *&v47 = sub_24EEA5670;
    *(&v47 + 1) = v30;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v46 = sub_24EAF8248;
    *(&v46 + 1) = &block_descriptor_84;
    v31 = _Block_copy(&aBlock);

    v32 = v36;
    sub_24F927DA8();
    *&aBlock = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v33 = v37;
    v34 = v40;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v32, v33, v31);
    _Block_release(v31);

    (*(v39 + 8))(v33, v34);
    return (*(v42 + 8))(v32, v38);
  }

  return result;
}

uint64_t sub_24EEA5510()
{
  swift_unknownObjectRelease();

  sub_24E601704(v0 + 64, &qword_27F235830, &qword_24F93B8C0);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEA55AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEA56EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235830, &qword_24F93B8C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_24EEA575C(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_24EEA5774(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24EEA5788()
{
  v1 = [v0 phoneNumberStrings];
  v2 = sub_24F92B5A8();

  if (*(v2 + 16) || (, v3 = [v0 emailAddressStrings], v2 = sub_24F92B5A8(), v3, *(v2 + 16)))
  {
    v4 = *(v2 + 32);
  }

  else
  {

    v6 = [v0 identifier];
    v4 = sub_24F92B0D8();
  }

  return v4;
}

char *sub_24EEA5878(void *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v10 = sub_24F92AC68();
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v13 = MEMORY[0x25304F260]();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    *(v15 + 5) = v14;
    v16 = a1;
    v17 = a2;

    sub_24F92AC48();
    if (v5)
    {
    }

    else
    {
      v15 = sub_24F92AC58();

      (*(v20 + 8))(v12, v10);
    }
  }

  else
  {
    v15 = "y a specified game.";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_24EEA5AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v42 = a3;
  v36 = a5;
  v34 = a2;
  v46 = a1;
  v38 = sub_24F9281B8();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = *(a4 + OBJC_IVAR____TtC12GameStoreKit12JSGameCenter_dataProvider);
  v41 = sub_24F9298F8();
  v44 = v41;
  v45 = MEMORY[0x277D22078];
  v43[0] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38, &unk_24F9AAD80);

  v39 = a7;

  v18 = sub_24F92A9E8();
  sub_24F012130(v36, a6, a7, *(v17 + OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache));
  swift_retain_n();
  v37 = v18;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v43);
  v19 = v12;
  v20 = *(v12 + 16);
  v21 = v38;
  v20(v16, a2, v38);
  v22 = *(v19 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = swift_allocObject();
  v36 = v24;
  *(v24 + 16) = v46;
  v25 = *(v19 + 32);
  v33 = v16;
  v25(v24 + v23, v16, v21);
  v20(v16, v34, v21);
  v26 = v40;
  v20(v40, v42, v21);
  v27 = (v23 + v13 + v22) & ~v22;
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = v46;
  v25(v28 + v23, v33, v21);
  v25(v28 + v27, v26, v21);
  v44 = v41;
  v45 = MEMORY[0x277D22078];
  v43[0] = v39;
  v30 = v29;

  v31 = v30;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

void sub_24EEA5E2C(unint64_t *a1, void *a2, __n128 a3)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    sub_24F92C978();
    if (v5 < 0)
    {
      __break(1u);
      swift_once();
      v11 = sub_24F92AAE8();
      __swift_project_value_buffer(v11, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v13;
      sub_24F9283A8();
      sub_24F92A5A8();

      return;
    }

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v6, v4);
      }

      else
      {
      }

      ++v6;
      sub_24EEEC844(a2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v5 != v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a2];
  swift_unknownObjectRelease();
  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v9 + 32) = v8;
    v10 = v8;
    v12 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

char *sub_24EEA618C(void *a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v10 = sub_24F92AC68();
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v13 = MEMORY[0x25304F260]();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    *(v15 + 5) = v14;
    v16 = a1;
    v17 = a2;

    sub_24F92AC48();
    if (v5)
    {
    }

    else
    {
      v15 = sub_24F92AC58();

      (*(v20 + 8))(v12, v10);
    }
  }

  else
  {
    v15 = "recently played games.";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_24EEA63C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v34 = a7;
  v35 = a3;
  v30 = a2;
  v38 = a1;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v36 = sub_24EEAD104(a5, a6, a7);
  v18 = *(v13 + 16);
  v18(v17, a2, v12);
  v19 = *(v13 + 80);
  v20 = (v19 + 24) & ~v19;
  v29 = v20 + v14;
  v31 = v20;
  v21 = swift_allocObject();
  v33 = v21;
  *(v21 + 16) = v38;
  v22 = *(v13 + 32);
  v22(v21 + v20, v17, v12);
  v18(v17, v30, v12);
  v23 = v32;
  v18(v32, v35, v12);
  v24 = (v29 + v19) & ~v19;
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v38;
  v22(v25 + v31, v17, v12);
  v22(v25 + v24, v23, v12);
  v37[3] = sub_24F9298F8();
  v37[4] = MEMORY[0x277D22078];
  v37[0] = v34;
  v27 = v26;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_24EEA6678(uint64_t a1, objc_class *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  v4.super.isa = a2;
  sub_24EED5AA0(v4);
  *(v3 + 32) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    *(v8 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v8 + 32) = v7;
    v9 = v7;
    v10 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA6914(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_24F9281A8();
  }

  else
  {
    v9 = MEMORY[0x253051C90](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

id sub_24EEA6BA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v5 = a1;
  v6 = sub_24F92C448();
  v7 = sub_24F92C458();

  return v7;
}

char *sub_24EEA6C60(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  v32 = a4;
  v7 = sub_24F922028();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92AC68();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v14 = MEMORY[0x25304F260]();
  if (!v14)
  {
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return v21;
  }

  v15 = v14;

  v16 = sub_24F92CB88();

  if (v16 >= 3)
  {
    v21 = sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_7;
  }

  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v17 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v32;
  *(v18 + 24) = v16;
  v20 = v30;
  *(v18 + 32) = v29;
  *(v18 + 40) = v20;
  *(v18 + 48) = v15;
  (*(v8 + 32))(v18 + v17, v10, v7);
  v21 = v31;
  v22 = v19;

  v23 = v33;
  sub_24F92AC48();
  if (v23)
  {
LABEL_7:

    return v21;
  }

  v21 = sub_24F92AC58();

  (*(v26 + 8))(v13, v27);
  return v21;
}

uint64_t sub_24EEA7034(void *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, char a6, void (*a7)(void, void, void), void (*a8)(char *, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v64 = a8;
  v63 = a7;
  v72 = a3;
  v75 = a2;
  v80 = a1;
  v62 = a10;
  v73 = sub_24F9281B8();
  v12 = *(v73 - 8);
  v74 = *(v12 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v67 = sub_24F922028();
  v17 = *(v67 - 8);
  v68 = *(v17 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24F9298F8();
  v78 = v70;
  v79 = MEMORY[0x277D22078];
  v77[0] = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230940, &qword_24F9A2E68);
  v69 = a9;

  v19 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C28, &qword_24F9AAD70);
  v20 = sub_24F92A9E8();
  sub_24E615E00(v77, v76);
  v21 = swift_allocObject();
  v22 = v63;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v64;
  sub_24E612C80(v76, (v21 + 5));

  sub_24EEABF30(a9, sub_24EEAE8FC, v21);

  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = v19;
  v66 = v19;
  swift_retain_n();
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v77);
  v24 = v17;
  v25 = *(v17 + 16);
  v61 = v17 + 16;
  v64 = v25;
  v26 = v65;
  v27 = v67;
  v25(v65, a10, v67);
  v28 = v12;
  v63 = *(v12 + 16);
  v29 = v16;
  v63(v16, v75, v73);
  v30 = *(v24 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = *(v28 + 80);
  v59 = v31;
  v33 = (v68 + v32 + v31) & ~v32;
  v54 = v33 + v74;
  v56 = v33;
  v60 = v30 | v32;
  v34 = swift_allocObject();
  *(v34 + 16) = v80;
  v35 = *(v24 + 32);
  v57 = v24 + 32;
  v58 = v35;
  v36 = v34 + v31;
  v37 = v34;
  v68 = v34;
  v35(v36, v26, v27);
  v55 = *(v28 + 32);
  v38 = v37 + v33;
  v39 = v29;
  v53 = v29;
  v40 = v73;
  v55(v38, v29, v73);
  v41 = v26;
  v64(v26, v62, v27);
  v42 = v39;
  v43 = v63;
  v63(v42, v75, v40);
  v44 = v71;
  v43(v71, v72, v40);
  v45 = (v54 + v32) & ~v32;
  v46 = swift_allocObject();
  v47 = v80;
  *(v46 + 16) = v80;
  v58(v46 + v59, v41, v27);
  v48 = v55;
  v55(v46 + v56, v53, v40);
  v48(v46 + v45, v44, v40);
  v78 = v70;
  v79 = MEMORY[0x277D22078];
  v77[0] = v69;
  v49 = v47;

  v50 = v49;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

void sub_24EEA761C(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v3 = sub_24F92CF68();
  v4 = [objc_opt_self() valueWithObject:v3 inContext:a2];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_24F92C048();
    sub_24F929778();
    v5 = sub_24F929768();
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24F93DE60;
    *(v6 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v6 + 32) = v4;
    v7 = v4;
    v8 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA78BC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  sub_24F92C048();
  sub_24F929778();
  v5 = sub_24F929768();
  sub_24F921FE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  v7 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v8 = v7;
  if (v4)
  {
    *(v6 + 56) = v7;
    *(v6 + 32) = v4;
    v9 = v4;
    v11 = sub_24F9281A8();
  }

  else
  {
    v10 = MEMORY[0x253051C90](a1, a2);
    *(v6 + 56) = v8;
    *(v6 + 32) = v10;
    v11 = sub_24F9281A8();
  }
}

char *sub_24EEA7D54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v11 = sub_24F92AC68();
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v14 = MEMORY[0x25304F260]();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 2) = a2;
    *(v16 + 3) = a3;
    *(v16 + 4) = a4;
    *(v16 + 5) = a5;
    *(v16 + 6) = v15;
    v17 = a1;
    v18 = a2;

    v19 = v23;
    sub_24F92AC48();
    if (v19)
    {
    }

    else
    {
      v16 = sub_24F92AC58();

      (*(v22 + 8))(v13, v11);
    }
  }

  else
  {
    v16 = "lter was passed:";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_24EEA7F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v44 = a3;
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v35 = a2;
  v48 = a1;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = *(a4 + OBJC_IVAR____TtC12GameStoreKit12JSGameCenter_dataProvider);
  v43 = sub_24F9298F8();
  v46 = v43;
  v47 = MEMORY[0x277D22078];
  v45[0] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C20, &qword_24F9AAD68);
  v41 = a8;

  v19 = sub_24F92A9E8();
  sub_24EEAD24C(v37, v38, v39, a8, *(v18 + OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache));
  swift_retain_n();
  v40 = v19;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v45);
  v20 = v13;
  v21 = *(v13 + 16);
  v21(v17, a2, v12);
  v22 = *(v20 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = swift_allocObject();
  v39 = v24;
  *(v24 + 16) = v48;
  v25 = *(v20 + 32);
  v34 = v17;
  v25(v24 + v23, v17, v12);
  v21(v17, v35, v12);
  v26 = v42;
  v21(v42, v44, v12);
  v27 = (v23 + v14 + v22) & ~v22;
  v28 = swift_allocObject();
  v29 = v48;
  *(v28 + 16) = v48;
  v25(v28 + v23, v34, v12);
  v25(v28 + v27, v26, v12);
  v46 = v43;
  v47 = MEMORY[0x277D22078];
  v45[0] = v41;
  v30 = v29;

  v31 = v30;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

void sub_24EEA8300(unint64_t *a1, void *a2, __n128 a3)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    sub_24F92C978();
    if (v5 < 0)
    {
      __break(1u);
      swift_once();
      v11 = sub_24F92AAE8();
      __swift_project_value_buffer(v11, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v13;
      sub_24F9283A8();
      sub_24F92A5A8();

      return;
    }

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v6, v4);
      }

      else
      {
      }

      ++v6;
      sub_24EE9D80C(a2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v5 != v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a2];
  swift_unknownObjectRelease();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v9 + 32) = v8;
    v10 = v8;
    v12 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA8638(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_24F9281A8();
  }

  else
  {
    v9 = MEMORY[0x253051C90](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

char *sub_24EEA88CC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v11 = sub_24F92AC68();
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v14 = MEMORY[0x25304F260]();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 2) = a2;
    *(v16 + 3) = a3;
    *(v16 + 4) = a4;
    *(v16 + 5) = a5;
    *(v16 + 6) = v15;
    v17 = a1;
    v18 = a2;

    v19 = v23;
    sub_24F92AC48();
    if (v19)
    {
    }

    else
    {
      v16 = sub_24F92AC58();

      (*(v22 + 8))(v13, v11);
    }
  }

  else
  {
    v16 = "dingFriendsRestricted";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_24EEA8B0C(void *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a9;
  v38 = a3;
  v33 = a2;
  v35 = a1;
  v14 = sub_24F9281B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v36 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v39 = sub_24EEAD5D4(a6, a7, a8);
  v20 = *(v15 + 16);
  v20(v19, a2, v14);
  v21 = *(v15 + 80);
  v22 = (v21 + 24) & ~v21;
  v32 = v22 + v16;
  v34 = v22;
  v23 = swift_allocObject();
  v37 = v23;
  *(v23 + 16) = a1;
  v24 = *(v15 + 32);
  v24(v23 + v22, v19, v14);
  v20(v19, v33, v14);
  v25 = v36;
  v20(v36, v38, v14);
  v26 = (v32 + v21) & ~v21;
  v27 = swift_allocObject();
  v28 = v34;
  v29 = v35;
  *(v27 + 16) = v35;
  v24(v27 + v28, v19, v14);
  v24(v27 + v26, v25, v14);
  v41[3] = sub_24F9298F8();
  v41[4] = MEMORY[0x277D22078];
  v41[0] = v40;
  v30 = v29;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

void sub_24EEA8DB4(unint64_t *a1, void *a2, __n128 a3)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    sub_24F92C978();
    if (v5 < 0)
    {
      __break(1u);
      swift_once();
      v11 = sub_24F92AAE8();
      __swift_project_value_buffer(v11, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v13;
      sub_24F9283A8();
      sub_24F92A5A8();

      return;
    }

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v6, v4);
      }

      else
      {
      }

      ++v6;
      GameCenterActivityFeedCard.makeValue(in:)(a2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v5 != v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a2];
  swift_unknownObjectRelease();
  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    *(v9 + 32) = v8;
    v10 = v8;
    v12 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA90FC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_24F9281A8();
  }

  else
  {
    v9 = MEMORY[0x253051C90](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

id sub_24EEA9390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v6 = a1;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

char *sub_24EEA9454(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v8 = sub_24F92AC68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v12 = MEMORY[0x25304F260]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = a2;
    *(v14 + 4) = a3;
    v15 = a1;

    v16 = a2;
    sub_24F92AC48();
    if (v4)
    {
    }

    else
    {
      v14 = sub_24F92AC58();

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    v14 = "tive JS worker thread";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v14;
}

double sub_24EEA9798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, __n128 a7)
{
  v33 = a1;
  v34 = a6;
  v31 = a3;
  v32 = a5;
  v29 = a4;
  v9 = sub_24F9281B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(v10 + 16);
  v16(&v29 - v14, a2, v9, v13);
  (v16)(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v9);
  v17 = *(v10 + 80);
  v18 = (v17 + 48) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  v21 = v32;
  v22 = v34;
  *(v20 + 2) = v32;
  *(v20 + 3) = v22;
  *(v20 + 4) = a4;
  v23 = v33;
  *(v20 + 5) = v33;
  v24 = *(v10 + 32);
  v24(&v20[v18], v15, v9);
  v24(&v20[v19], v30, v9);
  v25 = v21;
  v26 = v29;

  v27 = v23;
  sub_24EEABF30(v26, sub_24EEACCAC, v20);

  return result;
}

uint64_t sub_24EEA9984(void *a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v29 = a7;
  v35 = a5;
  v36 = a6;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v34 = sub_24EEAD90C(a1);
  v16 = *(v11 + 16);
  v16(v15, a7, v10);
  v17 = *(v11 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = v18 + v12;
  v30 = v18;
  v20 = swift_allocObject();
  v32 = v20;
  *(v20 + 16) = v36;
  v21 = *(v11 + 32);
  v21(v20 + v18, v15, v10);
  v16(v15, v29, v10);
  v22 = v31;
  v16(v31, v33, v10);
  v23 = (v19 + v17) & ~v17;
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = v36;
  v21(v24 + v30, v15, v10);
  v21(v24 + v23, v22, v10);
  v37[3] = sub_24F9298F8();
  v37[4] = MEMORY[0x277D22078];
  v37[0] = v35;
  v26 = v25;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_24EEA9C20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v4 = *(v2 + 16);
  v12 = MEMORY[0x277D83B88];
  v11[0] = v4;
  sub_24F928438();
  sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A588();

  sub_24EEAE034();
  sub_24F92B6B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = v12;
  v7 = __swift_project_boxed_opaque_existential_1(v11, v12);
  *(v5 + 56) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  v9 = sub_24F9281A8();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void sub_24EEA9F38(uint64_t a1, uint64_t a2)
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5 = sub_24F92CFE8();
  v14[3] = MEMORY[0x277D837D0];
  v14[0] = v5;
  v14[1] = v6;
  sub_24F928438();
  sub_24E601704(v14, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  v7 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  v9 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v10 = v9;
  if (v7)
  {
    *(v8 + 56) = v9;
    *(v8 + 32) = v7;
    v11 = v7;
    v13 = sub_24F9281A8();
  }

  else
  {
    v12 = MEMORY[0x253051C90](a1, a2);
    *(v8 + 56) = v10;
    *(v8 + 32) = v12;
    v13 = sub_24F9281A8();
  }
}

char *sub_24EEAA440(void *a1, void *a2, __n128 a3)
{
  v6 = sub_24F92AC68();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v10 = MEMORY[0x25304F260]();
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 2) = a2;
    *(v12 + 3) = v11;
    v13 = a1;
    v14 = a2;

    sub_24F92AC48();
    if (v3)
    {
    }

    else
    {
      v12 = sub_24F92AC58();

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    v12 = "game info for bundleId";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_24EEAA654(void *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v37 = a3;
  v49 = a1;
  v9 = sub_24F9281B8();
  v10 = *(v9 - 8);
  v44 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  v39 = &v35 - v14;
  v42 = sub_24F9298F8();
  v47 = v42;
  v48 = MEMORY[0x277D22078];
  v46[0] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232BF8, &qword_24F9AAD40);
  v40 = a6;

  v15 = sub_24F92A9E8();
  v41 = v15;
  sub_24E615E00(v46, v45);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_24E612C80(v45, v16 + 24);

  sub_24EEABF30(a6, sub_24EEAC6E4, v16);

  __swift_destroy_boxed_opaque_existential_1(v46);
  v17 = *(v10 + 16);
  v18 = v39;
  v17(v39, a2, v9);
  v17(v12, a3, v9);
  v19 = *(v10 + 80);
  v20 = (v19 + 24) & ~v19;
  v35 = v44 + v19;
  v21 = (v44 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v49;
  v23 = *(v10 + 32);
  v24 = v22 + v20;
  v25 = v22;
  v38 = v22;
  v23(v24, v18, v9);
  v26 = v25 + v21;
  v27 = v43;
  v23(v26, v43, v9);
  v17(v18, v36, v9);
  v17(v27, v37, v9);
  v28 = (v19 + 32) & ~v19;
  v29 = (v35 + v28) & ~v19;
  v30 = swift_allocObject();
  v31 = v40;
  v32 = v49;
  *(v30 + 16) = v40;
  *(v30 + 24) = v32;
  v23(v30 + v28, v18, v9);
  v23(v30 + v29, v43, v9);
  v47 = v42;
  v48 = MEMORY[0x277D22078];
  v46[0] = v31;
  swift_retain_n();
  v33 = v32;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

void sub_24EEAA9F0(uint64_t a1, JSContext a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235860, &qword_24F9B8890);
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  v7 = objc_opt_self();
  v8 = [v7 valueWithNewObjectInContext_];
  if (v8)
  {
    v9 = v8;
    sub_24EEACAC4(a1, v6);
    v10 = *v6;
    v11 = *(v6 + 1);
    v12 = *(v4 + 48);

    v21[1] = v10;
    v21[2] = v11;
    v13 = [v7 valueWithObject:sub_24F92CF68() inContext:a2.super.isa];
    swift_unknownObjectRelease();
    v14 = sub_24F91FEF8();
    (*(*(v14 - 8) + 8))(&v6[v12], v14);
    if (v13)
    {
      sub_24F92C328();
      Achievement.makeValue(in:)(a2);
      sub_24F92C328();
      v15.super.isa = a2.super.isa;
      sub_24EED5AA0(v15);
      sub_24F92C328();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_24F93DE60;
      *(v16 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      *(v16 + 32) = v9;
      v17 = v9;
      v19 = sub_24F9281A8();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_24F93DE60;
    *(v18 + 56) = sub_24F92A868();
    __swift_allocate_boxed_opaque_existential_1((v18 + 32));
    sub_24F92A808();
    v21[0] = sub_24F9281A8();

    v20 = v21[0];
  }
}

double sub_24EEAAE7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v27[0] = a1;
  v27[1] = a2;
  v9 = sub_24F9281B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = *(v10 + 16);
  v17(v27 - v15, a4, v9, v14);
  (v17)(v12, a5, v9);
  v18 = *(v10 + 80);
  v19 = (v18 + 24) & ~v18;
  v20 = (v11 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = *(v10 + 32);
  v22(v21 + v19, v16, v9);
  v22(v21 + v20, v12, v9);
  v23 = v27[0];
  *(v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27[0];
  v24 = a3;
  v25 = v23;
  sub_24F9298E8();

  return result;
}

void sub_24EEAB050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  v8 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v9 = v8;
  if (v6)
  {
    *(v7 + 56) = v8;
    *(v7 + 32) = v6;
    v10 = v6;
    v12 = sub_24F9281A8();
  }

  else
  {
    v11 = MEMORY[0x253051C90](a4, a1);
    *(v7 + 56) = v9;
    *(v7 + 32) = v11;
    v12 = sub_24F9281A8();
  }
}

const char *sub_24EEAB368(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = sub_24F92AC68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v12 = MEMORY[0x25304F260]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = a2;
    *(v14 + 3) = a3;
    *(v14 + 4) = v13;
    v15 = a1;

    sub_24F92AC48();
    if (v4)
    {
    }

    else
    {
      v14 = sub_24F92AC58();

      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v14 = "GameStoreKit.JSGameCenter";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_24EEAB590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v40 = a6;
  v41 = a2;
  v37 = a4;
  v42 = a3;
  v45 = a1;
  v10 = sub_24F9281B8();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = type metadata accessor for GameCenter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232BF0, &unk_24F9B88C0);
  v13 = sub_24F92A9E8();
  v14 = swift_allocObject();
  v43 = v13;
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = a4;
  v14[5] = a5;
  v36 = a5;

  sub_24EEABF30(a6, sub_24EEABF24, v14);

  v15 = v38;
  v16 = v39;
  v35 = *(v38 + 16);
  v17 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35(v17, v41, v39);
  v18 = *(v15 + 80);
  v19 = (v18 + 24) & ~v18;
  v11 += 7;
  v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v45;
  v38 = *(v15 + 32);
  v22 = v21 + v19;
  v41 = v21;
  v23 = v17;
  v34 = v17;
  (v38)(v22, v17, v16);
  v24 = (v21 + v20);
  v26 = v36;
  v25 = v37;
  *v24 = v37;
  v24[1] = v26;
  v35(v23, v42, v16);
  v27 = (v18 + 16) & ~v18;
  v28 = (v11 + v27) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (v38)(v29 + v27, v34, v16);
  v30 = v45;
  *(v29 + v28) = v45;
  v31 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v25;
  v31[1] = v26;
  v44[3] = sub_24F9298F8();
  v44[4] = MEMORY[0x277D22078];
  v44[0] = v40;
  swift_bridgeObjectRetain_n();
  v32 = v30;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

void sub_24EEAB8A4(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[6];
  type metadata accessor for GameInfoSummary();
  inited = swift_initStackObject();
  inited[16] = v3;
  inited[17] = v4;
  inited[18] = v5;
  v7 = sub_24EA5B378(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  *(v8 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_24F9281A8();
}

void sub_24EEABB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v7 = MEMORY[0x253051C90](a1, a3);
  *(v5 + 56) = v6;
  *(v5 + 32) = v7;
  v8 = sub_24F9281A8();
}

uint64_t sub_24EEABEAC()
{

  return swift_deallocObject();
}

uint64_t sub_24EEABF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F927DC8();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_24F9298F8();
  v24[4] = MEMORY[0x277D22078];
  v24[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358C0, &qword_24F9AAD38);

  v11 = sub_24F92A9E8();
  if (qword_27F210D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_24EEAC5B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_85;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v22 = MEMORY[0x277D84F90];
  sub_24EEAC5D4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);

  v13 = swift_allocObject();
  v15 = v20;
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  swift_retain_n();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_24EEAC2D8(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EEAC3B4(char *a1, __n128 a2)
{
  sub_24F9281B8();
  v4 = *(v2 + 16);

  sub_24EEAB8A4(a1, v4);
}

uint64_t sub_24EEAC458(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EEAC508(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EEABB1C(a1, v2 + v5, v6);
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEAC5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EEAC648()
{

  return swift_deallocObject();
}

uint64_t sub_24EEAC6A4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

void sub_24EEAC6F0(uint64_t a1, __n128 a2)
{
  sub_24F9281B8();
  v4.super.isa = *(v2 + 16);

  sub_24EEAA9F0(a1, v4);
}

uint64_t sub_24EEAC790(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v4 + v5) & ~v4;

  v7 = *(v3 + 8);
  v7(v1 + v5, v2);
  v7(v1 + v6, v2);

  return swift_deallocObject();
}

double sub_24EEAC884(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v2 + ((*(v4 + 64) + v6 + v7) & ~v6);

  return sub_24EEAAE7C(a1, v8, v9, v2 + v7, v10, v5);
}

uint64_t sub_24EEAC924(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v3 + 8);
  v9(v1 + v5, v2);
  v9(v1 + v7, v2);

  return swift_deallocObject();
}

void sub_24EEACA24(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = *(v1 + 16);
  v8 = *(v1 + ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EEAB050(v7, v1 + v5, v1 + v6, v8);
}

uint64_t sub_24EEACAC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235860, &qword_24F9B8890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEACB50()
{

  return swift_deallocObject();
}

uint64_t sub_24EEACBB0(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(v3 + 64) + v4 + v5) & ~v4;

  v7 = *(v3 + 8);
  v7(v1 + v5, v2);
  v7(v1 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_24EEACCAC(void *a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v6 = *(v4 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2 + ((*(v4 + 64) + v6 + v7) & ~v6);

  return sub_24EEA9984(a1, v8, v5, v9, v10, v11, v2 + v7, v12);
}

uint64_t sub_24EEACD50(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v25[4] = MEMORY[0x277D225C0];
  v25[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358C0, &qword_24F9AAD38);
  v11 = a1;
  v12 = sub_24F92A9E8();
  if (qword_27F210D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_24EEAF2A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_110;
  v13 = _Block_copy(aBlock);

  sub_24F927DA8();
  v23 = MEMORY[0x277D84F90];
  sub_24EEAC5D4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v20);

  v14 = swift_allocObject();
  v16 = v21;
  v15 = v22;
  *(v14 + 16) = v21;
  *(v14 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  swift_retain_n();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_24EEAD104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_24F9298F8();
  v12[4] = MEMORY[0x277D22078];
  v12[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C30, &qword_24F9AAD78);

  v7 = sub_24F92A9E8();
  if (qword_27F210D08 != -1)
  {
    swift_once();
  }

  v8 = qword_27F2357C8;
  sub_24E615E00(v12, v11);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  sub_24E612C80(v11, (v9 + 5));
  v9[10] = ObjectType;

  sub_24EEACD50(v8, sub_24EEAEE88, v9);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_24EEAD24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v22[3] = sub_24F9298F8();
  v22[4] = MEMORY[0x277D22078];
  v22[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C20, &qword_24F9AAD68);

  v11 = sub_24F92A9E8();

  v12 = sub_24F92CB88();

  if (v12 > 2)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v21 = MEMORY[0x277D837D0];
    *&v20 = a1;
    *(&v20 + 1) = a2;

    sub_24F928458();
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    sub_24EEAE088();
    v17 = swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 4;
    sub_24F92A9A8();
  }

  else
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    *(v14 + 32) = a3;
    *(v14 + 40) = v11;
    sub_24E615E00(v22, &v20);
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = sub_24EEAE6EC;
    v15[4] = v14;
    sub_24E612C80(&v20, (v15 + 5));
    v15[10] = v10;

    sub_24EEABF30(a4, sub_24EEAE714, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

uint64_t sub_24EEAD5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C18, &qword_24F9AAD58);
  v9 = sub_24F92A9E8();

  v10 = sub_24F92CB88();

  if (v10 > 2)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v17[3] = MEMORY[0x277D837D0];
    v17[0] = a1;
    v17[1] = a2;

    sub_24F928458();
    sub_24E601704(v17, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    sub_24EEAE088();
    v14 = swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 4;
    sub_24F92A9A8();
  }

  else
  {
    v11 = sub_24F92B858();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a3;
    *(v12 + 48) = v9;

    sub_24F1F2908(0, 0, v8, &unk_24F9AAD60, v12);

    sub_24E601704(v8, &unk_27F21B570, &qword_24F93B020);
  }

  return v9;
}

id sub_24EEAD90C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C08, &qword_24F9AAD48);
  v34 = sub_24F92A9E8();
  result = [objc_opt_self() shared];
  if (result)
  {
    v14 = result;
    v15 = [result isAddingFriendsRestricted];

    if (v15)
    {
      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 5;
    }

    else
    {
      if (a1)
      {
        v33 = ObjectType;
        sub_24F929778();
        v32 = a1;
        sub_24F929768();
        sub_24F921FF8();
        sub_24F92C058();
        v20 = sub_24F929768();
        sub_24F921FE8();

        if (qword_27F210590 != -1)
        {
          swift_once();
        }

        v21 = sub_24F92AAE8();
        __swift_project_value_buffer(v21, qword_27F39C410);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        v22 = sub_24F92B858();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        (*(v7 + 16))(v9, v12, v6);
        v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        v26 = v32;
        *(v25 + 4) = v32;
        (*(v7 + 32))(&v25[v23], v9, v6);
        v27 = v33;
        v28 = v34;
        *&v25[v24] = v34;
        *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
        v29 = v26;

        sub_24F1D3DA4(0, 0, v5, &unk_24F9AAD50, v25);

        (*(v7 + 8))(v12, v6);
        return v28;
      }

      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v30 = sub_24F92AAE8();
      __swift_project_value_buffer(v30, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 7;
    }

    *v17 = v19;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 4;
    v28 = v34;
    sub_24F92A9A8();

    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EEAE034()
{
  result = qword_27F232C00;
  if (!qword_27F232C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232C00);
  }

  return result;
}

unint64_t sub_24EEAE088()
{
  result = qword_27F232C10;
  if (!qword_27F232C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232C10);
  }

  return result;
}

uint64_t sub_24EEAE0DC()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEAE1CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E614970;

  return sub_24F7F82F0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_24EEAE390()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EEAE3D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24EFA72BC(a1, v4, v5, v8, v6, v7);
}

uint64_t objectdestroy_50Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EEAE598(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), __n128 a3)
{
  v5 = *(sub_24F9281B8() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return a2(a1, v8, v3 + v7, v9);
}

uint64_t sub_24EEAE64C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_4Tm_3(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_24EEAE750()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEAE8BC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_24EEAE920()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F9281B8();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_24EEAEA70(uint64_t *a1)
{
  sub_24F922028();
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EEA761C(a1, v3);
}

uint64_t sub_24EEAEB48()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F9281B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v7 + v8) & ~v7;

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v6 + 8);
  v10(v0 + v8, v5);
  v10(v0 + v9, v5);

  return swift_deallocObject();
}

void sub_24EEAECB8(uint64_t a1)
{
  sub_24F922028();
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EEA78BC(a1, v3);
}

uint64_t objectdestroy_78Tm_0(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_24EEAEEBC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_96Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_40Tm_0(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_24EEAF068(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), __n128 a3)
{
  v5 = *(sub_24F9281B8() - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a2(a1, v6, v7);
}

uint64_t objectdestroy_25Tm(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v4 + v5) & ~v4;

  v7 = *(v3 + 8);
  v7(v1 + v5, v2);
  v7(v1 + v6, v2);

  return swift_deallocObject();
}

uint64_t GenericPagePresenter.__allocating_init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18[-v13 - 8];
  swift_allocObject();
  sub_24E60169C(a4, v14, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(a6, v18, &qword_27F229490, &unk_24F984C40);
  v15 = sub_24EEB45A0(a1, a2, a3, v14, v7, v18);

  sub_24E601704(a6, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(a4, &qword_27F228530, &unk_24F93C6E0);
  return v15;
}

uint64_t GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18[-v13 - 8];
  sub_24E60169C(a4, &v18[-v13 - 8], &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(a6, v18, &qword_27F229490, &unk_24F984C40);
  v15 = sub_24EEB45A0(a1, a2, a3, v14, v7, v18);

  sub_24E601704(a6, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(a4, &qword_27F228530, &unk_24F93C6E0);
  return v15;
}

uint64_t BaseGenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = sub_24EEB50BC(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_24EEAF5D4()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_27F23ABD8 object:*(v0 + qword_27F232C58)];

  v2 = BasePresenter.deinit();

  sub_24E883630(v2 + qword_27F39CC30);
  sub_24E601704(v2 + qword_27F39CC38, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v2 + qword_27F39CC40, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v2 + qword_27F39CC50, &qword_27F2129B0, &unk_24F945320);

  sub_24E824448(*(v2 + qword_27F39CC60), *(v2 + qword_27F39CC60 + 8));

  return v2;
}

uint64_t BaseGenericPagePresenter.deinit()
{
  sub_24EEB1E90();
  v0 = BasePresenter.deinit();

  sub_24E883630(v0 + qword_27F39CC30);
  sub_24E601704(v0 + qword_27F39CC38, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v0 + qword_27F39CC40, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + qword_27F39CC50, &qword_27F2129B0, &unk_24F945320);

  sub_24E824448(*(v0 + qword_27F39CC60), *(v0 + qword_27F39CC60 + 8));

  return v0;
}

void sub_24EEAF96C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F01DD24();
  if (*(v0 + qword_27F232C48))
  {
    if (sub_24EEB064C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 24);
      v9 = v2;
      v10 = *(v8 + 32);

      v10(v11, ObjectType, v8);
      v2 = v9;

      swift_unknownObjectRelease();
    }

    if (sub_24EEB064C())
    {
      v13 = v12;
      v14 = swift_getObjectType();
      (*(v13 + 32))(*(v0 + qword_27F232C80), v14, v13);
      swift_unknownObjectRelease();
    }

    v15 = *(*v0 + 704);

    v15(v16, 0);

    *(v0 + qword_27F232C48) = 0;
  }

  if (*(v0 + qword_27F232C78) == 1)
  {
    swift_beginAccess();
    v17 = v0[2];
    if (v17)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v19 = v18;
      (*(v2 + 8))(v4, v1);
      v20 = v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v20 = v19;
      *(v20 + 8) = 0;
      v21 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v21 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }
  }
}