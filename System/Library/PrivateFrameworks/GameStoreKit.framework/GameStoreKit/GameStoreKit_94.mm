uint64_t sub_24EF94F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    if (a2)
    {
      *(&v58 + 1) = &type metadata for Feature;
      *&v59[0] = sub_24EAEAC44();
      LOBYTE(v57) = 8;

      v6 = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(&v57);
      if (v6)
      {
        v7 = *(v4 + 104);
        if (a3)
        {
          v8 = *(a2 + 104);

          v10 = sub_24EF938A4(v9, v8);

          v7 = v10;
        }

        else
        {
          if (!v7)
          {
            v7 = *(a2 + 104);
          }
        }

        v11 = *(v4 + 136);
        if (!v11)
        {
          v11 = *(a2 + 136);
        }
      }

      else
      {
        v11 = *(v4 + 136);
        if (a3)
        {
          v12 = *(a2 + 136);

          v14 = sub_24EF938A4(v13, v12);

          v7 = 0;
          v11 = v14;
        }

        else
        {
          if (!v11)
          {
            v11 = *(a2 + 136);
          }

          v7 = 0;
        }
      }

      if (*(v4 + 24))
      {
        v40 = *(v4 + 24);
        v41 = *(v4 + 16);
      }

      else
      {
        v40 = *(a2 + 24);
        v41 = *(a2 + 16);
      }

      v15 = *(v4 + 32);
      if (!v15)
      {
        v15 = *(a2 + 32);
      }

      v16 = *(v4 + 49);
      if (v16 == 3)
      {
        LOBYTE(v16) = *(a2 + 49);
      }

      v17 = *(v4 + 56);
      if (!v17)
      {
      }

      v39 = v17;
      v18 = *(v4 + 64);
      if (!v18)
      {
      }

      v38 = v18;
      if (*(v4 + 80))
      {
        v36 = *(v4 + 80);
        v37 = *(v4 + 72);
      }

      else
      {
        v36 = *(a2 + 80);
        v37 = *(a2 + 72);
      }

      v19 = *(v4 + 88);
      if (!v19)
      {
      }

      v20 = *(v4 + 96);
      if (v20 == 3)
      {
        LOBYTE(v20) = *(a2 + 96);
      }

      v35 = v19;
      v34 = v20;
      if (*(v4 + 120))
      {
        v32 = *(v4 + 120);
        v33 = *(v4 + 112);
      }

      else
      {
        v32 = *(a2 + 120);
        v33 = *(a2 + 112);
      }

      v42 = *(v4 + 128);
      if (!v42)
      {
        v42 = *(a2 + 128);
      }

      v21 = *(a2 + 160);
      v49[0] = *(a2 + 144);
      v49[1] = v21;
      v23 = *(a2 + 144);
      v22 = *(a2 + 160);
      v50[0] = *(a2 + 176);
      *(v50 + 15) = *(a2 + 191);
      v46 = v23;
      v47 = v22;
      v48[0] = *(a2 + 176);
      *(v48 + 15) = *(a2 + 191);
      v24 = *(v4 + 144);
      v25 = *(v4 + 160);
      *(v52 + 15) = *(v4 + 191);
      v26 = *(v4 + 176);
      v51[1] = *(v4 + 160);
      v52[0] = v26;
      v27 = *(v4 + 144);
      v51[0] = v24;
      v43 = v27;
      v44 = v25;
      v45[0] = *(v4 + 176);
      *(v45 + 15) = *(v4 + 191);
      sub_24EF90D38(&v43, &v57);

      sub_24EF92B8C(v49, v55);
      sub_24EF92B8C(v51, v55);

      v53[0] = v43;
      v53[1] = v44;
      v54[0] = v45[0];
      *(v54 + 15) = *(v45 + 15);
      sub_24EF9537C(v53);
      v55[0] = v46;
      v55[1] = v47;
      *v56 = v48[0];
      *&v56[15] = *(v48 + 15);
      sub_24EF9537C(v55);
      type metadata accessor for ShelfHeader();
      v4 = swift_allocObject();
      *(v4 + 16) = v41;
      *(v4 + 24) = v40;
      *(v4 + 32) = v15;
      *(v4 + 40) = 0;
      *(v4 + 48) = 1;
      *(v4 + 49) = v16;
      *(v4 + 56) = v39;
      *(v4 + 64) = v38;
      *(v4 + 72) = v37;
      *(v4 + 80) = v36;
      *(v4 + 88) = v35;
      *(v4 + 96) = v34;
      *(v4 + 120) = v32;
      *(v4 + 128) = v42;
      *(v4 + 104) = v7;
      *(v4 + 112) = v33;
      *(v4 + 136) = v11;
      v28 = v57;
      v29 = v58;
      v30 = v59[0];
      *(v4 + 191) = *(v59 + 15);
      *(v4 + 160) = v29;
      *(v4 + 176) = v30;
      *(v4 + 144) = v28;
    }

    else
    {
    }
  }

  else
  {

    return a2;
  }

  return v4;
}

uint64_t ShelfBasedCollectionViewController.collectionViewCellProvider(indexPath:item:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v9 = sub_24F92AAE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8, &unk_24F984C80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for ItemLayoutContext(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 32);
  v51 = a4;
  v52 = v5;
  v21 = v20(a4, a5, v17);
  if (v21)
  {
    v22 = v21;
    if (a3)
    {

      ShelfBasedCollectionViewController.itemLayoutContext(at:)(v50, v51, a5, v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        sub_24E601704(v14, &qword_27F2294A8, &unk_24F984C80);
      }

      else
      {
        sub_24EF96720(v14, v19, type metadata accessor for ItemLayoutContext);
        ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter(a5, &v54);
        v23 = v57;
        v24 = v58;
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        v25 = (*(v24 + 16))(v19, a3, v23, v24);
        if (v25)
        {
          v27 = v25;
          v28 = v26;
          __swift_destroy_boxed_opaque_existential_1(&v54);
          v29 = *(v28 + 16);
          v30 = v22;
          v31 = v29(v19, v30, a3, v27, v28);
          ShelfBasedCollectionViewController.collectionElementsObserver.getter(v51, a5);
          v33 = v32;
          ObjectType = swift_getObjectType();
          (*(v33 + 16))(v31, v19, v30, a3, ObjectType, v33);
          swift_unknownObjectRelease();

          sub_24EF96788(v19, type metadata accessor for ItemLayoutContext);
          return v31;
        }

        sub_24EF96788(v19, type metadata accessor for ItemLayoutContext);

        __swift_destroy_boxed_opaque_existential_1(&v54);
      }
    }

    else
    {
    }
  }

  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v9, qword_27F39C458);
  v49 = v10;
  (*(v10 + 16))(v53, v36, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  v37 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837D0];
  v54 = 0xD000000000000033;
  v55 = 0x800000024FA65C60;
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
  v38 = sub_24F91FA78();
  v57 = v38;
  v39 = __swift_allocate_boxed_opaque_existential_1(&v54);
  (*(*(v38 - 8) + 16))(v39, v50, v38);
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
  v57 = v37;
  v54 = 0xD000000000000038;
  v55 = 0x800000024FA65CA0;
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
  v40 = (*(a5 + 56))(v51, a5);
  if (v40)
  {
    v41 = v40 + *((*MEMORY[0x277D85000] & *v40) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    v42 = v40;
    swift_beginAccess();
    v43 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 52)];
    v45 = *v43;
    v44 = v43[1];

    v46 = MEMORY[0x277D837D0];
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v46 = 0;
    v56 = 0;
  }

  v54 = v45;
  v55 = v44;
  v57 = v46;
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0, &unk_24F945320);
  v47 = v53;
  sub_24F92A5B8();

  (*(v49 + 8))(v47, v9);
  return 0;
}

void *ShelfBasedCollectionViewController.supplementaryViewProvider(elementKind:indexPath:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a3;
  v103 = a2;
  v104 = a1;
  v10 = sub_24F92AAE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8, &unk_24F984C80);
  MEMORY[0x28223BE20](v14 - 8);
  v95 = &v85 - v15;
  v94 = type metadata accessor for ItemLayoutContext(0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0, &qword_24F9B77B8);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v85 - v18;
  v19 = sub_24F91FA78();
  v98 = *(v19 - 8);
  v99 = v19;
  MEMORY[0x28223BE20](v19);
  v96 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v85 - v22;
  v24 = type metadata accessor for ShelfLayoutContext(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v100 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a6;
  result = (*(a6 + 32))(a5, a6, v26);
  if (result)
  {
    v29 = result;
    if (!a4)
    {

      return 0;
    }

    v89 = v25;
    v88 = v13;
    v86 = v11;
    v87 = v10;
    v105 = v6;
    v30 = a4;
    v90 = v6;
    v31 = v101;
    v32 = *(v101 + 8);
    v33 = *(v32 + 16);

    v91 = a5;
    v33(&v106, v104, v103, a5, v32);
    if (*(&v107 + 1))
    {
      sub_24E612C80(&v106, &v109);
      v34 = *(&v110 + 1);
      v35 = v111;
      __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
      v36 = *(v35 + 24);
      v37 = v29;
      v38 = v36(v102, v37, v34, v35);

      __swift_destroy_boxed_opaque_existential_1(&v109);
      return v38;
    }

    v85 = v30;
    sub_24E601704(&v106, &qword_27F230D60, &unk_24F9A3D20);
    v39 = v102;
    ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(v91, v31, v23);
    if ((v89)[6](v23, 1, v24) == 1)
    {

      sub_24E601704(v23, &qword_27F232618, &qword_24F9DAE90);
      return 0;
    }

    v40 = v31;
    v41 = v100;
    sub_24EF96720(v23, v100, type metadata accessor for ShelfLayoutContext);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(v91, v31);
    v43 = v42;
    ObjectType = swift_getObjectType();
    v45 = v29;
    v47 = v103;
    v46 = v104;
    v48 = v39;
    v49 = v85;
    v50 = ShelfSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(v104, v103, v48, v41, v45, v85, ObjectType, v43);
    swift_unknownObjectRelease();
    if (v50)
    {

      sub_24EF96788(v41, type metadata accessor for ShelfLayoutContext);
      return v50;
    }

    v89 = v45;
    String.extractElementKindContentIdentifier()(v46, v47, &v106);
    if (!*(&v107 + 1))
    {

      sub_24E601704(&v106, &qword_27F228658, &qword_24F9C31B0);
      v52 = v88;
LABEL_18:
      if (qword_27F2105A8 != -1)
      {
        swift_once();
      }

      v60 = v87;
      v61 = __swift_project_value_buffer(v87, qword_27F39C458);
      (*(v86 + 16))(v52, v61, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9AF330;
      v62 = MEMORY[0x277D837D0];
      *(&v110 + 1) = MEMORY[0x277D837D0];
      *&v109 = 0xD00000000000003ELL;
      *(&v109 + 1) = 0x800000024FA65CE0;
      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      *(&v110 + 1) = v62;
      *&v109 = v104;
      *(&v109 + 1) = v103;

      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      *(&v110 + 1) = v62;
      strcpy(&v109, "at indexPath:");
      HIWORD(v109) = -4864;
      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      v63 = v99;
      *(&v110 + 1) = v99;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v109);
      (*(v98 + 16))(boxed_opaque_existential_1, v102, v63);
      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      *(&v110 + 1) = v62;
      *&v109 = 0xD000000000000028;
      *(&v109 + 1) = 0x800000024FA65D20;
      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      *(&v110 + 1) = v62;
      *&v109 = 0xD000000000000011;
      *(&v109 + 1) = 0x800000024FA65D50;
      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      v65 = (*(v101 + 56))(v91);
      if (v65)
      {
        v66 = v65 + *((*MEMORY[0x277D85000] & *v65) + class metadata base offset for ModelMappedDiffableDataSource + 16);
        v67 = v65;
        swift_beginAccess();
        v68 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 52)];
        v70 = *v68;
        v69 = *(v68 + 1);

        v71 = MEMORY[0x277D837D0];
      }

      else
      {
        v70 = 0;
        v69 = 0;
        v71 = 0;
        *&v110 = 0;
      }

      v72 = v100;
      v73 = v89;
      *&v109 = v70;
      *(&v109 + 1) = v69;
      *(&v110 + 1) = v71;
      sub_24F928438();
      sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
      v74 = v87;
      v75 = v88;
      sub_24F92A5B8();

      (*(v86 + 8))(v75, v74);
      sub_24EF96788(v72, type metadata accessor for ShelfLayoutContext);
      return 0;
    }

    v109 = v106;
    v110 = v107;
    v111 = v108;
    v51 = (*(v40 + 56))(v91, v40);
    v52 = v88;
    if (v51)
    {
      v53 = v51;
      v54 = v97;
      sub_24F922E68();

      v56 = v98;
      v55 = v99;
      if ((*(v98 + 48))(v54, 1, v99) != 1)
      {
        v76 = v96;
        (*(v56 + 32))(v96, v54, v55);
        v77 = v95;
        v78 = v91;
        ShelfBasedCollectionViewController.itemLayoutContext(at:)(v76, v91, v40, v95);
        if ((*(v93 + 48))(v77, 1, v94) != 1)
        {
          v79 = v92;
          sub_24EF96720(v77, v92, type metadata accessor for ItemLayoutContext);
          ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(v78, v40);
          v81 = v80;
          v82 = swift_getObjectType();
          v83 = v89;
          v84 = ItemSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(v104, v47, v102, v79, v89, v49, v82, v81);
          swift_unknownObjectRelease();

          sub_24EF96788(v79, type metadata accessor for ItemLayoutContext);
          (*(v98 + 8))(v96, v99);
          sub_24E772780(&v109);
          if (v84)
          {
            sub_24EF96788(v41, type metadata accessor for ShelfLayoutContext);

            return v84;
          }

          goto LABEL_18;
        }

        (*(v98 + 8))(v76, v99);
        sub_24E772780(&v109);
        v57 = &qword_27F2294A8;
        v58 = &unk_24F984C80;
        v59 = v77;
        goto LABEL_17;
      }

      sub_24E772780(&v109);
    }

    else
    {

      sub_24E772780(&v109);
      v54 = v97;
      (*(v98 + 56))(v97, 1, 1, v99);
    }

    v57 = &qword_27F2355F0;
    v58 = &qword_24F9B77B8;
    v59 = v54;
LABEL_17:
    sub_24E601704(v59, v57, v58);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_24EF96720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF96788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ShelfBasedCollectionViewController.compositionalLayoutSectionProvider(section:layoutEnvironment:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a3;
  v60 = a1;
  v8 = sub_24F92AAE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for ShelfLayoutContext(0);
  ObjectType = *(v18 - 1);
  v62 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(a5 + 32))(a4, a5, v19);
  if (v22)
  {
    v23 = v22;
    if (v63)
    {
      v59 = v8;

      v24 = v60;
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v60, a4, a5, v17);
      if ((ObjectType[6])(v17, 1, v62) != 1)
      {
        v62 = type metadata accessor for ShelfLayoutContext;
        v58 = v21;
        sub_24EF96720(v17, v21, type metadata accessor for ShelfLayoutContext);
        v57 = ShelfBasedCollectionViewController.itemLayoutContexts(for:)(v24, a4, a5);
        ShelfBasedCollectionViewController.collectionElementsObserver.getter(a4, a5);
        v40 = v39;
        ObjectType = swift_getObjectType();
        v56 = *(v40 + 8);
        v59 = v23;
        v41 = v21;
        v42 = v57;
        v56(v24, v59, v41, v57, v63, ObjectType, v40);
        swift_unknownObjectRelease();
        ShelfBasedCollectionViewController.layoutSectionProvider.getter(a5, &v65);
        v43 = v68;
        v44 = v69;
        v60 = __swift_project_boxed_opaque_existential_1(&v65, v68);
        ObjectType = &v56;
        MEMORY[0x28223BE20](v60);
        v54 = v42;
        ShelfBasedCollectionViewController.shelfLayoutSpacingProvider.getter(a5, v64);
        v45 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(a4, a5);
        v47 = v46;
        v48 = ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(a4, a5);
        v49 = *(v44 + 8);
        v54 = v43;
        v55 = v44;
        v53[0] = v50;
        v53[1] = v63;
        v51 = v58;
        v52 = v59;
        v37 = v49(v58, sub_24EF97144, v53, v59, v64, v45, v47, v48);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v64);
        sub_24EF96788(v51, v62);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        return v37;
      }

      sub_24E601704(v17, &qword_27F232618, &qword_24F9DAE90);
      v8 = v59;
    }

    else
    {
    }
  }

  v57 = v14;
  v58 = a4;
  v63 = v5;
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v8, qword_27F39C458);
  v59 = v9;
  v26 = v9[2];
  v56 = v11;
  v26(v11, v25, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F942000;
  v27 = MEMORY[0x277D837D0];
  v68 = MEMORY[0x277D837D0];
  v65 = 0xD000000000000037;
  v66 = 0x800000024FA65D70;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0, &unk_24F945320);
  v68 = MEMORY[0x277D83B88];
  v65 = v60;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0, &unk_24F945320);
  v68 = v27;
  v65 = 0xD000000000000021;
  v66 = 0x800000024FA65DB0;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0, &unk_24F945320);
  v68 = v27;
  v65 = 0xD000000000000011;
  v66 = 0x800000024FA65D50;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0, &unk_24F945320);
  v28 = (*(a5 + 56))(v58, a5);
  if (v28)
  {
    v29 = v28 + *((*MEMORY[0x277D85000] & *v28) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    v30 = v28;
    swift_beginAccess();
    v31 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 52)];
    v33 = *v31;
    v32 = *(v31 + 1);

    v34 = MEMORY[0x277D837D0];
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v34 = 0;
    v67 = 0;
  }

  v35 = v57;
  v65 = v33;
  v66 = v32;
  v68 = v34;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0, &unk_24F945320);
  v36 = v56;
  sub_24F92A5B8();

  (*(v59 + 1))(v36, v8);
  (ObjectType[7])(v35, 1, 1, v62);
  v37 = _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v35);
  sub_24E601704(v35, &qword_27F232618, &qword_24F9DAE90);
  return v37;
}

double ShelfBasedCollectionViewController.globalSupplementaryRegistration(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

Swift::Void __swiftcall ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)(CGSize fitting)
{
  v3 = v2;
  v4 = v1;
  height = fitting.height;
  width = fitting.width;
  v7 = (*(v2 + 80))();
  if (v7)
  {
    v8 = v7;
    v9 = [v8 configuration];
    [v9 copyWithZone_];
    sub_24F92C648();
    swift_unknownObjectRelease();

    sub_24E69A5C4(0, &qword_27F2355F8, 0x277D752C0);
    swift_dynamicCast();
    (*(*(v3 + 8) + 8))(v4, width, height);
    sub_24E69A5C4(0, &qword_27F2250F0, 0x277CFB830);
    v10 = sub_24F92B588();

    [v11 setBoundarySupplementaryItems_];

    [v8 setConfiguration_];
  }
}

uint64_t sub_24EF9714C()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24F552250();
}

