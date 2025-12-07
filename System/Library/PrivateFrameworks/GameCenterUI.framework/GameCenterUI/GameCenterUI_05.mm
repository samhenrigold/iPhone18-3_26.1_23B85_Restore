void (*sub_24DFDE9F8(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24DFE23C0;
}

void (*sub_24DFDEAA0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24DFE239C;
}

char *sub_24DFDEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v51 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v47);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v21 = result;
  v45 = v6;
  v46 = a1;
  v22 = *&result[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource];
  if (v22)
  {
    v23 = v22;
    v24 = v50;
    v25 = sub_24E3434D8();
    sub_24DFB8854(v25, v15);

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v44 = v17;
      (*(v17 + 32))(v19, v15, v16);

      sub_24E3448C8();

      v27 = v47;
      v28 = *(v47 + 48);
      sub_24E3448A8();
      v29 = sub_24E3434D8();
      sub_24DFBCDC8(v9, &v9[v28], v29);

      v30 = *&v21[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_components];
      v31 = v45;
      v32 = sub_24DF8BD90(v9, v45, &unk_27F1E1CA0, &unk_24E36C0D0);
      v43 = v9;
      v33 = v12;
      v34 = *(v27 + 48);
      sub_24DFBCE4C(v32, v35, v36, v37, v38, v39, v40, v41);
      v26 = (*(*v30 + 104))(v51, v24, v19, v31, v31 + v34, v33, v42, v46);

      sub_24DF8BFF4(v43, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v48 + 8))(v33, v49);
      (*(v44 + 8))(v19, v16);

      sub_24DF8BFF4(v31 + v34, &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8BFF4(v31, &unk_27F1E1CB0, &unk_24E36D160);
      return v26;
    }

    sub_24DF8BFF4(v15, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

void (*sub_24DFDEF68(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24DFE2378;
}

void sub_24DFDEFD0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItem];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = sub_24E347CB8();
    v6 = [v4 __systemImageNamedSwift_];

    v7 = *(sub_24E3448A8() + 64);

    v8 = *(v7 + 16);
    if (v8)
    {
      v5 = v1;
      v21 = v6;
      v22 = v3;
      v24 = MEMORY[0x277D84F90];
      sub_24E348A68();
      sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
      v9 = 32;
      do
      {
        v10 = *(v7 + v9);
        v11 = sub_24E347CB8();
        v12 = GKGameCenterUIFrameworkBundle();
        v13 = GKGetLocalizedStringFromTableInBundle();

        sub_24E347CF8();
        sub_24E3448A8();

        OUTLINED_FUNCTION_21_2();
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v10;
        OUTLINED_FUNCTION_3_24();
        sub_24E348658();
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        ++v9;
        --v8;
      }

      while (v8);

      v16 = v24;
      v6 = v21;
      v3 = v22;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v17 = OUTLINED_FUNCTION_9_13();
    v18 = GKGameCenterUIFrameworkBundle();
    v19 = OUTLINED_FUNCTION_24_5(v18);

    sub_24E347CF8();
    if (v16 >> 62)
    {
      sub_24DF88A8C(0, &qword_27F1E0060, 0x277D75720);

      v20 = sub_24E348AF8();
    }

    else
    {

      sub_24E348C18();
      sub_24DF88A8C(0, &qword_27F1E0060, 0x277D75720);
      v20 = v16;
    }

    sub_24DF88A8C(0, &qword_27F1E0068, 0x277D75710);
    OUTLINED_FUNCTION_3_24();
    v23 = sub_24E348588();
    [v3 setSecondaryActionsArePrimary_];
    [v3 setSecondaryActions_];
  }
}

uint64_t sub_24DFDF410(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_24E346EE8();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E346F08();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E346F28();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_24E3448A8();

    sub_24E07C4C8(a3 & 1);
  }

  sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  v27 = sub_24E348368();
  sub_24E346F18();
  sub_24E346F48();
  v28 = *(v12 + 8);
  v28(v14, v11);
  aBlock[4] = sub_24DFE2350;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_7;
  v20 = _Block_copy(aBlock);

  sub_24E346EF8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24DFC151C();
  v21 = v11;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
  sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90, &qword_24E36C170, MEMORY[0x277D83970]);
  v23 = v32;
  sub_24E3487E8();
  v24 = v27;
  MEMORY[0x25303EE90](v17, v22, v7, v20);
  _Block_release(v20);

  (*(v31 + 8))(v7, v23);
  (*(v29 + 8))(v22, v30);
  return (v28)(v17, v21);
}

void sub_24DFDF804(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24DFDEFD0();
  }
}

void sub_24DFDF858()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  OUTLINED_FUNCTION_21_2();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_16_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = ObjectType;
  v6 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v7 = v3;
  v8 = sub_24E237540(sub_24DFE233C, v5, v7);
  v9 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_compositionalLayout;
  v10 = *(v1 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_compositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_compositionalLayout) = v8;
  v11 = v8;

  if (v11)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v13 = sub_24E347CB8();

    [v11 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v13];

    v14 = *(v1 + v9);
    if (v14)
    {
      v14;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_24DFDF9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v57 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_37;
  }

  v19 = Strong;
  v20 = *(Strong + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
  if (!v20)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = v20;
  sub_24DFB8854(a1, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v13 = *&v19[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_components];
    sub_24E3448A8();
    sub_24DFBCDC8(v10, v7, a1);

    sub_24DFBCE4C(v22, v23, v24, v25, v26, v27, v28, v29);
    v31 = sub_24E1E108C(v17, v10, v7, v30, a2, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

    sub_24DF8BFF4(v7, &unk_27F1E1CB0, &unk_24E36D160);
    sub_24DF8BFF4(v10, &unk_27F1E1CB0, &unk_24E36D160);
    v32 = v19;
    v33 = [v32 traitCollection];
    v34 = [v33 userInterfaceIdiom];

    if (v34 != 1 && !GKIsXRUIIdiomShouldUsePadUI())
    {

LABEL_28:
      (*(v15 + 8))(v17, v14);
      return v31;
    }

    if (qword_27F1DDC48 != -1)
    {
LABEL_33:
      swift_once();
    }

    v35 = sub_24E3444F8();
    __swift_project_value_buffer(v35, qword_27F20B4E8);
    sub_24E3444E8();
    v36 = [v32 view];

    if (v36)
    {
      v57 = v17;
      v58 = v15;
      v59 = v14;
      v37 = [v36 safeAreaLayoutGuide];

      [v37 layoutFrame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v60.origin.x = v39;
      v60.origin.y = v41;
      v60.size.width = v43;
      v60.size.height = v45;
      CGRectGetWidth(v60);
      if (qword_27F1DD620 != -1)
      {
        swift_once();
      }

      v13 = &off_27966F000;
      [v31 contentInsets];
      v17 = &off_27966F000;
      [v31 setContentInsets_];
      [v31 contentInsets];
      [v31 setContentInsets_];
      v46 = [v31 boundarySupplementaryItems];
      sub_24DF88A8C(0, &qword_27F1DFD40, 0x277CFB830);
      v47 = sub_24E347F08();

      v48 = sub_24DFD8654();
      v49 = 0;
      v14 = v47 & 0xC000000000000001;
      v15 = v47 & 0xFFFFFFFFFFFFFF8;
      while (v48 != v49)
      {
        if (v14)
        {
          v50 = MEMORY[0x25303F560](v49, v47);
        }

        else
        {
          if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v50 = *(v47 + 8 * v49 + 32);
        }

        v19 = v50;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        [v50 contentInsets];
        [v19 setContentInsets_];
        [v19 contentInsets];
        [v19 setContentInsets_];

        ++v49;
      }

      v51 = [v31 decorationItems];
      sub_24DF88A8C(0, &qword_27F1E7690, 0x277CFB838);
      v52 = sub_24E347F08();

      v53 = sub_24DFD8654();
      v54 = 0;
      v14 = v52 & 0xC000000000000001;
      v15 = v52 & 0xFFFFFFFFFFFFFF8;
      while (v53 != v54)
      {
        if (v14)
        {
          v55 = MEMORY[0x25303F560](v54, v52);
        }

        else
        {
          if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v55 = *(v52 + 8 * v54 + 32);
        }

        v19 = v55;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_31;
        }

        [v55 contentInsets];
        [v19 setContentInsets_];
        [v19 contentInsets];
        [v19 setContentInsets_];

        ++v54;
      }

      v15 = v58;
      v14 = v59;
      v17 = v57;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_36:

  sub_24DF8BFF4(v13, &unk_27F1E1CB0, &unk_24E36D160);
LABEL_37:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

void sub_24DFE0094()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v86 = v5;
  v83 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v84 = v8;
  v85 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v82 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  v81 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v87 = &v76 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = (&v76 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v89 = v21;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_3();
  v88 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v24);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_14();
  v27 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource;
  v28 = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
  if (v28)
  {
    v29 = v0;
    v30 = v28;
    sub_24E344CD8();

    OUTLINED_FUNCTION_25_6(v1);
    if (v31)
    {
      v32 = &unk_27F1E6C70;
      v33 = &unk_24E3715E0;
      v34 = v1;
      goto LABEL_13;
    }

    v35 = OUTLINED_FUNCTION_21_4();
    v36(v35);
    v37 = *(v29 + v27);
    if (v37)
    {
      v38 = v37;
      v39 = sub_24E3434D8();
      sub_24DFB8854(v39, v19);

      if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
      {
        v42 = v88;
        v43 = v89;
        (*(v89 + 32))(v88, v19, v20);
        v44 = v86;
        ObjectType = swift_getObjectType();
        v46 = dynamic_cast_existential_1_conditional(v44, ObjectType, &protocol descriptor for AnyComponentCell);
        if (v46)
        {
          v80 = v20;
          v77 = *(v29 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_components);
          v78 = v46;
          v79 = v47;
          v86 = v44;
          sub_24E3448A8();
          v48 = sub_24E3434D8();
          v49 = v81;
          sub_24DFBCDC8(v87, v81, v48);

          v50 = v82;
          v51 = v88;
          v52 = sub_24E3448C8();
          v76 = v29;
          sub_24DFBCE4C(v52, v53, v54, v55, v56, v57, v58, v59);
          v60 = v4;
          v61 = v87;
          (*(*v77 + 152))(v78, v79, v60, v2, v51, v87, v49, v50, v83, v62);

          (*(v84 + 8))(v50, v85);
          OUTLINED_FUNCTION_26_5(v49);
          OUTLINED_FUNCTION_26_5(v61);
          v63 = v86;
          v92 = v86;
          sub_24DF88A8C(0, &qword_27F1E0080, 0x277D752A8);
          v64 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0088, &unk_24E36D190);
          if ((swift_dynamicCast() & 1) == 0)
          {

            (*(v89 + 8))(v51, v80);
            v74 = OUTLINED_FUNCTION_6_19();
            v75(v74);
            v91 = 0;
            memset(v90, 0, sizeof(v90));
            v32 = &qword_27F1E0090;
            v33 = &qword_24E375D70;
            v34 = v90;
            goto LABEL_13;
          }

          sub_24DE56CE8(v90, v93);
          v65 = v51;
          v66 = v94;
          v67 = v95;
          v68 = v89;
          __swift_project_boxed_opaque_existential_1(v93, v94);
          v69 = (*(v67 + 8))(v66, v67);
          [v69 setDelegate_];

          (*(v68 + 8))(v65, v80);
          v70 = OUTLINED_FUNCTION_6_19();
          v71(v70);
          __swift_destroy_boxed_opaque_existential_1(v93);
        }

        else
        {
          (*(v43 + 8))(v42, v20);
          v72 = OUTLINED_FUNCTION_6_19();
          v73(v72);
        }

LABEL_14:
        OUTLINED_FUNCTION_18();
        return;
      }

      v40 = OUTLINED_FUNCTION_6_19();
      v41(v40);
      v32 = &unk_27F1E1CB0;
      v33 = &unk_24E36D160;
      v34 = v19;
LABEL_13:
      sub_24DF8BFF4(v34, v32, v33);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24DFE06D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v12);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_6();
  v14 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource;
  v15 = *(v3 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  sub_24E344CD8();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v4, 1, v17);
  sub_24DF8BFF4(v4, &unk_27F1E6C70, &unk_24E3715E0);
  if (v16 == 1)
  {
    return;
  }

  v18 = *(v5 + v14);
  if (!v18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = sub_24E3434D8();
  sub_24DFB8854(v20, v11);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v21);
  sub_24DF8BFF4(v11, &unk_27F1E1CB0, &unk_24E36D160);
  if (EnumTagSinglePayload != 1)
  {
    ObjectType = swift_getObjectType();
    v24 = dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for AnyComponentCell);
    if (v24)
    {
      v32 = v24;
      v33 = v25;
      sub_24DFBCE4C(v24, v25, v26, v27, v28, v29, v30, v31);
      v35 = v34;
      v36 = a2;
      sub_24E1E1904(v32, v33, a1, v35);
    }
  }
}

uint64_t sub_24DFE090C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  sub_24E343498();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_24DFE0A18()
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v35 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_6();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_14();
  v15 = sub_24E343488();
  v16 = [v5 cellForItemAtIndexPath_];

  if (!v16)
  {
    goto LABEL_8;
  }

  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v16, ObjectType, &protocol descriptor for AnyComponentCell))
  {

LABEL_8:
    OUTLINED_FUNCTION_18();
    return;
  }

  v19 = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    sub_24E344CD8();

    OUTLINED_FUNCTION_25_6(v3);
    if (v22)
    {

      sub_24DF8BFF4(v3, &unk_27F1E6C70, &unk_24E3715E0);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_18_8();
      v24(v23);
      v25 = swift_getObjectType();
      v26 = sub_24E3448C8();
      sub_24DFBCE4C(v26, v27, v28, v29, v30, v31, v32, v33);
      (*(v20 + 120))(v2, v1, v34, v25, v20);

      (*(v35 + 8))(v1, v6);
      (*(v13 + 8))(v2, v11);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_24DFE0DE8()
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0, &qword_24E386B80);
  OUTLINED_FUNCTION_0_14();
  v34 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_6();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_14();
  v15 = sub_24E343488();
  v35 = [v5 cellForItemAtIndexPath_];

  if (!v35)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v35, ObjectType, &protocol descriptor for AnyComponentCell))
  {
    v17 = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_24E344CD8();

      OUTLINED_FUNCTION_25_6(v3);
      if (v19)
      {

        sub_24DF8BFF4(v3, &unk_27F1E6C70, &unk_24E3715E0);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_18_8();
        v23(v22);
        swift_getObjectType();
        v24 = sub_24E3448B8();
        sub_24DFBCE4C(v24, v25, v26, v27, v28, v29, v30, v31);
        v32 = OUTLINED_FUNCTION_21_4();
        v33(v32);

        (*(v34 + 8))(v1, v6);
        (*(v13 + 8))(v2, v11);
      }

LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_24DFE11C0()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v59 = v7;
  v60 = v8;
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v61 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v58 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  v19 = OUTLINED_FUNCTION_4_5(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v56 = &v53 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v62 = v29;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_14();
  if (sub_24E3434E8() < 2)
  {
    goto LABEL_10;
  }

  v54 = v22;
  v55 = v14;
  v53 = v6;
  v31 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource;
  v32 = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
  if (v32)
  {
    v33 = v32;
    v34 = sub_24E3434D8();
    sub_24DFB8854(v34, v27);

    if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
    {
      v35 = &unk_27F1E1CB0;
      v36 = &unk_24E36D160;
      v37 = v27;
      goto LABEL_8;
    }

    (*(v62 + 32))(v1, v27, v28);
    v38 = *(v0 + v31);
    if (v38)
    {
      v39 = v38;
      sub_24E344CD8();

      v40 = v55;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v55);
      v42 = v54;
      if (EnumTagSinglePayload != 1)
      {
        v45 = v58;
        (*(v61 + 32))(v58, v13, v40);
        v46 = *(v2 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_components);
        sub_24E3448A8();
        v47 = sub_24E3434D8();
        v48 = v56;
        sub_24DFBCDC8(v56, v42, v47);

        v49 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
        v50 = sub_24E12AAC0(v57);
        (*(*v46 + 160))(v59, v60, v53, v4, v45, v1, v48, v42, v50);

        OUTLINED_FUNCTION_26_5(v42);
        OUTLINED_FUNCTION_26_5(v48);
        (*(v61 + 8))(v45, v40);
        v51 = OUTLINED_FUNCTION_22_7();
        v52(v51);
        goto LABEL_10;
      }

      v43 = OUTLINED_FUNCTION_22_7();
      v44(v43);
      v35 = &unk_27F1E6C70;
      v36 = &unk_24E3715E0;
      v37 = v13;
LABEL_8:
      sub_24DF8BFF4(v37, v35, v36);
LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24DFE172C()
{
  v1 = v0;
  if ((GKIsRemoteUI() & 1) == 0)
  {
    sub_24E3448A8();
    v2 = sub_24E07C4DC();

    v3 = [v0 navigationItem];
    v4 = v3;
    if (v2)
    {
      v5 = *&v1[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_sortGamesBarButtonItem];
      [v4 setRightBarButtonItem_];
    }

    else
    {
      [v3 setRightBarButtonItem_];
    }

    sub_24DFDEFD0();
  }
}

void sub_24DFE1808()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = sub_24E344C28();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  sub_24E344CA8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = *v2;
  if (*v2 == 2)
  {
    sub_24DFFE6D0(0);
    sub_24DFE172C();
    v23 = [v0 navigationController];
    if (v23)
    {
      v68 = v23;
      [v23 setNeedsFocusUpdate];
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (v19 != 1)
  {
    v59 = v5;
    v60 = v3;
    v66 = v16;
    v67 = v15;
    v68 = v0;
    v26 = *(v2 + 16);
    v63 = *(v2 + 8);
    v27 = v63;
    v64 = v26;
    v65 = 0x800000024E39EA90;
    v28 = v19;
    sub_24DF88BEC(v27, v26);
    v29 = sub_24E347CB8();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();

    v62 = sub_24E347CF8();
    v61 = v32;

    v33 = sub_24E347CB8();
    v34 = GKGameCenterUIFrameworkBundle();
    v35 = OUTLINED_FUNCTION_24_5(v34);

    v36 = sub_24E347CF8();
    v38 = v37;

    v39 = sub_24E347CB8();
    v40 = GKGameCenterUIFrameworkBundle();
    v41 = OUTLINED_FUNCTION_23_7(v40);

    v42 = sub_24E347CF8();
    v44 = v43;

    v45 = v65;
    v70[0] = 0xD000000000000016;
    v70[1] = v65;
    v70[2] = v19;
    v70[3] = v62;
    v70[4] = v61;
    v70[5] = v36;
    v70[6] = v38;
    v71 = v42;
    v72 = v44;
    v73 = v63;
    v74 = v64;
    sub_24E344C58();
    sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
    sub_24E1A5748(0xD000000000000016, v45, 0);
    sub_24E344C68();
    v46 = v73;
    v47 = v74;

    sub_24E344C48();

    sub_24E344BF8();
    if (v46)
    {
      v65 = v71;

      sub_24E344C38();
      sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
      OUTLINED_FUNCTION_16_4();
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      *(v48 + 24) = v47;

      OUTLINED_FUNCTION_3_24();
      v49 = sub_24E348658();
      sub_24E344C18();

      v50 = sub_24E344C78();
      sub_24E348668();
      v50(&v69, 0);

      sub_24DE73FA0(v46, v47);
      (*(v59 + 8))(v9, v60);
    }

    v52 = v66;
    v51 = v67;
    (*(v66 + 32))(v18, v13, v67);
    sub_24DF88A8C(0, &unk_27F1E6CD0, 0x277D753A8);
    v53 = OUTLINED_FUNCTION_21_4();
    v54(v53);
    v55 = sub_24E348498();
    v56 = [v68 view];
    if (!v56)
    {
      goto LABEL_16;
    }

    v57 = v56;
    v58 = [v56 backgroundColor];

    [v55 setBackgroundColor_];
    sub_24DFFE6D0(v55);
    sub_24DFC13E4(v70);

    (*(v52 + 8))(v18, v51);
LABEL_14:
    OUTLINED_FUNCTION_18();
    return;
  }

  type metadata accessor for LoadingView();
  v68 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = [v0 view];
  if (!v20)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 backgroundColor];

  [v68 setBackgroundColor_];
  sub_24DFFE6D0(v68);
LABEL_7:
  OUTLINED_FUNCTION_18();
}

void sub_24DFE1E84(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058, qword_24E371E60);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_9();
  v6 = type metadata accessor for EmptyStateData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  sub_24DFE172C();
  sub_24DF8BD90(a1, v2, &qword_27F1E0058, qword_24E371E60);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_24DF8BFF4(v2, &qword_27F1E0058, qword_24E371E60);
    sub_24DFFE6D0(0);
  }

  else
  {
    sub_24DFE227C(v2, v1);
    type metadata accessor for EmptyStateView();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_24DFBCE4C(v8, v9, v10, v11, v12, v13, v14, v15);
    sub_24E2D93A0(v1, v16);

    v17 = v8;
    sub_24DFFE6D0(v8);

    sub_24DFE22E0(v1);
  }
}

void sub_24DFE2008(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_24E344CE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24DFE20D4()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_navigationBarFocusGuide);
}

id sub_24DFE2174(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AchievementsByGameViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24DFE227C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFE22E0(uint64_t a1)
{
  v2 = type metadata accessor for EmptyStateData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_24E347CB8();
}

id OUTLINED_FUNCTION_20_7()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1)
{

  return GKGetLocalizedStringFromTableInBundle();
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1)
{

  return sub_24DF8BFF4(a1, v1, v2);
}

void sub_24DFE2518()
{
  v1 = *(v0 + 48);
  v2 = sub_24DFD8654();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      sub_24DFD8654();

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25303F560](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = [objc_opt_self() shared];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = [v6 inboxContactsOnly];

    if (v8 && ([v5 isFriendInvitationInContacts] & 1) == 0)
    {
    }

    else
    {
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t *sub_24DFE2694(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v34 = a3;
  v35 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00B8, &unk_24E374280);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_24E347358();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = MEMORY[0x277D84FA0];
  v3[6] = 0;
  *(v3 + 56) = 2;
  v3[15] = 0;
  v3[17] = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 144) = 1;
  v3[19] = 0;
  *(v3 + 160) = 1;
  v20 = type metadata accessor for AllFriendsDataSource(0);
  OUTLINED_FUNCTION_1_30(v20);
  v3[21] = sub_24E0E1134();
  v21 = type metadata accessor for FriendRequestsDataSource(0);
  OUTLINED_FUNCTION_1_30(v21);
  v3[22] = sub_24E0E0748();
  v22 = type metadata accessor for FriendSuggestionsDataSource(0);
  OUTLINED_FUNCTION_1_30(v22);
  v3[23] = sub_24E0DC5F0();
  v23 = type metadata accessor for FriendSuggestionInvitationStateManager(0);
  OUTLINED_FUNCTION_1_30(v23);
  v3[24] = sub_24E155B14(1);
  v3[25] = 0;
  v3[26] = [objc_allocWithZone(type metadata accessor for GameCenterDataUpdatePresenter()) init];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00C0, &qword_24E36D4B0);
  OUTLINED_FUNCTION_1_30(v24);
  v3[27] = sub_24E346F88();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00C8, &qword_24E36D4B8);
  OUTLINED_FUNCTION_1_30(v25);
  v3[28] = sub_24E346F88();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00D0, &unk_24E36D4C0);
  OUTLINED_FUNCTION_1_30(v26);
  v3[29] = sub_24E346F88();
  type metadata accessor for GKLogTimer(0);
  (*(v16 + 104))(v19, *MEMORY[0x277D21DD8], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
  sub_24E347018();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24E367D20;
  v36[3] = MEMORY[0x277D837D0];
  v36[0] = 0xD000000000000022;
  v36[1] = 0x800000024E36D280;
  sub_24E346FE8();
  sub_24DF8C95C(v36, &qword_27F1E0370, &unk_24E369A10);
  v3[30] = sub_24E16B6E4(v19, v27, v28);
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v34;
  *(v3 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3000, &qword_24E374A50);
  sub_24DFB4C28(&qword_27F1E00D8, &unk_27F1E3000, &qword_24E374A50, MEMORY[0x277D21A98]);
  v29 = a1;

  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v36);
  (*(v10 + 8))(v13, v8);
  v30 = [objc_opt_self() defaultCenter];

  v31 = sub_24E347CB8();
  [v30 addObserver:v4 selector:sel_updateSections_ name:v31 object:0];

  return v4;
}

void sub_24DFE2BF4(int a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = sub_24E347358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 48);
  if (v11)
  {
    v12 = v11;
    switch(a1)
    {
      case 2:
        v57 = v12;
        type metadata accessor for GameCenter();
        swift_initStaticObject();
        sub_24E2F0698(v57, 1, 1, v37, v38, v39, v40, v41, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v61, aBlock, v63, v64, v65, v66, v67);
        sub_24E2F0550(v57, v42, v43, v44, v45, v46, v47, v48, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v61, aBlock, v63, v64, v65, v66, v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00E0, qword_24E36D4D0);
        sub_24DFB4C28(&qword_27F1E00E8, &qword_27F1E00E0, qword_24E36D4D0, MEMORY[0x277D224B8]);
        sub_24E347A68();
        v49 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
        swift_retain_n();
        v50 = sub_24E348368();
        v65 = v49;
        v66 = MEMORY[0x277D225C0];
        aBlock = v50;
        sub_24E347A78();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return;
      case 3:
        v57 = v12;
        v28 = [objc_opt_self() daemonProxy];
        v29 = [v28 friendServicePrivate];

        v66 = sub_24DFE6F3C;
        v67 = v4;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_24E1C6B90;
        v65 = &block_descriptor_93;
        v30 = _Block_copy(&aBlock);

        [v29 getCombinedFriendInvitationListWithCompletion_];
        break;
      case 21:
        v57 = v12;
        v58 = sub_24E347CF8();
        v59 = v33;
        v34 = MEMORY[0x277D837D0];
        sub_24E348918();
        sub_24E12C94C(a2, v60);
        sub_24DF8BE60(&aBlock);
        if (v61)
        {
          if (swift_dynamicCast())
          {
            v35 = v58;
            v36 = v59;
            sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
            static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v35, v36);

LABEL_45:

            return;
          }
        }

        else
        {
          sub_24DF8C95C(v60, &qword_27F1E0370, &unk_24E369A10);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
        sub_24E347018();
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_24E367D20;
        v65 = v34;
        aBlock = 0xD000000000000059;
        v63 = 0x800000024E39FE40;
        sub_24E346FE8();
        sub_24DF8C95C(&aBlock, &qword_27F1E0370, &unk_24E369A10);
        (*(v8 + 104))(v10, *MEMORY[0x277D21DE8], v7);
        sub_24E0EF428(v51);
LABEL_41:

        (*(v8 + 8))(v10, v7);
        return;
      case 17:
        v57 = v12;
        v31 = [objc_opt_self() daemonProxy];
        v32 = [v31 profileServicePrivate];

        v66 = sub_24DFE6F24;
        v67 = v4;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_24DFE5584;
        v65 = &block_descriptor_90;
        v30 = _Block_copy(&aBlock);

        [v32 getProfilePrivacyWithHandler_];
        break;
      default:
        if (a1 != 4 || (v57 = v12, v12 = [v12 isLocalPlayer], !v12))
        {

uint64_t (*sub_24DFE3580(uint64_t a1))(unsigned int *a1)
{
  v1 = sub_24DFE2BB4(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24DFE6F18;
}

uint64_t sub_24DFE35D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
  sub_24E347018();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24E36A270;
  v2 = MEMORY[0x277D837D0];
  v23 = MEMORY[0x277D837D0];
  v20 = 0xD000000000000016;
  v21 = 0x800000024E39FD80;
  sub_24E346FE8();
  sub_24DF8C95C(&v20, &qword_27F1E0370, &unk_24E369A10);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v23 = v2;
  v20 = v3;
  v21 = v4;

  sub_24E346FD8();
  sub_24DF8C95C(&v20, &qword_27F1E0370, &unk_24E369A10);
  v6 = sub_24E16BC80(v1, v5);

  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2F03B4(v3, v4, 1, v7, v8, v9, v10, v11, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_16_4();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v0;
  OUTLINED_FUNCTION_16_4();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v0;
  v14 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  swift_retain_n();
  swift_retain_n();
  v15 = sub_24E348368();
  v23 = v14;
  v24 = MEMORY[0x277D225C0];
  v20 = v15;
  OUTLINED_FUNCTION_3_25(sub_24DFE6CB4, v16, sub_24DFE6CBC, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v20);
}

uint64_t sub_24DFE3844(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_24E16BD78();
  v5 = *(a3 + 48);
  *(a3 + 48) = v4;
  v6 = v4;

  *(a3 + 152) = [v6 numberOfAchievements];
  *(a3 + 160) = 0;
  *(a3 + 136) = [v6 numberOfGames];
  *(a3 + 144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
  sub_24E347018();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E36A270;
  v17 = MEMORY[0x277D837D0];
  v16[0] = 0xD00000000000002CLL;
  v16[1] = 0x800000024E39FDA0;
  sub_24E346FE8();
  sub_24DF8C95C(v16, &qword_27F1E0370, &unk_24E369A10);
  v8 = [v6 isLocalPlayer];
  v17 = MEMORY[0x277D839B0];
  LOBYTE(v16[0]) = v8;
  sub_24E346FD8();
  sub_24DF8C95C(v16, &qword_27F1E0370, &unk_24E369A10);
  v10 = sub_24E16BC80(v7, v9);

  sub_24DFE3AF8(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);

  v14 = sub_24E348368();
  v17 = v13;
  v18 = MEMORY[0x277D225C0];
  v16[0] = v14;
  sub_24E347A78();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_24DFE3AF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E346EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E346F08();
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  if (v13)
  {
    v25 = v10;
    v26 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00A8, &qword_24E36D4A8);
    v24 = v5;
    v14 = v13;
    v15 = sub_24E347AD8();
    v16 = dispatch_group_create();
    sub_24DFE4084(v14, v16);
    sub_24DFE42F4(v14, v16, a1);
    sub_24DFE4758(v14, v16);
    sub_24DFE49F4(v16);
    sub_24DFE4B28(v14, v16);
    sub_24DFE4F78(v16);
    v17 = v14;
    v23 = v17;
    sub_24DFE50AC(v13, 0, 0, 0, 0);

    sub_24E0E1220();

    sub_24E0DE5D0();

    sub_24E0DCC54();

    sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    v18 = sub_24E348368();
    aBlock[4] = sub_24DFE6D20;
    aBlock[5] = v15;
    v22 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_8;
    v19 = _Block_copy(aBlock);

    sub_24E346EF8();
    v27 = MEMORY[0x277D84F90];
    sub_24DFC151C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
    sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90, &qword_24E36C170, MEMORY[0x277D83970]);
    sub_24E3487E8();
    sub_24E348318();
    _Block_release(v19);

    (*(v24 + 8))(v7, v4);
    (*(v25 + 8))(v12, v26);

    return v22;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00A8, &qword_24E36D4A8);
    sub_24DFE6CCC();
    swift_allocError();
    *v21 = 0;
    return sub_24E347A98();
  }
}

uint64_t sub_24DFE3F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24E16BD78();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24E16BFE8();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24DFE3FBC();
  }

  return result;
}

uint64_t sub_24DFE3FBC()
{
  sub_24DFE6330(__src);
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_24DF8BF80(__dst);
  if (result != 1)
  {
    memcpy(v1, __dst, sizeof(v1));
    sub_24E346F78();
    return sub_24DF8C95C(__src, &qword_27F1DEEA0, qword_24E369EA0);
  }

  return result;
}

uint64_t sub_24DFE403C()
{
  sub_24E16BD78();
  sub_24E16BFE8();
  return sub_24E346F78();
}

uint64_t sub_24DFE4084(void *a1, NSObject *a2)
{
  result = [a1 isLocalPlayer];
  if (result)
  {
    *(v2 + 56) = 0;
  }

  else
  {
    dispatch_group_enter(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
    sub_24E347018();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24E367D20;
    v25 = MEMORY[0x277D837D0];
    v22 = 0xD000000000000014;
    v23 = 0x800000024E39FBB0;
    sub_24E346FE8();
    sub_24DF8C95C(&v22, &qword_27F1E0370, &unk_24E369A10);
    v8 = sub_24E16BC80(v6, v7);

    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2F0550(a1, v9, v10, v11, v12, v13, v14, v15, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);
    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = v2;
    v16[4] = a2;
    v17 = swift_allocObject();
    v17[2] = v8;
    v17[3] = v2;
    v17[4] = a2;
    v18 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    swift_retain_n();
    v19 = a2;
    v20 = sub_24E348368();
    v25 = v18;
    v26 = MEMORY[0x277D225C0];
    v22 = v20;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  return result;
}

uint64_t sub_24DFE42F4(void *a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  if ([a1 isLocalPlayer])
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
    v43 = *(*(sub_24E347018() - 8) + 72);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24E367D20;
    v52 = MEMORY[0x277D837D0];
    v49 = 0xD000000000000015;
    v50 = 0x800000024E39FE00;
    sub_24E346FE8();
    sub_24DF8C95C(&v49, &qword_27F1E0370, &unk_24E369A10);
    v10 = sub_24E16BC80(v8, v9);

    dispatch_group_enter(a2);
    type metadata accessor for GameCenter();
    inited = swift_initStaticObject();
    sub_24E2F0698(a1, 1, 1, v12, v13, v14, v15, v16, v37, inited, a3, 0x800000024E39FE00, 1, 2, v43, v45, v47, v49, v50, v51, v52, v53, v54, v55);
    v17 = swift_allocObject();
    v17[2] = v4;
    v17[3] = v10;
    v17[4] = a2;
    v18 = swift_allocObject();
    v18[2] = v10;
    v18[3] = v4;
    v48 = v10;
    v18[4] = a2;
    v19 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    swift_retain_n();
    v20 = a2;
    v21 = sub_24E348368();
    v52 = v19;
    v53 = MEMORY[0x277D225C0];
    v49 = v21;
    sub_24E347A78();

    __swift_destroy_boxed_opaque_existential_1(&v49);
    v22 = swift_allocObject();
    *(v22 + 16) = v42;
    v52 = MEMORY[0x277D837D0];
    v49 = 0xD000000000000015;
    v50 = v41;
    sub_24E346FE8();
    sub_24DF8C95C(&v49, &qword_27F1E0370, &unk_24E369A10);
    v24 = sub_24E16BC80(v22, v23);

    dispatch_group_enter(v20);
    sub_24E2F0698(a1, 0, 2, v25, v26, v27, v28, v29, v38, v39, v40, v41, v42, *(&v42 + 1), v44, v46, v48, v49, v50, v51, v52, v53, v54, v55);
    v30 = swift_allocObject();
    v30[2] = v4;
    v30[3] = v24;
    v30[4] = v20;
    v31 = swift_allocObject();
    v31[2] = v24;
    v31[3] = v4;
    v31[4] = v20;
    swift_retain_n();
    v32 = v20;
    swift_retain_n();
    v33 = v32;
    v34 = sub_24E348368();
    v52 = v19;
    v53 = MEMORY[0x277D225C0];
    v49 = v34;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
    *(v4 + 64) = MEMORY[0x277D84F90];

    *(v4 + 72) = v36;
  }
}

uint64_t sub_24DFE4758(void *a1, NSObject *a2)
{
  if ([a1 isLocalPlayer])
  {
    dispatch_group_enter(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
    sub_24E347018();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24E367D20;
    v14 = MEMORY[0x277D837D0];
    v13[0] = 0xD000000000000010;
    v13[1] = 0x800000024E39CA90;
    sub_24E346FE8();
    sub_24DF8C95C(v13, &qword_27F1E0370, &unk_24E369A10);
    v6 = sub_24E16BC80(v4, v5);

    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2EFE4C();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v2;
    v7[4] = a2;
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v2;
    v8[4] = a2;
    v9 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    swift_retain_n();
    v10 = a2;
    v11 = sub_24E348368();
    v14 = v9;
    v15 = MEMORY[0x277D225C0];
    v13[0] = v11;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    *(v2 + 80) = MEMORY[0x277D84F90];
  }
}

double sub_24DFE49F4(NSObject *a1)
{
  dispatch_group_enter(a1);
  v3 = [objc_opt_self() daemonProxy];
  v4 = [v3 friendServicePrivate];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v9[4] = sub_24DFE6E68;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24E1C6B90;
  v9[3] = &block_descriptor_60;
  v6 = _Block_copy(v9);

  v7 = a1;

  [v4 getCombinedFriendInvitationListWithCompletion_];
  _Block_release(v6);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24DFE4B28(void *a1, NSObject *a2)
{
  v3 = v2;
  v6 = *v2;
  if ([a1 achievementsVisibility] == 1)
  {
    v7 = [a1 friendBiDirectional];
    sub_24DF88A8C(0, &qword_27F1E50D0, 0x277CCABB0);
    v8 = sub_24E3485F8();
    if (v7)
    {
      v9 = sub_24E348628();

      v8 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 achievementsVisibility];
  if (([a1 isLocalPlayer] & 1) != 0 || (v9 & 1) != 0 || !v10)
  {
    dispatch_group_enter(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
    sub_24E347018();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24E367D20;
    v13 = MEMORY[0x277D837D0];
    v26 = MEMORY[0x277D837D0];
    v25[0] = 0xD000000000000013;
    v25[1] = 0x800000024E39CE20;
    sub_24E346FE8();
    sub_24DF8C95C(v25, &qword_27F1E0370, &unk_24E369A10);
    v15 = sub_24E16BC80(v12, v14);

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24E367D20;
    v26 = v13;
    strcpy(v25, "gameSummaries");
    HIWORD(v25[1]) = -4864;
    sub_24E346FE8();
    sub_24DF8C95C(v25, &qword_27F1E0370, &unk_24E369A10);
    v18 = sub_24E16BC80(v16, v17);

    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2F07F8(a1, 0);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v15;
    v20[5] = a2;
    v20[6] = v6;
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v15;
    v21[4] = v3;
    v21[5] = a2;
    v22 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    swift_retain_n();
    v23 = a2;

    v24 = sub_24E348368();
    v26 = v22;
    v27 = MEMORY[0x277D225C0];
    v25[0] = v24;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v3[12] = MEMORY[0x277D84F90];
  }
}

double sub_24DFE4F78(NSObject *a1)
{
  dispatch_group_enter(a1);
  v3 = [objc_opt_self() daemonProxy];
  v4 = [v3 profileServicePrivate];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v9[4] = sub_24DFE6D8C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24DFE5584;
  v9[3] = &block_descriptor_41_0;
  v6 = _Block_copy(v9);

  v7 = a1;

  [v4 getProfilePrivacyWithHandler_];
  _Block_release(v6);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24DFE50AC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = *(v5 + 104);
  *(v5 + 104) = 0;

  *(v5 + 112) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
  sub_24E347018();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24E367D20;
  v23 = MEMORY[0x277D837D0];
  v22[0] = 0xD000000000000017;
  v22[1] = 0x800000024E39FDD0;
  sub_24E346FE8();
  sub_24DF8C95C(v22, &qword_27F1E0370, &unk_24E369A10);
  v14 = sub_24E16BC80(v12, v13);

  type metadata accessor for GameCenter();
  swift_initStaticObject();
  LOBYTE(v22[0]) = 3;
  sub_24E2F57E0(a1, a2, a3, a4, a5, v22);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  v19 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  swift_retain_n();

  v20 = sub_24E348368();
  v23 = v19;
  v24 = MEMORY[0x277D225C0];
  v22[0] = v20;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_24DFE53A0(char *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = *a1;
  sub_24E16BD78();
  *(a3 + 56) = v6;

  dispatch_group_leave(a4);
}

void sub_24DFE53F0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_24E16BD78();
  *(a3 + 56) = 0;

  dispatch_group_leave(a4);
}

void sub_24DFE543C(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = *a1;
  sub_24E16BD78();
  *(a3 + 80) = v6;

  dispatch_group_leave(a4);
}

void sub_24DFE54A0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_24E16BD78();
  *(a3 + 80) = MEMORY[0x277D84F90];

  dispatch_group_leave(a4);
}

void sub_24DFE54FC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{

  v7 = sub_24E0833B4(v6);
  sub_24E1D4198(&v7);
  *(a3 + 88) = v7;

  dispatch_group_leave(a4);
}

uint64_t sub_24DFE5584(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_24DFE55D8(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *(a2 + 64) = *a1;

  sub_24E16BD78();

  dispatch_group_leave(a4);
}

void sub_24DFE5634(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_24E16BD78();
  *(a3 + 64) = MEMORY[0x277D84F90];

  dispatch_group_leave(a4);
}

void sub_24DFE5690(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *(a2 + 72) = *a1;

  sub_24E16BD78();

  dispatch_group_leave(a4);
}

void sub_24DFE56EC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_24E16BD78();
  *(a3 + 72) = MEMORY[0x277D84F90];

  dispatch_group_leave(a4);
}

uint64_t sub_24DFE5748(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  sub_24E16BD78();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v29 = result;
  v9 = MEMORY[0x277D84F90];
  v30[0] = MEMORY[0x277D84F90];
  v10 = sub_24DFD8654();
  v11 = 0;
  while (v10 != v11)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x25303F560](v11, v7);
    }

    else
    {
      if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v7 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = [v12 adamID];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x277CEC258]) initWithNumberValue_];

      if (!v16)
      {
        goto LABEL_14;
      }

      MEMORY[0x25303EA30]();
      if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v9 = v30[0];
      ++v11;
    }

    else
    {

LABEL_14:
      ++v11;
    }
  }

  v17 = qword_27F1DDB50;
  v7 = *MEMORY[0x277CEC1F8];
  if (v17 == -1)
  {
    goto LABEL_17;
  }