uint64_t sub_24EF9720C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AvatarSection.AvatarEditorMode(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600, &qword_24F9B77C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24EF973C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AvatarSection.AvatarEditorMode(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600, &qword_24F9B77C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24EF97568(uint64_t a1)
{
  type metadata accessor for LocalPlayerProvider(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AvatarSection.AvatarEditorMode(319);
    if (v2 <= 0x3F)
    {
      sub_24E654514();
      if (v3 <= 0x3F)
      {
        sub_24EF97870(319, &qword_27F235618, &qword_27F213FB0, &qword_24F93E6B0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24EF97870(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24E6D74E4(319);
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

uint64_t sub_24EF976D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EF97760(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24EF977EC(uint64_t a1)
{
  sub_24EF97870(319, &qword_27F22CD78, &qword_27F22CC20, &unk_24F992000, MEMORY[0x277CE11F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24EF97870(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EF978F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AvatarSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = v3 - 8;
  v38 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235630, &qword_24F9B7860);
  MEMORY[0x28223BE20](v41);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235638, &unk_24F9B7868);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v45 = v37 - v11;
  v40 = type metadata accessor for AvatarSection;
  sub_24EF99EFC(v1, v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvatarSection);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v39 = type metadata accessor for AvatarSection;
  sub_24EF9A084(v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AvatarSection);
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235640, &qword_24F9B7878);
  v14 = type metadata accessor for PlayerAvatarView(255);
  v15 = sub_24EF99FDC(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
  *&v54 = v14;
  *(&v54 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  sub_24F926F88();
  LOBYTE(v14) = *(v1 + 16) == 2;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235648, &unk_24F9B78B0) + 36)];
  *v18 = KeyPath;
  v18[1] = sub_24E600A48;
  v18[2] = v17;
  v19 = v2;
  sub_24F927618();
  sub_24F9238C8();
  v20 = v41;
  v21 = &v8[*(v41 + 36)];
  v22 = v55;
  *v21 = v54;
  *(v21 + 1) = v22;
  *(v21 + 2) = v56;
  v23 = v19 + *(v6 + 40);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v53._countAndFlagsBits) = v24;
  v53._object = v25;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  sub_24EF99EFC(v19, v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  v26 = swift_allocObject();
  sub_24EF9A084(v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v12, v39);
  v27 = sub_24EF99C3C();
  v28 = sub_24EF99DAC();
  sub_24F926958();

  sub_24EF99E00(v8);
  v29._object = 0x800000024FA65DE0;
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v53 = localizedString(_:comment:)(v29, v30);
  v31 = v19 + *(v38 + 56);
  v32 = *v31;
  v33 = *(v31 + 8);
  v51 = v32;
  v52 = v33;
  sub_24F926F58();
  v47 = v20;
  v48 = &type metadata for AvatarEditorView;
  v49 = v27;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v34 = v42;
  v35 = v45;
  sub_24F926918();

  return (*(v43 + 8))(v35, v34);
}

double sub_24EF97EC8(uint64_t a1)
{
  v2 = type metadata accessor for AvatarSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-v7];
  if (*(a1 + 16) == 1)
  {
    v9 = (a1 + *(v2 + 48));
    v10 = *v9;
    v11 = *(v9 + 1);
    v18[16] = v10;
    v19 = v11;
    v18[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F48();
  }

  else
  {
    v13 = sub_24F92B858();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_24EF99EFC(a1, &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AvatarSection);
    sub_24F92B7F8();
    v14 = sub_24F92B7E8();
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v14;
    *(v16 + 24) = v17;
    sub_24EF9A084(v5, v16 + v15, type metadata accessor for AvatarSection);
    sub_24EA998B8(0, 0, v8, &unk_24F9B7908, v16);
  }

  return result;
}

uint64_t sub_24EF98108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_24F92B7F8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24EF981A0, v6, v5);
}

uint64_t sub_24EF981A0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24EF98234;

  return sub_24F552250();
}

uint64_t sub_24EF98234()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24EF98354, v3, v2);
}

uint64_t sub_24EF98354()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for AvatarSection(0) + 32));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 72) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EF98404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_24F9248C8();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AvatarSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600, &qword_24F9B77C8);
  sub_24F926F38();
  v19 = *(v13 + 48);
  v20 = v19(v11, 1, v12);
  v49 = v15;
  if (v20 == 1)
  {
    v40 = v16;
    v21 = a1;
    v22 = *(a1 + 8);
    swift_getKeyPath();
    v50 = v22;
    sub_24EF99FDC(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v23 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
    swift_beginAccess();
    v24 = v22 + v23;
    a1 = v21;
    v16 = v40;
    (*(v13 + 16))(v49, v24, v12);
    if (v19(v11, 1, v12) != 1)
    {
      sub_24E601704(v11, &qword_27F213FB0, &qword_24F93E6B0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v25 = *(a1 + 16);
  v26 = type metadata accessor for PlayerAvatar.Overlay(0);
  v27 = v42;
  if (v25)
  {
    v28 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v28 = 0;
  }

  v29 = *(v26 - 8);
  (*(v29 + 56))(v27, v28, 1, v26);
  (*(v13 + 32))(v18, v49, v12);
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  swift_storeEnumTagMultiPayload();
  v30 = v16[5];
  if ((*(v29 + 48))(v27, 1, v26) == 1)
  {
    sub_24E601704(v27, &qword_27F22DF80, &unk_24F942E50);
    v31 = 1;
    v32 = v44;
  }

  else
  {
    v33 = v41;
    sub_24EF9A084(v27, v41, type metadata accessor for PlayerAvatar.Overlay);
    v32 = v44;
    v34 = v33 + *(v44 + 20);
    *v34 = 0;
    *(v34 + 8) = 1;
    v35 = (v33 + *(v32 + 24));
    *v35 = 0;
    v35[1] = 0;
    sub_24EF9A084(v33, &v18[v30], type metadata accessor for PlayerAvatarView.Overlay);
    v31 = 0;
  }

  (*(v43 + 56))(&v18[v30], v31, 1, v32);
  v36 = &v18[v16[6]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v18[v16[7]] = 7;
  v37 = v45;
  sub_24F9248B8();
  sub_24EF99FDC(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v47 + 8))(v37, v48);
  return sub_24EF9A024(v18, type metadata accessor for PlayerAvatarView);
}

uint64_t sub_24EF98A60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AvatarSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(a1 + 8);
  sub_24EF99EFC(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvatarSection);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24EF9A084(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AvatarSection);
  *a2 = v7;
  a2[1] = sub_24EF99E68;
  a2[2] = v9;
}

void sub_24EF98B90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v84 = a4;
  v81 = a5;
  v85 = a3;
  v78 = a2;
  v72 = sub_24F921B58();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v62 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v62 - v9;
  v10 = type metadata accessor for AvatarSection.AvatarEditorMode(0);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AvatarData(0);
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v17 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v17);
  v82 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  v28 = sub_24F9289E8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E6F66C4(a1, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_24E601704(v27, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_10:
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v50 = sub_24F9220D8();
    __swift_project_value_buffer(v50, qword_27F39E8F8);
    v51 = sub_24F9220B8();
    v52 = sub_24F92BD98();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_24E5DD000, v51, v52, "No avatar has been picked.", v53, 2u);
      MEMORY[0x2530542D0](v53, -1, -1);
    }

    return;
  }

  (*(v29 + 32))(v31, v27, v28);
  v32 = v31;
  v33 = v85;
  if (!v85 || !v84 || (v34 = v81) == 0)
  {
    (*(v29 + 8))(v32, v28);
    goto LABEL_10;
  }

  v66 = *(v29 + 16);
  v69 = v28;
  v35 = v29;
  v65 = v29 + 16;
  v68 = v32;
  v66(v24, v32, v69);
  v67 = v29;
  v36 = v69;
  (*(v35 + 56))(v24, 0, 1, v69);
  v64 = type metadata accessor for AvatarSection(0);
  sub_24E6F66C4(v24, v21);
  v63 = v84;
  v81 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600, &qword_24F9B77C8);
  sub_24F926F48();
  v37 = v83;
  sub_24E601704(v24, &qword_27F213FB0, &qword_24F93E6B0);
  v38 = type metadata accessor for PlayerAvatar.Overlay(0);
  v39 = *(*(v38 - 8) + 56);
  v39(v16, 1, 1, v38);
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v40 = *(v17 + 20);
  v84 = v13;
  v41 = v82;
  v39(v82 + v40, 1, 1, v38);
  v42 = v41 + *(v17 + 24);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;

  sub_24E61DA68(&v86, v42, qword_27F21B590, &unk_24F93BE30);
  *v41 = v78;
  v41[1] = v33;
  sub_24E61DA68(v16, v41 + v40, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(&v89, v42, qword_27F21B590, &unk_24F93BE30);
  v43 = v80;
  v66(&v84[*(v80 + 24)], v68, v36);
  v44 = v64;
  v45 = v84;
  sub_24EF99EFC(v41, &v84[*(v43 + 28)], type metadata accessor for PlayerAvatar);
  v46 = v63;
  *v45 = v81;
  v45[1] = v46;
  v47 = v76;
  sub_24EF99EFC(v37 + *(v44 + 28), v76, type metadata accessor for AvatarSection.AvatarEditorMode);
  if ((*(v77 + 48))(v47, 1, v79) == 1)
  {
    sub_24F7695C8(&v89);
    if (*(&v90 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      *(&v87 + 1) = type metadata accessor for SaveAvatarAction(0);
      v88 = sub_24EF99FDC(&qword_27F216378, type metadata accessor for SaveAvatarAction, &unk_24FA18334);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
      sub_24EF99EFC(v45, boxed_opaque_existential_1, type metadata accessor for AvatarData);
      (*(v75 + 56))(boxed_opaque_existential_1, 0, 1, v43);
      sub_24F928A98();
      v49 = v70;
      sub_24F76973C(v70);
      sub_24F9218A8();
      (*(v71 + 8))(v49, v72);
      sub_24EF9A024(v45, type metadata accessor for AvatarData);
      (*(v67 + 8))(v68, v36);
      sub_24EF9A024(v82, type metadata accessor for PlayerAvatar);
      __swift_destroy_boxed_opaque_existential_1(&v86);
      __swift_destroy_boxed_opaque_existential_1(&v89);
    }

    else
    {
      sub_24EF9A024(v45, type metadata accessor for AvatarData);
      (*(v67 + 8))(v68, v36);
      sub_24EF9A024(v82, type metadata accessor for PlayerAvatar);
      sub_24E601704(&v89, &unk_27F212740, &unk_24F940730);
    }
  }

  else
  {
    v54 = v74;
    sub_24EF99F64(v47, v74);
    v55 = v73;
    sub_24EF99EFC(v45, v73, type metadata accessor for AvatarData);
    (*(v75 + 56))(v55, 0, 1, v43);
    sub_24F927178();
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v56 = sub_24F9220D8();
    __swift_project_value_buffer(v56, qword_27F39E8F8);
    v57 = sub_24F9220B8();
    v58 = sub_24F92BD98();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v67;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_24E5DD000, v57, v58, "Updated draft avatar.", v61, 2u);
      MEMORY[0x2530542D0](v61, -1, -1);
    }

    sub_24E601704(v54, &qword_27F22CD60, &unk_24F9CEF00);
    sub_24EF9A024(v45, type metadata accessor for AvatarData);
    (*(v60 + 8))(v68, v69);
    sub_24EF9A024(v82, type metadata accessor for PlayerAvatar);
  }
}

double sub_24EF9978C()
{
  v1 = *(type metadata accessor for AvatarSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EF97EC8(v2);
}

uint64_t objectdestroyTm_44()
{
  v1 = type metadata accessor for AvatarSection(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = (v3 + *(v4 + 32));
    v6 = type metadata accessor for AvatarData(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_24F9289E8();
      v21 = *(*(v8 - 8) + 8);
      v22 = v8;
      v21(v5 + v7);
      v9 = v5 + *(v6 + 28);

      v10 = type metadata accessor for PlayerAvatar(0);
      v11 = *(v10 + 20);
      v12 = type metadata accessor for PlayerAvatar.Overlay(0);
      if (!(*(*(v12 - 8) + 48))(&v9[v11], 1, v12) && !swift_getEnumCaseMultiPayload())
      {
        (v21)(&v9[v11], v22);
      }

      v13 = &v9[*(v10 + 24)];
      if (*(v13 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1(v13);
      }
    }
  }

  v14 = v2 + v1[9];
  v15 = sub_24F9289E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600, &qword_24F9B77C8);

  v17 = v2 + v1[10];
  if (*(v17 + 40))
  {
    if (*(v17 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
  }

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24F921B58();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF99BCC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AvatarSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EF98A60(v4, a1);
}

unint64_t sub_24EF99C3C()
{
  result = qword_27F235650;
  if (!qword_27F235650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235630, &qword_24F9B7860);
    sub_24EF99CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235650);
  }

  return result;
}

unint64_t sub_24EF99CC8()
{
  result = qword_27F235658;
  if (!qword_27F235658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235648, &unk_24F9B78B0);
    sub_24E602068(&qword_27F235660, &qword_27F235668, &unk_24F9B78C0, MEMORY[0x277CDF028]);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235658);
  }

  return result;
}

unint64_t sub_24EF99DAC()
{
  result = qword_27F235670;
  if (!qword_27F235670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235670);
  }

  return result;
}

uint64_t sub_24EF99E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235630, &qword_24F9B7860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF99EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF99F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF99FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF9A024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF9A084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF9A0EC()
{
  v1 = type metadata accessor for AvatarSection(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = (v4 + *(v5 + 32));
    v7 = type metadata accessor for AvatarData(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = sub_24F9289E8();
      v22 = *(*(v9 - 8) + 8);
      v23 = v9;
      v22(v6 + v8);
      v10 = v6 + *(v7 + 28);

      v11 = type metadata accessor for PlayerAvatar(0);
      v12 = *(v11 + 20);
      v13 = type metadata accessor for PlayerAvatar.Overlay(0);
      if (!(*(*(v13 - 8) + 48))(&v10[v12], 1, v13) && !swift_getEnumCaseMultiPayload())
      {
        (v22)(&v10[v12], v23);
      }

      v14 = &v10[*(v11 + 24)];
      if (*(v14 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }
  }

  v15 = v3 + v1[9];
  v16 = sub_24F9289E8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600, &qword_24F9B77C8);

  v18 = v3 + v1[10];
  if (*(v18 + 40))
  {
    if (*(v18 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  else
  {
  }

  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24F921B58();
    (*(*(v20 - 8) + 8))(v3 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF9A4B4(uint64_t a1)
{
  v4 = *(type metadata accessor for AvatarSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EF98108(a1, v6, v7, v1 + v5);
}

uint64_t sub_24EF9A5A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235638, &unk_24F9B7868);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235630, &qword_24F9B7860);
  sub_24EF99C3C();
  sub_24EF99DAC();
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

id sub_24EF9A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v43 = a5;
  v40 = a1;
  v41 = a2;
  v6 = sub_24F91F4A8();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v34 - v9;
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - v11;
  v12 = sub_24F9298A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  swift_getObjectType();
  v20 = qword_27F210CE0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_27F39D170);
  (*(v13 + 16))(v15, v21, v12);
  sub_24F928C58();
  sub_24F928868();
  (*(v17 + 8))(v19, v16);
  if (!v45)
  {
    return 0;
  }

  if (v44 == v40 && v45 == v41)
  {
  }

  else
  {
    v23 = sub_24F92CE08();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  v26 = [v24 defaultManager];
  v27 = v35;
  sub_24EF9B868(v26);

  v28 = v36;
  sub_24F91F3D8();
  v29 = v37;
  sub_24F91F3F8();
  v30 = v39;
  v31 = *(v38 + 8);
  v31(v28, v39);
  v31(v27, v30);
  sub_24F91F458();
  v31(v29, v30);
  v32 = sub_24F92B098();

  v33 = [v25 fileExistsAtPath_];

  return v33;
}

uint64_t sub_24EF9AAE0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v69 = a8;
  v56 = a3;
  v57 = a4;
  v58 = a1;
  v59 = a2;
  v71[5] = *MEMORY[0x277D85DE8];
  v66 = sub_24F9298A8();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  MEMORY[0x28223BE20](v63);
  v55 = v51 - v13;
  v70 = sub_24F91F4A8();
  v14 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v62 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v51 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v51 - v23;
  v25 = [objc_opt_self() defaultManager];
  v67 = a5;
  v68 = a6;
  sub_24EF9B868(v25);
  v26 = sub_24F91F3B8();
  v71[0] = 0;
  LODWORD(a5) = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v71];

  if (!a5)
  {
    v41 = v71[0];
    sub_24F91F278();

    swift_willThrow();
    (*(v14 + 8))(v24, v70);
    goto LABEL_8;
  }

  v27 = v71[0];

  sub_24F91F3D8();
  sub_24F91F3F8();
  v60 = v24;
  v30 = *(v14 + 8);
  v29 = v14 + 8;
  v28 = v30;
  v30(v18, v70);
  sub_24F91F458();
  v31 = sub_24F92B098();

  v54 = v25;
  v32 = [v25 fileExistsAtPath_];

  if (v32)
  {
    v52 = v28;
    v53 = v29;
    v33 = v70;
    v51[1] = a7;
    v34 = sub_24F91F3B8();
    v71[0] = 0;
    v35 = v54;
    v36 = [v54 removeItemAtURL:v34 error:v71];

    if (!v36)
    {
      v49 = v71[0];

      sub_24F91F278();

      swift_willThrow();
      v50 = v52;
      v52(v21, v33);
      v50(v60, v33);
      goto LABEL_8;
    }

    v37 = v71[0];
    v29 = v53;
    v28 = v52;
  }

  sub_24F91F3D8();
  v38 = v62;
  sub_24F91F3F8();
  v39 = v70;
  v28(v18, v70);
  v40 = v61;
  sub_24F91F4F8();
  if (v40)
  {

    v28(v38, v39);
    v28(v21, v39);
    v28(v60, v39);
LABEL_8:
    swift_getObjectType();
    v71[3] = v63;
    v71[4] = sub_24E979394();
    __swift_allocate_boxed_opaque_existential_1(v71);
    v42 = qword_27F210CE0;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = v66;
    v44 = __swift_project_value_buffer(v66, qword_27F39D170);
    (*(v64 + 16))(v65, v44, v43);
    sub_24F928C58();
    sub_24F928828();
    __swift_destroy_boxed_opaque_existential_1(v71);
    return swift_willThrow();
  }

  v52 = v28;
  v53 = v29;
  swift_getObjectType();
  if (qword_27F210CE0 != -1)
  {
    swift_once();
  }

  v46 = v66;
  v47 = __swift_project_value_buffer(v66, qword_27F39D170);
  (*(v64 + 16))(v65, v47, v46);
  sub_24F928C58();
  v71[0] = v56;
  v71[1] = v57;

  sub_24F928878();

  v48 = v52;
  v52(v62, v39);
  v48(v21, v39);
  return (v48)(v60, v39);
}

uint64_t sub_24EF9B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v48 = a2;
  v54[5] = *MEMORY[0x277D85DE8];
  v49 = sub_24F91F4A8();
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - v6;
  MEMORY[0x28223BE20](v7);
  v53 = &v45 - v8;
  MEMORY[0x28223BE20](v9);
  v47 = &v45 - v10;
  v11 = sub_24F9298A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v54[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  v54[4] = sub_24E979394();
  __swift_allocate_boxed_opaque_existential_1(v54);
  v15 = qword_27F210CE0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_27F39D170);
  (*(v12 + 16))(v14, v16, v11);
  sub_24F928C58();
  sub_24F928828();
  __swift_destroy_boxed_opaque_existential_1(v54);
  v17 = [objc_opt_self() defaultManager];
  v18 = v47;
  sub_24EF9B868(v17);
  v19 = v50;
  sub_24F91F3D8();
  sub_24F91F3F8();
  v20 = *(v52 + 8);
  v21 = v19;
  v22 = v49;
  v23 = v52 + 8;
  v20(v21, v49);
  sub_24F91F458();
  v24 = sub_24F92B098();

  v25 = [v17 fileExistsAtPath_];

  if (v25)
  {
    v52 = v23;
    v26 = sub_24F91F3B8();
    v54[0] = 0;
    v27 = [v17 removeItemAtURL:v26 error:v54];

    if (!v27)
    {
      v43 = v54[0];
      sub_24F91F278();

      swift_willThrow();
      v37 = v20;
      v20(v53, v22);
      return v37(v18, v22);
    }

    v28 = v54[0];
  }

  v29 = v50;
  sub_24F91F3D8();
  v30 = v46;
  sub_24F91F3F8();
  v31 = v30;
  v20(v29, v22);
  sub_24F91F458();
  v32 = sub_24F92B098();

  v33 = [v17 fileExistsAtPath_];

  v34 = v18;
  v35 = v53;
  v36 = v17;
  v37 = v20;
  if (!v33)
  {
LABEL_9:

    v37(v31, v22);
    v37(v35, v22);
    return v37(v34, v22);
  }

  v38 = v34;
  v39 = sub_24F91F3B8();
  v54[0] = 0;
  v40 = [v36 removeItemAtURL:v39 error:v54];

  if (v40)
  {
    v41 = v54[0];
    v34 = v38;
    goto LABEL_9;
  }

  v44 = v54[0];
  sub_24F91F278();

  swift_willThrow();
  v37(v31, v22);
  v18 = v38;
  v37(v35, v22);
  return v37(v18, v22);
}

uint64_t sub_24EF9B7E0(__n128 a1)
{
  v1 = sub_24F9298A8();
  __swift_allocate_value_buffer(v1, qword_27F39D170);
  __swift_project_value_buffer(v1, qword_27F39D170);
  return sub_24F929898();
}

void sub_24EF9B868(void *a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0;
  v7 = [a1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:{v21, v4}];
  v8 = v21[0];
  if (v7)
  {
    v9 = v7;
    sub_24F91F428();
    v10 = v8;

    sub_24F91F3D8();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = v21[0];
    v12 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    v20[1] = __swift_project_value_buffer(v13, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v14 = sub_24F91F268();
    v15 = AMSLogableError();

    v16 = sub_24F92B0D8();
    v18 = v17;

    v21[3] = MEMORY[0x277D837D0];
    v21[0] = v16;
    v21[1] = v18;
    sub_24F928438();
    sub_24E857CC8(v21);
    sub_24F92A5A8();

    v19 = [a1 temporaryDirectory];
    sub_24F91F428();
  }
}

uint64_t DiagnosticsReporter.flushRecorder(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  [v8 lock];
  swift_beginAccess();
  v9 = *(a1 + 16);

  [v8 unlock];
  v10 = *(v9 + 16);
  if (v10)
  {
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = *(v11 + 64);
    v39[1] = v9;
    v14 = v9 + ((v13 + 32) & ~v13);
    v40 = *(v11 + 56);
    v41 = v12;
    v12(v7, v14, v3);
    while (1)
    {
      v15 = sub_24F91EB28();
      v16 = qword_27F210798;
      v17 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = sub_24F92B0D8();
      v20 = v19;
      if (v18 == sub_24F92B0D8() && v20 == v21)
      {
        break;
      }

      v23 = sub_24F92CE08();

      if (v23)
      {

LABEL_17:
        v24 = sub_24F91EB48();
        if (!v24)
        {
          goto LABEL_4;
        }

        v25 = v24;
        v42 = 0x726F727265;
        v43 = 0xE500000000000000;
        sub_24F92C7F8();
        if (!*(v25 + 16))
        {
          goto LABEL_3;
        }

        v26 = sub_24E76D934(v44);
        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }

        sub_24E643A9C(*(v25 + 56) + 32 * v26, &v45);
        sub_24E6585F8(v44);

        if (!*(&v46 + 1))
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
        if (swift_dynamicCast())
        {
          v28 = v44[0];
          sub_24EF9C560(v44[0]);
        }

        goto LABEL_6;
      }

      if (qword_27F2107A0 != -1)
      {
        swift_once();
      }

      v29 = sub_24F92B0D8();
      v31 = v30;
      if (v29 == sub_24F92B0D8() && v31 == v32)
      {
      }

      else
      {
        v33 = sub_24F92CE08();

        if ((v33 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v34 = sub_24F91EB48();
      if (!v34)
      {
        goto LABEL_4;
      }

      v35 = v34;
      v42 = 0x746E656469636E69;
      v43 = 0xE900000000000073;
      sub_24F92C7F8();
      if (!*(v35 + 16) || (v36 = sub_24E76D934(v44), (v37 & 1) == 0))
      {
LABEL_3:

        sub_24E6585F8(v44);
LABEL_4:
        v45 = 0u;
        v46 = 0u;
LABEL_5:
        sub_24E601704(&v45, &qword_27F2129B0, &unk_24F945320);
        goto LABEL_6;
      }

      sub_24E643A9C(*(v35 + 56) + 32 * v36, &v45);
      sub_24E6585F8(v44);

      if (!*(&v46 + 1))
      {
        goto LABEL_5;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232678, &qword_24F9AA358);
      if (swift_dynamicCast())
      {
        sub_24EF9CB64(v44[0]);
      }

LABEL_6:
      (*(v11 - 8))(v7, v3);
      v14 += v40;
      if (!--v10)
      {
      }

      v41(v7, v14, v3);
    }

    goto LABEL_17;
  }
}

uint64_t DiagnosticsReporter.__allocating_init(_:onReportError:onReportIncident:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v11 = sub_24EF9D774(a1, a2, a3, a4, a5, v10);
  sub_24E824448(a4, a5);
  sub_24E824448(a2, a3);
  return v11;
}

uint64_t sub_24EF9C110()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D188);
  __swift_project_value_buffer(v4, qword_27F39D188);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t DiagnosticsReporter.init(_:onReportError:onReportIncident:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = sub_24EF9D774(a1, a2, a3, a4, a5, a6);
  sub_24E824448(a4, a5);
  sub_24E824448(a2, a3);
  return v10;
}

uint64_t DiagnosticsReporter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration;
  v3 = sub_24F928BC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_24E824448(*(v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError), *(v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError + 8));
  sub_24E824448(*(v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident), *(v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident + 8));

  return v0;
}

uint64_t DiagnosticsReporter.__deallocating_deinit()
{
  DiagnosticsReporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF9C424(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = sub_24F928BC8();
  v9 = MEMORY[0x28223BE20](v6);
  v10 = *a1;
  if (*(v4 + v10))
  {
    v11 = *(v4 + v10);
  }

  else
  {
    (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration, v9);
    sub_24F928BE8();
    swift_allocObject();
    v11 = sub_24F928B88();
    *(v4 + v10) = v11;
  }

  return v11;
}

double sub_24EF9C560(void *a1)
{
  v2 = v1;
  v4 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F9479A0;
  *(v5 + 32) = @"debug";
  *(v5 + 40) = @"convergence";
  *(v5 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v6 = @"debug";
  v7 = @"convergence";
  v8 = @"internal";
  v9 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v4, v9);

  if (IsAnyOf)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
    if (swift_dynamicCast())
    {
      sub_24E612E28(&v25, v28);
      v12 = v29;
      v13 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      *&v24 = (*(v13 + 16))(v12, v13);
      *(&v24 + 1) = v14;
      v15 = v30;
      v16 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v17 = MEMORY[0x28223BE20](v16);
      (*(v15 + 24))(sub_24EF9DAD4, v17);
      if (qword_27F210CE8 != -1)
      {
        swift_once();
      }

      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39D188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      *(&v26 + 1) = MEMORY[0x277D837D0];
      v25 = v24;

      sub_24F928438();
      sub_24E601704(&v25, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      __swift_destroy_boxed_opaque_existential_1(v28);
      goto LABEL_10;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_24E601704(&v25, &qword_27F2231C8, &unk_24F96D910);
  }

  if (qword_27F210CE8 != -1)
  {
    swift_once();
  }

  v19 = sub_24F92AAE8();
  __swift_project_value_buffer(v19, qword_27F39D188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  swift_getErrorValue();
  v20 = sub_24F92CFE8();
  v29 = MEMORY[0x277D837D0];
  v28[0] = v20;
  v28[1] = v21;
  sub_24F928438();
  sub_24E601704(v28, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

LABEL_10:
  sub_24EF9D084(a1);
  MetricsLogger.log(contentsOf:)(a1);
  v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError);
  if (v22)
  {
    v22(a1);
  }

  return result;
}

double sub_24EF9CB64(uint64_t a1)
{
  v3 = sub_24F9281E8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___validationMetricsLogger, 0x69746164696C6176, 0xEA00000000006E6FLL, v5);
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = v11;
    v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident);
    v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident + 8);
    v26 = *(v10 + 56);
    v27 = "$_validationMetricsLogger";
    v24[1] = v14;
    v25 = (v10 - 8);
    v37 = xmmword_24F93A400;
    v30 = v10;
    v31 = v3;
    v28 = v15;
    v29 = v8;
    v36 = v11;
    do
    {
      v34 = v12;
      v35 = v9;
      v13(v7);
      if (qword_27F210CE8 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      v33 = __swift_project_value_buffer(v16, qword_27F39D188);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v37;
      sub_24F9283A8();
      v41 = v3;
      v17 = __swift_allocate_boxed_opaque_existential_1(&v39);
      v36(v17, v7, v3);
      sub_24F928438();
      sub_24E601704(&v39, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5B8();

      v38 = v29;
      *(swift_allocObject() + 16) = v37;
      v18 = sub_24F9281D8();
      v19 = MEMORY[0x277D837D0];
      v41 = MEMORY[0x277D837D0];
      v39 = v18;
      v40 = v20;
      sub_24F928438();
      sub_24E601704(&v39, &qword_27F2129B0, &unk_24F945320);
      v21 = sub_24F9281C8();
      v41 = v19;
      v39 = v21;
      v40 = v22;
      sub_24F928438();
      sub_24E601704(&v39, &qword_27F2129B0, &unk_24F945320);
      sub_24F928BE8();
      sub_24F92A5A8();

      v13 = v36;
      if (v28)
      {
        v28(v7);
      }

      v3 = v31;
      (*v25)(v7, v31);
      v12 = v34 + v26;
      v9 = v35 - 1;
    }

    while (v35 != 1);
  }

  return result;
}

uint64_t sub_24EF9D084(void *a1)
{
  v2 = sub_24F92A868();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92AC38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  if (swift_dynamicCast())
  {
    v12 = sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsonMetricsLogger, 1852797802, 0xE400000000000000, v11);
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    v18 = a1;
    v13 = a1;
    if (!swift_dynamicCast())
    {

      return sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___diagnosticsMetricsLogger, 0x74736F6E67616964, 0xEB00000000736369, v15);
    }

    v12 = sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsMetricsLogger, 29546, 0xE200000000000000, v14);
    (*(v3 + 8))(v5, v2);
  }

  return v12;
}