LABEL_26:
  swift_once();
LABEL_17:
  v18 = qword_27F20B218;
  type metadata accessor for ASCLockupBatchPresenter();
  swift_allocObject();
  *(v29 + 200) = sub_24E25C424(v9, 4, v18, v7);

  if (*(v29 + 200))
  {

    v19 = sub_24E25D0F4(3);
  }

  else
  {
    v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
  sub_24E347018();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D837D0];
  *(v20 + 16) = xmmword_24E367D20;
  v31 = v21;
  v30[0] = 0x756B636F4C637361;
  v30[1] = 0xEA00000000007370;
  sub_24E346FE8();
  sub_24DF8C95C(v30, &qword_27F1E0370, &unk_24E369A10);
  v23 = sub_24E16BC80(v20, v22);

  if (v19)
  {
    v24 = swift_allocObject();
    v24[2] = v29;
    v24[3] = v23;
    v24[4] = a4;
    v24[5] = a5;
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = a4;
    v25[4] = v29;
    v25[5] = a5;
    v26 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v27 = a5;

    v28 = sub_24E348368();
    v31 = v26;
    v32 = MEMORY[0x277D225C0];
    v30[0] = v28;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
  }
}

uint64_t sub_24DFE5BC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v6 = *(a2 + 96);
  *(a2 + 96) = *a1;

  sub_24E16BD78();
  sub_24E16BD78();
  if (v6)
  {
    sub_24E16BFE8();
    sub_24DFE5C54(3);
  }

  else
  {
    dispatch_group_leave(a5);
  }

  return sub_24E16BD78();
}

uint64_t sub_24DFE5C54(char a1)
{
  sub_24DFE6330(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, __src, sizeof(v8));
  result = sub_24DF8BF80(v8);
  if (result != 1)
  {
    memcpy(&v4[7], v8, 0x90uLL);
    v3[0] = a1;
    memcpy(&v3[1], v4, 0x97uLL);
    memcpy(v5, __dst, sizeof(v5));
    sub_24DF8BF98(v5, v6);
    sub_24E346F78();
    sub_24DF8C95C(__src, &qword_27F1DEEA0, qword_24E369EA0);
    memcpy(v6, v3, sizeof(v6));
    return sub_24DFE6C7C(v6);
  }

  return result;
}

uint64_t sub_24DFE5D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  sub_24E16BD78();
  sub_24E16BD78();
  v7 = *(a4 + 96);
  *(a4 + 96) = MEMORY[0x277D84F90];

  sub_24E16BD78();
  sub_24E16BD78();
  if (v7)
  {
    sub_24E16BFE8();
    sub_24DFE5C54(3);
  }

  else
  {
    dispatch_group_leave(a5);
  }

  return sub_24E16BD78();
}

void sub_24DFE5DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  sub_24E16BD78();
  sub_24E16BD78();
  v7 = *(a4 + 96);
  *(a4 + 96) = MEMORY[0x277D84F90];

  if (v7)
  {
    sub_24E16BFE8();
  }

  else
  {

    dispatch_group_leave(a5);
  }
}

uint64_t sub_24DFE5E68(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 104);
    *(Strong + 104) = v2;
    v5 = v2;
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    *(v6 + 112) = 0;
  }

  sub_24E16BD78();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24DFE5C54(5);
  }

  return result;
}

uint64_t sub_24DFE5F44(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 112) = 0;
  }

  sub_24E16BD78();
  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 120);
    *(v5 + 120) = a1;

    v7 = a1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24DFE5C54(5);
  }

  return result;
}

uint64_t sub_24DFE601C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(v2 + 104);
  if (v5)
  {
    type metadata accessor for GameCenter();
    swift_initStaticObject();
    v6 = v5;
    sub_24E2F0914(a1);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_24DFE6C3C;
    v8[4] = v4;
    OUTLINED_FUNCTION_16_4();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24DFE6C3C;
    *(v9 + 24) = v4;
    v10 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    v11 = sub_24E348368();
    v15[3] = v10;
    v15[4] = MEMORY[0x277D225C0];
    v15[0] = v11;
    OUTLINED_FUNCTION_3_25(sub_24DFE6C44, v12, sub_24DFE6C50, v13);

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {

    sub_24DFE61E8(1, v4);
  }
}

uint64_t sub_24DFE61E8(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 104);
      v4 = v3;

      if (v3)
      {
        [v4 setContinuationToken_];
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24DFE5C54(5);
  }

  return result;
}

uint64_t sub_24DFE62A4(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 104);
    *(Strong + 104) = v4;
    v7 = v4;
  }

  return a3(0);
}

void *sub_24DFE6330@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3 && (v4 = *(v1 + 56), v4 != 2) && (v5 = *(v1 + 64)) != 0 && (v6 = *(v1 + 72)) != 0 && (v7 = *(v1 + 80)) != 0 && (v8 = *(v1 + 88)) != 0 && (*(v1 + 144) & 1) == 0 && (*(v1 + 160) & 1) == 0 && (v9 = *(v1 + 96)) != 0)
  {
    v26 = *(v1 + 152);
    v27 = *(v1 + 136);
    v10 = v3;

    v23 = v9;

    v28 = v10;
    v11 = [v10 isLocalPlayer];
    v12 = *(v1 + 104);
    v24 = *(v1 + 112);
    v25 = *(v1 + 128);
    v13 = *(v1 + 176);
    v29 = *(v1 + 168);
    v30 = *(v1 + 120);
    v21 = v11;
    v22 = v4 & 1;
    v15 = *(v1 + 184);
    v14 = *(v1 + 192);
    v16 = sub_24DFD8654();
    v17 = v12;
    v18 = v30;

    if ((v21 & 1) == 0)
    {
      v19 = [v28 numberOfFriends];
      if (v16 <= v19)
      {
        v16 = v19;
      }
    }

    __src[0] = v28;
    LOBYTE(__src[1]) = v21;
    BYTE1(__src[1]) = v22;
    __src[2] = v5;
    __src[3] = v6;
    __src[4] = v7;
    __src[5] = v23;
    __src[6] = v8;
    __src[7] = v27;
    __src[8] = v26;
    __src[9] = v16;
    LODWORD(__src[10]) = v25;
    __src[11] = v12;
    LOBYTE(__src[12]) = v24;
    __src[13] = v30;
    __src[14] = v29;
    __src[15] = v13;
    __src[16] = v15;
    __src[17] = v14;
    CGSizeMake();
    memcpy(__dst, __src, 0x90uLL);
  }

  else
  {
    sub_24DFE6CAC(__dst);
  }

  return memcpy(a1, __dst, 0x90uLL);
}

uint64_t sub_24DFE6594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = a1;

  return sub_24DFE5C54(0);
}

uint64_t sub_24DFE65D4(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *(a2 + 64) = *a1;

  *(a2 + 56) = v3;
  return sub_24DFE5C54(0);
}

uint64_t sub_24DFE6628(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24E347358();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0, &unk_24E370F60);
  sub_24E347018();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24E36A270;
  v9 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D837D0];
  v13 = 0xD000000000000038;
  v14 = 0x800000024E39FEF0;
  sub_24E346FE8();
  sub_24DF8C95C(&v13, &qword_27F1E0370, &unk_24E369A10);
  v11 = *(a3 + 32);
  v10 = *(a3 + 40);
  v15 = v9;
  v13 = v11;
  v14 = v10;

  sub_24E346FD8();
  sub_24DF8C95C(&v13, &qword_27F1E0370, &unk_24E369A10);
  (*(v5 + 104))(v7, *MEMORY[0x277D21DE8], v4);
  sub_24E0EF428(v8);

  return (*(v5 + 8))(v7, v4);
}

id *sub_24DFE6878()
{

  return v0;
}

uint64_t sub_24DFE6938()
{
  sub_24DFE6878();

  return MEMORY[0x2821FE8D8](v0, 248, 7);
}

uint64_t sub_24DFE6998(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DFE69D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayerProfileRequiredDataPresenter.DataFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DFE6B30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DFE6B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24DFE6BE8()
{
  result = qword_27F1E00A0;
  if (!qword_27F1E00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E00A0);
  }

  return result;
}

unint64_t sub_24DFE6CCC()
{
  result = qword_27F1E00B0;
  if (!qword_27F1E00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E00B0);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_19Tm()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void sub_24DFE6D8C(int a1)
{
  v2 = *(v1 + 24);
  *(*(v1 + 16) + 128) = a1;
  dispatch_group_leave(v2);
}

uint64_t objectdestroy_44Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_37Tm()
{

  OUTLINED_FUNCTION_16_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_1_30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_24E347A78();
}

_BYTE *storeEnumTagSinglePayload for GameCenterUIFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_24DFE704C()
{
  result = qword_27F1E00F0;
  if (!qword_27F1E00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E00F0);
  }

  return result;
}

uint64_t sub_24DFE70F0()
{
  sub_24E348D18();
  MEMORY[0x25303F880](0);
  return sub_24E348D68();
}

uint64_t sub_24DFE713C(uint64_t a1)
{
  sub_24E348D18();
  MEMORY[0x25303F880](0);
  return sub_24E348D68();
}

uint64_t sub_24DFE717C(double a1, double a2, double a3)
{
  v3 = sub_24DFE71DC(a1, a2, a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3[2];
  v5 = sub_24E346A48();

  return v5;
}

void *sub_24DFE71DC(double a1, double a2, double a3)
{
  v6 = sub_24E343F88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  if (a1 <= 0.0 || a2 <= 0.0 || a3 <= 0.0)
  {
    sub_24E343C98();
    v29 = sub_24E343F78();
    v30 = sub_24E348258();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = 136315394;
      v33 = sub_24E348528();
      v35 = sub_24E1C2BE0(v33, v34, &v46);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2048;
      *(v31 + 14) = a3;
      _os_log_impl(&dword_24DE53000, v29, v30, "SystemAppIcon: Bad size %s or scale %f", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_22_4();
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, a3}];
    sub_24DFE77A4();
    v17 = sub_24DFE7730(0xD000000000000013, 0x800000024E39FF70);
    v18 = [v17 imageForDescriptor_];
    if (v18)
    {
      v19 = v18;
      if (![v18 placeholder] || (v20 = objc_msgSend(v17, sel_prepareImageForDescriptor_, v16), v19, (v19 = v20) != 0))
      {
        v20 = v19;
        v21 = [v20 CGImage];

        if (v21)
        {
          [v20 size];
          v23 = v22;
          v25 = v24;
          [v20 scale];
          v27 = v26;

          type metadata accessor for SystemAppIcon.ImageData();
          result = swift_allocObject();
          result[2] = v21;
          result[3] = v23;
          result[4] = v25;
          result[5] = v27;
          return result;
        }
      }

      sub_24E343C98();
      v40 = sub_24E343F78();
      v41 = sub_24E348258();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v16;
        v46 = v43;
        v44 = v43;
        *v42 = 136315138;
        *(v42 + 4) = OUTLINED_FUNCTION_1_31();
        _os_log_impl(&dword_24DE53000, v40, v41, "SystemAppIcon: Unable to get icon for %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_22_4();
      }

      else
      {
      }

      (*(v7 + 8))(v15, v6);
    }

    else
    {
      sub_24E343C98();
      v36 = sub_24E343F78();
      v37 = sub_24E348258();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46 = v39;
        *v38 = 136315138;
        *(v38 + 4) = OUTLINED_FUNCTION_1_31();
        _os_log_impl(&dword_24DE53000, v36, v37, "SystemAppIcon: Unable to get icon for %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_22_4();
      }

      else
      {
      }

      (*(v7 + 8))(v12, v6);
    }
  }

  return 0;
}

uint64_t sub_24DFE76C0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_24DFE76D4()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_24DFE7730(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_24E347CB8();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

unint64_t sub_24DFE77A4()
{
  result = qword_27F1E00F8;
  if (!qword_27F1E00F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E00F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_24E1C2BE0(0xD000000000000013, v0 | 0x8000000000000000, (v1 - 120));
}

id GKMultiplayerPickerAddFriendsSupplementary.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *GKMultiplayerPickerAddFriendsSupplementary.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v2 = objc_allocWithZone(type metadata accessor for GKAddFriendsLockupView());
  *(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerPickerAddFriendsSupplementary_lockupView) = GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(2, 0x7962626F6CLL, 0xE500000000000000, 0x616C7069746C756DLL, 0xEB00000000726579);
  v3 = OUTLINED_FUNCTION_28();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  v11 = v6;
  [v11 setLayoutMargins_];
  v12 = [v11 layer];
  [v12 setMaskedCorners_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  v14 = [v11 layer];
  [v14 setCornerCurve_];

  v15 = qword_27F1DDDD0;
  v16 = v11;
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor_];
  [v16 addSubview_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24E369990;
  *(v18 + 32) = v16;
  sub_24DFD7FD0(v18, v17);
  v19 = v17;
  [v16 addLayoutGuide_];
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24E36D5F0;
  v22 = [v19 leadingAnchor];
  v23 = [v16 leadingAnchor];
  v24 = OUTLINED_FUNCTION_0_39();

  *(v21 + 32) = v24;
  v25 = [v19 trailingAnchor];

  v26 = [v16 trailingAnchor];
  v27 = OUTLINED_FUNCTION_0_39();

  *(v21 + 40) = v27;
  v28 = [v19 topAnchor];

  v29 = [v16 bottomAnchor];
  v30 = OUTLINED_FUNCTION_0_39();

  *(v21 + 48) = v30;
  v31 = [v19 bottomAnchor];

  v32 = [v16 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:1.0];

  *(v21 + 56) = v33;
  sub_24DFE83EC();
  v34 = sub_24E347EE8();

  [v20 activateConstraints_];

  v35 = [objc_opt_self() whiteColor];
  [v16 setTintColor_];

  return v16;
}

uint64_t GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerPickerAddFriendsSupplementary_lockupView) + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1, v1[1]);
  return v2;
}

uint64_t GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerPickerAddFriendsSupplementary_lockupView) + OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_24DE56C38(a1, a2);
  sub_24DE73FA0(v6, v7);
  return sub_24DE73FA0(a1, a2);
}

uint64_t sub_24DFE8058@<X0>(uint64_t (**a1)()@<X8>)
{
  result = GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24DFE80C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.setter(v4, v3);
}

uint64_t (*GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.getter();
  a1[1] = v3;
  return sub_24DFE81A0;
}

uint64_t sub_24DFE81A0(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_27_1();
    sub_24DE56C38(v2, v3);
    v4 = OUTLINED_FUNCTION_27_1();
    GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.setter(v4, v5);
    v6 = OUTLINED_FUNCTION_27_1();

    return sub_24DE73FA0(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27_1();
    return GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.setter(v9, v10);
  }
}

Swift::Void __swiftcall GKMultiplayerPickerAddFriendsSupplementary.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI42GKMultiplayerPickerAddFriendsSupplementary_lockupView];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [v0 layoutMargins];
  [v1 setFrame_];
}

id GKMultiplayerPickerAddFriendsSupplementary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24DFE83EC()
{
  result = qword_27F1E1F10;
  if (!qword_27F1E1F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E1F10);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_0_39()
{

  return [v0 (v2 + 3941)];
}

uint64_t sub_24DFE84C0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground, v3);
  return *(v0 + v1);
}

uint64_t sub_24DFE8524(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground;
  result = OUTLINED_FUNCTION_22_6(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_24DFE85DC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_wantsAdditionalHorizontalPadding;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_wantsAdditionalHorizontalPadding, v3);
  return *(v0 + v1);
}

uint64_t sub_24DFE8640(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_wantsAdditionalHorizontalPadding;
  result = OUTLINED_FUNCTION_22_6(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_24DFE86D0()
{
  v0 = [objc_allocWithZone(type metadata accessor for SmallFriendLockupView()) initWithFrame_];
  v1 = GKIsRemoteUI();
  v2 = objc_opt_self();
  v3 = &selRef_systemWhiteColor;
  if (!v1)
  {
    v3 = &selRef_systemBlueColor;
  }

  v5 = [v2 *v3];
  sub_24E1E4A64(&v5);

  return v0;
}

id GKDashboardFriendSuggestionCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *GKDashboardFriendSuggestionCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_wantsAdditionalHorizontalPadding) = 1;
  v1 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_friendSuggestionLockupView;
  *(v0 + v1) = sub_24DFE86D0();
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_tapHandler);
  v3 = type metadata accessor for GKDashboardFriendSuggestionCollectionViewCell();
  *v2 = 0;
  v2[1] = 0;
  v10 = v3;
  v4 = OUTLINED_FUNCTION_28();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v10);
  v8 = [v7 contentView];
  [v8 addSubview_];

  return v7;
}

void sub_24DFE88E8()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_wantsAdditionalHorizontalPadding) = 1;
  v1 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_friendSuggestionLockupView;
  *(v0 + v1) = sub_24DFE86D0();
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_tapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

double static GKDashboardFriendSuggestionCollectionViewCell.size(fitting:in:)(void *a1, double a2, double a3)
{
  type metadata accessor for SmallFriendLockupView();
  OUTLINED_FUNCTION_4_19();
  sub_24E348538();
  v5 = v4;
  v7 = v6;
  swift_getObjectType();

  return sub_24E1E89A8(a1, v5, v7);
}

id sub_24DFE8A80(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_friendSuggestionLockupView);
  OUTLINED_FUNCTION_4_19();
  sub_24E348538();

  return [v5 sizeThatFits_];
}

uint64_t sub_24DFE8BD0()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_tapHandler);
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_tapHandler, v4);
  v2 = *v1;
  sub_24DE56C38(*v1, v1[1]);
  return v2;
}

uint64_t sub_24DFE8CCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_tapHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6, v7);
}

uint64_t sub_24DFE8D2C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24DFE8BD0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFE9AF8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24DFE8D9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DF88ACC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return sub_24DFE8CCC(v4, v3);
}

void sub_24DFE8E7C(void *a1, int a2)
{
  v5 = sub_24E3433A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v57 = a2;
    v15 = v2;
    v60 = a1;
    v16 = [v60 contact];
    v17 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithContact_];

    v58 = v17;
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = [v60 contact];
      v20 = [v18 stringFromContact:v19 style:0];

      if (v20)
      {
        v21 = sub_24E347CF8();
        v55 = v22;
        v56 = v21;
      }

      else
      {
        v55 = 0xE000000000000000;
        v56 = 0;
      }

      v24 = v15;
      sub_24E343AA8();
      v25 = sub_24E3436D8();
      v26 = v25;
      v54 = v24;
      v59 = v27;
      if (v57)
      {
        v57 = 1;
        v53 = 0xE90000000000006BLL;
        v51 = v25;
        v52 = 0x72616D6B63656863;
      }

      else
      {
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v30 = v60;
        *(v29 + 24) = v60;
        v31 = v30;
        v57 = 0;
        v52 = v26;
        v53 = v59;
        v51 = sub_24DFE9814;
        v59 = v29;
      }

      v32 = sub_24E347CB8();
      v33 = GKGameCenterUIFrameworkBundle();
      v34 = GKGetLocalizedStringFromTableInBundle();

      v35 = sub_24E347CF8();
      v50 = v36;

      v37 = v58;
      v38 = [v58 internal];
      v39 = [v60 supportsFriendingViaPush];
      *(v14 + 104) = 0u;
      LOBYTE(v34) = v39 ^ 1;
      *(v14 + 120) = 0u;
      *(v14 + 17) = 0;
      v64 = 0;
      memset(v63, 0, sizeof(v63));
      v62 = 0;
      memset(v61, 0, sizeof(v61));
      sub_24E343398();
      (*(v6 + 16))(v8, v11, v5);
      sub_24DFDC008();
      sub_24E348918();
      (*(v6 + 8))(v11, v5);
      *(v14 + 22) = 0;
      *(v14 + 10) = 0u;
      *(v14 + 9) = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 34) = 0;
      *(v14 + 15) = 0u;
      v40 = *(v12 + 56);
      v41 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(&v14[v40], 1, 1, v41);
      v42 = *(v12 + 60);
      v43 = v55;
      *(v14 + 5) = v56;
      *(v14 + 6) = v43;
      v44 = v50;
      *(v14 + 7) = v35;
      *(v14 + 8) = v44;
      *(v14 + 9) = v38;
      v14[80] = 0;
      *(v14 + 11) = 0;
      sub_24DFE981C(v63, (v14 + 144));
      v45 = v53;
      *(v14 + 23) = v52;
      *(v14 + 24) = v45;
      v46 = v59;
      *(v14 + 25) = v51;
      *(v14 + 26) = v46;
      *(v14 + 27) = 0;
      *(v14 + 28) = 0;
      v14[232] = v57;
      sub_24DFE981C(v61, (v14 + 240));
      *&v14[v42] = v37;
      v14[96] = v34;
      v47 = v54;
      sub_24E1E53C4(v14);
      [v47 setNeedsLayout];

      sub_24DFDBCB8(v14, v48);
    }

    else
    {
      v23 = v60;
    }
  }
}

void sub_24DFE936C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_tapHandler;
    swift_beginAccess();
    v6 = *v5;
    v7 = *(v5 + 8);
    sub_24DE56C38(v6, v7);

    if (v6)
    {
      v6(a2);
      sub_24DE73FA0(v6, v7);
    }
  }
}

id sub_24DFE948C(void *a1)
{
  v3 = a1;
  v1 = a1;
  return sub_24E1E4A64(&v3);
}

id sub_24DFE9534()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for GKDashboardFriendSuggestionCollectionViewCell();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground;
  OUTLINED_FUNCTION_5_16(&v0[OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_displayBackground], v10);
  v2 = v0[v1];
  v3 = [v0 contentView];
  v4 = objc_opt_self();
  if (v2 == 1)
  {
    v5 = [v4 labelColor];
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v6 = [v4 clearColor];
  }

  [v3 setBackgroundColor_];

  OUTLINED_FUNCTION_5_16(&v0[OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_wantsAdditionalHorizontalPadding], &v9);
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell_friendSuggestionLockupView];
  [v0 bounds];
  sub_24E3484F8();
  return [v7 setFrame_];
}

void sub_24DFE96FC()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for GKDashboardFriendSuggestionCollectionViewCell();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  sub_24E1E5308();
}

id GKDashboardFriendSuggestionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKDashboardFriendSuggestionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DFE981C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE90, &unk_24E369E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DFE9B38()
{
  sub_24E347208();
  OUTLINED_FUNCTION_1_23();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_40();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OUTLINED_FUNCTION_2_27();
  __swift_allocate_value_buffer(v7, qword_27F20A950);
  v8 = __swift_project_value_buffer(v7, qword_27F20A950);
  sub_24E343268();
  v9 = sub_24E343288();
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24E3471C8();
    (*(*(v9 - 8) + 32))(v8, v2, v9);
    *(v8 + v7[5]) = 1;
    *(v8 + v7[6]) = 0;
    return (*(v4 + 32))(v8 + v7[7], v1, v0);
  }

  return result;
}

uint64_t sub_24DFE9CF0()
{
  sub_24E347208();
  OUTLINED_FUNCTION_1_23();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_40();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OUTLINED_FUNCTION_2_27();
  __swift_allocate_value_buffer(v7, qword_27F20A968);
  v8 = __swift_project_value_buffer(v7, qword_27F20A968);
  sub_24E343268();
  v9 = sub_24E343288();
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_24E347CF8();
    v13 = v12;
    v14 = sub_24E347CF8();
    ActionMetrics.init(domain:eventType:)(v11, v13, v14, v15);
    (*(*(v9 - 8) + 32))(v8, v2, v9);
    *(v8 + v7[5]) = 1;
    *(v8 + v7[6]) = 1;
    return (*(v4 + 32))(v8 + v7[7], v1, v0);
  }

  return result;
}

uint64_t type metadata accessor for ExternalUrlAction(uint64_t a1)
{
  result = qword_27F1E0128;
  if (!qword_27F1E0128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DFE9F54(uint64_t a1)
{
  result = sub_24E343288();
  if (v2 <= 0x3F)
  {
    result = sub_24E347208();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return type metadata accessor for ExternalUrlAction(0);
}

uint64_t type metadata accessor for ProfilePrivacyAction(uint64_t a1)
{
  result = qword_27F1E0138;
  if (!qword_27F1E0138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DFEA094(uint64_t a1)
{
  sub_24DFEA130();
  if (v1 <= 0x3F)
  {
    sub_24DFEA174(319);
    if (v2 <= 0x3F)
    {
      sub_24E347208();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24DFEA130()
{
  result = qword_280BDFA90;
  if (!qword_280BDFA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BDFA90);
  }

  return result;
}

void sub_24DFEA174(uint64_t a1)
{
  if (!qword_280BE0100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF2F8, &unk_24E3800B0);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0100);
    }
  }
}

uint64_t sub_24DFEA1D8(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 2;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakAssign();

  return v1;
}

void sub_24DFEA224(int a1)
{
  v2 = *(v1 + 24);
  if (v2 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2 == 2 || (v4 = 0.0, (v2 & 1) == 0))
    {
      v4 = 1.0;
    }

    v5 = [Strong standardAppearance];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E367D20;
      v8 = *MEMORY[0x277D740C0];
      *(inited + 32) = *MEMORY[0x277D740C0];
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 labelColor];
      v12 = [v11 colorWithAlphaComponent_];

      *(inited + 64) = sub_24DFEA770();
      *(inited + 40) = v12;
      type metadata accessor for Key(0);
      sub_24DFEA7B4();
      sub_24E347C28();
      v13 = sub_24E347BE8();

      [v6 setTitleTextAttributes_];
    }

    else
    {
    }
  }
}

void sub_24DFEA410(char a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  sub_24DFEA224(v2);
}

void sub_24DFEA420(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    [a1 contentOffset];
    v5 = v4;
    v6 = [a1 insetsLayoutMarginsFromSafeArea];
    v7 = 0.0;
    if (v6)
    {
      [a1 safeAreaInsets];
      v7 = -v8;
    }

    v9 = v5 - v7 - *(v1 + 32);
    [v28 _autoScrollEdgeTransitionDistance];
    v11 = v9 / v10;
    if (v11 > 1.0)
    {
      v11 = 1.0;
    }

    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v28 _setManualScrollEdgeAppearanceProgress_];
    v13 = *(v1 + 24);
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v22 = [v28 standardAppearance];
      if (v22)
      {
        v15 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E367D20;
        v23 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v24 = objc_opt_self();
        v25 = v23;
        v20 = [v24 labelColor];
        v21 = [v20 colorWithAlphaComponent_];
        goto LABEL_15;
      }
    }

    else
    {
      v14 = [v28 standardAppearance];
      if (v14)
      {
        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E367D20;
        v17 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v18 = objc_opt_self();
        v19 = v17;
        v20 = [v18 labelColor];
        v21 = [v20 colorWithAlphaComponent_];
LABEL_15:
        v26 = v21;

        *(inited + 64) = sub_24DFEA770();
        *(inited + 40) = v26;
        type metadata accessor for Key(0);
        sub_24DFEA7B4();
        sub_24E347C28();
        v27 = sub_24E347BE8();

        [v15 setTitleTextAttributes_];

        return;
      }
    }
  }
}

uint64_t sub_24DFEA710()
{
  MEMORY[0x253040FB0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_24DFEA770()
{
  result = qword_27F1E5FD0;
  if (!qword_27F1E5FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E5FD0);
  }

  return result;
}

unint64_t sub_24DFEA7B4()
{
  result = qword_27F1DE5D0;
  if (!qword_27F1DE5D0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE5D0);
  }

  return result;
}

uint64_t sub_24DFEA80C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_24E347CF8();

  MEMORY[0x25303E950](0x746E656D656C652ELL, 0xEC000000646E694BLL);
  return v2;
}

uint64_t ResetAnalyticsIdentifierSection.body.getter()
{
  v2 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v0;
  v6 = sub_24E347CB8();
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = OUTLINED_FUNCTION_24_5(v7);

  v9 = sub_24E347CF8();
  v11 = v10;

  v25 = v9;
  v26 = v11;
  sub_24DF90C4C();
  v25 = sub_24E3464E8();
  v26 = v12;
  v27 = v13 & 1;
  v28 = v14;
  v15 = sub_24E347CB8();
  v16 = GKGameCenterUIFrameworkBundle();
  v17 = OUTLINED_FUNCTION_24_5(v16);

  v18 = sub_24E347CF8();
  v20 = v19;

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0148, &unk_24E36D820);
  swift_storeEnumTagMultiPayload();
  v21 = (v5 + *(v2 + 20));
  *v21 = v18;
  v21[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0150, &qword_24E3796C0);
  sub_24DFEB2C8();
  sub_24DFEB5AC(&qword_27F1E0170, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView, &unk_24E36FF04);
  return sub_24E346D18();
}

uint64_t sub_24DFEAAF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ResetAnalyticsIdentifierSection(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830, &qword_24E36BC10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  sub_24E343AA8();
  v22[0] = sub_24E343A48();
  v22[1] = v11;
  sub_24DFEB6BC(v1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_24DFEB720(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_24DF90C4C();
  sub_24E346C08();
  if (*(v1 + *(v4 + 28)))
  {

    v14 = sub_24DFED124();

    v15 = v14 != 1;
    KeyPath = swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    (*(v8 + 32))(a1, v10, v7);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0150, &qword_24E3796C0);
    v19 = (a1 + *(result + 36));
    *v19 = KeyPath;
    v19[1] = sub_24DFEB7E4;
    v19[2] = v17;
  }

  else
  {
    type metadata accessor for GameCenterSettings(0);
    OUTLINED_FUNCTION_0_41();
    sub_24DFEB5AC(v20, v21, &protocol conformance descriptor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t sub_24DFEADB0(uint64_t a1)
{
  v2 = type metadata accessor for ResetAnalyticsIdentifierSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_24DFEB6BC(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E348068();
  v9 = sub_24E348058();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_24DFEB720(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_24E0E26E8();
}

uint64_t sub_24DFEAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24E348068();
  v4[3] = sub_24E348058();
  v6 = sub_24E347FF8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24DFEAFDC, v6, v5);
}

uint64_t sub_24DFEAFDC()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for ResetAnalyticsIdentifierSection(0) + 20));
  v3 = *v2;
  v0[6] = *v2;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_24DFEB0F8;

    return sub_24DFF33B4();
  }

  else
  {
    type metadata accessor for GameCenterSettings(0);
    OUTLINED_FUNCTION_0_41();
    sub_24DFEB5AC(v6, v7, &protocol conformance descriptor for GameCenterSettings);

    return sub_24E345828();
  }
}

uint64_t sub_24DFEB0F8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24DFEB23C, v3, v2);
}

uint64_t sub_24DFEB23C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24DFEB2C8()
{
  result = qword_27F1E0158;
  if (!qword_27F1E0158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0150, &qword_24E3796C0);
    sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168, &unk_24E37BF60, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0158);
  }

  return result;
}

uint64_t type metadata accessor for ResetAnalyticsIdentifierSection(uint64_t a1)
{
  result = qword_27F1E0180;
  if (!qword_27F1E0180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DFEB43C(uint64_t a1)
{
  sub_24DFEB4C0(319);
  if (v2 <= 0x3F)
  {
    sub_24DFEB518(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DFEB4C0(uint64_t a1)
{
  if (!qword_27F1E0190)
  {
    sub_24E345CC8();
    v1 = sub_24E345278();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E0190);
    }
  }
}

void sub_24DFEB518(uint64_t a1, __n128 a2)
{
  if (!qword_27F1E0198)
  {
    type metadata accessor for GameCenterSettings(255);
    sub_24DFEB5AC(&qword_27F1E01A0, type metadata accessor for GameCenterSettings, &protocol conformance descriptor for GameCenterSettings);
    v2 = sub_24E345858();
    if (!v3)
    {
      atomic_store(v2, &qword_27F1E0198);
    }
  }
}

uint64_t sub_24DFEB5AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24DFEB5F4()
{
  result = qword_27F1E01A8;
  if (!qword_27F1E01A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E01B0, &unk_24E36D8C0);
    sub_24DFEB2C8();
    sub_24DFEB5AC(&qword_27F1E0170, type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView, &unk_24E36FF04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E01A8);
  }

  return result;
}

uint64_t sub_24DFEB6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetAnalyticsIdentifierSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFEB720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetAnalyticsIdentifierSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFEB784()
{
  v1 = *(type metadata accessor for ResetAnalyticsIdentifierSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24DFEADB0(v2);
}

uint64_t sub_24DFEB7EC(uint64_t a1)
{
  v4 = *(type metadata accessor for ResetAnalyticsIdentifierSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DF8CD84;

  return sub_24DFEAF44(a1, v6, v7, v1 + v5);
}

void sub_24DFEB8F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 8);
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 16);
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 24);
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 32);
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 40);
  v10 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v10;
  *(v3 + 32) = *(a1 + 32);
  v11 = *(v3 + 48);
  *(v3 + 48) = v2;
  v12 = OUTLINED_FUNCTION_0_42();
  sub_24DFD7E3C(v12, v13, v14, v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_0_42();
  sub_24DFEC8B4(v19, v20, v21, v22, v23, v24, v25);
  v33[0] = v4;
  v33[1] = v5;
  v33[2] = v6;
  v33[3] = v7;
  v33[4] = v8;
  v33[5] = v9;
  v34 = v11;
  sub_24DFEC4FC(v33);
  v26 = OUTLINED_FUNCTION_0_42();

  sub_24DFEC8B4(v26, v27, v28, v29, v30, v31, v32);
}

void sub_24DFEB9A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView);
  if (a2)
  {
    v4 = v3;
    v6 = sub_24E347CB8();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 _setGroupName_];
}

void sub_24DFEBA38()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 8];
  switch(v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 48])
  {
    case 1:
      v30 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 16];
      v31 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 24];
      v32 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 32];
      v33 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 40];
      v34 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
      v35 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer];
      v36 = v1;
      v47 = v2;
      [v35 setAnchorPoint_];
      v37 = *&v0[v34];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00, &qword_24E372B80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_24E36A270;
      v39 = v37;
      v40 = [v36 CGColor];
      type metadata accessor for CGColor(0);
      v42 = v41;
      *(v38 + 56) = v41;
      *(v38 + 32) = v40;
      v43 = [v47 CGColor];
      *(v38 + 88) = v42;
      *(v38 + 64) = v43;
      sub_24E27B56C(v38, v39);

      [*&v0[v34] setStartPoint_];
      [*&v0[v34] setEndPoint_];
      [*&v0[v34] setHidden_];
      v44 = [v0 layer];
      [v44 addSublayer_];

      [*&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView] setHidden_];
      [v0 setBackgroundColor_];

      OUTLINED_FUNCTION_1_32();

      break;
    case 2:
      v14 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView;
      v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView];

      [v15 setHidden_];
      v16 = *&v0[v14];
      sub_24DFEC928();
      v17 = v16;
      v18 = sub_24E347EE8();
      v19 = OUTLINED_FUNCTION_2_28();
      sub_24DFEC8B4(v19, v20, v21, v22, v23, v24, 2);
      [v17 setBackgroundEffects_];

      v25 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
      [*&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer] setHidden_];
      [*&v0[v25] removeFromSuperlayer];
      OUTLINED_FUNCTION_1_32();

      goto LABEL_7;
    case 3:
      [v0 setBackgroundColor_];
      [*&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView] setHidden_];
      [*&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer] setHidden_];
      OUTLINED_FUNCTION_1_32();