uint64_t sub_24EF9D2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x253050C20](10, 0xE100000000000000);
  MEMORY[0x253050C20](a1, a2);
  MEMORY[0x253050C20](8250, 0xE200000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](0, 0xE000000000000000);
}

uint64_t DiagnosticsReporter.flushBootstrapLogger(_:)(__n128 a1)
{
  v2 = sub_24F928BC8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration, v3);
  v6 = sub_24F928BE8();
  swift_allocObject();
  v7 = sub_24F928B88();
  v10[3] = v6;
  v10[4] = MEMORY[0x277D21CE8];
  v10[0] = v7;

  sub_24F928A88();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void DiagnosticsReporter.flushBootstrapEvents(_:asPartOf:)(unint64_t a1, uint64_t a2)
{
  v3 = sub_24F928698();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929158();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = sub_24F92C738();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  sub_24F928FD8();
  sub_24F92A758();
  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = v8;
    v16 = v7;
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x253052270](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      (*(*v13 + 96))();
      if (qword_27F210658 != -1)
      {
        swift_once();
      }

      ++v12;
      v14 = sub_24F929AB8();
      __swift_project_value_buffer(v14, qword_27F22E3B8);
      sub_24F929138();

      (*(v4 + 8))(v6, v3);
    }

    while (v11 != v12);
    (*(v15 + 8))(v10, v16);
  }
}

uint64_t sub_24EF9D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsMetricsLogger) = 0;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsonMetricsLogger) = 0;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___diagnosticsMetricsLogger) = 0;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___validationMetricsLogger) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration;
  v13 = sub_24F928BC8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6 + v12, a1, v13);
  v15 = (v6 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v6 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident);
  *v16 = a4;
  v16[1] = a5;
  v17 = objc_opt_self();
  sub_24E5FCA4C(a2, a3);
  sub_24E5FCA4C(a4, a5);
  v18 = [v17 defaultCenter];
  v19 = qword_27F210798;

  if (v19 != -1)
  {
    swift_once();
  }

  [v18 addObserver:v6 selector:sel_errorDidOccur_ name:qword_27F232668 object:0];

  v20 = qword_27F2107A0;

  if (v20 != -1)
  {
    swift_once();
  }

  [v18 addObserver:v6 selector:sel_incidentsDidOccur_ name:qword_27F232670 object:0];

  (*(v14 + 8))(a1, v13);
  return v6;
}

uint64_t type metadata accessor for DiagnosticsReporter(uint64_t a1)
{
  result = qword_27F2356B0;
  if (!qword_27F2356B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF9D9FC(uint64_t a1, __n128 a2)
{
  result = sub_24F928BC8();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24EF9DAFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x49746361746E6F63;
  *(inited + 40) = 0xEA00000000007344;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 72) = v7;
  v8 = sub_24E61B71C(&qword_27F213798, MEMORY[0x277D22580], MEMORY[0x277D22590]);
  *(inited + 48) = a1;
  *(inited + 80) = v8;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 96) = 0xE900000000000073;
  *(inited + 104) = a2;

  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v10 = sub_24E80FFAC(v9);

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a3[4] = result;
  *a3 = v10;
  return result;
}

uint64_t sub_24EF9DC88(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2356D0, &unk_24F9B7AE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF9E2C0();
  sub_24F92D128();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_24F92CD48();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EF9DE70()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_24EF9DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007344;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EF9DFA0(uint64_t a1)
{
  v2 = sub_24EF9E2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF9DFDC(uint64_t a1)
{
  v2 = sub_24EF9E2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF9E018@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24EF9E09C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_24EF9E09C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2356C0, &unk_24F9B7AD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF9E2C0();
  sub_24F92D108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v9 = 0;
  sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24F92CC68();
  v7 = v10;
  v9 = 1;
  sub_24F92CC68();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EF9E2C0()
{
  result = qword_27F2356C8;
  if (!qword_27F2356C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356C8);
  }

  return result;
}

unint64_t sub_24EF9E328()
{
  result = qword_27F2356D8;
  if (!qword_27F2356D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356D8);
  }

  return result;
}

unint64_t sub_24EF9E380()
{
  result = qword_27F2356E0;
  if (!qword_27F2356E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356E0);
  }

  return result;
}

unint64_t sub_24EF9E3D8()
{
  result = qword_27F2356E8;
  if (!qword_27F2356E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356E8);
  }

  return result;
}

uint64_t LegacyAllStateRule.canMove(from:to:)(_OWORD *a1, _OWORD *a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v6 = *v2 + 32;
    v7 = 1;
    do
    {
      sub_24E615E00(v6, v17);
      if (v7)
      {
        v8 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v10 = a1[1];
        v16[0] = *a1;
        v16[1] = v10;
        v11 = a1[3];
        v16[2] = a1[2];
        v16[3] = v11;
        v12 = a2[1];
        v15[0] = *a2;
        v15[1] = v12;
        v13 = a2[3];
        v15[2] = a2[2];
        v15[3] = v13;
        v7 = (*(v9 + 8))(v16, v15, v8, v9);
      }

      else
      {
        v7 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t LegacyAnyStateRule.canMove(from:to:)(_OWORD *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      sub_24E615E00(v8, v18);
      if (v7)
      {
        v7 = 1;
      }

      else
      {
        v9 = v19;
        v10 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v11 = a1[1];
        v17[0] = *a1;
        v17[1] = v11;
        v12 = a1[3];
        v17[2] = a1[2];
        v17[3] = v12;
        v13 = a2[1];
        v16[0] = *a2;
        v16[1] = v13;
        v14 = a2[3];
        v16[2] = a2[2];
        v16[3] = v14;
        v7 = (*(v10 + 8))(v17, v16, v9, v10);
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_24EF9E624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2356F8, &qword_24F9B7CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9B7C10;
  *(inited + 32) = 0x656C6261797562;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for LegacyBuyableRules;
  *(inited + 80) = &off_286200728;
  *(inited + 88) = 0x676E6974696177;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = &type metadata for LegacyWaitingRules;
  *(inited + 136) = &off_286200718;
  if (qword_27F210C40 != -1)
  {
    swift_once();
  }

  *(inited + 144) = 0x64616F6C6E776F64;
  *(inited + 152) = 0xEB00000000676E69;
  *(inited + 184) = &type metadata for LegacyDownloadingRules;
  *(inited + 192) = &off_286200708;
  *(inited + 200) = 0x646573756170;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 240) = &type metadata for LegacyPausedRules;
  *(inited + 248) = &off_2862006F8;
  *(inited + 256) = 0x696C6C6174736E69;
  *(inited + 264) = 0xEA0000000000676ELL;
  *(inited + 296) = &type metadata for LegacyInstallingRules;
  *(inited + 304) = &off_2862006E8;
  *(inited + 312) = 0x656C6C6174736E69;
  *(inited + 320) = 0xE900000000000064;
  *(inited + 352) = &type metadata for LegacyInstalledRules;
  *(inited + 360) = &off_2862006D8;
  *(inited + 368) = 0x6573616863727570;
  *(inited + 376) = 0xE900000000000064;
  *(inited + 408) = &type metadata for LegacyPurchasedRules;
  *(inited + 416) = &off_2862006C8;
  *(inited + 424) = 0x6C62617461647075;
  *(inited + 432) = 0xE900000000000065;
  *(inited + 464) = &type metadata for LegacyUpdatableRules;
  *(inited + 472) = &off_2862006B8;
  strcpy((inited + 480), "downloadable");
  *(inited + 493) = 0;
  *(inited + 494) = -5120;
  *(inited + 520) = &type metadata for LegacyDownloadableRules;
  *(inited + 528) = &off_2862006A8;
  sub_24E9421D0();

  *(inited + 536) = 0x656C62616E65706FLL;
  *(inited + 544) = 0xE800000000000000;
  *(inited + 576) = &type metadata for LegacyOpenableRules;
  *(inited + 584) = &off_286200698;
  *(inited + 592) = 0x6E776F6E6B6E75;
  *(inited + 600) = 0xE700000000000000;
  *(inited + 632) = &type metadata for LegacyNoneStateRule;
  *(inited + 640) = &protocol witness table for LegacyNoneStateRule;
  v1 = sub_24E60F56C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133D0, &unk_24F9B7D00);
  result = swift_arrayDestroy();
  qword_27F2356F0 = v1;
  return result;
}

double defaultLegacyAppTransitionRules.getter()
{
  if (qword_27F210CF0 != -1)
  {
    swift_once();
  }

  return result;
}

BOOL sub_24EF9E9B4(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 3)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 >> 60;
  if ((v2 >> 60) > 8)
  {
    return 0;
  }

  if (((1 << v3) & 0xB7) != 0)
  {
    return 1;
  }

  if (v3 != 8)
  {
    return 0;
  }

  v5 = *a1;
  v6 = a1[7];
  v7 = a1[2] | a1[1] | a1[3] | a1[4] | a1[5];
  if (!v6 && v2 == 0x8000000000000000 && v5 == 1 && !v7)
  {
    return 1;
  }

  return !v6 && v2 == 0x8000000000000000 && v5 == 4 && !v7;
}

BOOL sub_24EF9EA70(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 4)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 >> 60;
  if ((v2 >> 60) < 6 || v3 == 7)
  {
    return 1;
  }

  if (v3 != 8)
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[7];
  v8 = a1[2] | a1[1] | a1[3] | a1[4] | a1[5];
  if (!v7 && v2 == 0x8000000000000000 && v6 == 1 && !v8)
  {
    return 1;
  }

  return !v7 && v2 == 0x8000000000000000 && v6 == 4 && !v8;
}

BOOL sub_24EF9EB1C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 7)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v18 = *a1;
  *(&v18 + 1) = v4;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v13 = 4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = xmmword_24F966510;
  return (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v18, &v13) & 1) != 0 || (v10 >> 60) < 7 || v10 >> 60 == 8 && !v11 && v10 == 0x8000000000000000 && v5 == 1 && !(v6 | v4 | v7 | v8 | v9);
}

BOOL sub_24EF9ECB4(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4 >> 60 != 8)
  {
    return 0;
  }

  if (v4 != 0x8000000000000000)
  {
    return 0;
  }

  v5 = vorrq_s8(*(a2 + 8), *(a2 + 24));
  if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(a2 + 40) | *(a2 + 56) | *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v25[0] = *a1;
  v25[1] = v6;
  v25[2] = v9;
  v25[3] = v8;
  v25[4] = v10;
  v25[5] = v11;
  v25[6] = v12;
  v25[7] = v13;
  v25[8] = 4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v14 = v12 >> 60;
  v29 = xmmword_24F966510;
  if ((v12 >> 60) > 3)
  {
    if (v14 <= 6)
    {
      v18 = v10;
      v19 = v6;
      v20 = v9;
      v21 = v8;
    }

    else if (v14 == 7)
    {
      v15 = v6;
    }

    else
    {
      v22 = v9 | v6;
      v23 = v10 | v11;
      if (v12 != 0x8000000000000000 || v22 | v7 | v8 | v23 | v13)
      {
        v24 = v22 | v8 | v23;
        if ((v13 || v12 != 0x8000000000000000 || v7 != 1 || v24) && (v13 || v12 != 0x8000000000000000 || v7 != 2 || v24) && (v13 || v12 != 0x8000000000000000 || v7 != 3 || v24))
        {
          sub_24EF9EEA0(v25);
          return 1;
        }
      }
    }

    goto LABEL_15;
  }

  if (v14 > 1)
  {

    goto LABEL_15;
  }

  if (v14)
  {
LABEL_15:
    sub_24EF9EEA0(v25);
    return 0;
  }

  sub_24EF9EEA0(v25);
  return (v7 & 0xFE) == 0;
}

uint64_t sub_24EF9EEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233C80, &qword_24F9AF8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_24EF9EF08(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >> 60)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *(a1 + 6);
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v12 = v4 >> 60;
  if ((v4 >> 60) <= 2)
  {
    if (v12 == 1)
    {
      return (v3 & 1) != 0;
    }

    if (v12 != 2)
    {
      return 0;
    }

LABEL_12:
    *&v19 = *a2;
    *(&v19 + 1) = v5;
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v2;
    v25 = v11;
    *&v17[0] = 2;
    v18 = 0;
    if (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v19, v17))
    {
      return 1;
    }

    goto LABEL_13;
  }

  if ((v12 - 3) < 3)
  {
    return 1;
  }

  if (v12 == 7)
  {
    goto LABEL_12;
  }

  if (v12 != 8)
  {
    return 0;
  }

  v13 = (*(a1 + 1) << 8) | ((*(a1 + 5) | (a1[7] << 16)) << 40) | v3;
  v14 = *(a1 + 2) | *(a1 + 1) | *(a1 + 3) | *(a1 + 4) | *(a1 + 5) | *(a1 + 7);
  if (v4 != 0x8000000000000000 || v14 | v13)
  {
    return v4 == 0x8000000000000000 && !v14 && v13 == 4;
  }

  *&v19 = *a2;
  *(&v19 + 1) = v5;
  v20 = v8;
  v21 = v7;
  v22 = v10;
  v23 = v9;
  v24 = v2;
  v25 = v11;
  v15 = 1;
  *&v17[0] = 1;
  v18 = 0;
  if ((_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v19, v17) & 1) == 0)
  {
LABEL_13:
    *&v19 = v6;
    *(&v19 + 1) = v5;
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v2;
    v25 = v11;
    *&v17[0] = 0;
    v18 = 0;
    return (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v19, v17) & 1) != 0;
  }

  return v15;
}