LABEL_7:
      [v26 v27];
      break;
    default:
      v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView];
      v4 = v1;
      [v3 setHidden_];
      v5 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
      [*&v0[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer] setHidden_];
      [*&v0[v5] removeFromSuperlayer];
      [v0 setBackgroundColor_];
      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_1_32();

      sub_24DFEC8B4(v6, v7, v8, v9, v10, v11, v12);
      break;
  }
}

void sub_24DFEBE24(char a1)
{
  v3 = [v1 layer];
  [v3 setMaskedCorners_];

  v4 = [v1 layer];
  [v4 setMasksToBounds_];

  v9 = [v1 layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v5, qword_27F20BF00);
  v6 = [v1 traitCollection];
  v8 = sub_24E336558(v6, v7);

  [v9 setCornerRadius_];
}

uint64_t sub_24DFEBF78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CC0, &qword_24E36D988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36D920;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BE0, &qword_24E36D980);
  result = sub_24E347C28();
  qword_27F1E01C0 = result;
  return result;
}

char *sub_24DFEC14C(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_4_20(OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle);
  v4[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted] = 0;
  v9 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundHighlightView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v24.receiver = v4;
  v24.super_class = type metadata accessor for BackgroundView();
  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setClipsToBounds_];
  v13 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
  [*&v12[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer] setAnchorPoint_];
  v14 = qword_27F1DD638;
  v15 = *&v12[v13];
  if (v14 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BE0, &qword_24E36D980);
  v16 = sub_24E347BE8();
  [v15 setActions_];

  v17 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundHighlightView;
  v18 = *&v12[OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundHighlightView];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 whiteColor];
  v22 = [v21 colorWithAlphaComponent_];

  [v20 setBackgroundColor_];
  [v12 addSubview_];
  [v12 addSubview_];
  [*&v12[v17] setHidden_];
  sub_24DFEBA38();

  return v12;
}

void sub_24DFEC3F8()
{
  OUTLINED_FUNCTION_4_20(OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundHighlightView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24DFEC4FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 40);
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle + 48);
  v13 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundStyle);
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v11[2] = *(a1 + 32);
  v12 = v2;
  sub_24DFD7E3C(v13, v3, v4, v5, v6, v7, v8);
  v10 = static ViewBackgroundStyle.== infix(_:_:)(&v13, v11);
  sub_24DFEC8B4(v13, v14, v15, v16, v17, v18, v19);
  if (!v10)
  {

    sub_24DFEBA38();
  }
}

void sub_24DFEC5E0(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BackgroundView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer;
  if (([*(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundGradientLayer) isHidden] & 1) == 0)
  {
    v3 = *&v2[v1];
    OUTLINED_FUNCTION_3_26();
    [v2 setFrame_];
  }

  v4 = OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView;
  if (([*(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundVisualEffectView) isHidden] & 1) == 0)
  {
    v5 = *&v4[v1];
    OUTLINED_FUNCTION_3_26();
    [v4 setFrame_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_backgroundHighlightView);
  OUTLINED_FUNCTION_3_26();
  [v4 setFrame_];
}

void sub_24DFEC70C(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for BackgroundView();
  objc_msgSendSuper2(&v2, sel__dynamicUserInterfaceTraitDidChange);
  sub_24DFEBA38();
}

id sub_24DFEC78C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24DFEC8B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 2)
  {
  }

  else
  {
    if (a7 == 1)
    {

      a1 = a2;
    }

    else
    {
      if (a7)
      {
        return;
      }
    }
  }
}

unint64_t sub_24DFEC928()
{
  result = qword_27F1E9F20;
  if (!qword_27F1E9F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E9F20);
  }

  return result;
}

id OUTLINED_FUNCTION_3_26()
{

  return [v0 (v1 + 3832)];
}

double OUTLINED_FUNCTION_4_20@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 3;
  return result;
}

uint64_t sub_24DFECA10(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_24E1D5B0C();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

void sub_24DFECA80()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  v3 = 0;
  for (i = 32; ; i += 16)
  {
    if (v2 == v3)
    {

      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    swift_unknownObjectRetain();
    sub_24E1FC1B8();
    swift_unknownObjectRelease();
  }

  __break(1u);
}

uint64_t sub_24DFECB24()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_24DFECB5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_19();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24DFECBD0(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24DFECC60(void *a1)
{
  [a1 setLayoutMarginsFollowReadableWidth_];
  if (PSShouldInsetListView())
  {
    [a1 frame];
    v3 = v2;
    v4 = [a1 readableContentGuide];
    [v4 layoutFrame];
    v6 = v5;

    v7 = (v3 - v6) * 0.5;
    v8 = *MEMORY[0x277D76F30];
  }

  else
  {
    v8 = *MEMORY[0x277D76F30];
    v7 = *MEMORY[0x277D76F30];
  }

  sub_24DFECB5C();
  result = sub_24E3451A8();
  if ((result & 1) == 0)
  {

    return sub_24DFECBD0(v8, v7, v8, v7);
  }

  return result;
}

uint64_t sub_24DFECD9C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_60();
  sub_24E344E58();

  return v3;
}

uint64_t sub_24DFECE18(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24DFECE84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_19();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24DFECEF4()
{
  OUTLINED_FUNCTION_23_0();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24DFECF6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_19();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24DFECFDC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_33_3(v0);
}

unint64_t sub_24DFED03C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_19();
  sub_24E344E58();

  return v1 | (v2 << 32);
}

uint64_t sub_24DFED0BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_33_3(v0);
}

uint64_t sub_24DFED124()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_19();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24DFED194(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24E344E68();
}

uint64_t sub_24DFED204()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_19();
  sub_24E344E58();

  return v1;
}

uint64_t sub_24DFED274()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_33_3(v0);
}

uint64_t sub_24DFED2D4()
{
  v1 = sub_24E343F88();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DFED390, 0, 0);
}

uint64_t sub_24DFED390()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_41_2();
    *v3 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "GameCenterSettings: Creating a snapshot bag", v3, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0380, &qword_24E36DE00);
  *v7 = v0;
  v7[1] = sub_24DFED504;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822007B8](v8);
}

uint64_t sub_24DFED504()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24DFED5E8()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_21_5();

  return v2(v1);
}

double sub_24DFED648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0388, &qword_24E36DE08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24DFF6174;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DFEDCCC;
  aBlock[3] = &block_descriptor_167;
  v10 = _Block_copy(aBlock);

  [v7 getBagDataWithHandler_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return result;
}

void sub_24DFED83C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_24E343F88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  if (a3)
  {
    v36 = a1;
    v37 = v8;
    v18 = a3;
    sub_24E343C98();
    v19 = a3;
    v20 = sub_24E343F78();
    v21 = sub_24E348258();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = a4;
      v24 = v23;
      *v22 = 138412290;
      v25 = a3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_24DE53000, v20, v21, "Snapshot bag data fetch failed: %@", v22, 0xCu);
      sub_24DFA9298(v24, &unk_27F1DF730, &qword_24E36DA40);
      MEMORY[0x253040EE0](v24, -1, -1);
      MEMORY[0x253040EE0](v22, -1, -1);
    }

    else
    {
    }

    v8 = v37;
    (*(v9 + 8))(v17, v37);
    a1 = v36;
  }

  if (a2 >> 60 == 15)
  {
    sub_24E343C98();
    v27 = sub_24E343F78();
    v28 = sub_24E348258();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24DE53000, v27, v28, "Snapshot bag data was nil", v29, 2u);
      MEMORY[0x253040EE0](v29, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    v38 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0388, &qword_24E36DE08);
    sub_24E348018();
  }

  else
  {
    sub_24DF88A8C(0, &qword_27F1E0390, 0x277CEE6A0);
    sub_24DFF6270(a1, a2);
    sub_24DFF6284(a1, a2);
    v30 = sub_24DFEDC54(a1, a2);
    sub_24E343C98();
    v31 = sub_24E343F78();
    v32 = sub_24E348238();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_24DE53000, v31, v32, "GameCenterSettings: Successfully build AMSSnapshotBag", v33, 2u);
      MEMORY[0x253040EE0](v33, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v38 = v30;
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0388, &qword_24E36DE08);
    sub_24E348018();
    sub_24DFF6204(a1, a2);
  }
}

id sub_24DFEDC54(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_24E343298();
  v6 = [v4 initWithData_];

  sub_24DFF6218(a1, a2);
  return v6;
}

uint64_t sub_24DFEDCCC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_24E3432A8();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_24DFF6204(v4, v8);
}

uint64_t sub_24DFEDD90()
{
  OUTLINED_FUNCTION_9_7();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_24DFEDE5C;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822007B8](v2);
}

uint64_t sub_24DFEDE5C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

double sub_24DFEDF60(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378, &qword_24E36DBB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() proxyForLocalPlayer];
  v8 = [v7 profileServicePrivate];

  v9 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v4 + 32))(v11 + v10, v6, v3);
  aBlock[4] = sub_24DFF60F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DFE5584;
  aBlock[3] = &block_descriptor_113;
  v12 = _Block_copy(aBlock);

  [v8 getProfilePrivacyWithHandler_];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24DFEE180(int a1, uint64_t a2)
{
  v3 = sub_24E343F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343C98();
  v7 = sub_24E343F78();
  v8 = sub_24E348238();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_24DE53000, v7, v8, "GameCenterSettings: loadCurrentPrivacyOption - %d", v9, 8u);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = sub_24DFED03C();
    if ((v10 & 0x100000000) != 0 || (v11 = v10, (v10 - 1) < 2) || !v10 || v10 == 3)
    {
      sub_24DFED274();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378, &qword_24E36DBB0);
      sub_24E348018();
    }

    else
    {
      type metadata accessor for GKPlayerAgeCategory(0);
      v13[1] = v11;
      result = sub_24E348C58();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378, &qword_24E36DBB0);
    return sub_24E348018();
  }

  return result;
}

uint64_t sub_24DFEE3D0()
{
  OUTLINED_FUNCTION_47_2();
  v0[2] = 0xD00000000000001DLL;
  v0[3] = 0x800000024E3A0650;
  v0[4] = 0x7D6E6F696765727BLL;
  v0[5] = 0xE800000000000000;
  sub_24E3433E8();
  v1 = sub_24E347D38();
  v3 = v2;

  v0[6] = v1;
  v0[7] = v3;
  sub_24DF90C4C();
  v4 = sub_24E348738();
  v6 = v5;

  v0[11] = v6;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  v0[13] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0, qword_24E36CB90);
  *v8 = v0;
  v8[1] = sub_24DFEE594;
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822007B8](v9);
}

uint64_t sub_24DFEE594()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24DFEE6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0360, &qword_24E36DB98);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 utilityService];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8, &unk_24E36DBA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24E367D20;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24E347EE8();

  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_24DFF6050;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E2F0A38;
  aBlock[3] = &block_descriptor_103;
  v16 = _Block_copy(aBlock);

  [v11 getStoreBagValuesForKeys:v13 handler:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

uint64_t sub_24DFEE92C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_24E343F88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (!a1)
  {
    v36 = 0u;
    v37 = 0u;
    goto LABEL_8;
  }

  v32 = a3;
  v33 = a4;

  sub_24E348918();
  sub_24E12C94C(a1, &v36);
  sub_24DF8BE60(&v34);
  if (!*(&v37 + 1))
  {
LABEL_8:
    sub_24DFA9298(&v36, &qword_27F1E0370, &unk_24E369A10);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v14 = v34;
    v15 = v35;
    sub_24E343C98();

    v16 = sub_24E343F78();
    v17 = sub_24E348278();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v14;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = v15;
      v21 = v20;
      v34 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_24E1C2BE0(a3, a4, &v34);
      _os_log_impl(&dword_24DE53000, v16, v17, "GameCenterSettings: loadSafetyLinkInformation - getStoreBagValues returned safety link for key: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v22 = v21;
      v15 = v30;
      MEMORY[0x253040EE0](v22, -1, -1);
      v23 = v19;
      v14 = v31;
      MEMORY[0x253040EE0](v23, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    v34 = v14;
    v35 = v15;
    goto LABEL_12;
  }

LABEL_9:
  sub_24E343C98();

  v24 = sub_24E343F78();
  v25 = sub_24E348278();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_24E1C2BE0(a3, a4, &v34);
    _os_log_impl(&dword_24DE53000, v24, v25, "GameCenterSettings: loadSafetyLinkInformation - safety link not for found in bag for key: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x253040EE0](v27, -1, -1);
    MEMORY[0x253040EE0](v26, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v34 = 0;
  v35 = 0;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0360, &qword_24E36DB98);
  return sub_24E348018();
}

uint64_t sub_24DFEECD0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_29_5();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v1[2] = 0xD000000000000016;
  v1[3] = 0x800000024E3A0700;
  v1[4] = 0xD000000000000016;
  v1[5] = 0x800000024E3A0720;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0398, &qword_24E36DE10);
  *v2 = v0;
  v2[1] = sub_24DFEEDF4;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x2822007B8](v3);
}

uint64_t sub_24DFEEDF4()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24DFEEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03A0, &qword_24E36DE18);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v23 = [v12 utilityService];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8, &unk_24E36DBA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24E36A270;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = a4;
  v15 = v21;
  *(v13 + 48) = a4;
  *(v13 + 56) = v15;

  v20 = sub_24E347EE8();

  (*(v9 + 16))(v11, v22, v8);
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = v14;
  *(v17 + 5) = v15;
  (*(v9 + 32))(&v17[v16], v11, v8);
  aBlock[4] = sub_24DFF62E8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E2F0A38;
  aBlock[3] = &block_descriptor_174;
  v18 = _Block_copy(aBlock);

  v19 = v20;
  [v23 getStoreBagValuesForKeys:v20 handler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_24DFEF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24E343F88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = a3;
    v47 = a4;

    sub_24E348918();
    sub_24E12C94C(a1, &v50);
    sub_24DF8BE60(&v48);
    if (*(&v51 + 1))
    {
      v15 = swift_dynamicCast();
      if (v15)
      {
        v16 = v48;
      }

      else
      {
        v16 = 0;
      }

      v17 = v15 ^ 1;
      goto LABEL_10;
    }
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_24DFA9298(&v50, &qword_27F1E0370, &unk_24E369A10);
  v16 = 0;
  if (!a1)
  {
    v50 = 0u;
    v51 = 0u;
    v17 = 1;
    goto LABEL_16;
  }

  v17 = 1;
LABEL_10:
  v46 = a5;
  v47 = a6;

  sub_24E348918();
  sub_24E12C94C(a1, &v50);
  sub_24DF8BE60(&v48);
  if (!*(&v51 + 1))
  {
LABEL_16:
    sub_24DFA9298(&v50, &qword_27F1E0370, &unk_24E369A10);
    v19 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v18 = swift_dynamicCast();
  if (v18)
  {
    v19 = v48;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 ^ 1;
LABEL_17:
  v45 = v20;
  sub_24E343C98();
  v21 = sub_24E343F78();
  v22 = sub_24E348278();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v44 = v17;
    v26 = v25;
    *&v50 = v25;
    *v24 = 136315394;
    v48 = v16;
    LOBYTE(v49) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03A8, &unk_24E36DE20);
    v42 = v16;
    v27 = sub_24E347D28();
    v41 = v11;
    v29 = v12;
    v30 = sub_24E1C2BE0(v27, v28, &v50);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v48 = v43;
    v31 = v45;
    LOBYTE(v49) = v45;
    v32 = sub_24E347D28();
    v34 = sub_24E1C2BE0(v32, v33, &v50);
    v16 = v42;

    *(v24 + 14) = v34;
    _os_log_impl(&dword_24DE53000, v21, v22, "GameCenterSettings: loadNicknameLengthLimit - bag contains min:%s max:%s", v24, 0x16u);
    swift_arrayDestroy();
    v35 = v26;
    v17 = v44;
    MEMORY[0x253040EE0](v35, -1, -1);
    v36 = v24;
    v19 = v43;
    MEMORY[0x253040EE0](v36, -1, -1);

    (*(v29 + 8))(v14, v41);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v31 = v45;
  }

  if (v17)
  {
    v37 = 0;
  }

  else
  {
    v37 = v16;
  }

  if (v31)
  {
    v38 = 0;
  }

  else
  {
    v38 = v19;
  }

  v48 = v37;
  v49 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03A0, &qword_24E36DE18);
  return sub_24E348018();
}

uint64_t GameCenterSettings.__allocating_init()()
{
  OUTLINED_FUNCTION_9_7();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_49_2(v1);

  return GameCenterSettings.init()();
}

uint64_t sub_24DFEF640()
{
  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  OUTLINED_FUNCTION_13_5();
  v3 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v4 = v3;

  OUTLINED_FUNCTION_21_5();

  return v5(v2);
}

uint64_t GameCenterSettings.init()()
{
  OUTLINED_FUNCTION_9_7();
  v1[209] = v0;
  v1[210] = *v0;
  v2 = sub_24E343F88();
  v1[211] = v2;
  OUTLINED_FUNCTION_6_15(v2);
  v1[212] = v3;
  v1[213] = OUTLINED_FUNCTION_54_1();
  v1[214] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01F0, &qword_24E36D9A0);
  v1[215] = v4;
  OUTLINED_FUNCTION_6_15(v4);
  v1[216] = v5;
  v1[217] = OUTLINED_FUNCTION_32_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01F8, &qword_24E36D9A8);
  v1[218] = v6;
  OUTLINED_FUNCTION_6_15(v6);
  v1[219] = v7;
  v1[220] = OUTLINED_FUNCTION_32_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0200, &qword_24E36D9B0);
  v1[221] = v8;
  OUTLINED_FUNCTION_6_15(v8);
  v1[222] = v9;
  v1[223] = OUTLINED_FUNCTION_32_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0208, &qword_24E36D9B8);
  v1[224] = v10;
  OUTLINED_FUNCTION_6_15(v10);
  v1[225] = v11;
  v1[226] = OUTLINED_FUNCTION_32_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0210, &qword_24E36D9C0);
  v1[227] = v12;
  OUTLINED_FUNCTION_6_15(v12);
  v1[228] = v13;
  v1[229] = OUTLINED_FUNCTION_32_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0218, &qword_24E36D9C8);
  v1[230] = v14;
  OUTLINED_FUNCTION_6_15(v14);
  v1[231] = v15;
  v1[232] = OUTLINED_FUNCTION_32_4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0220, &qword_24E36D9D0);
  v1[233] = v16;
  OUTLINED_FUNCTION_6_15(v16);
  v1[234] = v17;
  v1[235] = OUTLINED_FUNCTION_32_4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0228, &qword_24E36D9D8);
  v1[236] = v18;
  OUTLINED_FUNCTION_6_15(v18);
  v1[237] = v19;
  v1[238] = OUTLINED_FUNCTION_32_4();
  v20 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DFEFAC0()
{
  v1 = *(v0 + 1904);
  v2 = *(v0 + 1896);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1872);
  v27 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v28 = *(v0 + 1840);
  v29 = *(v0 + 1832);
  v30 = *(v0 + 1824);
  v31 = *(v0 + 1816);
  v32 = *(v0 + 1808);
  v33 = *(v0 + 1800);
  v34 = *(v0 + 1792);
  v6 = *(v0 + 1672);
  v7 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__listInset;
  *(v0 + 1464) = 0u;
  *(v0 + 1480) = 0u;
  sub_24E344E28();
  (*(v2 + 32))(v6 + v7, v1, v3);
  *(v6 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__didApplyLayoutMarginsWorkaround) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_willDisplayPlayerProfile;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0240, &unk_24E36D9E0);
  swift_allocObject();
  *(v6 + v8) = sub_24E344E08();
  *(v0 + 2029) = 0;
  sub_24E344E28();
  v9 = *(v4 + 32);
  v10 = OUTLINED_FUNCTION_40_2();
  v9(v10);
  *(v0 + 2030) = 0;
  sub_24E344E28();
  v11 = OUTLINED_FUNCTION_40_2();
  v9(v11);
  *(v0 + 2031) = 0;
  sub_24E344E28();
  v12 = OUTLINED_FUNCTION_40_2();
  v9(v12);
  v13 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__safetyLinkURL;
  *(v0 + 1560) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0, qword_24E36CB90);
  sub_24E344E28();
  (*(v5 + 32))(v6 + v13, v27, v28);
  v14 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__localPlayer;
  v15 = objc_opt_self();
  *(v0 + 1912) = v15;
  *(v0 + 1576) = [v15 local];
  sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
  sub_24E344E28();
  (*(v30 + 32))(v6 + v14, v29, v31);
  v16 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__profilePrivacy;
  *(v0 + 2024) = 0;
  *(v0 + 2028) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0288, &qword_24E36D9F0);
  sub_24E344E28();
  (*(v33 + 32))(v6 + v16, v32, v34);
  *(v0 + 2032) = 0;
  *(v0 + 2036) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0298, &qword_24E36D9F8);
  sub_24E344E28();
  v17 = OUTLINED_FUNCTION_44_2();
  v18(v17);
  *(v0 + 2037) = 0;
  sub_24E344E28();
  v19 = OUTLINED_FUNCTION_44_2();
  v20(v19);
  v21 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_scrollObservation;
  type metadata accessor for SettingsScrollObservation();
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  *(v6 + v21) = v22;
  *(v0 + 2016) = 0x200000002;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02B0, &qword_24E36DA00);
  sub_24E344E28();
  v23 = OUTLINED_FUNCTION_44_2();
  v24(v23);
  v25 = swift_task_alloc();
  *(v0 + 1920) = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_49_2(v25);

  return sub_24DFEECBC();
}

uint64_t sub_24DFEFF28()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_8_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1928) = v3;
  *(v1 + 1936) = v4;

  v5 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24DFF0014()
{
  OUTLINED_FUNCTION_9_7();
  v1 = v0[242];
  v2 = v0[239];
  v3 = v0[209];
  *(v3 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_minNicknameLength) = v0[241];
  *(v3 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_maxNicknameLength) = v1;
  v0[243] = [v2 local];
  v4 = swift_task_alloc();
  v0[244] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_49_2(v4);

  return GKLocalPlayer.loadAuthenticatedProfileWithProfile(discardingStaleData:)(1);
}

uint64_t sub_24DFF00E4()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_8_14();
  *v2 = v1;
  v4 = *(v3 + 1944);
  v5 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;
  *(v8 + 1960) = v7;

  v9 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24DFF01E0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_29_5();
  v3 = *(v1 + 1960);
  if (v3)
  {
    sub_24E343C98();
    v4 = v3;
    v5 = sub_24E343F78();
    sub_24E348258();
    OUTLINED_FUNCTION_53_1();
    if (os_log_type_enabled(v5, v0))
    {
      OUTLINED_FUNCTION_43_2();
      v6 = OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_55_1(5.7779e-34);
      v7 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_37_3(v7);
      _os_log_impl(&dword_24DE53000, v5, v0, "GameCenterSettings: loadAuthenticatedProfileWithProfile failed with error - %@", v2, 0xCu);
      sub_24DFA9298(v6, &unk_27F1DF730, &qword_24E36DA40);
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_16_10();
    }

    v8 = *(v1 + 1696);

    *(v1 + 1968) = *(v8 + 8);
    *(v1 + 1976) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9 = OUTLINED_FUNCTION_58_1();
    v10(v9);
    swift_getErrorValue();
    if (sub_24E348CB8() == 5000)
    {
      v11 = [*(v1 + 1912) local];
      *(v1 + 1984) = v11;
      *(v1 + 1296) = v1;
      *(v1 + 1304) = sub_24DFF0480;
      v12 = swift_continuation_init();
      *(v1 + 1456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0, &unk_24E36BB30);
      *(v1 + 1432) = v12;
      *(v1 + 1400) = MEMORY[0x277D85DD0];
      *(v1 + 1408) = 1107296256;
      *(v1 + 1416) = sub_24DFECA10;
      *(v1 + 1424) = &block_descriptor_11;
      [v11 signOutWithCompletionHandler_];
      OUTLINED_FUNCTION_64_0();

      return MEMORY[0x282200938](v13);
    }
  }

  v15 = swift_task_alloc();
  *(v1 + 2000) = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_49_2(v15);
  OUTLINED_FUNCTION_64_0();

  return sub_24DFED2D4();
}

uint64_t sub_24DFF0480()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_8_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1992) = *(v3 + 1328);
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DFF057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_47_2();
  v13 = *(v12 + 1984);

  *(*(v12 + 1672) + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_bag) = 0;
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_29_2();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_24DFF0644()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_8_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2008) = v3;

  v4 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DFF072C()
{
  OUTLINED_FUNCTION_9_7();
  *(*(v0 + 1672) + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_bag) = *(v0 + 2008);
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 656);
}

uint64_t sub_24DFF0870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_29_2();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_24DFF0918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_47_2();
  v13 = *(v12 + 1992);
  v14 = *(v12 + 1984);
  swift_willThrow();

  sub_24E343C98();
  v15 = v13;
  v16 = sub_24E343F78();
  LOBYTE(v14) = sub_24E348258();

  v17 = os_log_type_enabled(v16, v14);
  v18 = *(v12 + 1992);
  v19 = *(v12 + 1960);
  if (v17)
  {
    v20 = OUTLINED_FUNCTION_43_2();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v18;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    OUTLINED_FUNCTION_26_6();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_24DFA9298(v21, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_12_11();
  }

  else
  {
  }

  (*(v12 + 1968))(*(v12 + 1704), *(v12 + 1688));
  *(*(v12 + 1672) + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_bag) = 0;
  OUTLINED_FUNCTION_7_15();

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_29_2();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_24DFF0B28()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_bag);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24DFF0BC8;
  v3 = *(v0 + 16);

  return sub_24DFF0D34(v1, v3);
}

uint64_t sub_24DFF0BC8()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

uint64_t sub_24DFF0CAC()
{
  OUTLINED_FUNCTION_9_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_59(v1);

  return sub_24DFF0B08(v3, v4);
}

uint64_t sub_24DFF0D34(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24E343F88();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_24E348068();
  v2[8] = sub_24E348058();
  v5 = sub_24E347FF8();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_24DFF0E34, v5, v4);
}

uint64_t sub_24DFF0E34()
{
  OUTLINED_FUNCTION_29_5();
  if (*(v0 + 16))
  {
    swift_unknownObjectRetain();
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_24DFF0FA0;

    return sub_24DFF2304();
  }

  else
  {

    sub_24DFED194(0);
    sub_24E343C98();
    v3 = sub_24E343F78();
    v4 = sub_24E348278();
    if (OUTLINED_FUNCTION_50_1(v4))
    {
      *OUTLINED_FUNCTION_41_2() = 0;
      OUTLINED_FUNCTION_26_6();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_12_11();
    }

    v10 = OUTLINED_FUNCTION_39_1();
    v11(v10);

    OUTLINED_FUNCTION_12_5();

    return v12();
  }
}

uint64_t sub_24DFF0FA0()
{
  OUTLINED_FUNCTION_8_9();
  v3 = v2;
  OUTLINED_FUNCTION_13_5();
  v5 = v4;
  OUTLINED_FUNCTION_5_20();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (v0)
  {
    v9 = *(v5 + 72);
    v10 = *(v5 + 80);
    v11 = sub_24DFF113C;
  }

  else
  {
    *(v5 + 104) = v3 & 1;
    v9 = *(v5 + 72);
    v10 = *(v5 + 80);
    v11 = sub_24DFF10B4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_24DFF10B4()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 104);

  sub_24DFED194(v1);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_5();

  return v2();
}

uint64_t sub_24DFF113C()
{
  OUTLINED_FUNCTION_30_5();
  v2 = *(v0 + 96);

  sub_24E343C98();
  v3 = v2;
  v4 = sub_24E343F78();
  v5 = sub_24E348258();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    OUTLINED_FUNCTION_43_2();
    v7 = OUTLINED_FUNCTION_27_4();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_37_3(v9);
    _os_log_impl(&dword_24DE53000, v4, v5, "Unable to determine onDemandRotationEnabled, error: %@", v1, 0xCu);
    sub_24DFA9298(v7, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_16_10();
  }

  v10 = *(v0 + 96);

  v11 = OUTLINED_FUNCTION_58_1();
  v12(v11);
  sub_24DFED194(0);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_5();

  return v13();
}

uint64_t sub_24DFF12B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DFF1340;

  return sub_24DFF14D8();
}

uint64_t sub_24DFF1340()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

uint64_t sub_24DFF1424()
{
  OUTLINED_FUNCTION_9_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_59(v1);

  return sub_24DFF12B0();
}

uint64_t sub_24DFF14D8()
{
  OUTLINED_FUNCTION_9_7();
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0348, &qword_24E36DB88);
  OUTLINED_FUNCTION_4_5(v2);
  v1[19] = OUTLINED_FUNCTION_32_4();
  v3 = sub_24E343428();
  v1[20] = v3;
  OUTLINED_FUNCTION_6_15(v3);
  v1[21] = v4;
  v1[22] = OUTLINED_FUNCTION_32_4();
  v5 = sub_24E3433F8();
  v1[23] = v5;
  OUTLINED_FUNCTION_6_15(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_32_4();
  sub_24E348068();
  v7 = sub_24E348058();
  v1[26] = v7;
  v9 = OUTLINED_FUNCTION_65(v7, MEMORY[0x277D85700]);
  v1[27] = v9;
  v1[28] = v8;

  return MEMORY[0x2822009F8](sub_24DFF1628, v9, v8);
}

uint64_t sub_24DFF1628()
{
  OUTLINED_FUNCTION_8_9();
  v1 = sub_24DFECF6C();
  v2 = sub_24E245A0C();

  sub_24DFECE04(v2 & 1);
  if (sub_24DFECD88())
  {
    v3 = sub_24DFECF6C();
    [v3 clearInMemoryCachedAvatars];
  }

  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_24DFF1708;

  return sub_24DFEDD78();
}

uint64_t sub_24DFF1708()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_24DFF181C, v5, v4);
}

uint64_t sub_24DFF181C()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_29_5();
  v1 = v0[23];
  v2 = v0[19];
  sub_24E343418();
  sub_24E343408();
  v3 = OUTLINED_FUNCTION_60();
  v4(v3);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_24DFA9298(v0[19], &qword_27F1E0348, &qword_24E36DB88);
    v5 = [objc_opt_self() proxyForLocalPlayer];
    v6 = [v5 accountServicePrivate];
    v0[33] = v6;

    v7 = [objc_opt_self() local];
    v8 = [v7 internal];

    v9 = [v8 playerID];
    if (!v9)
    {
      sub_24E347CF8();
      v9 = sub_24E347CB8();
    }

    v0[34] = v9;
    v0[2] = v0;
    OUTLINED_FUNCTION_19_6();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0350, &qword_24E36DB90);
    OUTLINED_FUNCTION_18_9(v10);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_17_10();
    [v6 getAccountAgeCategoryForPlayerID:v9 withCompletion:v0 + 10];
    OUTLINED_FUNCTION_64_0();

    return MEMORY[0x282200938](v11);
  }

  else
  {
    (*(v0[24] + 32))(v0[25], v0[19], v0[23]);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_24DFF1A94;
    OUTLINED_FUNCTION_64_0();

    return sub_24DFEE3B8(v14);
  }
}

uint64_t sub_24DFF1A94()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_5_20();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_8_14();
  *v5 = v4;
  *(v8 + 248) = v6;
  *(v8 + 256) = v7;

  v9 = *(v1 + 224);
  v10 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_24DFF1BA8, v10, v9);
}

uint64_t sub_24DFF1BA8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_29_5();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_24DFECEF4();
  (*(v2 + 8))(v1, v3);
  v4 = [objc_opt_self() proxyForLocalPlayer];
  v5 = [v4 accountServicePrivate];
  v0[33] = v5;

  v6 = [objc_opt_self() local];
  v7 = [v6 internal];

  v8 = [v7 playerID];
  if (!v8)
  {
    sub_24E347CF8();
    v8 = sub_24E347CB8();
  }

  v0[34] = v8;
  v0[2] = v0;
  OUTLINED_FUNCTION_19_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0350, &qword_24E36DB90);
  OUTLINED_FUNCTION_18_9(v9);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_17_10();
  [v5 getAccountAgeCategoryForPlayerID:v8 withCompletion:v0 + 10];
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x282200938](v10);
}

uint64_t sub_24DFF1D60()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_5_20();
  *v1 = v0;
  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return MEMORY[0x2822009F8](sub_24DFF1E58, v4, v3);
}

uint64_t sub_24DFF1E58()
{
  OUTLINED_FUNCTION_30_5();
  v1 = *(v0 + 272);

  sub_24DFED0BC();
  swift_unknownObjectRelease();

  sub_24DFECD74(1);

  OUTLINED_FUNCTION_12_5();

  return v2();
}