BOOL sub_24EF9F0AC(uint64_t *a1, int8x16_t *a2)
{
  v4 = a2[3].u64[0];
  if (v4 >> 60 != 8)
  {
    return 0;
  }

  result = 0;
  if (!a2[3].i64[1] && v4 == 0x8000000000000000 && a2->i64[0] == 1)
  {
    v7 = vorrq_s8(a2[1], a2[2]);
    if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | a2->i64[1]))
    {
      v34 = v2;
      v35 = v3;
      v9 = *a1;
      v8 = a1[1];
      v11 = a1[2];
      v10 = a1[3];
      v12 = a1[4];
      v13 = a1[5];
      v15 = a1[6];
      v14 = a1[7];
      v29[0] = v9;
      v29[1] = v8;
      v29[2] = v11;
      v29[3] = v10;
      v29[4] = v12;
      v29[5] = v13;
      v29[6] = v15;
      v29[7] = v14;
      v29[8] = 4;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v16 = v15 >> 60;
      v33 = xmmword_24F966510;
      if ((v15 >> 60) <= 3)
      {
        if (v16 > 1)
        {

          goto LABEL_19;
        }

        if (v16)
        {
          sub_24EF9EEA0(v29);
          return (v9 & 1) != 0;
        }
      }

      else
      {
        if (v16 <= 5)
        {
          v18 = v12;
          v19 = v8;
          v20 = v11;
          v21 = v10;
          goto LABEL_19;
        }

        if (v16 == 6)
        {
          v22 = v12;
          v23 = v8;
          v24 = v11;
          v25 = v10;
        }

        else
        {
          if (v16 == 7)
          {
            v17 = v8;
LABEL_19:
            sub_24EF9EEA0(v29);
            return 1;
          }

          v26 = v11 | v8;
          v27 = v12 | v13;
          if (v15 != 0x8000000000000000 || v26 | v9 | v10 | v27 | v14)
          {
            v28 = v26 | v10 | v27;
            if ((v14 || v15 != 0x8000000000000000 || v9 != 1 || v28) && (v14 || v15 != 0x8000000000000000 || v9 != 2 || v28) && (v14 || v15 != 0x8000000000000000 || v9 != 3 || v28))
            {
              sub_24EF9EEA0(v29);
              return 1;
            }
          }
        }
      }

      sub_24EF9EEA0(v29);
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EF9F2B0(__int128 *a1, char *a2)
{
  v2 = a1[1];
  v32 = *a1;
  v33 = v2;
  v3 = a1[3];
  v34 = a1[2];
  v35 = v3;
  v4 = *(a2 + 6);
  if (v4 >> 60 == 1)
  {
    v5 = *a2;
    v7 = *(a2 + 1);
    v6 = a2 + 1;
    v8 = *(v6 + 55);
    v9 = *(v6 + 2);
    v10 = *(v6 + 39);
    v11 = v6[6];
    v12 = a1[1];
    v22[0] = *a1;
    v22[1] = v12;
    v13 = a1[3];
    v22[2] = a1[2];
    v22[3] = v13;
    v23 = v5;
    v26 = v11;
    v25 = v9;
    v24 = v7;
    v27 = *(v6 + 7);
    v28 = *(v6 + 23);
    v29 = v10;
    v30 = v4;
    v31 = v8;
    v14 = v35 >> 60;
    if (!(v35 >> 60))
    {
      if (v32 >= 2u)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v14 != 1)
    {
      if (v14 != 8 || ((v15 = (*(&v32 + 1) << 8) | ((*(&v32 + 5) | (BYTE7(v32) << 16)) << 40) | v32, v16 = v34.i64[1] | *(&v35 + 1) | v34.i64[0], v35 != 0x8000000000000000) || v16 | *(&v33 + 1) | v33 | *(&v32 + 1) | v15) && (v35 != 0x8000000000000000 || v15 != 4 || v16 | *(&v33 + 1) | v33 | *(&v32 + 1)))
      {
LABEL_16:
        sub_24E8B9478(&v32, v21);
        sub_24EF9EEA0(v22);
        if ((v5 & 1) == 0)
        {
          return 0;
        }

        v17 = v35 >> 60;
        if ((v35 >> 60) > 8)
        {
          return 0;
        }

        if (((1 << v17) & 0xB7) == 0)
        {
          if (v17 != 8)
          {
            return 0;
          }

          v19 = vorrq_s8(v33, v34);
          v20 = *&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(&v32 + 1);
          if ((v35 != 0x8000000000000000 || v32 != 1 || v20) && (v35 != 0x8000000000000000 || v32 != 4 || v20))
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_15:
      sub_24E8B9478(&v32, v21);
      sub_24EF9EEA0(v22);
      return 1;
    }

    if (v32)
    {
      goto LABEL_16;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    sub_24E8B9478(&v32, v21);
    sub_24EF9EEA0(v22);
  }

  return 0;
}

BOOL sub_24EF9F4CC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 2)
  {
    return 0;
  }

  v31 = v2;
  v32 = v3;
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v26[0] = *a1;
  v26[1] = v4;
  v26[2] = v7;
  v26[3] = v6;
  v26[4] = v8;
  v26[5] = v9;
  v26[6] = v10;
  v26[7] = v11;
  v26[8] = 4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v12 = v10 >> 60;
  v30 = xmmword_24F966510;
  if ((v10 >> 60) > 3)
  {
    if (v12 <= 5)
    {
      v15 = v8;
      v16 = v4;
      v17 = v7;
      v18 = v6;
      goto LABEL_25;
    }

    if (v12 == 6)
    {
      v19 = v8;
      v20 = v4;
      v21 = v7;
      v22 = v6;
    }

    else
    {
      if (v12 == 7)
      {
        v13 = v4;
LABEL_25:
        sub_24EF9EEA0(v26);
        return 1;
      }

      v23 = v7 | v4;
      v24 = v8 | v9;
      if (v10 != 0x8000000000000000 || v23 | v5 | v6 | v24 | v11)
      {
        v25 = v23 | v6 | v24;
        if (!v11 && v10 == 0x8000000000000000 && v5 == 1 && !v25)
        {
          goto LABEL_25;
        }

        if ((v11 || v10 != 0x8000000000000000 || v5 != 2 || v25) && (v11 || v10 != 0x8000000000000000 || v5 != 3 || v25))
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_19;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {

      goto LABEL_25;
    }

LABEL_19:
    sub_24EF9EEA0(v26);
    return 0;
  }

  if (v12)
  {
    goto LABEL_25;
  }

  sub_24EF9EEA0(v26);
  return (v5 | 2) == 2;
}

BOOL sub_24EF9F698(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v37 = *a1;
  v38 = v2;
  v3 = a1[3];
  v39 = a1[2];
  v40 = v3;
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  v43 = a2[2];
  v44 = v5;
  if (v5 >> 60 != 6)
  {
    return 0;
  }

  v6 = a1[1];
  v31[0] = *a1;
  v31[1] = v6;
  v7 = a1[3];
  v31[2] = a1[2];
  v31[3] = v7;
  v33 = 0u;
  v34 = 0u;
  v32 = 4;
  v35 = 0;
  v8 = v40 >> 60;
  v36 = xmmword_24F966510;
  if ((v40 >> 60) <= 3)
  {
    if (v8 > 1)
    {
    }

    goto LABEL_11;
  }

  if (v8 <= 5)
  {
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v12 = a1[3];
    v25 = a1[2];
    *(&v26 + 1) = *(&v12 + 1);
    *&v26 = v12 & 0xFFFFFFFFFFFFFFFLL;
    sub_24EF9FBA4(&v23, v20);
    goto LABEL_11;
  }

  if (v8 != 6)
  {
    if (v8 == 7)
    {
      v9 = *(&v37 + 1);
    }

    else
    {
      v17 = v39 | *(&v38 + 1);
      if (v40 != 0x8000000000000000 || *(&v37 + 1) | v37 | *(&v40 + 1) | *(&v39 + 1) | v17 | v38)
      {
        v18 = *(&v39 + 1) | *(&v37 + 1) | v17 | v38;
        if ((v40 != 0x8000000000000000 || v37 != 1 || v18) && (v40 != 0x8000000000000000 || v37 != 2 || v18) && (v40 != 0x8000000000000000 || v37 != 3 || v18))
        {
          v13 = v31;
          goto LABEL_12;
        }
      }
    }

LABEL_11:
    sub_24EF9EEA0(v31);
    v23 = v41;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    sub_24E8B9478(&v37, v20);
    sub_24E8B9478(&v41, v20);
    v13 = &v23;
LABEL_12:
    sub_24EF9EEA0(v13);
    return 1;
  }

  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v15 = a1[3];
  v20[2] = a1[2];
  v22 = *(&v15 + 1);
  v21 = v15 & 0xFFFFFFFFFFFFFFFLL;
  sub_24EF9FBA4(v20, &v23);
  sub_24EF9EEA0(v31);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v16 = *&v41;
  sub_24E8B9478(&v37, v19);
  sub_24E8B9478(&v41, v19);
  sub_24EF9EEA0(&v23);
  return *v20 < v16;
}

BOOL sub_24EF9F91C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v37 = *a1;
  v38 = v2;
  v3 = a1[3];
  v39 = a1[2];
  v40 = v3;
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  v43 = a2[2];
  v44 = v5;
  if (v5 >> 60 != 5)
  {
    return 0;
  }

  v6 = a1[1];
  v31[0] = *a1;
  v31[1] = v6;
  v7 = a1[3];
  v31[2] = a1[2];
  v31[3] = v7;
  v33 = 0u;
  v34 = 0u;
  v32 = 4;
  v35 = 0;
  v8 = v40 >> 60;
  v36 = xmmword_24F966510;
  if ((v40 >> 60) <= 3)
  {
    if (v8 > 1)
    {
    }

    goto LABEL_12;
  }

  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 == 7)
      {
        v9 = *(&v37 + 1);
      }

      else
      {
        v14 = v39 | *(&v38 + 1);
        if (v40 != 0x8000000000000000 || *(&v37 + 1) | v37 | *(&v40 + 1) | *(&v39 + 1) | v14 | v38)
        {
          v15 = *(&v39 + 1) | *(&v37 + 1) | v14 | v38;
          if ((v40 != 0x8000000000000000 || v37 != 1 || v15) && (v40 != 0x8000000000000000 || v37 != 2 || v15) && (v40 != 0x8000000000000000 || v37 != 3 || v15))
          {
            v13 = v31;
            goto LABEL_13;
          }
        }
      }

LABEL_12:
      sub_24EF9EEA0(v31);
      v23 = v41;
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v30 = v40;
      sub_24E8B9478(&v37, v20);
      sub_24E8B9478(&v41, v20);
      v13 = &v23;
LABEL_13:
      sub_24EF9EEA0(v13);
      return 1;
    }

LABEL_11:
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v12 = a1[3];
    v25 = a1[2];
    *(&v26 + 1) = *(&v12 + 1);
    *&v26 = v12 & 0xFFFFFFFFFFFFFFFLL;
    sub_24EF9FBA4(&v23, v20);
    goto LABEL_12;
  }

  if (v8 == 4)
  {
    goto LABEL_11;
  }

  v16 = a1[1];
  v20[0] = *a1;
  v20[1] = v16;
  v17 = a1[3];
  v20[2] = a1[2];
  v22 = *(&v17 + 1);
  v21 = v17 & 0xFFFFFFFFFFFFFFFLL;
  sub_24EF9FBA4(v20, &v23);
  sub_24EF9EEA0(v31);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v18 = *&v41;
  sub_24E8B9478(&v37, v19);
  sub_24E8B9478(&v41, v19);
  sub_24EF9EEA0(&v23);
  return *v20 < v18;
}

uint64_t sub_24EF9FBA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233C88, &qword_24F9AF8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GameCenterReengagementLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t GameCenterReengagementLayout.Metrics.shelfTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));

  return sub_24E612C80(a1, v1 + 32);
}

uint64_t GameCenterReengagementLayout.Metrics.badgeGlyphSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t GameCenterReengagementLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t GameCenterReengagementLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 152));

  return sub_24E612C80(a1, v1 + 152);
}

uint64_t GameCenterReengagementLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t GameCenterReengagementLayout.Metrics.heroContentTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 232));

  return sub_24E612C80(a1, v1 + 232);
}

uint64_t GameCenterReengagementLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 272));

  return sub_24E612C80(a1, v1 + 272);
}

uint64_t GameCenterReengagementLayout.Metrics.footerTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 312));

  return sub_24E612C80(a1, v1 + 312);
}

uint64_t GameCenterReengagementLayout.Metrics.footerBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 352));

  return sub_24E612C80(a1, v1 + 352);
}

uint64_t GameCenterReengagementLayout.Metrics.maxColumnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 392));

  return sub_24E612C80(a1, v1 + 392);
}

uint64_t GameCenterReengagementLayout.Metrics.columnSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 432));

  return sub_24E612C80(a1, v1 + 432);
}

uint64_t GameCenterReengagementLayout.Metrics.maxHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 472));

  return sub_24E612C80(a1, v1 + 472);
}

uint64_t GameCenterReengagementLayout.Metrics.init(layoutMargins:shelfTopSpace:badgeGlyphSpace:badgeTopSpace:titleTopSpace:subtitleTopSpace:heroContentTopSpace:separatorTopSpace:footerTopSpace:footerBottomSpace:maxColumnWidth:columnSpace:maxHeight:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_24E612C80(a1, (a9 + 4));
  sub_24E612C80(a2, (a9 + 9));
  sub_24E612C80(a3, (a9 + 14));
  sub_24E612C80(a4, (a9 + 19));
  sub_24E612C80(a5, (a9 + 24));
  sub_24E612C80(a6, (a9 + 29));
  sub_24E612C80(a7, (a9 + 34));
  sub_24E612C80(a8, (a9 + 39));
  sub_24E612C80(a14, (a9 + 44));
  sub_24E612C80(a15, (a9 + 49));
  sub_24E612C80(a16, (a9 + 54));

  return sub_24E612C80(a17, (a9 + 59));
}

uint64_t GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy(a9, __src, 0x200uLL);
  v17 = *(a2 + 16);
  *(a9 + 512) = *a2;
  *(a9 + 528) = v17;
  *(a9 + 544) = *(a2 + 32);
  sub_24E612C80(a3, a9 + 552);
  sub_24E612C80(a4, a9 + 592);
  sub_24E612C80(a5, a9 + 632);
  sub_24E612C80(a6, a9 + 672);
  v18 = *(a7 + 16);
  *(a9 + 712) = *a7;
  *(a9 + 728) = v18;
  *(a9 + 744) = *(a7 + 32);

  return sub_24E612C80(a8, a9 + 752);
}

double GameCenterReengagementLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 1)
  {
    sub_24F92C1C8();
    sub_24EFA06F8(1, v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_24F922288();
    a2 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_24EFA06F8(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    __swift_project_boxed_opaque_existential_1(v3 + 49, v3[52]);
    sub_24F922388();
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_project_boxed_opaque_existential_1(v3 + 59, v3[62]);
    sub_24F922388();
  }

  return a2;
}

uint64_t sub_24EFA06F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v102 = a1;
  v105 = a2;
  v104 = sub_24F922748();
  v2 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v107 = &v98 - v5;
  MEMORY[0x28223BE20](v6);
  v99 = &v98 - v7;
  v8 = sub_24F922708();
  v138 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F922718();
  v11 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24F9226C8();
  v139 = *(v113 - 8);
  v14 = v139;
  MEMORY[0x28223BE20](v113);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A88, &unk_24F9B8120);
  v126 = *(v2 + 72);
  v111 = v2;
  v17 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F93FC20;
  v110 = v17;
  v101 = v18;
  v108 = v18 + v17;
  v19 = sub_24F922908();
  swift_allocObject();
  v20 = sub_24F9228F8();
  *(&v145 + 1) = v19;
  v146 = MEMORY[0x277D228B0];
  *&v144 = v20;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v112 = *MEMORY[0x277D227D0];
  v136 = *(v14 + 104);
  v127 = v14 + 104;
  v136(v16);
  v21 = *MEMORY[0x277D227E8];
  v134 = *(v11 + 104);
  v135 = v11 + 104;
  v106 = v21;
  v22 = v119;
  v23.n128_f64[0] = v134(v13);
  v140 = MEMORY[0x277D84F90];
  v128 = sub_24EED36B4(v23);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0, &qword_24F9C0E50);
  v132 = sub_24EED370C();
  v121 = v8;
  sub_24F92C6A8();
  v24 = v114;
  v120 = v10;
  sub_24F922738();
  v25 = *(v138 + 8);
  v138 += 8;
  v131 = v25;
  v25(v10, v8);
  v130 = *(v11 + 8);
  v137 = v11 + 8;
  v26 = v13;
  v130(v13, v22);
  v129 = *(v139 + 8);
  v139 += 8;
  v129(v16, v113);
  sub_24E601704(&v141, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  v27 = v24[72];
  v28 = v24[73];
  v29 = __swift_project_boxed_opaque_existential_1(v24 + 69, v27);
  *(&v145 + 1) = v27;
  v146 = *(v28 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v144);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v109 = *MEMORY[0x277D227C8];
  v31 = v16;
  v136(v16);
  v115 = *MEMORY[0x277D227F0];
  v134(v13);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8, &unk_24F9AC240);
  v124 = *(v138 + 64);
  v123 = *(v138 + 72);
  v118 = (v123 + 32) & ~v123;
  v32 = swift_allocObject();
  v122 = xmmword_24F93DE60;
  *(v32 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v140 = v32;
  v33 = v120;
  v34 = v121;
  sub_24F92C6A8();
  v35 = v126;
  v36 = v31;
  sub_24F922738();
  v131(v33, v34);
  v130(v13, v22);
  v117 = v31;
  v37 = v113;
  v129(v31, v113);
  sub_24E601704(&v141, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  v100 = 2 * v35;
  v38 = v24[77];
  v39 = v24[78];
  v40 = __swift_project_boxed_opaque_existential_1(v24 + 74, v38);
  *(&v145 + 1) = v38;
  v146 = *(v39 + 8);
  v41 = __swift_allocate_boxed_opaque_existential_1(&v144);
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  (v136)(v36, v109, v37);
  v42 = v119;
  (v134)(v13, v115, v119);
  v43 = swift_allocObject();
  *(v43 + 16) = v122;
  sub_24F9226F8();
  v140 = v43;
  v44 = v33;
  sub_24F92C6A8();
  v45 = v100;
  v46 = v114;
  v47 = v117;
  v116 = v13;
  sub_24F922738();
  v131(v44, v34);
  v48 = v42;
  v130(v26, v42);
  v49 = v47;
  v50 = v113;
  v129(v47, v113);
  sub_24E601704(&v141, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  v100 = v45 + v126;
  v51 = v46[82];
  v52 = v46[83];
  v53 = __swift_project_boxed_opaque_existential_1(v46 + 79, v51);
  *(&v145 + 1) = v51;
  v146 = *(v52 + 8);
  v54 = __swift_allocate_boxed_opaque_existential_1(&v144);
  v55 = v53;
  v56 = v48;
  (*(*(v51 - 8) + 16))(v54, v55, v51);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  (v136)(v49, v109, v50);
  v57 = v116;
  (v134)(v116, v115, v56);
  v58 = swift_allocObject();
  *(v58 + 16) = v122;
  sub_24F9226F8();
  v140 = v58;
  v59 = v120;
  v60 = v121;
  sub_24F92C6A8();
  sub_24F922738();
  v131(v59, v60);
  v130(v57, v56);
  v61 = v50;
  v129(v49, v50);
  sub_24E601704(&v141, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  if (v102 == 1)
  {
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v62 = v117;
    (v136)(v117, v112, v50);
    v63 = v116;
    (v134)(v116, v106, v56);
    v64 = swift_allocObject();
    *(v64 + 16) = v122;
    sub_24F9226F8();
    *&v141 = v64;
    v65 = v120;
    v66 = v121;
    sub_24F92C6A8();
    v67 = v114;
    v68 = v99;
    sub_24F922738();
    v131(v65, v66);
    v130(v63, v56);
    v129(v62, v50);
    sub_24E601704(&v144, &qword_27F22F780, &qword_24F968620);
    v69 = v101;
    v71 = *(v101 + 2);
    v70 = *(v101 + 3);
    if (v71 >= v70 >> 1)
    {
      v69 = sub_24E6179B0((v70 > 1), v71 + 1, 1, v101);
    }

    v72 = v104;
    v73 = v111;
    *(v69 + 2) = v71 + 1;
    (*(v73 + 32))(&v69[v110 + v71 * v126], v68, v72);
    v74 = v136;
  }

  else
  {
    v72 = v104;
    v69 = v101;
    v74 = v136;
    v67 = v114;
  }

  sub_24E94275C((v67 + 89), &v141);
  v75 = v112;
  if (*(&v142 + 1))
  {
    sub_24E612C80(&v141, &v144);
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v76 = v117;
    v74(v117, v75, v61);
    v77 = v116;
    v78 = v69;
    v79 = v119;
    (v134)(v116, v106, v119);
    v80 = swift_allocObject();
    *(v80 + 16) = v122;
    sub_24F9226F8();
    v140 = v80;
    v81 = v120;
    v82 = v121;
    sub_24F92C6A8();
    sub_24F922738();
    v131(v81, v82);
    v130(v77, v79);
    v129(v76, v61);
    sub_24E601704(&v141, &qword_27F22F780, &qword_24F968620);
    v84 = *(v78 + 2);
    v83 = *(v78 + 3);
    if (v84 >= v83 >> 1)
    {
      v78 = sub_24E6179B0((v83 > 1), v84 + 1, 1, v78);
    }

    __swift_destroy_boxed_opaque_existential_1(&v144);
    *(v78 + 2) = v84 + 1;
    (*(v111 + 32))(&v78[v110 + v84 * v126], v107, v72);
    v75 = v112;
    v74 = v136;
  }

  else
  {
    sub_24E601704(&v141, &qword_27F229780, &unk_24F965BB0);
    v78 = v69;
  }

  sub_24E615E00((v67 + 44), &v144);
  v85 = v117;
  v74(v117, v75, v61);
  v86 = v116;
  v87 = v119;
  (v134)(v116, v115, v119);
  v88 = swift_allocObject();
  *(v88 + 16) = v122;
  sub_24F9226F8();
  *&v141 = v88;
  v89 = v120;
  v90 = v121;
  sub_24F92C6A8();
  v91 = v103;
  sub_24F922738();
  v131(v89, v90);
  v130(v86, v87);
  v129(v85, v61);
  sub_24E601704(&v144, &qword_27F22F780, &qword_24F968620);
  v93 = *(v78 + 2);
  v92 = *(v78 + 3);
  if (v93 >= v92 >> 1)
  {
    v78 = sub_24E6179B0((v92 > 1), v93 + 1, 1, v78);
  }

  *(v78 + 2) = v93 + 1;
  (*(v111 + 32))(&v78[v110 + v93 * v126], v91, v72);
  v94 = sub_24F922758();
  v95 = MEMORY[0x277D22808];
  v96 = v105;
  v105[3] = v94;
  v96[4] = v95;
  v96[5] = MEMORY[0x277D22810];
  __swift_allocate_boxed_opaque_existential_1(v96);
  return sub_24F922728();
}

uint64_t GameCenterReengagementLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, char *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F9221D8();
  v76 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v73 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v68 - v21;
  sub_24F922128();
  v23 = [a1 traitCollection];
  v24 = [v23 horizontalSizeClass];

  v75 = v14;
  v74 = v15;
  if (v24 == 1)
  {
    sub_24F92C1C8();
    sub_24EFA06F8(1, v79);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922AC8();
    v25 = v76;
    (*(v76 + 8))(a2, v18);
    (*(v25 + 32))(a2, v22, v18);
  }

  else
  {
    sub_24EFA06F8(v24, v79);
    v26 = v7[52];
    __swift_project_boxed_opaque_existential_1(v7 + 49, v26);
    v72 = a2;
    sub_24E8ED7D8(v26);
    sub_24F9223A8();
    v71 = v18;
    v27 = *(v15 + 8);
    v27(v17, v14);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922288();
    v29 = v28;
    v81.origin.x = a3;
    v81.origin.y = a4;
    v81.size.width = a5;
    v81.size.height = a6;
    v68[1] = (CGRectGetHeight(v81) - v29) * 0.5;
    v82.origin.x = a3;
    v82.origin.y = a4;
    v82.size.width = a5;
    v82.size.height = a6;
    CGRectGetMidX(v82);
    v70 = a4;
    v69 = a3;
    v30 = v7[57];
    __swift_project_boxed_opaque_existential_1(v7 + 54, v30);
    sub_24E8ED7D8(v30);
    sub_24F9223A8();
    v27(v17, v14);
    v31 = v7[52];
    __swift_project_boxed_opaque_existential_1(v7 + 49, v31);
    sub_24E8ED7D8(v31);
    sub_24F9223A8();
    v27(v17, v14);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922AC8();
    v83.origin.x = a3;
    v83.origin.y = a4;
    v83.size.width = a5;
    v83.size.height = a6;
    MidX = CGRectGetMidX(v83);
    v33 = v7[57];
    __swift_project_boxed_opaque_existential_1(v7 + 54, v33);
    sub_24E8ED7D8(v33);
    v34 = sub_24F9223A8();
    v27(v17, v14);
    v35 = MidX + v34 * 0.5;
    v36 = v7[52];
    __swift_project_boxed_opaque_existential_1(v7 + 49, v36);
    sub_24E8ED7D8(v36);
    v37 = sub_24F9223A8();
    v27(v17, v14);
    __swift_project_boxed_opaque_existential_1(v7 + 84, v7[87]);
    sub_24F922298();
    __swift_project_boxed_opaque_existential_1(v7 + 84, v7[87]);
    v84.origin.y = 0.0;
    v84.origin.x = v35;
    v84.size.width = v37;
    v84.size.height = 380.0;
    CGRectGetMidX(v84);
    v85.origin.x = v69;
    v85.origin.y = v70;
    v85.size.width = a5;
    v85.size.height = a6;
    CGRectGetHeight(v85);
    sub_24F922228();
    sub_24F9221A8();
    sub_24F9221A8();
    v86.origin.y = 0.0;
    v86.origin.x = v35;
    v86.size.width = v37;
    v86.size.height = 380.0;
    CGRectGetMaxX(v86);
    v87.origin.y = 0.0;
    v87.origin.x = v35;
    v87.size.width = v37;
    v87.size.height = 380.0;
    CGRectGetMaxY(v87);
    v38 = v73;
    sub_24F922128();
    v39 = v76;
    v40 = *(v76 + 8);
    v41 = v71;
    v40(v22, v71);
    v42 = v72;
    v40(v72, v41);
    (*(v39 + 32))(v42, v38, v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_24E94275C((v7 + 64), &v77);
  if (!v78)
  {
    return sub_24E601704(&v77, &qword_27F229780, &unk_24F965BB0);
  }

  sub_24E612C80(&v77, v79);
  v43 = [a1 traitCollection];
  v44 = sub_24F92BF88();

  __swift_project_boxed_opaque_existential_1(v79, v80);
  __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
  sub_24F922218();
  v46 = v45;
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922218();
    v48 = v46 - v47;
    v49 = v7[12];
    __swift_project_boxed_opaque_existential_1(v7 + 9, v49);
    sub_24E8ED7D8(v49);
    v50 = sub_24F9223A8();
    (*(v74 + 8))(v17, v75);
    v51 = v48 - v50;
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    sub_24F922218();
    MidY = CGRectGetMidY(v88);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922218();
    v53 = MidY + CGRectGetHeight(v89) * -0.5;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    sub_24F922218();
    v55 = CGRectGetMidY(v90);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922218();
    v56 = v55 + CGRectGetHeight(v91) * -0.5;
    v57 = sub_24F922208();
    *v58 = v46;
    v58[1] = v56;
    v57(&v77, 0);
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922218();
    v60 = v59;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_24F922218();
    v62 = v60 + v61;
    v63 = v7[12];
    __swift_project_boxed_opaque_existential_1(v7 + 9, v63);
    sub_24E8ED7D8(v63);
    v64 = sub_24F9223A8();
    (*(v74 + 8))(v17, v75);
    v51 = v62 + v64;
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    sub_24F922218();
    v53 = v65;
  }

  v66 = sub_24F922208();
  *v67 = v51;
  v67[1] = v53;
  v66(&v77, 0);
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_24EFA2348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 792))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EFA2390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 792) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EFA24B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EFA24F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JSValue __swiftcall SponsoredSearchAdvert.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v37 = v1[8];
  v38 = v1[6];
  v32 = v1[9];
  v34 = v1[7];
  v35 = v1[11];
  v36 = v1[10];
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_24;
  }

  isa = result.super.isa;
  v39 = v4;
  v40 = v3;

  v12 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_24F92C328();
  v39 = v5;
  v40 = v6;

  v13 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_24F92C328();
  v39 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
  v14 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_24F92C328();
  v39 = v7;

  v15 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_24F92C328();
  if (v38)
  {
    v39 = v38;

    v16 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v17 = sub_24F92CDE8();
    sub_24EFA2AA8(&v39);
  }

  else
  {
    v18 = in.super.isa;
    v17 = 0;
  }

  v19 = [v9 valueWithObject:v17 inContext:{in.super.isa, v32}];
  swift_unknownObjectRelease();

  if (!v19)
  {
    goto LABEL_28;
  }

  sub_24F92C328();
  v20 = v37;
  if (v37)
  {
    v39 = v34;
    v40 = v37;
    v21 = in.super.isa;

    v20 = sub_24F92CDE8();
    sub_24EB715C4(&v39);
  }

  else
  {
    v22 = in.super.isa;
  }

  v23 = [v9 valueWithObject:v20 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_29;
  }

  sub_24F92C328();
  v24 = v36;
  if (v36)
  {
    v39 = v33;
    v40 = v36;
    v25 = in.super.isa;

    v24 = sub_24F92CDE8();
    sub_24EB715C4(&v39);
  }

  else
  {
    v26 = in.super.isa;
  }

  v27 = [v9 valueWithObject:v24 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_30;
  }

  sub_24F92C328();
  v28 = v35;
  if (v35)
  {
    v39 = v35;
    v29 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v28 = sub_24F92CDE8();
    sub_24EFA2AA8(&v39);
  }

  else
  {
    v30 = in.super.isa;
  }

  v31 = [v9 valueWithObject:v28 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v31)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24EFA2AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SponsoredSearchAdvert.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F92C318();
  v5 = sub_24F92C2F8();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_24F92C318();
  v9 = sub_24F92C2F8();
  v11 = v10;

  if (!v11)
  {

LABEL_11:
    sub_24F92C318();
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A828();
    swift_willThrow();

    return;
  }

  v33 = v9;
  v12 = sub_24F92C318();
  v13 = [v12 toDictionary];

  if (!v13)
  {

    goto LABEL_11;
  }

  v14 = sub_24F92AE38();

  v15 = sub_24F92C318();
  v16 = [v15 toDictionary];

  if (!v16)
  {

    goto LABEL_11;
  }

  v32 = v14;
  v31 = sub_24F92AE38();

  v17 = sub_24F92C318();
  v18 = [v17 toArray];

  if (v18)
  {
    v19 = sub_24F92B5A8();

    v30 = sub_24E9E2340(v19);
  }

  else
  {
    v30 = 0;
  }

  v20 = sub_24F92C318();
  v34 = sub_24F92C2F8();
  v29 = v21;

  v22 = sub_24F92C318();
  v23 = sub_24F92C2F8();
  v28 = v24;

  v25 = sub_24F92C318();
  v26 = [v25 toArray];

  if (v26)
  {
    v27 = sub_24F92B5A8();

    v26 = sub_24E9E2340(v27);
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v33;
  a2[3] = v11;
  a2[4] = v32;
  a2[5] = v31;
  a2[6] = v30;
  a2[7] = v34;
  a2[8] = v29;
  a2[9] = v23;
  a2[10] = v28;
  a2[11] = v26;
}

__n128 SponsoredSearchAdvert.init(instanceId:adamId:assetInformation:adData:cppIds:serverCppId:selectedCppId:appBinaryTraits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  result = a10;
  v12 = *a3;
  v13 = a3[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  return result;
}

uint64_t SponsoredSearchAdvert.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

double SponsoredSearchAdvert.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t SponsoredSearchAdvert.serverCppId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SponsoredSearchAdvert.selectedCppId.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_24EFA30AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(a1, a2, 0);
    (*(v10 + 8))(v12, v9);
    a1 = v15[0];
    a2 = v15[1];
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  LOBYTE(v15[0]) = 1;
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)(a1, a2, a5 & 1, v15);
}

uint64_t sub_24EFA3240@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v7 = *(type metadata accessor for OverlayControlsView(0) + 20);
  *(a1 + v7) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235700, &qword_24F9B8398) + 36));
  *v9 = sub_24EFA33E8;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235708, &unk_24F9B83A0) + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_24EFA3434;
  v11[3] = v10;
  sub_24E9CC614(v4, v3, v5);

  sub_24E9CC614(v4, v3, v5);
}

uint64_t objectdestroyTm_45()
{
  sub_24E74C370(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EFA34E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFA3564()
{
  result = qword_27F235720;
  if (!qword_27F235720)
  {
    type metadata accessor for OverlayControlsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235720);
  }

  return result;
}

uint64_t sub_24EFA35C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234B00, qword_24F9B4880);
  result = swift_allocObject();
  *(result + 16) = sub_24EFA3610;
  *(result + 24) = 0;
  qword_27F39D1A0 = result;
  return result;
}

void sub_24EFA3610(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
    goto LABEL_14;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
LABEL_6:

LABEL_15:
    v21 = 2.0;
    goto LABEL_16;
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
    goto LABEL_14;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {
LABEL_14:

    goto LABEL_15;
  }

  v22 = sub_24F92CE08();

  if (v22)
  {
    goto LABEL_6;
  }

  v23 = sub_24F92B0D8();
  v25 = v24;
  if (v23 == sub_24F92B0D8() && v25 == v26)
  {
    goto LABEL_20;
  }

  v27 = sub_24F92CE08();

  if (v27)
  {

    v21 = 3.0;
    goto LABEL_16;
  }

  v28 = sub_24F92B0D8();
  v30 = v29;
  if (v28 == sub_24F92B0D8() && v30 == v31)
  {
LABEL_20:

    v21 = 3.0;
  }

  else
  {
    v32 = sub_24F92CE08();

    v21 = 1.0;
    if (v32)
    {
      v21 = 3.0;
    }
  }

LABEL_16:
  *a2 = v21;
}

uint64_t FlowcaseItemLayout.init(metrics:artworkView:captionView:titleText:subtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_24F91F7C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowcaseItemLayout(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EFA3C28(a1, v17 + *(v18 + 40));
  sub_24E615E00(a2, v17);
  sub_24F91F758();
  v19 = sub_24F91F768();
  (*(v12 + 8))(v14, v11);
  if (v19)
  {
    sub_24E615E00(a3, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730, &unk_24F947310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221210, &unk_24F9ACE10);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v27, v32);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_24F9224C8();
      v20 = v30;
      v21 = v31;
      v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v17[8] = v20;
      v17[9] = *(v21 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17 + 5);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
      __swift_destroy_boxed_opaque_existential_1(v29);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_24E90ED10(v27);
      sub_24E615E00(a3, (v17 + 5));
    }

    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_24F9224C8();
    __swift_project_boxed_opaque_existential_1(a5, a5[3]);
    sub_24F9224C8();
    __swift_destroy_boxed_opaque_existential_1(a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_24EFA3CAC(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_24EFA3CAC(a1);
    sub_24E612C80(a3, (v17 + 5));
    sub_24E615E00(a4, (v17 + 10));
    sub_24E615E00(a5, (v17 + 15));
  }

  sub_24EFA4314(v17, v26, type metadata accessor for FlowcaseItemLayout);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return __swift_destroy_boxed_opaque_existential_1(a4);
}

uint64_t sub_24EFA3C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFA3CAC(uint64_t a1)
{
  v2 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FlowcaseItemLayout.Metrics.init(captionSpace:titleSpace:subtitleSpace:textArtworkMargin:artworkAspectRatio:bottomSpace:textLayoutMargins:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v17 = a8 + v16[10];
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  v18 = v16[8];
  v19 = sub_24F922348();
  (*(*(v19 - 8) + 32))(a8 + v18, a5, v19);
  sub_24E612C80(a6, a8 + v16[9]);
  result = *a7;
  v21 = *(a7 + 16);
  *v17 = *a7;
  *(v17 + 16) = v21;
  *(v17 + 32) = *(a7 + 32);
  return result;
}

uint64_t FlowcaseItemLayout.Metrics.captionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t FlowcaseItemLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t FlowcaseItemLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t FlowcaseItemLayout.Metrics.textArtworkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t FlowcaseItemLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 32);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseItemLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 32);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseItemLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 36);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

__n128 FlowcaseItemLayout.Metrics.textLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 40);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 FlowcaseItemLayout.Metrics.textLayoutMargins.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_24EFA4314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FlowcaseItemLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);

  return sub_24EFA3C28(v3, a1);
}

uint64_t FlowcaseItemLayout.metrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);

  return sub_24EFA4434(a1, v3);
}