id sub_24DFF1F2C(SEL *a1)
{
  result = [objc_opt_self() shared];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24DFF1F8C()
{
  sub_24E347CF8();
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v1 = OUTLINED_FUNCTION_46_2();
  v4 = sub_24DFF5728(v1, v2, v3);
  if (v4)
  {

    return 1;
  }

  else
  {
    sub_24E347CF8();
    v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v6 = OUTLINED_FUNCTION_46_2();
    v9 = sub_24DFF5728(v6, v7, v8);

    return v9 != 0;
  }
}

id sub_24DFF2054()
{
  result = [objc_opt_self() shared];
  if (result)
  {
    v1 = result;
    v2 = [result isAccountModificationRestricted];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24DFF20B4()
{
  v0 = objc_opt_self();
  result = [v0 shared];
  if (result)
  {
    v2 = result;
    v3 = [result isFriendRequestsRestricted];

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [objc_opt_self() _gkIsOnline];
    }

    result = [v0 shared];
    if (result)
    {
      v5 = result;
      v6 = [result isScreenTimeRestrictionsPasscodeSet];

      return ((v4 | v6) & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_24DFF218C(SEL *a1)
{
  if ((sub_24DFF2054() & 1) == 0)
  {
    return 0;
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    if (v4)
    {
      return 0;
    }

    return [objc_opt_self() _gkIsOnline];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24DFF2214()
{
  if ((sub_24DFF2054() & 1) == 0)
  {
    return 0;
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v1 = result;
    v2 = [result isNearbyMultiplayerRestricted];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24DFF2284()
{
  if (sub_24DFF2054() & 1) == 0 || (sub_24DFF1F2C(&selRef_isGameCenterDisabled))
  {
    return 0;
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v1 = result;
    v2 = [result isFriendsSharingRestricted];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DFF2304()
{
  OUTLINED_FUNCTION_9_7();
  v1[21] = v0;
  v2 = sub_24E343C08();
  v1[22] = v2;
  OUTLINED_FUNCTION_6_15(v2);
  v1[23] = v3;
  v1[24] = OUTLINED_FUNCTION_32_4();
  v4 = sub_24E343F88();
  v1[25] = v4;
  OUTLINED_FUNCTION_6_15(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_54_1();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DFF2418()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0[21] + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_bag);
  v0[31] = v1;
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = sub_24E347CB8();
    v3 = [v1 arrayForKey_];
    v0[32] = v3;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24DFF266C;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0330, &qword_24E36DB78);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24DFF331C;
    v0[13] = &block_descriptor_91;
    v0[14] = v4;
    [v3 valueWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_24E343C98();
    v5 = sub_24E343F78();
    v6 = sub_24E348278();
    if (OUTLINED_FUNCTION_50_1(v6))
    {
      *OUTLINED_FUNCTION_41_2() = 0;
      OUTLINED_FUNCTION_26_6();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_12_11();
    }

    v12 = OUTLINED_FUNCTION_39_1();
    v13(v12);

    OUTLINED_FUNCTION_21_5();

    return v14(0);
  }
}

uint64_t sub_24DFF266C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_8_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DFF2768()
{
  v23 = v0;
  v1 = v0[18];
  v22 = 0;
  sub_24E347EF8();

  v0[34] = 0;
  v2 = MEMORY[0x277D84F90];
  sub_24E343C98();

  v3 = sub_24E343F78();
  v4 = sub_24E348278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v20 = v0[25];
    v21 = v0[30];
    v6 = OUTLINED_FUNCTION_43_2();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v0[20] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338, &qword_24E36DB80);
    sub_24DFB4C28(&qword_27F1E0340, &qword_27F1E0338, &qword_24E36DB80, MEMORY[0x277D83958]);
    v8 = sub_24E347C78();
    v10 = sub_24E1C2BE0(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24DE53000, v3, v4, "GameCenterSettings: isAnalyticsIdentifierResetAvailable, discovered resettable topics: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();

    v11 = *(v5 + 8);
    v11(v21, v20);
  }

  else
  {
    v12 = v0[26];

    v11 = *(v12 + 8);
    v13 = OUTLINED_FUNCTION_60();
    v11(v13, v14);
  }

  v0[35] = v11;
  swift_unknownObjectRetain();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  v0[36] = v15;
  *v15 = v16;
  v15[1] = sub_24DFF29BC;
  OUTLINED_FUNCTION_62();

  return MEMORY[0x282140780](v17);
}

uint64_t sub_24DFF29BC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24DFF2ACC()
{
  if (v0[34])
  {
    v1 = v0[34];
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = v1[2];
  v0[38] = v2;
  v0[39] = 0;
  if (!v2)
  {

    sub_24E343C98();
    v5 = sub_24E343F78();
    v6 = sub_24E348278();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[35];
    v9 = v0[32];
    v10 = v0[25];
    v11 = v0[23];
    v17 = v0[28];
    v18 = v0[24];
    v12 = v0[22];
    if (v7)
    {
      v13 = OUTLINED_FUNCTION_41_2();
      *v13 = 0;
      _os_log_impl(&dword_24DE53000, v5, v6, "GameCenterSettings: isAnalyticsIdentifierResetAvailable, discovered rotation is not enabled for any topics", v13, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    swift_unknownObjectRelease();
    v8(v17, v10);
    (*(v11 + 8))(v18, v12);

    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_62();

    __asm { BRAA            X2, X16 }
  }

  if (v1[2])
  {
    v0[40] = v1[4];
    v0[41] = v1[5];

    v3 = swift_task_alloc();
    v0[42] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_13_12(v3);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282140778](v1);
}

uint64_t sub_24DFF2CD0()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_8_14();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 153) = v3;

  v4 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DFF2DB8()
{
  v44 = v0;
  if (*(v0 + 153))
  {

    sub_24E343C98();

    v1 = sub_24E343F78();
    v2 = sub_24E348278();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 328);
    if (v3)
    {
      v5 = *(v0 + 320);
      v6 = *(v0 + 256);
      v33 = *(v0 + 200);
      v34 = *(v0 + 232);
      v37 = *(v0 + 192);
      v40 = *(v0 + 280);
      v7 = *(v0 + 184);
      v35 = *(v0 + 176);
      v8 = OUTLINED_FUNCTION_43_2();
      v9 = swift_slowAlloc();
      v43 = v9;
      *v8 = 136315138;
      v10 = sub_24E1C2BE0(v5, v4, &v43);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_24DE53000, v1, v2, "GameCenterSettings: isAnalyticsIdentifierResetAvailable, discovered rotation enabled for topic %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_16_10();

      swift_unknownObjectRelease();
      v40(v34, v33);
      (*(v7 + 8))(v37, v35);
    }

    else
    {
      v23 = *(v0 + 232);
      v24 = *(v0 + 200);
      v25 = *(v0 + 184);
      v39 = *(v0 + 192);
      v42 = *(v0 + 280);
      v26 = *(v0 + 176);

      swift_unknownObjectRelease();
      v42(v23, v24);
      (*(v25 + 8))(v39, v26);
    }

    goto LABEL_15;
  }

  v11 = *(v0 + 312);

  v13 = v11 + 1;
  *(v0 + 312) = v11 + 1;
  v14 = *(v0 + 272);
  if (v11 + 1 == *(v0 + 304))
  {

    sub_24E343C98();
    v15 = sub_24E343F78();
    v16 = sub_24E348278();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 280);
    v19 = *(v0 + 256);
    v20 = *(v0 + 200);
    v21 = *(v0 + 184);
    v41 = *(v0 + 192);
    v36 = *(v0 + 224);
    v38 = *(v0 + 176);
    if (v17)
    {
      v22 = OUTLINED_FUNCTION_41_2();
      *v22 = 0;
      _os_log_impl(&dword_24DE53000, v15, v16, "GameCenterSettings: isAnalyticsIdentifierResetAvailable, discovered rotation is not enabled for any topics", v22, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    swift_unknownObjectRelease();
    v18(v36, v20);
    (*(v21 + 8))(v41, v38);
LABEL_15:

    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_63_0();

    __asm { BRAA            X2, X16 }
  }

  if (!v14)
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v13 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    v27 = v14 + 16 * v13;
    *(v0 + 320) = *(v27 + 32);
    *(v0 + 328) = *(v27 + 40);

    v28 = swift_task_alloc();
    *(v0 + 336) = v28;
    *v28 = v0;
    OUTLINED_FUNCTION_13_12(v28);
    OUTLINED_FUNCTION_63_0();
  }

  return MEMORY[0x282140778](v12);
}

uint64_t sub_24DFF31D4()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 256);
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_64_0();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24DFF327C()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_29_5();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_64_0();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t *sub_24DFF331C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_24E1D5B0C();
  }

  else if (a2)
  {
    v10 = a2;

    return sub_24E1C6B14(v8, v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DFF33B4()
{
  OUTLINED_FUNCTION_9_7();
  v1[2] = v0;
  v2 = sub_24E343BD8();
  v1[3] = v2;
  OUTLINED_FUNCTION_6_15(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_32_4();
  v4 = sub_24E343BA8();
  v1[6] = v4;
  OUTLINED_FUNCTION_6_15(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_32_4();
  v6 = sub_24E343C08();
  v1[9] = v6;
  OUTLINED_FUNCTION_6_15(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_32_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0320, &qword_24E36DB68);
  v1[12] = v8;
  OUTLINED_FUNCTION_6_15(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_32_4();
  v10 = sub_24E343F88();
  v1[15] = v10;
  OUTLINED_FUNCTION_6_15(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_54_1();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_24E348068();
  v12 = sub_24E348058();
  v1[22] = v12;
  v14 = OUTLINED_FUNCTION_65(v12, MEMORY[0x277D85700]);
  v1[23] = v14;
  v1[24] = v13;

  return MEMORY[0x2822009F8](sub_24DFF35F8, v14, v13);
}

uint64_t sub_24DFF35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_47_2();
  v13 = *(v12[2] + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings_bag);
  v12[25] = v13;
  if (v13)
  {
    swift_unknownObjectRetain();
    if (sub_24DFED124() == 1)
    {
      sub_24E343C98();
      v14 = sub_24E343F78();
      v15 = sub_24E348278();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_41_2();
        *v16 = 0;
        _os_log_impl(&dword_24DE53000, v14, v15, "GameCenterSettings: resetAnalyticsIdentifier: attempting rotation", v16, 2u);
        OUTLINED_FUNCTION_16_10();
      }

      v17 = v12[21];
      v18 = v12[15];
      v19 = v12[16];
      v21 = v12[13];
      v20 = v12[14];
      v22 = v12[12];

      v23 = *(v19 + 8);
      v12[26] = v23;
      v23(v17, v18);
      sub_24DFED194(2);
      v24 = sub_24DFECF6C();
      v25 = [v24 playerID];

      v26 = sub_24E347CF8();
      v28 = v27;

      *v20 = v26;
      v20[1] = v28;
      (*(v21 + 104))(v20, *MEMORY[0x277CEE0E8], v22);
      swift_unknownObjectRetain();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_3();
      v12[27] = v29;
      *v29 = v30;
      v29[1] = sub_24DFF395C;
      OUTLINED_FUNCTION_29_2();

      return MEMORY[0x282140780](v31);
    }

    sub_24E343C98();
    v42 = sub_24E343F78();
    v43 = sub_24E348278();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v12[19];
    v46 = v12[15];
    v47 = v12[16];
    if (v44)
    {
      v48 = OUTLINED_FUNCTION_41_2();
      *v48 = 0;
      _os_log_impl(&dword_24DE53000, v42, v43, "GameCenterSettings: resetAnalyticsIdentifier: state is not resettable", v48, 2u);
      OUTLINED_FUNCTION_22_4();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v47 + 8))(v45, v46);
  }

  else
  {

    sub_24E343C98();
    v33 = sub_24E343F78();
    v34 = sub_24E348278();
    if (OUTLINED_FUNCTION_50_1(v34))
    {
      *OUTLINED_FUNCTION_41_2() = 0;
      OUTLINED_FUNCTION_26_6();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_12_11();
    }

    v40 = OUTLINED_FUNCTION_39_1();
    v41(v40);
  }

  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_2();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_24DFF395C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    v7 = v3[23];
    v8 = v3[24];

    return MEMORY[0x2822009F8](sub_24DFF41C0, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v3[29] = v9;
    *v9 = v5;
    v9[1] = sub_24DFF3AC4;

    return sub_24DFF47E0();
  }
}

uint64_t sub_24DFF3AC4()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *v1;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_24DFF4324;
  }

  else
  {
    v7 = sub_24DFF3BF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24DFF3BF4()
{
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_30_5();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0328, &qword_24E36DB70);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24E367D20;
  (*(v2 + 16))(v8 + v7, v1, v3);
  sub_24E1ADA90();
  v0[31] = v9;
  (*(v5 + 104))(v4, *MEMORY[0x277CEE100], v6);
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_24DFF3D50;
  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x282140758](v11);
}

uint64_t sub_24DFF3D50()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_57_1();
    v8(v7);

    v9 = v3[23];
    v10 = v3[24];

    return MEMORY[0x2822009F8](sub_24DFF44A4, v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_57_1();
    v12(v11);

    v13 = swift_task_alloc();
    v3[33] = v13;
    *v13 = v5;
    v13[1] = sub_24DFF3EE0;

    return sub_24DFF47E0();
  }
}

uint64_t sub_24DFF3EE0()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *v1;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_24DFF4660;
  }

  else
  {
    v7 = sub_24DFF4010;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24DFF4010()
{

  sub_24DFED194(3);
  sub_24E343C98();
  v1 = sub_24E343F78();
  v2 = sub_24E348278();
  v3 = os_log_type_enabled(v1, v2);
  v12 = v0[15];
  v13 = v0[20];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v14 = v0[12];
  v15 = v0[26];
  v8 = v0[9];
  v7 = v0[10];
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_41_2();
    *v9 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "GameCenterSettings: resetAnalyticsIdentifier: identifier rotation succeeded", v9, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  swift_unknownObjectRelease();
  v15(v13, v12);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v14);
  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_12_5();

  return v10();
}

uint64_t sub_24DFF41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_30_5();

  v12 = *(v10 + 224);
  v13 = OUTLINED_FUNCTION_10_14();
  v14(v13);
  sub_24E343C98();
  v15 = v12;
  sub_24E343F78();
  sub_24E348258();
  OUTLINED_FUNCTION_53_1();
  if (OUTLINED_FUNCTION_66())
  {
    OUTLINED_FUNCTION_43_2();
    v16 = OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_55_1(5.7779e-34);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_37_3(v17);
    OUTLINED_FUNCTION_23_8(&dword_24DE53000, v18, v19, "GameCenterSettings: resetAnalyticsIdentifier failed with error: %@");
    sub_24DFA9298(v16, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_16_10();
  }

  OUTLINED_FUNCTION_25_7();
  v20 = OUTLINED_FUNCTION_28_5();
  v11(v20);
  sub_24DFED194(1);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_52_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_24DFF4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_30_5();

  v12 = OUTLINED_FUNCTION_1_19();
  v13(v12);
  v14 = *(v10 + 240);
  v15 = OUTLINED_FUNCTION_10_14();
  v16(v15);
  sub_24E343C98();
  v17 = v14;
  sub_24E343F78();
  sub_24E348258();
  OUTLINED_FUNCTION_53_1();
  if (OUTLINED_FUNCTION_66())
  {
    OUTLINED_FUNCTION_43_2();
    v18 = OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_55_1(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_37_3(v19);
    OUTLINED_FUNCTION_23_8(&dword_24DE53000, v20, v21, "GameCenterSettings: resetAnalyticsIdentifier failed with error: %@");
    sub_24DFA9298(v18, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_16_10();
  }

  OUTLINED_FUNCTION_25_7();
  v22 = OUTLINED_FUNCTION_28_5();
  v11(v22);
  sub_24DFED194(1);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_52_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_24DFF44A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_30_5();
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[3];

  sub_24DFF5FF0();
  v14 = swift_allocError();
  v16 = *(v12 + 32);
  v15 = (v12 + 32);
  v16(v17, v11, v13);
  v18 = OUTLINED_FUNCTION_60();
  v19(v18);
  v20 = OUTLINED_FUNCTION_10_14();
  v21(v20);
  sub_24E343C98();
  v22 = v14;
  sub_24E343F78();
  sub_24E348258();
  OUTLINED_FUNCTION_53_1();
  if (OUTLINED_FUNCTION_66())
  {
    OUTLINED_FUNCTION_43_2();
    v23 = OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_55_1(5.7779e-34);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_37_3(v24);
    OUTLINED_FUNCTION_23_8(&dword_24DE53000, v25, v26, "GameCenterSettings: resetAnalyticsIdentifier failed with error: %@");
    sub_24DFA9298(v23, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_16_10();
  }

  OUTLINED_FUNCTION_25_7();
  v27 = OUTLINED_FUNCTION_28_5();
  v15(v27);
  sub_24DFED194(1);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_52_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_24DFF4660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_30_5();

  v12 = OUTLINED_FUNCTION_1_19();
  v13(v12);
  v14 = *(v10 + 272);
  v15 = OUTLINED_FUNCTION_10_14();
  v16(v15);
  sub_24E343C98();
  v17 = v14;
  sub_24E343F78();
  sub_24E348258();
  OUTLINED_FUNCTION_53_1();
  if (OUTLINED_FUNCTION_66())
  {
    OUTLINED_FUNCTION_43_2();
    v18 = OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_55_1(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_37_3(v19);
    OUTLINED_FUNCTION_23_8(&dword_24DE53000, v20, v21, "GameCenterSettings: resetAnalyticsIdentifier failed with error: %@");
    sub_24DFA9298(v18, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_16_10();
  }

  OUTLINED_FUNCTION_25_7();
  v22 = OUTLINED_FUNCTION_28_5();
  v11(v22);
  sub_24DFED194(1);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_21();

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_52_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_24DFF47E0()
{
  OUTLINED_FUNCTION_9_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_24E343BD8();
  v1[22] = v5;
  OUTLINED_FUNCTION_6_15(v5);
  v1[23] = v6;
  v1[24] = OUTLINED_FUNCTION_54_1();
  v1[25] = swift_task_alloc();
  v7 = sub_24E343BF8();
  v1[26] = v7;
  OUTLINED_FUNCTION_6_15(v7);
  v1[27] = v8;
  v1[28] = OUTLINED_FUNCTION_54_1();
  v1[29] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24DFF48EC()
{
  OUTLINED_FUNCTION_9_7();
  *(v0 + 240) = sub_24E348068();
  v1 = sub_24E348058();
  *(v0 + 248) = v1;
  v3 = OUTLINED_FUNCTION_65(v1, MEMORY[0x277D85700]);

  return MEMORY[0x2822009F8](sub_24DFF4978, v3, v2);
}

uint64_t sub_24DFF4978()
{
  OUTLINED_FUNCTION_9_7();

  *(v0 + 256) = sub_24DFECF6C();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24DFF49E0()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[32];
  v2 = [v1 playerID];

  v3 = sub_24E347CF8();
  v5 = v4;

  v0[33] = v5;
  v0[12] = v3;
  v0[13] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  v0[34] = v6;
  *v6 = v7;
  v6[1] = sub_24DFF4AEC;
  v8 = v0[29];
  v9 = v0[25];
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D83840];

  return MEMORY[0x282140760](v8, 0x73656D6167, 0xE500000000000000, v0 + 12, v10, v11, v9);
}

uint64_t sub_24DFF4AEC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24DFF4C04()
{
  OUTLINED_FUNCTION_8_9();
  sub_24E343BE8();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_58_1();
  v0[16] = sub_24E343B98();
  v0[17] = v1;
  v0[35] = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = sub_24E348058();
  v0[36] = v2;
  v4 = OUTLINED_FUNCTION_65(v2, MEMORY[0x277D85700]);

  return MEMORY[0x2822009F8](sub_24DFF4CC0, v4, v3);
}

uint64_t sub_24DFF4CC0()
{
  OUTLINED_FUNCTION_9_7();

  *(v0 + 296) = sub_24DFECF6C();
  v1 = OUTLINED_FUNCTION_6_20();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24DFF4D28()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[37];
  v2 = [v1 playerID];

  v3 = sub_24E347CF8();
  v5 = v4;

  v0[38] = v5;
  v0[14] = v3;
  v0[15] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_3();
  v0[39] = v6;
  *v6 = v7;
  v6[1] = sub_24DFF4E3C;
  v8 = v0[28];
  v9 = v0[24];
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D83840];

  return MEMORY[0x282140760](v8, 0x746E6563656D6167, 0xEA00000000007265, v0 + 14, v10, v11, v9);
}

uint64_t sub_24DFF4E3C()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_20();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 128);

    *(v3 + 320) = v7;
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_24DFF4F54()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v14 = v4;
  v15 = *(v3 + 8);
  v15(v2, v4);
  (*(v3 + 32))(v2, v1, v4);
  sub_24E343BE8();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_58_1();
  sub_24E343B98();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = [objc_opt_self() proxyForLocalPlayer];
  v13 = [v5 utilityServicePrivate];

  v6 = sub_24E347CB8();

  v7 = sub_24E347CB8();

  v8 = sub_24E347CB8();
  v9 = sub_24E347CB8();
  sub_24E347C28();
  v10 = sub_24E347BE8();

  [v13 postGamesMapEventWithGamesUserID:v6 gameCenterUserID:v7 actionType:v8 hostAppBundleId:v9 additionalFields:v10];

  swift_unknownObjectRelease();
  v15(v2, v14);

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_63_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24DFF51C4()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  sub_24DFF5FF0();
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);

  OUTLINED_FUNCTION_12_5();

  return v5();
}

uint64_t sub_24DFF5284()
{
  OUTLINED_FUNCTION_30_5();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_24DFF5FF0();
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v5 = OUTLINED_FUNCTION_1_19();
  v6(v5);

  OUTLINED_FUNCTION_12_5();

  return v7();
}

uint64_t GameCenterSettings.deinit()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__listInset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0228, &qword_24E36D9D8);
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__profileLoaded;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0220, &qword_24E36D9D0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__gameCenterSignedIn, v4);
  v5(v0 + OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__signInIsInProgress, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__safetyLinkURL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0218, &qword_24E36D9C8);
  OUTLINED_FUNCTION_0_26();
  (*(v7 + 8))(v0 + v6);
  v8 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__localPlayer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0210, &qword_24E36D9C0);
  OUTLINED_FUNCTION_0_26();
  (*(v9 + 8))(v0 + v8);
  v10 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__profilePrivacy;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0208, &qword_24E36D9B8);
  OUTLINED_FUNCTION_0_26();
  (*(v11 + 8))(v0 + v10);
  v12 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__playerAgeCategory;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0200, &qword_24E36D9B0);
  OUTLINED_FUNCTION_0_26();
  (*(v13 + 8))(v0 + v12);
  swift_unknownObjectRelease();
  v14 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__resetAnalyticsIdentifierState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01F8, &qword_24E36D9A8);
  OUTLINED_FUNCTION_0_26();
  (*(v15 + 8))(v0 + v14);

  v16 = OBJC_IVAR____TtC12GameCenterUI18GameCenterSettings__privacySelectionState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E01F0, &qword_24E36D9A0);
  OUTLINED_FUNCTION_0_26();
  (*(v17 + 8))(v0 + v16);
  return v0;
}

uint64_t GameCenterSettings.__deallocating_deinit()
{
  GameCenterSettings.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DFF5670@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GameCenterSettings(0);
  result = sub_24E344DD8();
  *a2 = result;
  return result;
}

uint64_t sub_24DFF56B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03B0, &unk_24E36DE98);
  v0 = OUTLINED_FUNCTION_1_19();

  return v1(v0);
}

id sub_24DFF5728(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24E347CB8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24E3431B8();

    swift_willThrow();
  }

  return v6;
}

void sub_24DFF5804(uint64_t a1@<X8>)
{
  *a1 = sub_24DFECB5C();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

unint64_t sub_24DFF58CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24DFED03C();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_24DFF5940(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24DFF598C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_24DFF59EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_24DFF59FC()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

uint64_t type metadata accessor for GameCenterSettings(uint64_t a1)
{
  result = qword_27F1E02C8;
  if (!qword_27F1E02C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DFF5AE0(uint64_t a1)
{
  sub_24DFF5F50(319, &qword_27F1E02D8, MEMORY[0x277CDF310]);
  if (v1 <= 0x3F)
  {
    sub_24DFF5F50(319, &qword_27F1E02E0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_24DFF5F9C(319, &qword_27F1E02E8, &unk_27F1DFEF0, qword_24E36CB90);
      if (v3 <= 0x3F)
      {
        sub_24DFF5EE8(319);
        if (v4 <= 0x3F)
        {
          sub_24DFF5F9C(319, &qword_27F1E02F8, &qword_27F1E0288, &qword_24E36D9F0);
          if (v5 <= 0x3F)
          {
            sub_24DFF5F9C(319, &qword_27F1E0300, &qword_27F1E0298, &qword_24E36D9F8);
            if (v6 <= 0x3F)
            {
              sub_24DFF5F50(319, &qword_27F1E0308, &type metadata for ResetAnalyticsIdentifierState);
              if (v7 <= 0x3F)
              {
                sub_24DFF5F9C(319, &qword_27F1E0310, &qword_27F1E02B0, &qword_24E36DA00);
                if (v8 <= 0x3F)
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

uint64_t dispatch thunk of GameCenterSettings.__allocating_init()()
{
  OUTLINED_FUNCTION_8_9();
  v4 = (*(v0 + 832) + **(v0 + 832));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_49_2(v2);

  return v4();
}

void sub_24DFF5EE8(uint64_t a1)
{
  if (!qword_27F1E02F0)
  {
    sub_24DF88A8C(255, &qword_280BDFA90, 0x277D0C138);
    v1 = sub_24E344E78();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E02F0);
    }
  }
}

void sub_24DFF5F50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24E344E78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24DFF5F9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24E344E78();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24DFF5FF0()
{
  result = qword_27F1E0318;
  if (!qword_27F1E0318)
  {
    sub_24E343BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0318);
  }

  return result;
}

uint64_t sub_24DFF6050()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0360, &qword_24E36DB98);
  OUTLINED_FUNCTION_4_5(v3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_24DFEE92C(v2, v0, v4, v5);
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_102()
{
}

{
}

uint64_t sub_24DFF60F8(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0378, &qword_24E36DBB0);
  OUTLINED_FUNCTION_4_5(v3);
  v4 = *(v1 + 16);

  return sub_24DFEE180(a1, v4);
}

void sub_24DFF6174(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0388, &qword_24E36DE08);
  OUTLINED_FUNCTION_4_5(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  sub_24DFED83C(a1, a2, a3, v9);
}

uint64_t sub_24DFF6204(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24DFF6218(result, a2);
  }

  return result;
}

uint64_t sub_24DFF6218(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24DFF6270(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24DFF6284(result, a2);
  }

  return result;
}

uint64_t sub_24DFF6284(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_24DFF62E8()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03A0, &qword_24E36DE18);
  OUTLINED_FUNCTION_4_5(v3);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return sub_24DFEF19C(v2, v0, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_4_21()
{
}

uint64_t OUTLINED_FUNCTION_7_15()
{
}

void OUTLINED_FUNCTION_12_11()
{

  JUMPOUT(0x253040EE0);
}

void OUTLINED_FUNCTION_16_10()
{

  JUMPOUT(0x253040EE0);
}

void OUTLINED_FUNCTION_17_10()
{
  v1[12] = sub_24E19F854;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_18_9(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_24DFF1D60;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_23_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_25_7()
{
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1, ...)
{

  return sub_24E344E68();
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_50_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_55_1(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1, uint64_t a2)
{

  return sub_24E347FF8();
}

BOOL OUTLINED_FUNCTION_66()
{

  return os_log_type_enabled(v1, v0);
}

id static FriendingViewControllers.inviteFriends(containedIn:)(void *a1)
{
  v33 = a1;
  v1 = type metadata accessor for InviteFriendsView(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5F8, &qword_24E36B520);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = CGSizeMake;
  *(v14 + 24) = 0;
  type metadata accessor for FriendSuggestionInvitationStateManager(0);
  swift_allocObject();
  v15 = sub_24E155B14(1);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v16 = v5 + v2[7];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v5 + v2[10];
  v34 = 0;
  v35 = 0xE000000000000000;

  sub_24E346B78();
  v18 = v37;
  *v17 = v36;
  *(v17 + 2) = v18;
  v19 = (v5 + v2[11]);
  v34 = 0;
  sub_24E346B78();
  v20 = *(&v36 + 1);
  *v19 = v36;
  v19[1] = v20;
  *(v5 + v2[8]) = v15;
  v21 = (v5 + v2[9]);
  *v21 = sub_24DFF78D4;
  v21[1] = v14;
  GKIsRemoteUI();
  swift_getKeyPath();
  sub_24DFF78DC(v5, v13);
  v22 = OUTLINED_FUNCTION_5_21(*(v7 + 44));
  sub_24DFF7940(v22, v10);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03C0, qword_24E36DF08));
  v24 = sub_24E345D58();
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v33;
  swift_beginAccess();
  *(v14 + 16) = sub_24DFF79B0;
  *(v14 + 24) = v25;
  v27 = v26;

  sub_24E343AA8();
  v28 = v24;
  v29 = sub_24E343708();
  sub_24DFF79C8(v29, v30, v28);
  sub_24DFF6C30(v28);

  sub_24DFF7A2C(v13);

  return v28;
}

uint64_t sub_24DFF6BD0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v2(v3);
}

void sub_24DFF6C30(void *a1)
{
  v2 = sub_24E344AC8();
  MEMORY[0x28223BE20](v2);
  if (!GKIsRemoteUI())
  {
LABEL_6:
    v7 = [a1 navigationItem];
    [v7 setLargeTitleDisplayMode_];

    return;
  }

  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setBackgroundColor_];

    v5 = [a1 navigationController];
    if (v5)
    {
      v6 = v5;
      sub_24E3482B8();
      sub_24E344AB8();
      sub_24E3482C8();
    }

    sub_24E3482B8();
    sub_24E344AB8();
    sub_24E3482C8();
    goto LABEL_6;
  }

  __break(1u);
}

id sub_24DFF6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v6 = type metadata accessor for AllFriendsDetailView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03F0, &qword_24E36DF78);
  OUTLINED_FUNCTION_0_14();
  v46 = v12;
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v44 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03F8, &qword_24E36DF80);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v45 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  type metadata accessor for GameCenterSettingsState(0);
  OUTLINED_FUNCTION_2_29();
  sub_24DFF7AB8(v21, v22, &protocol conformance descriptor for GameCenterSettingsState);
  v23 = sub_24E345298();
  v25 = v24;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v26 = v10 + v6[5];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v10 + v6[6];
  *v27 = v23;
  v27[8] = v25 & 1;
  *(v10 + v6[7]) = a2;
  v28 = v42;
  *(v10 + v6[8]) = v41;
  *(v10 + v6[9]) = v28;
  *(v10 + v6[10]) = v43;

  sub_24E347628();
  swift_allocObject();
  GameCenterSettingsState.init()();
  sub_24DFF7AB8(&qword_27F1E0400, type metadata accessor for AllFriendsDetailView, &protocol conformance descriptor for AllFriendsDetailView);
  v29 = v44;
  sub_24E3465A8();

  sub_24DFF7B00(v10, type metadata accessor for AllFriendsDetailView);
  GKIsRemoteUI();
  swift_getKeyPath();
  (*(v46 + 32))(v20, v29, v47);
  v30 = OUTLINED_FUNCTION_5_21(*(v15 + 44));
  sub_24DF8BD90(v30, v45, &qword_27F1E03F8, &qword_24E36DF80);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0408, &qword_24E36DF88));
  v32 = sub_24E345D58();
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  v36 = sub_24E347CF8();
  v38 = v37;

  sub_24DFF79C8(v36, v38, v32);
  sub_24DF8BFF4(v20, &qword_27F1E03F8, &qword_24E36DF80);
  return v32;
}

uint64_t sub_24DFF7224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v49 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v47 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v45 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for FriendRequestsDetailView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = (v16 - v15);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03C8, &qword_24E36DF58);
  OUTLINED_FUNCTION_0_14();
  v51 = v18;
  MEMORY[0x28223BE20](v19);
  v48 = &v42 - v20;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03D0, &unk_24E36DF60);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v50 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  type metadata accessor for GameCenterSettingsState(0);
  OUTLINED_FUNCTION_2_29();
  sub_24DFF7AB8(v27, v28, &protocol conformance descriptor for GameCenterSettingsState);
  v29 = sub_24E345298();
  v31 = v30;
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF620, &qword_24E36B560);
  swift_storeEnumTagMultiPayload();
  v32 = v17 + v13[5];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v17 + v13[6];
  *v33 = v29;
  v33[8] = v31 & 1;
  v34 = v43;
  *(v17 + v13[7]) = v42;
  *(v17 + v13[8]) = v34;
  *(v17 + v13[9]) = v44;

  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v54 = sub_24E3477C8();
  v55 = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  (*(v49 + 8))(v7, v52);
  (*(v45 + 8))(v12, v47);

  swift_allocObject();
  GameCenterSettingsState.init()();
  sub_24DFF7AB8(&qword_27F1E03E0, type metadata accessor for FriendRequestsDetailView, &protocol conformance descriptor for FriendRequestsDetailView);
  v35 = v48;
  sub_24E3465A8();

  sub_24DFF7B00(v17, type metadata accessor for FriendRequestsDetailView);
  if (GKIsRemoteUI())
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  KeyPath = swift_getKeyPath();
  (*(v51 + 32))(v26, v35, v53);
  v38 = &v26[*(v46 + 36)];
  *v38 = KeyPath;
  v38[8] = v36;
  sub_24DF8BD90(v26, v50, &qword_27F1E03D0, &unk_24E36DF60);
  v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03E8, &qword_24E36DF70));
  v40 = sub_24E345D58();
  sub_24DF8BFF4(v26, &qword_27F1E03D0, &unk_24E36DF60);
  return v40;
}

id FriendingViewControllers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FriendingViewControllers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendingViewControllers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FriendingViewControllers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendingViewControllers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24DFF7860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E1457F4();
  *a1 = v3;
  return result;
}

uint64_t sub_24DFF78DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteFriendsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFF7940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5F8, &qword_24E36B520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24DFF79C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setTitle_];
}

uint64_t sub_24DFF7A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF5F8, &qword_24E36B520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DFF7AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DFF7B00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_21@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + a1;
  *v4 = v1;
  *(v4 + 8) = v2;
  return v3;
}

id GKPickerGroupCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for GKPickerGroupCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKPickerGroupCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GKPickerGroupCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKPickerGroupCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24DFF7D84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  a3(a1, a2);
  v4 = sub_24E347CB8();

  return v4;
}

void sub_24DFF7E74()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF7F54()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF8034()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF8114()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF81F4()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF82D4()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF83B4()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF8494()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24DFF8574()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

double sub_24DFF8694(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_24DFF8720(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_groupCellDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24DFF87A4;
}

void sub_24DFF87A4(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_24DFF8858()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for GKPickerGroupCell();
  objc_msgSendSuper2(&v54, sel_awakeFromNib);
  type metadata accessor for GKPlayerGroupView();
  static GKPlayerGroupView.create()();
  if (!v2)
  {
LABEL_4:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong setNumberOfLines_];

      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 layer];

        [v14 setCompositingFilter_];
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          [v15 setNumberOfLines_];

          v17 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 frame];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;

            v55.origin.x = v21;
            v55.origin.y = v23;
            v55.size.width = v25;
            v55.size.height = v27;
            Width = CGRectGetWidth(v55);
            v29 = swift_unknownObjectWeakLoadStrong();
            if (v29)
            {
              v30 = v29;
              [v29 frame];
              v32 = v31;
              v34 = v33;
              v36 = v35;
              v38 = v37;

              v56.origin.x = v32;
              v56.origin.y = v34;
              v56.size.width = v36;
              v56.size.height = v38;
              Height = CGRectGetHeight(v56);
              v40 = [objc_opt_self() bezierPathWithOvalInRect_];
              v41 = [v40 CGPath];

              [v17 setPath_];
              v42 = swift_unknownObjectWeakLoadStrong();
              if (v42)
              {
                v43 = v42;
                v44 = [v42 layer];

                [v44 addSublayer_];
                v45 = swift_unknownObjectWeakLoadStrong();
                if (v45)
                {
                  v46 = v45;
                  v47 = [v45 layer];

                  [v47 setCompositingFilter_];
                  v48 = objc_opt_self();
                  v49 = [v48 clearColor];
                  v50 = [v49 CGColor];

                  [v17 setFillColor_];
                  v51 = [v48 whiteColor];
                  v52 = [v51 colorWithAlphaComponent_];

                  v53 = [v52 CGColor];
                  [v17 setStrokeColor_];

                  [v17 setLineWidth_];
                  [v1 set:14.0 gkFocusHighlightCornerRadius:?];
                  [v1 set:-4.0 gkFocusHighlightInsets:{-4.0, -4.0, -4.0}];

                  return;
                }

                goto LABEL_18;
              }

LABEL_17:
              __break(1u);
LABEL_18:
              __break(1u);
              goto LABEL_19;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    [v5 addSubview_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = objc_opt_self();
    v8 = swift_unknownObjectWeakLoadStrong();
    [v7 _gkInstallEdgeConstraintsForView_containedWithinParentView_];

    v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView];
    *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView] = v3;

    goto LABEL_4;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_24DFF8D70()
{
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_container);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_messageIcon);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_iconContainer);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_ringView);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_titleLabel);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_subtitleLabel);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_nearbyIconContainer);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_nearbyIconVisualEffectView);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_nearbyIcon);

  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_groupCellDelegate;

  return sub_24DE73F0C(v1);
}

id GKPickerGroupCell.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer])
  {
    [v0 removeGestureRecognizer_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKPickerGroupCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24DFF8FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  *&v10[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_players] = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_38;
  }

  v17 = Strong;

  sub_24DFFA600(a2, a3, v17);

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = v18;
  if (a5)
  {
    a5 = sub_24E347CB8();
  }

  [v19 setText_];

  if (!a9 || sub_24DFD8654() != 1)
  {
    goto LABEL_14;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v21 = MEMORY[0x25303F560](0, a1);
    goto LABEL_10;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = *(a1 + 32);
  swift_unknownObjectRetain();
  v21 = v20;
LABEL_10:
  v22 = v21;
  v23 = [a9 playerIsSelectable_];

  if ((v23 & 1) == 0)
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = sub_24E347CB8();
    v27 = GKGameCenterUIFrameworkBundle();
    v28 = GKGetLocalizedStringFromTableInBundle();

    v29 = sub_24E347CF8();
    v31 = v30;

    sub_24DFA0B40(v29, v31, v25);
  }

  swift_unknownObjectRelease();
LABEL_14:
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_24DFFA658(v32);
  if (v33)
  {
    v34 = sub_24E347DD8();

    if (v34 >= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }
  }

  else
  {
    v35 = 2;
  }

  v36 = sub_24DFD8654();
  v37 = OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer;
  v38 = *&v10[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer];
  if (v36 < 2)
  {
    if (v38)
    {
      [v10 removeGestureRecognizer_];
      v41 = *&v10[v37];
    }

    else
    {
      v41 = 0;
    }

    *&v10[v37] = 0;
  }

  else
  {
    if (v38)
    {
      goto LABEL_28;
    }

    v54[3] = type metadata accessor for GKPickerGroupCell();
    v54[0] = v10;
    objc_allocWithZone(MEMORY[0x277D75708]);
    v39 = v10;
    v40 = sub_24DFFA478(v54, sel_handleLongPressWithSender_);
    [v39 addGestureRecognizer_];
    v41 = *&v10[v37];
    *&v10[v37] = v40;
  }

LABEL_28:
  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = v42;
  [v42 setHidden_];

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v45 = v44;
  [v44 setNumberOfLines_];

  v46 = swift_unknownObjectWeakLoadStrong();
  if (!v46)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = v46;
  [v46 setHidden_];

  sub_24DFFA030();
  sub_24DFFA0A0(a1, a9);
  v48 = *&v10[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView];
  if (v48)
  {
    v49 = v48;
    GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(a1, v51, v53, a9);
  }

  sub_24DFF9D34();
}

void sub_24DFF94E0(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupCell();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_24E348458();
}

void sub_24DFF95D4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for GKPickerGroupCell();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong layer];

    [v3 setMasksToBounds_];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 layer];

      [v6 setCornerRadius_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24DFF97D4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_24DFFA814;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_24E00B24C;
  v5[3] = &block_descriptor_12;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.1];
  _Block_release(v3);
}

void sub_24DFF98C0(void *a1)
{
  v4 = [a1 layer];
  v2 = [a1 isHighlighted];
  LODWORD(v3) = 1.0;
  if (v2)
  {
    *&v3 = 0.5;
  }

  [v4 setOpacity_];
}

double sub_24DFF9944(void *a1)
{
  if ([a1 state] == 3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong handleLongPressGesture_];
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_24DFF9A7C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for GKPickerGroupCell();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_24DFF9B48(char a1, SEL *a2, uint64_t (*a3)(id))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for GKPickerGroupCell();
  v7 = objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7);
}

uint64_t sub_24DFF9BD4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_24DFF9C00()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for GKPickerGroupCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = Strong;
  [Strong setHidden_];

  [v0 setSelected_];
  sub_24DFFA030();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setText_];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setText_];

    sub_24DFF9D34();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_24DFF9D34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = Strong;
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_24DFFA658(v3);
  if (v4)
  {
    v0 = v4;
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityValue_];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = OUTLINED_FUNCTION_5_22(v9);

  v11 = sub_24E347CF8();
  v13 = v12;

  sub_24E0ACCD8(v11, v13, v7);
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_24DFFA658(v16);
  if (v17)
  {
    v18 = sub_24E347CB8();
  }

  else
  {
    v18 = 0;
  }

  [v15 setAccessibilityValue_];

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v21;
  v23 = [v21 isHidden];

  v24 = sub_24E347CB8();
  v25 = GKGameCenterUIFrameworkBundle();
  v26 = OUTLINED_FUNCTION_5_22(v25);

  v27 = sub_24E347CF8();
  v29 = v28;

  sub_24E0ACCD8(v27, v29, v20);
  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v30 = sub_24E347CB8();
  v31 = GKGameCenterUIFrameworkBundle();
  v32 = GKGetLocalizedStringFromTableInBundle();

  v33 = sub_24E347CF8();
  v35 = v34;

  sub_24E0ACCD8(v33, v35, v36);
}

void sub_24DFFA030()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void sub_24DFFA0A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_24DFD8654();
    swift_unknownObjectRetain();
    v5 = 0;
    do
    {
      if (v4 == v5)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25303F560](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v8 = [a2 playerIsSelectable_];

      ++v5;
    }

    while (!v8);

    swift_unknownObjectRelease();
  }
}

id _s12GameCenterUI17GKPlayerGroupViewC5frameACSo6CGRectV_tcfC_0()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

id GKPickerGroupCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_players) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_22();
  v5 = type metadata accessor for GKPickerGroupCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKPickerGroupCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKPickerGroupCell.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_longPressRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_playerGroupView] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPickerGroupCell_players] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_22();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKPickerGroupCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}