uint64_t sub_24EFA4434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *FlowcaseItemLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v7 = v6;
  v113 = a1;
  v8 = a3.n128_u64[0];
  v10 = sub_24F9227B8();
  v85 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v86 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_24F9227C8();
  v88 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = v83 - v14;
  v15 = sub_24F9225A8();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_24F9227F8();
  *&v115 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24F922838();
  *&v114 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v89 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F922868();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v109 = v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24F922888();
  v112 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v111 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F92CDB8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00((v6 + 5), v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730, &unk_24F947310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221210, &unk_24F9ACE10);
  v27 = swift_dynamicCast();
  v98 = a2;
  v87 = v10;
  if (v27)
  {
    sub_24E612C80(&v122, &v116);
    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v116);
  }

  else
  {
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    sub_24E90ED10(&v122);
  }

  if (qword_27F210CF8 != -1)
  {
    swift_once();
  }

  *&v116 = qword_27F39D1A0;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(v113, v26);
  v29 = v28;
  v30 = v28;
  (*(v24 + 8))(v26, v23);

  result = __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v29;
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  v33 = sub_24F9221E8();
  __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
  sub_24F922478();
  if (v33)
  {
    v107 = v8;
    __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
    result = sub_24F9224B8();
    if (result == 1)
    {
      __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
      result = sub_24F922478();
    }

    v34 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
      result = sub_24F922468();
      v35 = v34 - result;
      if (!__OFSUB__(v34, result))
      {
        __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
        if (v35 >= 1)
        {
          sub_24F922478();
          __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
        }

        sub_24F922248();
        __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
        sub_24F922278();
        goto LABEL_18;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  sub_24F922248();
  v36 = v6[13];
  v37 = v7[14];
  v38 = __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v130[3] = v36;
  v130[4] = *(v37 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
LABEL_18:
  (*(v20 + 104))(v109, *MEMORY[0x277D22868], v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
  v40 = *(sub_24F922848() - 8);
  v84 = *(v40 + 72);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v83[0] = 2 * v84;
  v42 = swift_allocObject();
  v83[1] = v42;
  *(v42 + 16) = xmmword_24F9479A0;
  v99 = v42 + v41;
  v43 = v7 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);
  v106 = *MEMORY[0x277D22848];
  v44 = v114;
  v45 = *(v114 + 104);
  v104 = v114 + 104;
  v105 = v45;
  v46 = v89;
  v45(v89);
  *&v116 = MEMORY[0x277D84F90];
  v101 = sub_24EFA5B10(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v102 = sub_24E8EF568();
  v48 = v90;
  v47 = v91;
  sub_24F92C6A8();
  v107 = v43;
  sub_24F922818();
  v100 = *(v115 + 8);
  *&v115 = v115 + 8;
  v100(v48, v47);
  v49 = v44 + 8;
  v50 = *(v44 + 8);
  v51 = v110;
  v50(v46, v110);
  *&v114 = v49;
  v105(v46, v106, v51);
  *&v116 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v100(v48, v47);
  v50(v46, v51);
  v52 = v7[18];
  v53 = v7[19];
  v84 = v7;
  v54 = __swift_project_boxed_opaque_existential_1(v7 + 15, v52);
  *(&v117 + 1) = v52;
  *&v118 = *(v53 + 8);
  v55 = __swift_allocate_boxed_opaque_existential_1(&v116);
  (*(*(v52 - 8) + 16))(v55, v54, v52);
  v105(v46, v106, v51);
  v126[0] = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v56 = v107;
  sub_24F922818();
  v100(v48, v47);
  v50(v46, v51);
  __swift_destroy_boxed_opaque_existential_1(&v116);
  *(&v117 + 1) = sub_24F922418();
  *&v118 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v116);
  sub_24F922408();
  v57 = v111;
  sub_24F922878();
  v58 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v59 = (v56 + *(v58 + 40));
  v60 = (v112 + 16);
  v61 = v108;
  if (v59[2])
  {
    v127 = v108;
    v128 = MEMORY[0x277D22878];
    v129 = MEMORY[0x277D22880];
    v62 = __swift_allocate_boxed_opaque_existential_1(v126);
    (*v60)(v62, v57, v61);
  }

  else
  {
    *(&v123 + 1) = v108;
    v124 = MEMORY[0x277D22878];
    v125 = MEMORY[0x277D22880];
    v63 = *v59;
    v114 = v59[1];
    v115 = v63;
    v64 = __swift_allocate_boxed_opaque_existential_1(&v122);
    (*v60)(v64, v57, v61);
    v127 = &type metadata for InsetLayout;
    v128 = sub_24EFA5A20();
    v129 = sub_24EFA5A74();
    sub_24E8EA128(&v122, &v116);
    v120 = v114;
    v119 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770, &qword_24F9B83B0);
    v65 = swift_allocObject();
    v66 = v119;
    v65[3] = v118;
    v65[4] = v66;
    v65[5] = v120;
    v67 = v117;
    v65[1] = v116;
    v65[2] = v67;
    v126[0] = v65;
  }

  v69 = v87;
  v68 = v88;
  v71 = v85;
  v70 = v86;
  sub_24E615E00(v84, &v116);
  v72 = *(v58 + 32);
  v73 = sub_24F922348();
  v74 = *(v73 - 8);
  v75 = v107;
  v76 = v107 + v72;
  v77 = v92;
  (*(v74 + 16))(v92, v76, v73);
  (*(v74 + 56))(v77, 0, 1, v73);
  v78 = v93;
  sub_24F922598();
  sub_24E8F997C(v126, &v116);
  v79 = v95;
  *(&v123 + 1) = v95;
  v124 = MEMORY[0x277D22740];
  v125 = MEMORY[0x277D22748];
  v80 = __swift_allocate_boxed_opaque_existential_1(&v122);
  v81 = v94;
  (*(v94 + 16))(v80, v78, v79);
  (*(v71 + 104))(v70, *MEMORY[0x277D22820], v69);
  sub_24E615E00(v75 + 120, &v121);
  v82 = v96;
  sub_24F9227A8();
  sub_24F922798();
  (*(v68 + 8))(v82, v97);
  (*(v81 + 8))(v78, v79);
  (*(v112 + 8))(v111, v108);
  __swift_destroy_boxed_opaque_existential_1(v126);
  return __swift_destroy_boxed_opaque_existential_1(v130);
}

uint64_t sub_24EFA546C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EFA5B10(&qword_27F2357B8, type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit18FlowcaseItemLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922618();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210CF8 != -1)
  {
    swift_once();
  }

  v33[0] = qword_27F39D1A0;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a2, v16);
  (*(v14 + 8))(v16, v13);

  v17 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v18 = a1 + *(v17 + 40);
  if (*(v18 + 32))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *v18 + *(v18 + 16);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85048];
  *(v20 + 16) = xmmword_24F945E30;
  v34 = v21;
  v35 = MEMORY[0x277D225F8];
  *v33 = v19;
  v22 = sub_24F9229A8();
  v23 = MEMORY[0x277D228E0];
  *(v20 + 56) = v22;
  *(v20 + 64) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1, v33);
  *(v20 + 96) = v22;
  *(v20 + 104) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1, v33);
  v24 = sub_24F922898();
  v25 = MEMORY[0x277D22888];
  *(v20 + 136) = v24;
  *(v20 + 144) = v25;
  __swift_allocate_boxed_opaque_existential_1((v20 + 112));
  sub_24F9228A8();
  sub_24E615E00(a1 + 40, v33);
  *(v20 + 176) = v22;
  *(v20 + 184) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v33);
  *(v20 + 216) = v24;
  *(v20 + 224) = v25;
  __swift_allocate_boxed_opaque_existential_1((v20 + 192));
  sub_24F9228A8();
  sub_24E615E00(a1 + 80, v33);
  *(v20 + 256) = v22;
  *(v20 + 264) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 232));
  sub_24F9229B8();
  sub_24E615E00(a1 + 80, v33);
  *(v20 + 296) = v24;
  *(v20 + 304) = v25;
  __swift_allocate_boxed_opaque_existential_1((v20 + 272));
  sub_24F9228A8();
  sub_24E615E00(a1 + 120, v33);
  *(v20 + 336) = v22;
  *(v20 + 344) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 312));
  sub_24F9229B8();
  sub_24F922308();
  v34 = MEMORY[0x277D85048];
  v35 = MEMORY[0x277D225F8];
  v33[0] = v26;
  *(v20 + 376) = v22;
  *(v20 + 384) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 352));
  sub_24F9229B8();
  sub_24E615E00(a1 + *(v17 + 36), v33);
  *(v20 + 416) = v22;
  *(v20 + 424) = v23;
  __swift_allocate_boxed_opaque_existential_1((v20 + 392));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v28 = v27;
  (*(v31 + 8))(v12, v32);
  return v28;
}

unint64_t sub_24EFA5A20()
{
  result = qword_27F235760;
  if (!qword_27F235760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235760);
  }

  return result;
}

unint64_t sub_24EFA5A74()
{
  result = qword_27F235768;
  if (!qword_27F235768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235768);
  }

  return result;
}

uint64_t sub_24EFA5B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFA5BB0(uint64_t a1)
{
  result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FlowcaseItemLayout.Metrics(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_24EFA5E1C(uint64_t a1)
{
  sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
  if (v1 <= 0x3F)
  {
    sub_24F922348();
    if (v2 <= 0x3F)
    {
      sub_24EFA5ED0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EFA5ED0(uint64_t a1)
{
  if (!qword_27F2357B0)
  {
    type metadata accessor for UIEdgeInsets(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2357B0);
    }
  }
}

uint64_t sub_24EFA5F4C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_24ECDE964(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_24EFB163C(v5, type metadata accessor for GameCenterGameplayHistory, sub_24EFB19C0, sub_24EFB1760);
  *a1 = v2;
  return result;
}

uint64_t sub_24EFA6000(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24EFB163C(v6, type metadata accessor for GameCenterGameplayHistoryRecord, sub_24EFB226C, sub_24EFB1954);
  return sub_24F92C958();
}

GameStoreKit::GameCenter::GameCategoryFilter_optional __swiftcall GameCenter.GameCategoryFilter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static GameCenter.withLocalPlayer(on:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_24EFB3314(v8, a2, a3, v3, v6, v7);
}

uint64_t static GameCenter.fetchGameInfo(for:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);

  return sub_24EFB36F4(a1, a2, v8, v3, v6, v7);
}

uint64_t GameCenter.GameCategoryFilter.rawValue.getter()
{
  v1 = 0x656461637261;
  if (*v0 != 1)
  {
    v1 = 0x64616372616E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_24EFA624C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656461637261;
  if (v2 != 1)
  {
    v4 = 0x64616372616E6F6ELL;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (*a2 != 1)
  {
    v8 = 0x64616372616E6F6ELL;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EFA6348()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EFA63E4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EFA646C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EFA6510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (v2 != 1)
  {
    v5 = 0x64616372616E6F6ELL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EFA6568()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F2357C0 = result;
  return result;
}

uint64_t sub_24EFA67C8()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F2357C8 = result;
  return result;
}

void sub_24EFA6A28()
{
  sub_24E69A5C4(0, &unk_27F2229D0, 0x277D0C138);
  v0 = static GKLocalPlayer.currentAcknowledgedPlayer.getter();
  sub_24F92A9C8();
}

void sub_24EFA6AE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  if (a1)
  {
    v29[1] = a4;
    v30 = a5;
    v32 = a2;
    sub_24F929778();
    v16 = a1;
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v17 = sub_24F929768();
    sub_24F921FE8();

    v18 = [objc_opt_self() proxyForPlayer_];
    v29[0] = [v18 gameServicePrivate];

    v31 = v16;
    v19 = [v16 internal];
    v20 = [v19 playerID];

    if (!v20)
    {
      sub_24F92B0D8();
      v20 = sub_24F92B098();
    }

    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v21 = sub_24F92C3E8();
    v22 = sub_24F92C3E8();
    sub_24E615E00(v30, v34);
    (*(v10 + 16))(v12, v15, v9);
    v23 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_24E612C80(v34, v25 + 16);
    (*(v10 + 32))(v25 + v23, v12, v9);
    *(v25 + v24) = v32;
    aBlock[4] = sub_24EFB56E0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFA5F38;
    aBlock[3] = &block_descriptor_107_0;
    v26 = _Block_copy(aBlock);

    [v29[0] getGamesPlayedSummaries:v20 limit:v21 withinSecs:v22 handler:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_24EEAE088();
    v27 = swift_allocError();
    *v28 = 7;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 4;
    sub_24F92A9A8();
  }
}

void sub_24EFA6EE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_24F92C048();
  sub_24F929778();
  v5 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    sub_24EEAE088();
    v6 = swift_allocError();
    *v7 = a2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 3;
    v8 = a2;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24EFA6FF8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (*a1 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_3;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    sub_24EEAE088();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x253052270](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_6:
    *a4 = v8;
    return;
  }

  __break(1u);
}

void sub_24EFA7110(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24F92C048();
  sub_24F929778();
  v8 = sub_24F929768();
  sub_24F921FE8();

  if (!a2)
  {
    if (a1 >> 62)
    {
      if (sub_24F92C738() >= 1)
      {
        goto LABEL_8;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_8:
      sub_24F92A9C8();
      return;
    }

    sub_24EEAE088();
    v13 = swift_allocError();
    *v14 = a5;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;

    sub_24F92A9A8();
    v12 = v13;
    goto LABEL_3;
  }

  sub_24EEAE088();
  v9 = swift_allocError();
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 3;
  v11 = a2;
  sub_24F92A9A8();
  v12 = v9;
LABEL_3:
}

uint64_t sub_24EFA72BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 296) = a4;
  v7 = sub_24F91F6B8();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  *(v6 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v8 = sub_24F920018();
  *(v6 + 208) = v8;
  *(v6 + 216) = *(v8 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v9 = sub_24F91FE78();
  *(v6 + 240) = v9;
  *(v6 + 248) = *(v9 - 8);
  *(v6 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235870, &qword_24F9B88A8);
  *(v6 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EFA751C, 0, 0);
}

uint64_t sub_24EFA751C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  (*(v2 + 104))(v4, **(&unk_27968E388 + *(v0 + 296)), v1);
  (*(v2 + 32))(v3, v4, v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_24EFA7638;
  v6 = *(v0 + 264);

  return MEMORY[0x282163FF0](0, 0, v6);
}

uint64_t sub_24EFA7638(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  v5 = v4[33];
  if (v1)
  {
    sub_24E601704(v5, &unk_27F235870, &qword_24F9B88A8);
    v6 = sub_24EFA7D38;
  }

  else
  {
    v4[36] = a1;
    sub_24E601704(v5, &unk_27F235870, &qword_24F9B88A8);
    v6 = sub_24EFA77A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EFA77A0()
{
  result = sub_24E6B7D50(*(v0 + 120), *(v0 + 288));
  v45 = v3;
  v46 = v4 >> 1;
  v5 = (v4 >> 1) - v2;
  if (__OFSUB__(v4 >> 1, v2))
  {
    goto LABEL_17;
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v2;
    v51 = MEMORY[0x277D84F90];
    result = sub_24F92C978();
    if (v5 < 0)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = *(v0 + 216);
    v42 = (v8 + 8);
    v40 = (*(v0 + 144) + 8);
    v41 = (v8 + 32);
    v9 = v46;
    if (v7 > v46)
    {
      v9 = v7;
    }

    v43 = *(v0 + 216);
    v44 = v9;
    v10 = &qword_27F235830;
    while (v44 != v7)
    {
      v25 = *(v0 + 224);
      v24 = *(v0 + 232);
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v28 = v10;
      v29 = *(v0 + 184);
      v30 = *(v0 + 192);
      v47 = *(v0 + 176);
      v48 = *(v0 + 168);
      v49 = *(v0 + 160);
      v50 = v7;
      v31 = *(v43 + 16);
      v31(v24, v45 + *(v43 + 72) * v7, v26);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      v31(v25, v24, v26);
      v32 = sub_24F928AD8();
      v33 = *(*(v32 - 8) + 56);
      v33(v27, 1, 1, v32);
      v34 = v30;
      v10 = v28;
      v33(v34, 1, 1, v32);
      v33(v29, 1, 1, v32);
      v33(v47, 1, 1, v32);
      v33(v48, 1, 1, v32);
      v35 = sub_24F929608();
      (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
      type metadata accessor for GameCenterActivityFeedCard(0);
      v36 = swift_allocObject();
      sub_24E60169C(v0 + 16, v0 + 56, v28, &qword_24F93B8C0);
      v37 = *(v0 + 232);
      v38 = *(v0 + 208);
      if (*(v0 + 80))
      {
        sub_24E601704(v0 + 16, v28, &qword_24F93B8C0);
        (*v42)(v37, v38);
        v52 = *(v0 + 56);
        v53 = *(v0 + 72);
        v54 = *(v0 + 88);
      }

      else
      {
        v11 = *(v0 + 152);
        v12 = *(v0 + 136);
        sub_24F91F6A8();
        v13 = sub_24F91F668();
        v15 = v14;
        (*v40)(v11, v12);
        *(v0 + 96) = v13;
        *(v0 + 104) = v15;
        sub_24F92C7F8();
        sub_24E601704(v0 + 16, v10, &qword_24F93B8C0);
        (*v42)(v37, v38);
        sub_24E601704(v0 + 56, v10, &qword_24F93B8C0);
      }

      v16 = *(v0 + 224);
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 160);
      *(v36 + 16) = v52;
      *(v36 + 32) = v53;
      *(v36 + 48) = v54;
      (*v41)(v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data, v16, v17);
      sub_24E6009C8(v18, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E6009C8(v19, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E6009C8(v20, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E6009C8(v21, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E6009C8(v22, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E6009C8(v23, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      ++v7;
      if (v46 == v50 + 1)
      {
        v6 = v51;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  *(v0 + 112) = v6;
  sub_24F92A9C8();
  swift_unknownObjectRelease();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_24EFA7D38()
{
  v1 = *(v0 + 280);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

void sub_24EFA7E70(void *a1)
{
  sub_24EEAE088();
  v2 = swift_allocError();
  *v3 = a1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  v4 = a1;
  sub_24F92A9A8();
}

uint64_t static GameCenter.fetchGameRecord(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2357D8, &unk_24F9B84E0);
  v6 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  sub_24EFB3C9C(v7);

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v15 = sub_24F929638();
  v16 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v14);

  sub_24F929628();
  sub_24E69A5C4(0, &qword_27F21C808, 0x277D0C048);
  sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v14);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v6;
  v10 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  v11 = a1;
  v12 = sub_24F92BEF8();
  v15 = v10;
  v16 = MEMORY[0x277D225C0];
  v14[0] = v12;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v6;
}

void sub_24EFA8100(void *a1, uint64_t a2)
{
  v2 = [objc_opt_self() gameRecordForPlayer:a2 game:*a1];
  sub_24F92A9C8();
}

uint64_t sub_24EFA8174(uint64_t a1)
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = sub_24F92CFE8();
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = v2;
  v5[1] = v3;
  sub_24F928438();
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

void sub_24EFA8330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    *(v7 + 32) = a4;
    *(v7 + 40) = a5;

    sub_24EFB3C9C(v7);

    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v14 = sub_24F929638();
    v15 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v13);

    sub_24F929628();
    sub_24E69A5C4(0, &qword_27F21C808, 0x277D0C048);
    sub_24F92A938();

    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    swift_retain_n();
    v10 = sub_24F92BEF8();
    v14 = v9;
    v15 = MEMORY[0x277D225C0];
    v13[0] = v10;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_24EEAE088();
    v11 = swift_allocError();
    *v12 = 7;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 4;
    sub_24F92A9A8();
  }
}

uint64_t sub_24EFA8568(uint64_t a1)
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = sub_24F92CFE8();
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = v2;
  v5[1] = v3;
  sub_24F928438();
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

void sub_24EFA8724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  if (a1)
  {
    sub_24F929778();
    v43 = a2;
    v42 = a1;
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v41 = a6;
    v17 = v16;
    v18 = sub_24F929768();
    v40 = v16;
    sub_24F921FE8();

    v44 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    v37 = a4;

    v39 = sub_24F92B588();

    v20 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v20, v17, v11);
    sub_24E615E00(v45, v47);
    v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = v12;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = a3;
    v26 = v20;
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v21, v26, v11);
    v28 = (v27 + v22);
    v29 = v37;
    *v28 = v45;
    v28[1] = v29;
    v30 = v42;
    *(v27 + v23) = v43;
    *(v27 + v24) = v30;
    sub_24E612C80(v47, v27 + v25);
    *(v27 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;
    aBlock[4] = sub_24EFB5A3C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFA72A8;
    aBlock[3] = &block_descriptor_116;
    v31 = _Block_copy(aBlock);
    v32 = v30;

    v33 = v39;
    [v44 loadGamesWithBundleIDs:v39 withCompletionHandler:v31];
    _Block_release(v31);

    (*(v38 + 8))(v40, v11);
  }

  else
  {
    sub_24EEAE088();
    v34 = swift_allocError();
    *v35 = 7;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 4;
    sub_24F92A9A8();
  }
}

double sub_24EFA8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v31 = a6;
  v32 = a7;
  v29 = a1;
  v30 = a5;
  v28 = a4;
  v10 = sub_24F922028();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210D08 != -1)
  {
    swift_once();
  }

  v27[1] = qword_27F2357C8;
  (*(v11 + 16))(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  sub_24E615E00(a8, v33);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v14, v13, v10);
  v20 = v28;
  *(v19 + v15) = v29;
  v21 = (v19 + v16);
  v23 = v30;
  v22 = v31;
  *v21 = v20;
  v21[1] = v23;
  *(v19 + v17) = v22;
  v24 = v32;
  *(v19 + v18) = v32;
  sub_24E612C80(v33, v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));

  v25 = v24;
  sub_24F92BF58();

  return result;
}

void sub_24EFA8D20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v48 = a7;
  v50 = a3;
  v51 = a4;
  v49 = sub_24F922028();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v49);
  sub_24F92C048();
  sub_24F929778();
  v13 = sub_24F929768();
  sub_24F921FE8();

  if (a2 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v47 = a5;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x253052270](0, a2);
      goto LABEL_6;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a2 + 32);
LABEL_6:
      v15 = v14;
      sub_24F92C058();
      v16 = sub_24F929768();
      sub_24F921FE8();

      v17 = objc_opt_self();
      v43 = a6;
      v18 = [v17 proxyForPlayer_];
      v46 = [v18 gameStatServicePrivate];

      v45 = [v15 gameDescriptor];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93DE60;
      v20 = [a6 internal];
      *(v19 + 56) = sub_24E69A5C4(0, &qword_27F235850, 0x277D0C1C8);
      *(v19 + 32) = v20;
      v44 = sub_24F92B588();

      sub_24E615E00(v48, v58);
      v21 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v49;
      (*(v11 + 16))(v21, a1, v49);
      v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      sub_24E612C80(v58, v27 + 16);
      (*(v11 + 32))(v27 + v23, v21, v22);
      *(v27 + v24) = v47;
      v28 = v43;
      *(v27 + v25) = v43;
      v29 = (v27 + v26);
      v30 = v51;
      *v29 = v50;
      v29[1] = v30;
      *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v15;
      v56 = sub_24EFB5DE8;
      v57 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_24EFAA074;
      v55 = &block_descriptor_125;
      v31 = _Block_copy(&aBlock);

      v32 = v28;
      v33 = v15;

      v34 = v45;
      v35 = v44;
      [v46 getAchievementsForGameDescriptor:v45 players:v44 handler:v31];
      _Block_release(v31);

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_27F210590 != -1)
  {
LABEL_12:
    swift_once();
  }

  v36 = sub_24F92AAE8();
  __swift_project_value_buffer(v36, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v55 = MEMORY[0x277D837D0];
  v38 = v50;
  v37 = v51;
  aBlock = v50;
  v53 = v51;

  sub_24F928458();
  sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24F93DE60;
  *(v39 + 32) = v38;
  *(v39 + 40) = v37;
  sub_24EEAE088();
  v40 = swift_allocError();
  *v41 = v39;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;

  sub_24F92A9A8();
}

double sub_24EFA933C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v44 = a8;
  v41 = a6;
  v42 = a7;
  v35 = a2;
  v36 = a1;
  v38 = a5;
  v39 = a9;
  v11 = sub_24F922028();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[4];
  v40 = a3[3];
  v43 = v15;
  v37 = __swift_project_boxed_opaque_existential_1(a3, v40);
  (*(v12 + 16))(v14, a4, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v12 + 32))(v22 + v16, v14, v34);
  v23 = v35;
  *(v22 + v17) = v35;
  v24 = v39;
  *(v22 + v18) = v38;
  *(v22 + v19) = v36;
  v26 = v41;
  v25 = v42;
  *(v22 + v20) = v41;
  v27 = (v22 + v21);
  v28 = v44;
  *v27 = v25;
  v27[1] = v28;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v29 = v23;

  v30 = v26;

  v31 = v24;
  sub_24F928C78();

  return result;
}

void sub_24EFA9548(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v92 = a8;
  v94 = a7;
  v93 = a6;
  v97 = a5;
  v96 = a4;
  v95 = a3;
  v9 = sub_24F91FEF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v17 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    if (qword_27F210590 == -1)
    {
LABEL_3:
      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v19 = sub_24F92CFE8();
      *(&v107 + 1) = MEMORY[0x277D837D0];
      *&v106 = v19;
      *(&v106 + 1) = v20;
      sub_24F928458();
      sub_24E601704(&v106, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      sub_24EEAE088();
      v21 = swift_allocError();
      *v22 = a2;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 3;
      v23 = a2;
      sub_24F92A9A8();
      v24 = v21;
LABEL_23:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v89 = v10;
  v25 = v94;
  v90 = v12;
  v86 = v9;
  v91 = v16;
  v87 = v14;
  v88 = v13;
  v26 = [v97 internal];
  v27 = [v26 playerID];

  v28 = sub_24F92B0D8();
  v30 = v29;

  v31 = v96;
  if (!*(v96 + 16))
  {

    v35 = v25;
    goto LABEL_20;
  }

  v32 = sub_24E76D644(v28, v30);
  v34 = v33;

  v35 = v25;
  if ((v34 & 1) == 0)
  {
LABEL_20:
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v48 = sub_24F92AAE8();
    v96 = __swift_project_value_buffer(v48, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v49 = [objc_opt_self() local];
    v50 = [v49 internal];

    v51 = [v50 &selRef_startFetchingMetadataForURL_completionHandler_ + 4];
    v52 = sub_24F92B0D8();
    v54 = v53;

    *(&v107 + 1) = MEMORY[0x277D837D0];
    *&v106 = v52;
    *(&v106 + 1) = v54;
    sub_24F928458();
    sub_24E601704(&v106, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v55 = [v97 internal];
    v56 = [v55 &selRef_startFetchingMetadataForURL_completionHandler_ + 4];

    v57 = sub_24F92B0D8();
    v59 = v58;

    sub_24EEAE088();
    v60 = swift_allocError();
    *v61 = v57;
    *(v61 + 8) = v59;
    *(v61 + 16) = v93;
    *(v61 + 24) = v35;
    *(v61 + 32) = 2;

    sub_24F92A9A8();
    v24 = v60;
    goto LABEL_23;
  }

  v36 = *(*(v31 + 56) + 8 * v32);
  v37 = MEMORY[0x277D84F90];
  if (v36 >> 62)
  {
    v38 = sub_24F92C738();
    *&v106 = v37;
    a2 = sub_24F92C738();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v106 = MEMORY[0x277D84F90];
    a2 = v38;
  }

  v39 = v91;
  v40 = v90;
  v41 = v89;

  v42 = MEMORY[0x277D84F90];
  v97 = v38;
  if (a2)
  {
    v43 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x253052270](v43, v36);
      }

      else
      {
        if (v43 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v44 = *(v36 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [v44 percentComplete];
      if (v47 == 100.0)
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      ++v43;
      if (v46 == a2)
      {
        v62 = v106;
        v39 = v91;
        v38 = v97;
        v40 = v90;
        v42 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_26:
  v63 = v92;
  if (v62 < 0 || (v62 & 0x4000000000000000) != 0)
  {
    v94 = sub_24F92C738();

    if (v38)
    {
      goto LABEL_29;
    }

LABEL_43:

    goto LABEL_44;
  }

  v94 = *(v62 + 16);

  if (!v38)
  {
    goto LABEL_43;
  }

LABEL_29:
  *&v106 = v42;
  sub_24F458CC0(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
    __break(1u);
    return;
  }

  v64 = 0;
  v42 = v106;
  v96 = v36 & 0xC000000000000001;
  v65 = v41;
  v66 = v86;
  v67 = v36;
  do
  {
    if (v96)
    {
      v68 = MEMORY[0x253052270](v64, v36);
    }

    else
    {
      v68 = *(v36 + 8 * v64 + 32);
    }

    v69 = v68;
    v70 = [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];
    sub_24F92BD78();

    *&v106 = v42;
    v71 = v40;
    v73 = *(v42 + 16);
    v72 = *(v42 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_24F458CC0((v72 > 1), v73 + 1, 1);
      v42 = v106;
    }

    v64 = v64 + 1;
    *(v42 + 16) = v73 + 1;
    (*(v65 + 32))(v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v73, v71, v66);
    v40 = v71;
    v36 = v67;
  }

  while (v97 != v64);

  v39 = v91;
  v63 = v92;
  v38 = v97;
LABEL_44:
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v74 = [v63 bundleIdentifier];
  v75 = sub_24F92B0D8();
  v77 = v76;

  type metadata accessor for AchievementSummary();
  v78 = swift_allocObject();
  *(v78 + 80) = 0u;
  *(v78 + 96) = 0u;
  sub_24E60169C(&v106, &v100, &qword_27F235830, &qword_24F93B8C0);
  v79 = v88;
  v80 = v87;
  if (*(&v101 + 1))
  {
    v103 = v100;
    v104 = v101;
    v105 = v102;
  }

  else
  {
    sub_24F91F6A8();
    v81 = sub_24F91F668();
    v83 = v82;
    (*(v80 + 8))(v39, v79);
    v98 = v81;
    v99 = v83;
    sub_24F92C7F8();
    sub_24E601704(&v100, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v106, &qword_27F235830, &qword_24F93B8C0);
  v84 = v104;
  *(v78 + 112) = v103;
  *(v78 + 128) = v84;
  *(v78 + 144) = v105;
  *(v78 + 16) = v75;
  *(v78 + 24) = v77;
  *(v78 + 32) = v94;
  *(v78 + 40) = v38;
  *(v78 + 48) = 0;
  *(v78 + 56) = 0xE000000000000000;
  *(v78 + 64) = v42;
  *(v78 + 72) = 0;
  *&v106 = v78;
  sub_24F92A9C8();
}

void sub_24EFAA074(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219028, &qword_24F94BAE0);
  v5 = sub_24F92AE38();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24EFAA130(unint64_t *a1, int a2, uint64_t a3)
{
  v54 = a3;
  LODWORD(v61) = a2;
  v53 = sub_24F922028();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v50 = v7;
  v8 = sub_24F929768();
  sub_24F921FE8();

  v65 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v51 = v5;
    if (i)
    {
      v5 = 0;
      v59 = v6 & 0xFFFFFFFFFFFFFF8;
      v60 = v6 & 0xC000000000000001;
      v57 = v6;
      v10 = v6 + 32;
      v58 = *MEMORY[0x277D0BF88];
      v6 = 40;
      while (1)
      {
        if (v60)
        {
          v11 = MEMORY[0x253052270](v5, v57);
        }

        else
        {
          if (v5 >= *(v59 + 16))
          {
            goto LABEL_48;
          }

          v11 = *(v10 + 8 * v5);
        }

        v12 = v11;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (!v61)
        {
          break;
        }

        if (v61 == 1)
        {
          if ([v11 isArcade])
          {
            break;
          }
        }

        else if (([v11 isArcade] & 1) == 0)
        {
          break;
        }

LABEL_6:
        if (v5 == i)
        {
          v6 = v65;
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_52;
        }
      }

      v14 = [v12 compatiblePlatforms];
      v15 = sub_24F92BAA8();

      v62[0] = sub_24F92B0D8();
      v62[1] = v16;
      sub_24F92C7F8();
      if (*(v15 + 16) && (v17 = sub_24F92C7B8(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          sub_24E65864C(*(v15 + 48) + 40 * v19, v62);
          v21 = MEMORY[0x253052150](v62, v63);
          sub_24E6585F8(v62);
          if (v21)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_24E6585F8(v63);
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
LABEL_5:

        sub_24E6585F8(v63);
      }

      goto LABEL_6;
    }

    v6 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_27:

    v22 = *(v6 + 16);
    v23 = "er";
    if (!v22)
    {
      goto LABEL_53;
    }

LABEL_29:
    v24 = 0;
    v60 = v6 & 0xC000000000000001;
    v55 = MEMORY[0x277D84F90];
    v56 = *(v23 + 64);
    v58 = v22;
    v59 = v6;
LABEL_30:
    v25 = v24;
    while (1)
    {
      if (v60)
      {
        v26 = MEMORY[0x253052270](v25, v6);
      }

      else
      {
        if (v25 >= *(v6 + 16))
        {
          goto LABEL_50;
        }

        v26 = *(v6 + 8 * v25 + 32);
      }

      v27 = v26;
      v24 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = [v26 adamID];
      if (v28)
      {
        v37 = v28;
        v38 = [v28 stringValue];
        v39 = sub_24F92B0D8();
        v41 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_24E615CF4(0, *(v55 + 2) + 1, 1, v55);
        }

        v5 = *(v55 + 2);
        v42 = *(v55 + 3);
        if (v5 >= v42 >> 1)
        {
          v55 = sub_24E615CF4((v42 > 1), v5 + 1, 1, v55);
        }

        v43 = v55;
        *(v55 + 2) = v5 + 1;
        v44 = &v43[16 * v5];
        *(v44 + 4) = v39;
        *(v44 + 5) = v41;
        if (v24 != v22)
        {
          goto LABEL_30;
        }

        goto LABEL_54;
      }

      v61 = v25 + 1;
      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v29 = sub_24F92AAE8();
      __swift_project_value_buffer(v29, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      v30 = *(sub_24F928468() - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v56;
      v5 = v32 + v31;
      sub_24F9283A8();
      v33 = [v27 bundleID];
      v34 = sub_24F92B0D8();
      v36 = v35;

      v64 = MEMORY[0x277D837D0];
      v63[0] = v34;
      v63[1] = v36;
      sub_24F928438();
      sub_24E601704(v63, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      ++v25;
      v22 = v58;
      v6 = v59;
      if (v61 == v58)
      {
        goto LABEL_54;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
  v22 = sub_24F92C738();
  v23 = "_IdealSizeModifier" + 16;
  if (v22)
  {
    goto LABEL_29;
  }

LABEL_53:
  v55 = MEMORY[0x277D84F90];
LABEL_54:

  sub_24F92C048();
  v45 = sub_24F929768();
  v46 = v51;
  sub_24F921FE8();

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v47 = sub_24F92AAE8();
  __swift_project_value_buffer(v47, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v48 = v55;
  v63[0] = v55;

  sub_24F928438();
  sub_24E601704(v63, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v63[0] = v48;
  sub_24F92A9C8();
  (*(v52 + 8))(v46, v53);
}

uint64_t sub_24EFAA9B4(uint64_t a1)
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = sub_24F92CFE8();
  v5[3] = MEMORY[0x277D837D0];
  v5[0] = v2;
  v5[1] = v3;
  sub_24F928438();
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

uint64_t sub_24EFAAB70()
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  return sub_24F92A9C8();
}

void sub_24EFAACD8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &aBlock[-1] - v11;
  if (a1)
  {
    sub_24F929778();
    v24 = a2;
    v13 = a1;
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v14 = sub_24F929768();
    sub_24F921FE8();

    v15 = [objc_opt_self() proxyForPlayer_];
    v16 = [v15 gameStatServicePrivate];

    sub_24E615E00(a3, v26);
    (*(v7 + 16))(v9, v12, v6);
    v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_24E612C80(v26, v19 + 16);
    (*(v7 + 32))(v19 + v17, v9, v6);
    *(v19 + v18) = v24;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
    aBlock[4] = sub_24EFB4EE0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFACC00;
    aBlock[3] = &block_descriptor_76_2;
    v20 = _Block_copy(aBlock);
    v21 = v13;

    [v16 getReengagementAchievement_];
    _Block_release(v20);

    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_24EEAE088();
    v22 = swift_allocError();
    *v23 = 7;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 4;
    sub_24F92A9A8();
  }
}

double sub_24EFAB030(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v37 = a7;
  v34 = a2;
  v35 = a6;
  v31 = a3;
  v32 = a1;
  v9 = sub_24F922028();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[4];
  v36 = a4[3];
  v38 = v13;
  v33 = __swift_project_boxed_opaque_existential_1(a4, v36);
  (*(v10 + 16))(v12, a5, v9);
  sub_24E615E00(a4, v39);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v14, v12, v30);
  v22 = v31;
  v21 = v32;
  *(v20 + v15) = v31;
  *(v20 + v16) = v35;
  *(v20 + v17) = v21;
  v23 = v34;
  *(v20 + v18) = v34;
  v24 = v37;
  *(v20 + v19) = v37;
  sub_24E612C80(v39, v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v22;
  v26 = v23;
  v27 = v24;

  v28 = v21;
  sub_24F928C78();

  return result;
}

void sub_24EFAB238(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v67 = a7;
  v68 = a6;
  v65 = a5;
  v66 = a4;
  v70 = a3;
  v69 = sub_24F92AAE8();
  v64 = *(v69 - 1);
  MEMORY[0x28223BE20](v69);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24F92C048();
  sub_24F929778();
  v14 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v15 = sub_24F92CFE8();
    v74 = MEMORY[0x277D837D0];
    aBlock = v15;
    v72 = v16;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    sub_24EEAE088();
    v17 = swift_allocError();
    *v18 = a2;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    v19 = a2;
    sub_24F92A9A8();
    v20 = v17;
  }

  else
  {
    v61 = v13;
    v21 = v65;
    v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v67;
    v63 = v11;
    v23 = v64;
    v24 = v68;
    v25 = v66;
    if (v66 && v65)
    {
      v69 = v66;
      v26 = v21;
      v64 = v26;
      sub_24F92C058();
      v27 = sub_24F929768();
      sub_24F921FE8();

      v28 = [objc_opt_self() proxyForPlayer_];
      v66 = [v28 gameStatServicePrivate];

      v65 = [v26 gameDescriptor];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_24F93DE60;
      v30 = [v24 internal];
      *(v29 + 56) = sub_24E69A5C4(0, &qword_27F235850, 0x277D0C1C8);
      *(v29 + 32) = v30;
      v60 = sub_24F92B588();

      sub_24E615E00(v22, v77);
      v31 = v12;
      v32 = v62;
      v33 = a1;
      v34 = v63;
      (*(v12 + 16))(v62, v33, v63);
      v35 = (*(v12 + 80) + 56) & ~*(v12 + 80);
      v36 = (v61 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      sub_24E612C80(v77, v39 + 16);
      (*(v31 + 32))(v39 + v35, v32, v34);
      *(v39 + v36) = v70;
      v40 = v24;
      *(v39 + v37) = v24;
      v41 = v64;
      *(v39 + v38) = v64;
      v42 = v69;
      *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
      v75 = sub_24EFB5280;
      v76 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_24EFAA074;
      v74 = &block_descriptor_85_0;
      v43 = _Block_copy(&aBlock);
      v44 = v42;
      v45 = v41;

      v46 = v40;

      v47 = v65;
      v48 = v60;
      [v66 getAchievementsForGameDescriptor:v65 players:v60 handler:v43];
      _Block_release(v43);

      swift_unknownObjectRelease();
      return;
    }

    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v49 = v69;
    v50 = __swift_project_value_buffer(v69, qword_27F39C410);
    v23[2](v10, v50, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    if (v21)
    {
      v51 = sub_24E69A5C4(0, &qword_27F235840, 0x277D0C060);
      v52 = v21;
    }

    else
    {
      v52 = 0;
      v51 = 0;
      v72 = 0;
      v73 = 0;
    }

    aBlock = v52;
    v74 = v51;
    v53 = v21;
    sub_24F928458();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    if (v25)
    {
      v54 = sub_24E69A5C4(0, &qword_27F235838, 0x277D0BFC0);
      v55 = v25;
    }

    else
    {
      v55 = 0;
      v54 = 0;
      v72 = 0;
      v73 = 0;
    }

    aBlock = v55;
    v74 = v54;
    v56 = v25;
    sub_24F928458();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    (v23[1])(v10, v49);
    sub_24EEAE088();
    v57 = swift_allocError();
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 4;
    sub_24F92A9A8();
    v20 = v57;
  }
}

double sub_24EFABB30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v41 = a8;
  v38 = a6;
  v39 = a7;
  v36 = a5;
  v33 = a2;
  v34 = a1;
  v10 = sub_24F922028();
  v32 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[4];
  v37 = a3[3];
  v40 = v14;
  v35 = __swift_project_boxed_opaque_existential_1(a3, v37);
  (*(v11 + 16))(v13, a4, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v15, v13, v32);
  v22 = v33;
  v23 = v34;
  *(v21 + v16) = v33;
  *(v21 + v17) = v36;
  *(v21 + v18) = v23;
  v25 = v38;
  v24 = v39;
  *(v21 + v19) = v38;
  *(v21 + v20) = v24;
  v26 = v41;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v27 = v22;

  v28 = v25;
  v29 = v24;
  v30 = v26;
  sub_24F928C78();

  return result;
}

void sub_24EFABD2C(char *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v111 = a7;
  v113 = a6;
  v116 = a5;
  v112 = a4;
  v115 = a3;
  v118 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235860, &qword_24F9B8890);
  MEMORY[0x28223BE20](v8);
  v10 = (&v107 - v9);
  v11 = sub_24F91F6B8();
  v110 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91FEF8();
  v119 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v107 - v18;
  sub_24F92C048();
  sub_24F929778();
  v20 = sub_24F929768();
  sub_24F921FE8();

  v118 = a2;
  if (a2)
  {
    if (qword_27F210590 != -1)
    {
LABEL_48:
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v22 = v118;
    swift_getErrorValue();
    v23 = sub_24F92CFE8();
    *(&v129 + 1) = MEMORY[0x277D837D0];
    *&v128 = v23;
    *(&v128 + 1) = v24;
    sub_24F928458();
    sub_24E601704(&v128, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    sub_24EEAE088();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 3;
    v27 = v22;
    sub_24F92A9A8();
    v28 = v25;
    goto LABEL_23;
  }

  v108 = v10;
  v118 = v13;
  v114 = v11;
  v109 = v16;
  v117 = v14;
  v107 = v8;
  v29 = [v116 internal];
  v30 = [v29 playerID];

  v31 = sub_24F92B0D8();
  v33 = v32;

  v34 = v112;
  v35 = v113;
  if (!*(v112 + 16))
  {

    goto LABEL_20;
  }

  v36 = sub_24E76D644(v31, v33);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_20:
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v54 = sub_24F92AAE8();
    __swift_project_value_buffer(v54, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v55 = [objc_opt_self() local];
    v56 = [v55 internal];

    v57 = [v56 playerID];
    v58 = sub_24F92B0D8();
    v60 = v59;

    *(&v129 + 1) = MEMORY[0x277D837D0];
    *&v128 = v58;
    *(&v128 + 1) = v60;
    sub_24F928458();
    sub_24E601704(&v128, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v61 = [v116 &selRef_loadAchievementsForGameWithProfileFetchOptions_players_includeUnreported_includeHidden_profileFetchOptions_withCompletionHandler_];
    v62 = [v61 playerID];

    v63 = sub_24F92B0D8();
    v65 = v64;

    v66 = [v113 bundleIdentifier];
    v67 = sub_24F92B0D8();
    v69 = v68;

    sub_24EEAE088();
    v70 = swift_allocError();
    *v71 = v63;
    *(v71 + 8) = v65;
    *(v71 + 16) = v67;
    *(v71 + 24) = v69;
    *(v71 + 32) = 2;
    sub_24F92A9A8();
    v28 = v70;
LABEL_23:

    return;
  }

  v39 = *(*(v34 + 56) + 8 * v36);
  v40 = MEMORY[0x277D84F90];
  if (v39 >> 62)
  {
    v41 = sub_24F92C738();
    *&v128 = v40;
    v42 = sub_24F92C738();
  }

  else
  {
    v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v128 = MEMORY[0x277D84F90];
    v42 = v41;
  }

  v43 = v111;
  v44 = v114;
  v45 = v118;

  v46 = MEMORY[0x277D84F90];
  v116 = v41;
  if (v42)
  {
    v47 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x253052270](v47, v39);
      }

      else
      {
        if (v47 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v50 = *(v39 + 8 * v47 + 32);
      }

      v51 = v50;
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      [v50 percentComplete];
      if (v53 == 100.0)
      {
        sub_24F92C948();
        sub_24F92C988();
        v44 = v114;
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      ++v47;
      v48 = v52 == v42;
      v49 = v117;
      v45 = v118;
    }

    while (!v48);
    v46 = v128;
    v72 = v113;
    v43 = v111;
    v41 = v116;
    if ((v128 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v49 = v117;
    v72 = v35;
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_27:
      if ((v46 & 0x4000000000000000) == 0)
      {
        v117 = *(v46 + 16);
        goto LABEL_29;
      }
    }
  }

  v117 = sub_24F92C738();
LABEL_29:
  v73 = MEMORY[0x277D84F90];

  if (v41)
  {
    *&v128 = v73;
    sub_24F458CC0(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      __break(1u);
      return;
    }

    v74 = 0;
    v75 = v128;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x253052270](v74, v39);
      }

      else
      {
        v76 = *(v39 + 8 * v74 + 32);
      }

      v77 = v76;
      v78 = [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];
      sub_24F92BD78();

      *&v128 = v75;
      v80 = *(v75 + 16);
      v79 = *(v75 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_24F458CC0((v79 > 1), v80 + 1, 1);
        v75 = v128;
      }

      v74 = v74 + 1;
      *(v75 + 16) = v80 + 1;
      (*(v119 + 32))(v75 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v80, v19, v49);
    }

    while (v116 != v74);

    v72 = v113;
    v43 = v111;
    v44 = v114;
    v45 = v118;
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v81 = [v72 bundleIdentifier];
  v82 = sub_24F92B0D8();
  v84 = v83;

  type metadata accessor for AchievementSummary();
  v85 = swift_allocObject();
  *(v85 + 80) = 0u;
  *(v85 + 96) = 0u;
  sub_24E60169C(&v128, &v122, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v123 + 1))
  {
    v125 = v122;
    v126 = v123;
    v127 = v124;
  }

  else
  {
    sub_24F91F6A8();
    v86 = v43;
    v87 = sub_24F91F668();
    v88 = v45;
    v90 = v89;
    (*(v110 + 8))(v88, v44);
    v120 = v87;
    v121 = v90;
    v43 = v86;
    sub_24F92C7F8();
    sub_24E601704(&v122, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v128, &qword_27F235830, &qword_24F93B8C0);
  v91 = v126;
  *(v85 + 112) = v125;
  *(v85 + 128) = v91;
  *(v85 + 144) = v127;
  *(v85 + 16) = v82;
  *(v85 + 24) = v84;
  v92 = v116;
  *(v85 + 32) = v117;
  *(v85 + 40) = v92;
  *(v85 + 48) = 0;
  *(v85 + 56) = 0xE000000000000000;
  *(v85 + 64) = v75;
  *(v85 + 72) = 0;
  v93 = [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];
  sub_24F92BD78();

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v118 = sub_24F92AAE8();
  v117 = __swift_project_value_buffer(v118, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v94 = v113;
  v95 = [v113 adamID];
  *(&v129 + 1) = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  *&v128 = v95;
  sub_24F928458();
  sub_24E601704(&v128, &qword_27F2129B0, &unk_24F945320);
  *(&v129 + 1) = v49;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v128);
  v97 = v119;
  v116 = *(v119 + 16);
  v98 = v109;
  (v116)(boxed_opaque_existential_1, v109, v49);
  sub_24F928458();
  sub_24E601704(&v128, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v99 = [v94 adamID];
  v100 = [v99 stringValue];

  v101 = sub_24F92B0D8();
  v103 = v102;

  v104 = *(v107 + 48);
  v105 = *(v107 + 64);
  v106 = v108;
  *v108 = v101;
  *(v106 + 8) = v103;
  (v116)(v106 + v104, v98, v49);
  *(v106 + v105) = v85;
  sub_24F92A9C8();
  sub_24E601704(v106, &unk_27F235860, &qword_24F9B8890);
  (*(v97 + 8))(v98, v49);
}

void sub_24EFACC00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t static GameCenter.sendFriendInvitationViaPush(_:bag:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v5;
  *(v2 + 145) = *(a1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357F0, &qword_24F9B8500);
  *v6 = v2;
  v6[1] = sub_24EFACE14;

  return MEMORY[0x2822007B8](v2 + 16, 0, 0, 0xD000000000000023, 0x800000024FA65FB0, sub_24EFB3874, 0, v7);
}

uint64_t sub_24EFACE14()
{

  return MEMORY[0x2822009F8](sub_24EFACF10, 0, 0);
}

uint64_t sub_24EFACF10()
{
  v1 = *(v0 + 16);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 145);
    v3 = v1;
    v4 = swift_task_alloc();
    v5 = v4;
    *(v0 + 104) = v4;
    *(v4 + 16) = v3;
    if (v2)
    {
      v6 = *(v0 + 72);
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = v6;
      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_24EFAD320;
      v8 = MEMORY[0x277D84F78];
      v9 = sub_24EFB3FFC;
    }

    else
    {
      *(v4 + 24) = *(v0 + 56);
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      v7 = swift_task_alloc();
      *(v0 + 112) = v7;
      *v7 = v0;
      v7[1] = sub_24EFAD1FC;
      v8 = MEMORY[0x277D84F78];
      v9 = sub_24EFB6710;
    }

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000044, 0x800000024FA66020, v9, v5, v8 + 8);
  }

  else
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24EFAD1FC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_24EFAD5D8;
  }

  else
  {

    v3 = sub_24EFAD444;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EFAD320()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_24EFAD7F8;
  }

  else
  {

    v3 = sub_24EFAD658;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EFAD444()
{
  if (qword_27F210BB8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 145))
  {
    sub_24EFB42A4(*(v0 + 56), *(v0 + 64));
    if (!v4)
    {
LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = *(v0 + 96);
  sub_24E69A5C4(0, &unk_27F2229D0, 0x277D0C138);
  sub_24F92BD88();

LABEL_9:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24EFAD5D8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EFAD658()
{
  _s12GameStoreKit0A6CenterC20addContactToDenyList_3forySS_So13GKLocalPlayerCtFZ_0(*(v0 + 56), *(v0 + 64), *(v0 + 96));
  if (qword_27F210BB8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 145))
  {
    sub_24EFB42A4(*(v0 + 56), *(v0 + 64));
    if (!v4)
    {
LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = *(v0 + 96);
  sub_24E69A5C4(0, &unk_27F2229D0, 0x277D0C138);
  sub_24F92BD88();

LABEL_9:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24EFAD7F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EFAD878(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A8, &qword_24F9B88B0);
  return sub_24F92B798();
}

void sub_24EFAD8CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a6;
  v22[1] = a3;
  v22[2] = a5;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C058();
  sub_24F929778();
  v15 = sub_24F929768();
  sub_24F922018();
  sub_24F921FE8();

  (*(v12 + 8))(v14, v11);
  v16 = [objc_opt_self() proxyForPlayer_];
  v17 = [v16 friendServicePrivate];

  if (a4)
  {
    a4 = sub_24F92B098();
  }

  if (v24)
  {
    v18 = sub_24F92B098();
  }

  else
  {
    v18 = 0;
  }

  (*(v8 + 16))(v10, v25, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v7);
  aBlock[4] = sub_24EFB62C8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_146;
  v21 = _Block_copy(aBlock);

  [v17 sendFriendInvitationWithPlayerID:a4 contactAssociationID:v18 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_24EFADBF8(void *a1)
{
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F922028();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v7 = sub_24F929768();
  sub_24F922018();
  sub_24F921FE8();

  (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v8 = a1;
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v9 = sub_24F92AAE8();
    __swift_project_value_buffer(v9, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    swift_getErrorValue();
    v10 = v14;
    v11 = v15;
    v16[3] = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
    sub_24F9283D8();
    sub_24E601704(v16, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v16[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
    return sub_24F92B788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
    return sub_24F92B798();
  }
}

void sub_24EFADF74(uint64_t a1)
{
  sub_24F92C048();
  sub_24F929778();
  v2 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v5[3] = &type metadata for GameCenter.GameCenterError;
    v4 = swift_allocObject();
    v5[0] = v4;
    *(v4 + 16) = 7;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 4;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();
  }
}

id GameCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GameCenter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GameCenter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t GKPlayer.avatarArtwork()()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v23 - v8;
  v10 = [v1 hasPhoto];
  result = 0;
  if (v10)
  {
    v12 = [objc_opt_self() sizeForPhotoSize_];
    v13 = [v1 photoURLForSize_];
    v14 = sub_24F92B0D8();
    v16 = v15;

    v17 = sub_24F929608();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    type metadata accessor for Artwork(0);
    v18 = swift_allocObject();
    *(v18 + 152) = 0u;
    *(v18 + 168) = 0u;
    *(v18 + 184) = 0;
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v3 + 8))(v5, v2);
    v23 = v19;
    v24 = v21;
    sub_24F92C7F8();
    sub_24E60169C(v9, v18 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    *(v18 + 32) = v12;
    *(v18 + 40) = v12;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 72) = 25186;
    *(v18 + 80) = 0xE200000000000000;
    *(v18 + 64) = 0;
    *(v18 + 104) = MEMORY[0x277D84F90];
    v23 = 25186;
    v24 = 0xE200000000000000;
    v22 = Artwork.Crop.preferredContentMode.getter();
    sub_24E601704(v9, &qword_27F213E68, &unk_24F93BC80);
    result = v18;
    *(v18 + 88) = v22;
    *(v18 + 96) = 3;
  }

  return result;
}

uint64_t sub_24EFAE514()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DA8();
  v8 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F2357D0 = result;
  return result;
}

double sub_24EFAE774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F927D88();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F927DC8();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210D18 != -1)
  {
    swift_once();
  }

  v20[1] = qword_27F2357D0;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(a5, v25);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  sub_24E612C80(v25, (v16 + 6));
  aBlock[4] = sub_24EFB55A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_98;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_24F927DA8();
  v23 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);

  return result;
}

double sub_24EFAEAD4(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, char *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + 24);
    if (v11)
    {
      if (v11 == 1)
      {
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      else if (a2)
      {
        sub_24E69A5C4(0, &unk_27F2229D0, 0x277D0C138);
        sub_24EFB55B0(v11);
        v12 = a2;
        v13 = sub_24F92C408();
        sub_24EFB4814(v11);

        if (v13)
        {
          goto LABEL_9;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235880, &qword_24F99A9A8);
    *(v10 + 16) = sub_24F92A9E8();

    Strong = sub_24EFAED40(a2, a5);
LABEL_9:
    a3(Strong);
  }

  return result;
}

uint64_t sub_24EFAEBFC()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  MEMORY[0x253052A00](v1);
  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t sub_24EFAEC78(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24F92B218();
  MEMORY[0x253052A00](v2);
  return sub_24F92D088();
}

uint64_t sub_24EFAECC4()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  MEMORY[0x253052A00](v1);
  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t sub_24EFAED40(void *a1, char *a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_24F922028();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v11 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    v12 = *(v3 + 24);
    *(v3 + 24) = a1;
    v13 = a1;
    sub_24EFB4814(v12);
    v14 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *(v3 + 16);

    v34 = sub_24EFB0FA8(v35);
    v30 = *(v6 + 16);
    v30(v14, v10, v5);
    v16 = *(v6 + 80);
    v31 = v3;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v15;
    v32 = v17;
    v33 = v6;
    v18 = *(v6 + 32);
    v18(v17 + ((v16 + 32) & ~v16), v14, v5);
    v35 = v10;
    v30(v14, v10, v5);
    v19 = v5;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v18(v20 + ((v16 + 24) & ~v16), v14, v5);
    v21 = qword_27F210D18;
    swift_retain_n();

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_27F2357D0;
    v36[3] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v36[4] = MEMORY[0x277D225C0];
    v36[0] = v22;
    v23 = v22;
    sub_24F92A958();

    (*(v33 + 8))(v35, v19);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v25 = *(v3 + 24);
    *(v3 + 24) = 1;
    sub_24EFB4814(v25);

    v26 = MEMORY[0x277D84F90];
    v27 = sub_24E60F6A0(MEMORY[0x277D84F90]);
    v36[0] = v26;
    v36[1] = v27;
    sub_24F92A9C8();

    sub_24F92C048();
    v28 = sub_24F929768();
    sub_24F921FE8();

    return (*(v6 + 8))(v10, v5);
  }
}

void sub_24EFAF130(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86[2] = a4;
  v86[1] = a3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v86 - v13;
  v15 = *a1;
  v112 = MEMORY[0x277D84F98];
  v111 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    v59 = v15;
    v16 = sub_24F92C738();
    v15 = v59;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_40:
    v57 = MEMORY[0x277D84F98];
    v58 = MEMORY[0x277D84F98];
LABEL_41:
    v60 = *(v57 + 16);
    v107 = v57;
    if (v60)
    {
      v61 = sub_24EAE6B44(v60, 0);
      v62 = sub_24EAE8DF0(v109, (v61 + 4), v60, v57);
      v63 = v109[0];

      sub_24E6586B4(v63);
      if (v62 == v60)
      {
LABEL_45:
        v64 = v107;
        v108 = v61[2];
        v99 = v58;
        if (!v108)
        {
LABEL_62:

          sub_24EFA5F4C(&v111);
          v66 = v111;
          if (v111 >> 62)
          {
            goto LABEL_78;
          }

          v80 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v80)
          {
            goto LABEL_64;
          }

LABEL_79:
          v109[0] = v66;
          v109[1] = v99;

          sub_24F92A9C8();

          sub_24F92C048();
          sub_24F929778();
          v85 = sub_24F929768();
          sub_24F921FE8();

          return;
        }

        v65 = 0;
        v5 = 0;
        v66 = (v61 + 7);
        while (1)
        {
          if (v65 >= v61[2])
          {
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            v80 = sub_24F92C738();
            if (!v80)
            {
              goto LABEL_79;
            }

LABEL_64:
            v81 = 0;
            v105 = v66 & 0xFFFFFFFFFFFFFF8;
            v106 = v66 & 0xC000000000000001;
            *&v103 = "astPlayedDate was nil.";
            v102 = xmmword_24F93FC20;
            v100 = v80;
            v101 = 0xD00000000000001ELL;
            v104 = v66;
            while (1)
            {
              if (v106)
              {
                v82 = MEMORY[0x253052270](v81, v66);
                v83 = (v81 + 1);
                if (__OFADD__(v81, 1))
                {
                  goto LABEL_76;
                }
              }

              else
              {
                if (v81 >= *(v105 + 16))
                {
                  goto LABEL_77;
                }

                v82 = *(v66 + 8 * v81 + 32);

                v83 = (v81 + 1);
                if (__OFADD__(v81, 1))
                {
                  goto LABEL_76;
                }
              }

              if (qword_27F210590 != -1)
              {
                swift_once();
              }

              v84 = sub_24F92AAE8();
              v108 = __swift_project_value_buffer(v84, qword_27F39C410);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
              sub_24F928468();
              *(swift_allocObject() + 16) = v102;
              sub_24F9283A8();
              v110 = MEMORY[0x277D83B88];
              v109[0] = v83;
              sub_24F928438();
              sub_24E601704(v109, &qword_27F2129B0, &unk_24F945320);
              sub_24F9283A8();
              v110 = type metadata accessor for GameCenterGameplayHistory();
              v109[0] = v82;

              sub_24F928458();
              sub_24E601704(v109, &qword_27F2129B0, &unk_24F945320);
              sub_24F92A588();

              ++v81;
              v66 = v104;
              if (v83 == v100)
              {
                goto LABEL_79;
              }
            }
          }

          if (*(v64 + 16))
          {
            v68 = *(v66 - 24);
            v67 = *(v66 - 16);
            v69 = *(v66 - 8);
            v70 = *v66;

            v71 = sub_24E76E530(v68, v67, v69, v70);
            if (v72)
            {
              v73 = *(*(v64 + 56) + 8 * v71);
              if (!(v73 >> 62))
              {
                v74 = (v73 & 0xFFFFFFFFFFFFFF8);

                goto LABEL_54;
              }

              v78 = sub_24F92C738();
              if (v78)
              {
                v106 = v78;
                v74 = sub_24EAEACA0(v78, 0);
                swift_bridgeObjectRetain_n();
                sub_24EA11104((v74 + 4), v106, v73);
                v105 = v79;

                if (v105 != v106)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v74 = MEMORY[0x277D84F90];
LABEL_54:
              }

              v109[0] = v74;
              sub_24EFA6000(v109);

              v75 = v109[0];
              type metadata accessor for GameCenterGameplayHistory();
              v76 = swift_allocObject();
              *(v76 + 16) = v68;
              *(v76 + 24) = v67;
              *(v76 + 32) = v69;
              *(v76 + 40) = v70;
              *(v76 + 48) = v75;

              MEMORY[0x253050F00](v77);
              if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();

              v64 = v107;
              goto LABEL_48;
            }
          }

LABEL_48:
          ++v65;
          v66 += 32;
          if (v108 == v65)
          {
            goto LABEL_62;
          }
        }
      }

      __break(1u);
    }

    v61 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_40;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v105 = v6 + 56;
    v106 = v15 & 0xC000000000000001;
    v104 = (v6 + 48);
    v101 = (v6 + 16);
    *&v102 = "GameCenterCache.cacheQueue";
    v100 = (v6 + 8);
    v89 = "astPlayedGame was nil.";
    v90 = "gamesRecentlyPlayedByFriends #";
    v99 = MEMORY[0x277D84F98];
    v103 = xmmword_24F93DE60;
    v88 = xmmword_24F941C80;
    v94 = v11;
    v108 = v15;
    v91 = v8;
    v107 = v16;
    v87 = v5;
    while (1)
    {
      if (v106)
      {
        v19 = MEMORY[0x253052270](v17);
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v20 lastPlayedDate];
      if (v21)
      {
        v22 = v21;
        sub_24F91F608();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      (*v105)(v11, v23, 1, v5);
      sub_24E6009C8(v11, v14, &unk_27F22EC30, &qword_24F939880);
      if ((*v104)(v14, 1, v5))
      {

        sub_24E601704(v14, &unk_27F22EC30, &qword_24F939880);
        if (qword_27F210590 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        (*v101)(v8, v14, v5);
        sub_24E601704(v14, &unk_27F22EC30, &qword_24F939880);
        sub_24F91F5E8();
        v25 = v24;
        (*v100)(v8, v5);
        v26 = [v20 lastPlayedGame];

        if (v26)
        {
          v27 = [v26 adamID];
          sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
          v28 = sub_24F92C3E8();
          v29 = sub_24F92C408();

          if (v29)
          {
            if (qword_27F210590 != -1)
            {
              swift_once();
            }

            v30 = sub_24F92AAE8();
            __swift_project_value_buffer(v30, qword_27F39C410);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
            sub_24F928468();
            *(swift_allocObject() + 16) = v103;
            sub_24F9283A8();
            sub_24F92A5A8();

            v8 = v91;
            v11 = v94;
            goto LABEL_7;
          }

          v97 = sub_24EFB4AB4(v26);
          v96 = [v26 isArcadeGame];
          v31 = v27;
          v32 = [v31 stringValue];
          v95 = sub_24F92B0D8();
          v98 = v33;
          v93 = v31;

          type metadata accessor for GameCenterPlayer(0);
          v34 = v20;
          v35 = sub_24EEEDACC(v34);
          v92 = v34;

          v36 = v99;
          if (!v99[2] || (sub_24E76D644(*(v35 + 16), *(v35 + 24)), (v37 & 1) == 0))
          {
            v39 = *(v35 + 16);
            v38 = *(v35 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v109[0] = v36;
            sub_24E8218D8(v35, v39, v38, isUniquelyReferenced_nonNull_native);

            v99 = v109[0];
          }

          v41 = *(v35 + 16);
          v42 = *(v35 + 24);
          type metadata accessor for GameCenterGameplayHistoryRecord();
          v43 = swift_allocObject();
          v43[2] = v41;
          v43[3] = v42;
          v43[4] = v25;
          v44 = v112;
          v45 = v112[2];

          if (v45)
          {
            v46 = v95;
            v47 = v98;
            v48 = v97;
            v49 = v96;
            sub_24E76E530(v95, v98, v97, v96);
            if (v50)
            {
              v51 = sub_24F4D6554(v109, v46, v47, v48, v49);
              if (!*v52)
              {
                (v51)(v109, 0);

                v11 = v94;
                v8 = v91;
                v5 = v87;
                goto LABEL_7;
              }

              v53 = v52;
              v97 = v51;

              MEMORY[0x253050F00](v54);
              v8 = v91;
              v5 = v87;
              if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();
              v97(v109, 0);

              goto LABEL_34;
            }

            v44 = v112;
            v8 = v91;
            v5 = v87;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
          v55 = swift_allocObject();
          *(v55 + 16) = v88;
          *(v55 + 32) = v43;

          v56 = swift_isUniquelyReferenced_nonNull_native();
          v109[0] = v44;
          sub_24E821764(v55, v95, v98, v97, v96, v56);

          v112 = v109[0];
LABEL_34:
          v11 = v94;
          goto LABEL_7;
        }

        if (qword_27F210590 != -1)
        {
LABEL_36:
          swift_once();
        }
      }

      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v103;
      sub_24F9283A8();
      sub_24F92A5A8();

LABEL_7:
      ++v17;
      v15 = v108;
      if (v107 == v17)
      {
        v57 = v112;
        v58 = v99;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);

  __break(1u);
}