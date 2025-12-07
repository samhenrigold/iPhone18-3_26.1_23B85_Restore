unint64_t sub_219A4EBF8()
{
  result = qword_280ECC700;
  if (!qword_280ECC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC700);
  }

  return result;
}

unint64_t sub_219A4EC4C()
{
  result = qword_280ECC6E0;
  if (!qword_280ECC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC6E0);
  }

  return result;
}

unint64_t sub_219A4ECA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7954();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

void sub_219A4ECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = sub_219BDCAF4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE8204();
  v10 = *&v9[OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView];

  v11 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  [v10 setFrame_];

  v12 = sub_219BE8204();
  v13 = *&v12[OBJC_IVAR____TtC7NewsUI29TitleView_backgroundView];

  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor_];

  sub_218718690(v4 + 16, aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v98);
  v16 = sub_219BE8204();
  v17 = *&v16[OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel];

  sub_2191B7B28(v17, *(a3 + v11[9]));
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v18 = sub_219BE8204();
  v19 = *&v18[OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel];

  [v19 setFrame_];
  v20 = sub_219BE8204();
  v21 = *&v20[OBJC_IVAR____TtC7NewsUI29TitleView_titleLabel];

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);

  v96 = v22;
  v95 = v23;
  v24 = sub_219BF53D4();
  [v21 setText_];

  v25 = sub_219BE8204();
  v26 = *&v25[OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel];

  v94 = v11;
  [v26 setFrame_];

  v93 = a2;
  v27 = sub_219BE8204();
  v28 = *&v27[OBJC_IVAR____TtC7NewsUI29TitleView_subtitleLabel];

  v101 = *(a1 + 32);
  if (*(&v101 + 1))
  {
    v87[0] = *(&v101 + 1);
    v87[1] = v101;
    sub_21899E550(0);
    inited = swift_initStackObject();
    v89 = a1;
    v30 = inited;
    *(inited + 16) = xmmword_219C09EC0;
    v31 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    sub_2189D2C04(&v101, aBlock);
    v32 = v31;
    v33 = [v14 secondaryLabelColor];
    v34 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
    v30[5] = v33;
    v35 = *MEMORY[0x277D740A8];
    v30[8] = v34;
    v30[9] = v35;
    sub_219BF0CD4();
    v36 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
    v88 = v28;
    v37 = a3;
    v38 = v36;
    v39 = v35;
    v40 = sub_219BF6BD4();
    v41 = v91;
    v42 = v90;
    v43 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x277D6D198], v92);
    v44 = sub_219BF0CB4();

    (*(v41 + 8))(v42, v43);
    v30[13] = v38;
    a3 = v37;
    v28 = v88;
    v30[10] = v44;
    sub_2188195F4(v30);
    a1 = v89;
    swift_setDeallocating();
    sub_218819588(0);
    swift_arrayDestroy();
    v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v46 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_21899E604();
    v47 = sub_219BF5204();

    v48 = [v45 initWithString:v46 attributes:v47];
  }

  else
  {
    v48 = 0;
  }

  [v28 setAttributedText_];

  v49 = a3 + v94[8];
  if ((*(v49 + 32) & 1) != 0 || !*(a1 + 64))
  {
    v63 = sub_219BE8204();
    v64 = *&v63[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    [v64 setHidden_];
  }

  else
  {
    v51 = *(v49 + 16);
    v50 = *(v49 + 24);
    v53 = *v49;
    v52 = *(v49 + 8);
    v54 = sub_219BE8204();
    v55 = *&v54[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    sub_219130824(v55);
    [v55 setFrame_];
    v56 = sub_219BF53D4();
    [v55 setTitle:v56 forState:0];

    [v55 sizeToFit];
    v57 = sub_219BE8204();
    v58 = *&v57[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    [v58 setHidden_];
    v59 = sub_219BE8204();
    v60 = *&v59[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    v61 = [v60 titleLabel];
    if (v61 && (v62 = [v61 text], v61, v62))
    {
      sub_219BF5414();
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v62 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();
    }

    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = objc_allocWithZone(MEMORY[0x277D75088]);

    v68 = sub_219BF53D4();

    v99 = sub_219A4F930;
    v100 = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C5B6F8;
    v98 = &block_descriptor_204;
    v69 = _Block_copy(aBlock);
    v70 = [v67 initWithName:v68 actionHandler:v69];

    _Block_release(v69);

    v71 = sub_219BE8204();
    v72 = sub_219BE8204();
    v73 = [v72 accessibilityCustomActions];

    if (v73)
    {
      sub_2186C6148(0, &qword_280E8DCF0, 0x277D75088);
      v74 = sub_219BF5924();
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_219C146A0;
    *(v75 + 32) = v70;
    aBlock[0] = v74;
    v76 = v70;
    sub_2191ED524(v75);
    sub_2186C6148(0, &qword_280E8DCF0, 0x277D75088);
    v64 = sub_219BF5904();

    [v71 setAccessibilityCustomActions_];
  }

  v77 = sub_219BE8204();
  [v77 setAccessibilityTraits_];

  v78 = sub_219BE8204();
  sub_218DBAF00(0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C09EC0;
  v80 = v95;
  *(v79 + 32) = v96;
  *(v79 + 40) = v80;
  *(v79 + 48) = v101;
  sub_219BE5F34();
  v82 = v81;

  if (v82)
  {
    v83 = sub_219BF53D4();
  }

  else
  {
    v83 = 0;
  }

  [v78 setAccessibilityLabel_];

  v84 = sub_219BE8204();
  [v84 setAccessibilityRespondsToUserInteraction_];

  v85 = sub_219BE8204();
  [v85 setAccessibilityValue_];

  v86 = sub_219BE8204();
  [v86 setAccessibilityHint_];
}

BOOL sub_219A4F860(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = sub_219BE8204();
    v4 = *&v3[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

    v5 = *&v4[qword_280EDD8D8];
    MEMORY[0x21CEC15C0]();
  }

  return Strong != 0;
}

uint64_t sub_219A4F97C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_219A4FA10;

  return sub_219A50B50();
}

uint64_t sub_219A4FA10()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219A4FB44, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219A4FB44()
{
  if (qword_27CC085E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8B28);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "Failed to prewarm recipe filter, error: %{public}@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

double sub_219A4FCD8(uint64_t *a1)
{
  v5 = *a1;
  sub_2189AFEE4(&v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_219A4FDAC(uint64_t *a1)
{
  sub_218738330(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *a1;
  if (*(v1 + 48))
  {
    sub_218A450F0();

    sub_219BF5C14();
  }

  v7 = sub_219BF5BF4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v6;

  *(v1 + 48) = sub_2195E70E0(0, 0, v5, &unk_219CC3218, v8);

  return result;
}

uint64_t sub_219A4FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_219A4FF48, 0, 0);
}

uint64_t sub_219A4FF48()
{
  v1 = v0[5];
  v2 = *(*(v0[4] + 32) + 64);
  ObjectType = swift_getObjectType();
  v0[3] = v1;
  v6 = (*(v2 + 8) + **(v2 + 8));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_219A5008C;

  return v6(v0 + 2, v0 + 3, ObjectType, v2);
}

uint64_t sub_219A5008C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_219A502B0;
  }

  else
  {
    v2 = sub_219A501A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219A501A0()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_219BF5C34();
  if (!v1 && swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = RecipeFilterSelection.isEmpty.getter() & 1;
      if (v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = v2;
      }

      sub_218956690(v4, v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  *(v0[4] + 48) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_219A502B0()
{
  *(*(v0 + 32) + 48) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A5031C()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_219A50388(uint64_t *a1)
{
  v1 = *a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      v4 = sub_21931C79C(v3, v1);

      if (v4)
      {
        v6 = v1;
        sub_2189561C8(&v6);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_219A50674();
        sub_219BDC1F4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_219A50518(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219A55F84();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219A50598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_219A4FF28(a1, v4, v5, v7, v6);
}

unint64_t sub_219A50674()
{
  result = qword_27CC0B228;
  if (!qword_27CC0B228)
  {
    type metadata accessor for RecipeFilterViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B228);
  }

  return result;
}

id sub_219A506CC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_secondarySystemBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_219A50780(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v32 = *(a1 + 16);
  if (v32)
  {
    v6 = a3;
    v7 = a2;
    v8 = 0;
    v9 = (a1 + 72);
    v10 = MEMORY[0x277D84F90];
    while (v8 < *(v5 + 16))
    {
      v11 = *v9;
      v12 = *(v9 - 7);
      v13 = *(v9 - 8);
      v14 = *(v9 - 3);
      v15 = *(v9 - 2);
      v16 = *(v9 - 4);
      v33 = *(v9 - 5);
      v34 = v16;
      v35 = v14;
      v36 = v15;
      v37 = v13;
      v38 = v12;
      v39 = v11;

      v17 = sub_219A51D60(&v33, v7, v6);
      if (v4)
      {

        goto LABEL_15;
      }

      if (v17)
      {
        v19 = v33;
        v18 = v34;
        v20 = v35;
        v31 = v36;
        v29 = v38;
        v30 = v37;
        v28 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C38538(0, *(v10 + 16) + 1, 1);
          v10 = v40;
        }

        v23 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_218C38538((v22 > 1), v23 + 1, 1);
          v10 = v40;
        }

        *(v10 + 16) = v23 + 1;
        v24 = v10 + 48 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v18;
        *(v24 + 48) = v20;
        *(v24 + 56) = v31;
        *(v24 + 64) = v30;
        *(v24 + 65) = v29;
        v5 = a1;
        *(v24 + 72) = v28;
        v7 = a2;
        v6 = a3;
      }

      else
      {
      }

      ++v8;
      v9 += 6;
      if (v32 == v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_219A50998(void *a1)
{
  v2 = *(type metadata accessor for SearchFilterItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C8133C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_219A522C4(v5);
  *a1 = v3;
}

void *sub_219A50A40(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 72) + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3 + 6);
  sub_2189B0840(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_218774F78(v2 + 88);
  return v2;
}

uint64_t sub_219A50AF8(uint64_t a1, uint64_t a2)
{
  sub_219A50A40(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_219A50B50()
{
  v1[4] = v0;
  type metadata accessor for RecipeFilterConfigurationPayload(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for RecipeFilterConfigFetchResult(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219A50C0C, 0, 0);
}

uint64_t sub_219A50C0C()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_219A50CB4;
  v2 = v0[6];

  return sub_219A960E0(v2);
}

uint64_t sub_219A50CB4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_219A50EB0;
  }

  else
  {
    v2 = sub_219A50DC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219A50DC8()
{
  v1 = v0[4];
  sub_219A521F8(v0[6], v0[5], type metadata accessor for RecipeFilterConfigurationPayload);
  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    RecipeFilterSelection.init(sections:)(MEMORY[0x277D84F90]);
    v3 = v0[2];
  }

  v0[3] = v3;
  sub_219BF5BD4();

  v0[9] = sub_219BF5BC4();
  v5 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219A50F1C, v5, v4);
}

uint64_t sub_219A50EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A50F1C()
{
  v1 = *(v0 + 40);

  sub_219A51044(v1, (v0 + 24));

  sub_219A53990(v1, type metadata accessor for RecipeFilterConfigurationPayload);

  return MEMORY[0x2822009F8](sub_219A50FB8, 0, 0);
}

uint64_t sub_219A50FB8(__n128 a1)
{
  sub_219A53990(*(v1 + 48), type metadata accessor for RecipeFilterConfigFetchResult);

  v2 = *(v1 + 8);

  return v2();
}

void sub_219A51044(uint64_t a1, uint64_t *a2)
{
  v107[2] = a1;
  v4 = type metadata accessor for RecipeFilterConfigurationPayload(0);
  MEMORY[0x28223BE20](v4 - 8);
  v107[0] = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFilterItem(0);
  v114 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v111 = v107 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v107 - v11;
  MEMORY[0x28223BE20](v13);
  v113 = v107 - v14;
  v15 = *a2;
  v120 = MEMORY[0x277D84F98];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v21 = MEMORY[0x277D84FA0];
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      do
      {
LABEL_9:
        v18 &= v18 - 1;

        sub_219479BA4(v23, v21);
        v21 = v24;
      }

      while (v18);
      continue;
    }
  }

  v107[1] = v2;

  v108 = v15;

  v25 = 0;
  v115 = v21;
  v26 = v21 + 56;
  v27 = 1 << *(v21 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v21 + 56);
  v30 = (v27 + 63) >> 6;
  Kind = MEMORY[0x277D84F98];
  v110 = v12;
  while (2)
  {
    if (v29)
    {
      v33 = Kind;
LABEL_22:
      v35 = *(v114 + 72);
      v36 = v113;
      sub_219A521F8(*(v115 + 48) + v35 * (__clz(__rbit64(v29)) | (v25 << 6)), v113, type metadata accessor for SearchFilterItem);
      sub_218CAFFC4(v36, v12);
      v37 = *(v12 + 2);
      v38 = *(v12 + 3);
      v39 = v12[32];
      v116 = v35;
      if (v39 == 1)
      {
        sub_219A521F8(v12, v111, type metadata accessor for SearchFilterItem);

        v40 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126.Kind = v33;
        v20 = v37;
        v42 = v38;
        v43 = sub_21870F700(v37, v38);
        v45 = *(v40 + 16);
        v46 = (v44 & 1) == 0;
        v47 = __OFADD__(v45, v46);
        v48 = v45 + v46;
        if (v47)
        {
          goto LABEL_84;
        }

        v49 = v44;
        if (*(v40 + 24) >= v48)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = v43;
            sub_21949771C();
            v43 = v68;
          }
        }

        else
        {
          sub_219488C1C(v48, isUniquelyReferenced_nonNull_native);
          v43 = sub_21870F700(v20, v38);
          if ((v49 & 1) != (v50 & 1))
          {
            goto LABEL_95;
          }
        }

        v12 = v110;
        if (v49)
        {
          v32 = v43;
          sub_218D89920();
          Kind = v126.Kind;
          sub_219A52260(v111, *(v126.Kind + 56) + v32 * v116);
        }

        else
        {
          Kind = v126.Kind;
          *(v126.Kind + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v64 = (Kind[6] + 16 * v43);
          *v64 = v20;
          v64[1] = v42;
          sub_218CAFFC4(v111, Kind[7] + v43 * v116);
          v65 = Kind[2];
          v47 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v47)
          {
            goto LABEL_86;
          }

          Kind[2] = v66;
        }

        goto LABEL_15;
      }

      v109 = v33;
      sub_219A521F8(v12, v112, type metadata accessor for SearchFilterItem);

      v51 = v38;
      v52 = v120;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v126.Kind = v52;
      v20 = v37;
      v54 = v51;
      v56 = sub_21870F700(v37, v51);
      v57 = *(v52 + 16);
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_85;
      }

      v60 = v55;
      if (*(v52 + 24) >= v59)
      {
        if (v53)
        {
          v63 = v116;
          if ((v55 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_21949771C();
          v63 = v116;
          if ((v60 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        sub_219488C1C(v59, v53);
        v61 = sub_21870F700(v20, v54);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_95;
        }

        v56 = v61;
        v63 = v116;
        if ((v60 & 1) == 0)
        {
LABEL_41:
          v67 = v126.Kind;
          *(v126.Kind + 8 * (v56 >> 6) + 64) |= 1 << v56;
          v69 = (*(v67 + 6) + 16 * v56);
          *v69 = v20;
          v69[1] = v54;
          sub_218CAFFC4(v112, *(v67 + 7) + v56 * v63);
          v70 = *(v67 + 2);
          v47 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v47)
          {
            goto LABEL_87;
          }

          *(v67 + 2) = v71;
          goto LABEL_43;
        }
      }

      sub_218D89920();
      v67 = v126.Kind;
      sub_219A52260(v112, *(v126.Kind + 56) + v56 * v63);
LABEL_43:
      v120 = v67;
      v12 = v110;
      Kind = v109;
LABEL_15:
      v29 &= v29 - 1;
      sub_219A53990(v12, type metadata accessor for SearchFilterItem);
      continue;
    }

    break;
  }

  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_83;
    }

    if (v34 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v34);
    ++v25;
    if (v29)
    {
      v33 = Kind;
      v25 = v34;
      goto LABEL_22;
    }
  }

  RecipeFilterSelection.init(sections:)(MEMORY[0x277D84F90]);
  sub_218FD9434(0);
  sub_219BF2664();
  v20 = 0;
  sub_219A50780(v126.Kind, &v120, &v119);
  v73 = v72;
  v74 = *(v72 + 16);
  if (v74)
  {
    v75 = 0;
    v76 = (v72 + 64);
    v77 = v108;
    while (1)
    {
      v78 = *v76;
      v76 += 48;
      if (!v78)
      {
        break;
      }

      if (v74 == ++v75)
      {
        v75 = -1;
        break;
      }
    }
  }

  else
  {
    v75 = -1;
    v77 = v108;
  }

  v79 = v75 + 1;
  if (__OFADD__(v75, 1))
  {
    goto LABEL_88;
  }

  v115 = v75 + 1;
  v116 = 0;
  v80 = v120;
  if (!*(v120 + 2))
  {
    v20 = v116;
    if (Kind[2])
    {
      goto LABEL_65;
    }

LABEL_76:
    v104 = v119;

    v105 = sub_21931C79C(v77, v104);

    if ((v105 & 1) == 0)
    {
      v117 = v104;

      sub_2189AFEE4(&v117);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v117 = v73;
      sub_218FD94C8(0);
      sub_219194AB0();
      v106 = v107[0];
      sub_219BF2684();
      sub_219A50518(v106);
      swift_unknownObjectRelease();
      sub_219A53990(v106, type metadata accessor for RecipeFilterConfigurationPayload);
    }

    else
    {
    }

    return;
  }

  v113 = v72;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v82 = [objc_opt_self() bundleForClass_];
  v112 = sub_219BDB5E4();
  v84 = v83;

  v85 = *(v80 + 2);
  if (v85)
  {
    v111 = v84;
    v109 = Kind;
    v86 = sub_21947D25C(v85, 0);
    sub_2194ACEFC(&v126, v86 + ((*(v114 + 80) + 32) & ~*(v114 + 80)), v85, v80);
    v88 = v87;
    v89 = v126.Kind;
    v20 = v80;
    swift_bridgeObjectRetain_n();
    sub_21892DE98(v89);
    if (v88 != v85)
    {
      goto LABEL_93;
    }

    Kind = v109;
    v79 = v115;
    v84 = v111;
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v126.Kind = v86;
  v20 = v116;
  sub_219A50998(&v126);
  if (v20)
  {
    goto LABEL_96;
  }

  v90 = sub_219A53610(v126.Kind, &v119, 0xD000000000000015, 0x8000000219D46F40, 0);

  v73 = v113;
  v91 = *(v113 + 16);
  if (v91 < v79)
  {
    goto LABEL_89;
  }

  if (v79 < 0)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v92 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v73;
  if (!v92 || v91 >= *(v73 + 3) >> 1)
  {
    v73 = sub_2191FBE80(v92, v91 + 1, 1, v73);
    v118 = v73;
  }

  v126.Kind = 0xD000000000000015;
  v126.Description = 0x8000000219D46F40;
  v127 = v112;
  v128 = v84;
  LOWORD(v129) = 3;
  v130 = v90;
  sub_2194B51B0(v79, v79, 1, &v126);

  v77 = v108;
  if (!Kind[2])
  {
    goto LABEL_76;
  }

LABEL_65:
  v113 = v73;
  type metadata accessor for Localized();
  v93 = swift_getObjCClassFromMetadata();
  v94 = [objc_opt_self() bundleForClass_];
  v112 = sub_219BDB5E4();
  v96 = v95;

  v97 = Kind[2];
  if (v97)
  {
    v111 = v96;
    v116 = v20;
    v20 = v80;
    v98 = sub_21947D25C(v97, 0);
    sub_2194ACEFC(&v121, v98 + ((*(v114 + 80) + 32) & ~*(v114 + 80)), v97, Kind);
    v100 = v99;
    v101 = v121.Kind;
    swift_bridgeObjectRetain_n();
    sub_21892DE98(v101);
    if (v100 != v97)
    {
      goto LABEL_94;
    }

    v77 = v108;
    v20 = v116;
    v96 = v111;
  }

  else
  {

    v98 = MEMORY[0x277D84F90];
  }

  v121.Kind = v98;
  sub_219A50998(&v121);
  if (!v20)
  {

    v20 = sub_219A53610(v121.Kind, &v119, 0xD000000000000017, 0x8000000219D46FA0, 1);

    v73 = v113;
    v102 = *(v113 + 16);
    if (v102 < v115)
    {
      goto LABEL_91;
    }

    if ((v115 & 0x8000000000000000) == 0)
    {
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v73;
      if (!v103 || v102 >= *(v73 + 3) >> 1)
      {
        v73 = sub_2191FBE80(v103, v102 + 1, 1, v73);
        v118 = v73;
      }

      v121.Kind = 0xD000000000000017;
      v121.Description = 0x8000000219D46FA0;
      v122 = v112;
      v123 = v96;
      LOWORD(v124) = 2;
      v125 = v20;
      sub_2194B51B0(v115, v115, 1, &v121);

      goto LABEL_76;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    sub_219BF79A4();
    __break(1u);
LABEL_96:

    __break(1u);
  }

  __break(1u);
}

double sub_219A51D14(uint64_t *a1)
{
  v1 = *a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v1;
    sub_219A50388(&v3);
    swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_219A51D60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v57 = a3;
  sub_219A53888(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for SearchFilterItem(0);
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v55 = &v47[-v11];
  MEMORY[0x28223BE20](v12);
  v62 = &v47[-v13];
  v48 = *(a1 + 32) & 0xFE;
  if (v48 != 2)
  {
    v14 = *(a1 + 40);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(a1 + 8);
      v52 = *a1;
      v51 = v16;
      v17 = v14 + 32;
      v50 = (v58 + 56);
      v49 = *(a1 + 33);
      v53 = a2;
      v54 = v7;
      do
      {
        v60[0] = *v17;
        v18 = *(v17 + 16);
        v19 = *(v17 + 32);
        v20 = *(v17 + 48);
        v61 = *(v17 + 64);
        v60[2] = v19;
        v60[3] = v20;
        v60[1] = v18;
        v21 = v60[0];

        v22 = *a2;
        if (*(*a2 + 16))
        {
          sub_219A538E0(v60, v59);
          v23 = sub_21870F700(v21, *(&v21 + 1));
          v25 = v24;

          if (v25)
          {
            v26 = *(v58 + 72);
            v27 = *(v22 + 56) + v26 * v23;
            v28 = v55;
            sub_219A521F8(v27, v55, type metadata accessor for SearchFilterItem);
            sub_218CAFFC4(v28, v62);
            v29 = v60[0];

            v30 = sub_21870F700(v29, *(&v29 + 1));
            LOBYTE(v28) = v31;

            if (v28)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v33 = *a2;
              *v59 = *a2;
              *a2 = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_21949771C();
                v33 = *v59;
              }

              v34 = *(v33 + 56) + v30 * v26;
              v35 = v54;
              sub_218CAFFC4(v34, v54);
              sub_21948B84C(v30, v33);
              *a2 = v33;

              v36 = 0;
            }

            else
            {
              v36 = 1;
              v35 = v54;
            }

            v37 = v56;
            (*v50)(v35, v36, 1, v56);
            sub_219A53990(v35, sub_219A53888);
            v38 = v60[0];
            v39 = 3;
            if (v61)
            {
              v39 = 1;
            }

            v40 = 56;
            if (v61)
            {
              v40 = 24;
            }

            v41 = *&v60[v39];
            v42 = *(v60 + v40);

            sub_219A5393C(v60);
            v43 = *(v37 + 24);
            v44 = sub_219BDBD34();
            v45 = v62;
            (*(*(v44 - 8) + 16))(&v9[v43], &v62[v43], v44);
            *(v9 + 1) = v38;
            v9[32] = 0;
            *v9 = v41;
            *(v9 + 1) = v42;
            v59[0] = v49;
            RecipeFilterSelection.updateSelectionByTogglingFilter(sectionID:searchFilterItem:selectionBehavior:)(v52, v51, v9, v59);
            sub_219A53990(v9, type metadata accessor for SearchFilterItem);
            sub_219A53990(v45, type metadata accessor for SearchFilterItem);
            a2 = v53;
          }

          else
          {
            sub_219A5393C(v60);
          }
        }

        else
        {
        }

        v17 += 72;
        --v15;
      }

      while (v15);
    }
  }

  return v48 != 2;
}

uint64_t sub_219A521F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A52260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFilterItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_219A522C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SearchFilterItem(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SearchFilterItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_219A52660(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_219A523F0(0, v2, 1, a1);
  }
}

void sub_219A523F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for SearchFilterItem(0);
  MEMORY[0x28223BE20](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_219A521F8(v22, v16, type metadata accessor for SearchFilterItem);
      sub_219A521F8(v19, v12, type metadata accessor for SearchFilterItem);
      if (*v16 == *v12 && v16[1] == v12[1])
      {
        sub_219A53990(v12, type metadata accessor for SearchFilterItem);
        sub_219A53990(v16, type metadata accessor for SearchFilterItem);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_219BF78F4();
      sub_219A53990(v12, type metadata accessor for SearchFilterItem);
      sub_219A53990(v16, type metadata accessor for SearchFilterItem);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_218CAFFC4(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_218CAFFC4(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_219A52660(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v137 = type metadata accessor for SearchFilterItem(0);
  v130 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v117 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v117 - v16);
  MEMORY[0x28223BE20](v18);
  v134 = (&v117 - v19);
  MEMORY[0x28223BE20](v20);
  v133 = (&v117 - v21);
  MEMORY[0x28223BE20](v22);
  v122 = (&v117 - v23);
  MEMORY[0x28223BE20](v24);
  v121 = (&v117 - v25);
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_219A53078(*a3 + *(v130 + 72) * v28, *a3 + *(v130 + 72) * *&v113[16 * v112 + 16], *a3 + *(v130 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_218C81048(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_218C80FBC(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_218C81048(v28);
    goto LABEL_112;
  }

  v117 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v131 = a3;
  v127 = v17;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v128 = v26;
      v118 = v28;
      v31 = *a3;
      v32 = *(v130 + 72);
      v33 = v27 + 1;
      v34 = v121;
      sub_219A521F8(v31 + v32 * v30, v121, type metadata accessor for SearchFilterItem);
      v132 = v32;
      v35 = v31 + v32 * v29;
      v36 = v122;
      sub_219A521F8(v35, v122, type metadata accessor for SearchFilterItem);
      v37 = *v34 == *v36 && v34[1] == v36[1];
      v119 = v6;
      if (v37)
      {
        LODWORD(v129) = 0;
      }

      else
      {
        LODWORD(v129) = sub_219BF78F4();
      }

      sub_219A53990(v122, type metadata accessor for SearchFilterItem);
      sub_219A53990(v121, type metadata accessor for SearchFilterItem);
      v120 = v29;
      v38 = v29 + 2;
      v39 = v132 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v132 * v33;
      a3 = v31 + v132 * v33;
      do
      {
        v44 = v38;
        v28 = v41;
        v5 = v42;
        v45 = v39;
        v135 = v38;
        if (v38 >= v128)
        {
          break;
        }

        v46 = v14;
        v47 = v133;
        sub_219A521F8(v40, v133, type metadata accessor for SearchFilterItem);
        v48 = v134;
        sub_219A521F8(a3, v134, type metadata accessor for SearchFilterItem);
        v49 = *v47 == *v48 && v47[1] == v48[1];
        v43 = v49 ? 0 : sub_219BF78F4();
        v14 = v46;
        v6 = type metadata accessor for SearchFilterItem;
        sub_219A53990(v134, type metadata accessor for SearchFilterItem);
        sub_219A53990(v133, type metadata accessor for SearchFilterItem);
        v44 = v135;
        v38 = v135 + 1;
        v40 += v132;
        a3 += v132;
        v41 = v28 + 1;
        v42 = v5 + v132;
        v39 = v45 + v132;
        v17 = v127;
      }

      while (((v129 ^ v43) & 1) == 0);
      if ((v129 & 1) == 0)
      {
        v30 = v44;
LABEL_36:
        v28 = v118;
        v6 = v119;
        a3 = v131;
        v29 = v120;
        goto LABEL_37;
      }

      if (v44 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v44)
      {
        v50 = v120 * v132;
        v51 = v120;
        do
        {
          if (v51 != v28)
          {
            v53 = *v131;
            if (!*v131)
            {
              goto LABEL_145;
            }

            sub_218CAFFC4(v53 + v50, v126);
            if (v50 < v5 || v53 + v50 >= (v53 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_218CAFFC4(v126, v53 + v5);
          }

          ++v51;
          v5 -= v132;
          v45 -= v132;
          v50 += v132;
        }

        while (v51 < v28--);
        v30 = v135;
        goto LABEL_36;
      }

      v30 = v44;
      v28 = v118;
      v6 = v119;
      a3 = v131;
      v29 = v120;
    }

LABEL_37:
    v54 = *(a3 + 8);
    if (v30 < v54)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_138;
      }

      if (v30 - v29 < v117)
      {
        break;
      }
    }

LABEL_59:
    if (v30 < v29)
    {
      goto LABEL_137;
    }

    v135 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_2191F6B60(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    v27 = v135;
    if (v66 >= v65 >> 1)
    {
      v111 = sub_2191F6B60((v65 > 1), v66 + 1, 1, v28);
      v27 = v135;
      v28 = v111;
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    *(v68 + 32) = v29;
    *(v68 + 40) = v27;
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v69 = *(v28 + 32);
          v70 = *(v28 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_79:
          if (v72)
          {
            goto LABEL_126;
          }

          v85 = (v28 + 16 * v67);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_129;
          }

          v91 = (v28 + 32 + 16 * a3);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_133;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v95 = (v28 + 16 * v67);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_93:
        if (v90)
        {
          goto LABEL_128;
        }

        v98 = v28 + 16 * a3;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_131;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_100:
        v106 = a3 - 1;
        if (a3 - 1 >= v67)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v131)
        {
          goto LABEL_144;
        }

        v107 = v28;
        v108 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v106);
        v109 = *(v108 + 16 * a3 + 8);
        sub_219A53078(*v131 + *(v130 + 72) * v28, *v131 + *(v130 + 72) * *(v108 + 16 * a3), *v131 + *(v130 + 72) * v109, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v109 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_218C81048(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_123;
        }

        v110 = &v107[16 * v106];
        *(v110 + 4) = v28;
        *(v110 + 5) = v109;
        v138 = v107;
        sub_218C80FBC(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        v27 = v135;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v28 + 32 + 16 * v67;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_124;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_125;
      }

      v80 = (v28 + 16 * v67);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_127;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_130;
      }

      if (v84 >= v76)
      {
        v102 = (v28 + 32 + 16 * a3);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v131;
    v26 = v131[1];
    if (v27 >= v26)
    {
      goto LABEL_110;
    }
  }

  v55 = v29 + v117;
  if (__OFADD__(v29, v117))
  {
    goto LABEL_140;
  }

  if (v55 >= v54)
  {
    v55 = *(a3 + 8);
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v30 == v55)
  {
    goto LABEL_59;
  }

  v118 = v28;
  v119 = v6;
  a3 = *a3;
  v56 = *(v130 + 72);
  v57 = a3 + v56 * (v30 - 1);
  v58 = v29;
  v59 = -v56;
  v120 = v58;
  v60 = v58 - v30;
  v124 = v56;
  v125 = v55;
  v5 = a3 + v30 * v56;
LABEL_48:
  v135 = v30;
  v128 = v5;
  v129 = v60;
  v132 = v57;
  while (1)
  {
    sub_219A521F8(v5, v17, type metadata accessor for SearchFilterItem);
    sub_219A521F8(v57, v14, type metadata accessor for SearchFilterItem);
    if (*v17 == *v14 && v17[1] == v14[1])
    {
      sub_219A53990(v14, type metadata accessor for SearchFilterItem);
      sub_219A53990(v17, type metadata accessor for SearchFilterItem);
LABEL_47:
      v30 = v135 + 1;
      v57 = v132 + v124;
      v60 = v129 - 1;
      v5 = v128 + v124;
      if (v135 + 1 == v125)
      {
        v30 = v125;
        v28 = v118;
        v6 = v119;
        v29 = v120;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_219BF78F4();
    sub_219A53990(v14, type metadata accessor for SearchFilterItem);
    sub_219A53990(v17, type metadata accessor for SearchFilterItem);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v63 = v136;
    sub_218CAFFC4(v5, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_218CAFFC4(v63, v57);
    v57 += v59;
    v5 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_219A53078(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a4;
  v46 = type metadata accessor for SearchFilterItem(0);
  MEMORY[0x28223BE20](v46);
  v45 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v44 = (&v39 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = (&v39 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - v14);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v43 = a2;
  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - v43;
  if (a3 - v43 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v50 = a1;
  v49 = v47;
  if (v19 >= v18 / v17)
  {
    v22 = v18 / v17 * v17;
    if (v47 < v43 || v43 + v22 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v47 != v43)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = v47 + v22;
    if (v22 >= 1)
    {
      v29 = -v17;
      v30 = v47 + v22;
      v42 = -v17;
      do
      {
        v40 = v28;
        v31 = v43;
        v43 += v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v50 = v31;
            v48 = v40;
            goto LABEL_69;
          }

          v32 = a3;
          v41 = v28;
          v33 = v42;
          v34 = v30 + v42;
          v35 = v44;
          sub_219A521F8(v30 + v42, v44, type metadata accessor for SearchFilterItem);
          v36 = v45;
          sub_219A521F8(v43, v45, type metadata accessor for SearchFilterItem);
          v37 = *v35 == *v36 && v35[1] == v36[1];
          v38 = v37 ? 0 : sub_219BF78F4();
          a3 = v32 + v33;
          sub_219A53990(v45, type metadata accessor for SearchFilterItem);
          sub_219A53990(v44, type metadata accessor for SearchFilterItem);
          if (v38)
          {
            break;
          }

          v28 = v30 + v33;
          if (v32 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 += v33;
          if (v34 <= v47)
          {
            v43 = v31;
            goto LABEL_68;
          }
        }

        if (v32 < v31 || a3 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
        }

        else
        {
          v28 = v41;
          if (v32 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v42;
      }

      while (v30 > v47);
    }

LABEL_68:
    v50 = v43;
    v48 = v28;
  }

  else
  {
    v20 = v19 * v17;
    if (v47 < a1 || a1 + v20 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v21 = v43;
    }

    else
    {
      v21 = v43;
      if (v47 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v23 = v47 + v20;
    v48 = v47 + v20;
    if (v20 >= 1 && v21 < a3)
    {
      while (1)
      {
        sub_219A521F8(v21, v15, type metadata accessor for SearchFilterItem);
        sub_219A521F8(v47, v12, type metadata accessor for SearchFilterItem);
        if (*v15 == *v12 && v15[1] == v12[1])
        {
          break;
        }

        v26 = sub_219BF78F4();
        sub_219A53990(v12, type metadata accessor for SearchFilterItem);
        sub_219A53990(v15, type metadata accessor for SearchFilterItem);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v21 || a1 >= v21 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v21 += v17;
LABEL_38:
        a1 += v17;
        v50 = a1;
        if (v47 >= v23 || v21 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_219A53990(v12, type metadata accessor for SearchFilterItem);
      sub_219A53990(v15, type metadata accessor for SearchFilterItem);
LABEL_30:
      v27 = v47 + v17;
      if (a1 < v47 || a1 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v47)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v49 = v27;
      v47 = v27;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_2189F1B3C(&v50, &v49, &v48);
}

uint64_t sub_219A53610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = type metadata accessor for SearchFilterItem(0);
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v25[1] = v5;
    v39 = MEMORY[0x277D84F90];
    sub_218C366B8(0, v11, 0);
    v13 = v39;
    v14 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
    v30 = *(v8 + 72);
    v29 = sub_219BDBD34();
    v15 = *(v29 - 8);
    v16 = *(v15 + 16);
    v27 = v15 + 16;
    v28 = v16;
    v26 = a5 & 1;
    do
    {
      v36 = v11;
      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      v19 = *v14;
      v20 = *(v14 + 1);
      v28(&v10[*(v31 + 24)], &v14[*(v31 + 24)], v29);
      *(v10 + 2) = v17;
      *(v10 + 3) = v18;
      v10[32] = v26;
      v35 = v19;
      *v10 = v19;
      *(v10 + 1) = v20;
      LOBYTE(v38[0]) = 0;
      swift_bridgeObjectRetain_n();
      sub_21892DEAC(v17, v18);
      RecipeFilterSelection.updateSelectionByTogglingFilter(sectionID:searchFilterItem:selectionBehavior:)(v33, v34, v10, v38);
      sub_219A53990(v10, type metadata accessor for SearchFilterItem);
      sub_21892DEAC(v17, v18);
      v39 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_218C366B8((v21 > 1), v22 + 1, 1);
        v13 = v39;
      }

      v37 = 1;
      *(v13 + 16) = v22 + 1;
      v23 = v13 + 72 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v18;
      *(v23 + 48) = v35;
      *(v23 + 56) = v20;
      v24 = v38[1];
      *(v23 + 64) = v38[0];
      *(v23 + 80) = v24;
      *(v23 + 96) = v37;
      v14 += v30;
      v11 = v36 - 1;
    }

    while (v36 != 1);
    return v13;
  }

  return result;
}

void sub_219A53888(uint64_t a1)
{
  if (!qword_27CC22C00)
  {
    type metadata accessor for SearchFilterItem(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22C00);
    }
  }
}

uint64_t sub_219A53990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A53A14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_218704198(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_219A53AC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_218704198(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC1F4();

  return result;
}

uint64_t sub_219A53B94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeFilterModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for RecipeFilterModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219A53C44()
{
  type metadata accessor for RecipeFilterViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC22C10, &protocol descriptor for RecipeFilterStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22C18, &protocol descriptor for RecipeFilterRouterType, 1);
  sub_219BE2914();
  type metadata accessor for RecipeFilterRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC22C20, &protocol descriptor for RecipeFilterEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22C28, &protocol descriptor for RecipeFilterInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22C30, &protocol descriptor for RecipeFilterTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22C38, &protocol descriptor for RecipeFilterDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC22C40, &protocol descriptor for RecipeFilterResultProviderType, 0);
  sub_219BE2914();

  return result;
}

char *sub_219A53ED8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22C10, &protocol descriptor for RecipeFilterStylerType, 1);
  result = sub_219BE1E34();
  if (!v28)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22C20, &protocol descriptor for RecipeFilterEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v25;
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType, 0);
  result = sub_219BE1E34();
  v5 = v23;
  if (v23)
  {
    v6 = v24;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v21 = type metadata accessor for RecipeFilterStyler();
    v22 = &off_282A995E0;
    v20[0] = v12;
    v13 = objc_allocWithZone(type metadata accessor for RecipeFilterViewController(0));
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_219A55084(*v17, v3, v4, v5, v6, v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219A541C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v26)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v24[3] = v10;
    v11 = sub_218704198(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v24[4] = v11;
    v24[0] = v9;
    v12 = type metadata accessor for RecipeFilterStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    v20 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_219A506CC;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218FEA284;
    aBlock[3] = &block_descriptor_205;
    v21 = _Block_copy(aBlock);
    v22 = [v20 initWithDynamicProvider_];
    _Block_release(v21);

    v13[7] = v22;
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    a2[3] = v12;
    a2[4] = &off_282A995E0;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A544C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeFilterRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A99650;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219A54580(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeFilterViewController(0);
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219A54600@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22C28, &protocol descriptor for RecipeFilterInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22C18, &protocol descriptor for RecipeFilterRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22C30, &protocol descriptor for RecipeFilterTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_219A54E28(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A99520;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219A548A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22C38, &protocol descriptor for RecipeFilterDataManagerType, 0);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for RecipeFilterInteractor();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[5] = v6;
    v4[6] = 0;
    v4[4] = v5;
    *(v5 + 96) = &off_282A99560;
    result = swift_unknownObjectWeakAssign();
    *a2 = v4;
    a2[1] = &off_282A99578;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A5497C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeFilterTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A995F8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219A54A04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF3A8, &protocol descriptor for RecipeFilterConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v29)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC22C40, &protocol descriptor for RecipeFilterResultProviderType, 0);
  result = sub_219BE1E34();
  v5 = v26;
  if (!v26)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType, 0);
  result = sub_219BE1E34();
  v7 = v24;
  if (v24)
  {
    v8 = v25;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for RecipeFilterConfigManager();
    v23[3] = v15;
    v23[4] = &off_282A9B8B8;
    v23[0] = v14;
    type metadata accessor for RecipeFilterDataManager();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v15);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = sub_219A554B0(*v20, v5, v6, v7, v8, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    *a2 = v22;
    a2[1] = &off_282A99610;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A54D60(uint64_t a1)
{
  v2 = sub_219BEC614();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_219BEC7C4();
}

void *sub_219A54E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for RecipeFilterRouter();
  v34[3] = v9;
  v34[4] = &off_282A99650;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A995F8;
  v31[0] = a4;
  type metadata accessor for RecipeFilterEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A99650;
  v27 = &off_282A995F8;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + 24) = &off_282A994F8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

char *sub_219A55084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21875FEA4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29[-v12];
  v14 = type metadata accessor for RecipeFilterView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31[3] = type metadata accessor for RecipeFilterStyler();
  v31[4] = &off_282A995E0;
  v31[0] = a1;
  sub_218718690(v31, a6 + qword_27CC22C68);
  v17 = (a6 + qword_27CC22C70);
  *v17 = a2;
  v17[1] = a3;
  v18 = *(a4 + 16);
  swift_unknownObjectRetain();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    RecipeFilterSelection.init(sections:)(MEMORY[0x277D84F90]);
    v19 = v30;
  }

  type metadata accessor for RecipeFilterViewModel(0);
  v20 = swift_allocObject();
  *(v20 + 32) = 0;
  *(v20 + 40) = 1;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
  *(v20 + 72) = 0;
  swift_unknownObjectWeakInit();

  sub_219BDC234();
  *(v20 + 16) = MEMORY[0x277D84F90];
  *(v20 + 24) = v19;
  sub_218956A74();
  *(a6 + qword_27CC22C78) = v20;
  *v16 = swift_getKeyPath();
  sub_21875FEA4(0, &unk_27CC22C50, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v16 + *(v14 + 20)) = v20;

  v21 = sub_219BEC9B4();
  *(*&v21[qword_27CC22C70] + 24) = &off_282A99710;
  swift_unknownObjectWeakAssign();
  v22 = *&v21[qword_27CC22C78];
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *&v29[-32] = v22;
  *&v29[-24] = v21;
  *&v29[-16] = &off_282A99730;
  v30 = v22;
  sub_218704198(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  v24 = v21;

  sub_219BDC1F4();

  v25 = *(a2 + 32);
  v26 = sub_219BF5BF4();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  swift_unknownObjectRetain();
  sub_218AB3D80(0, 0, v13, &unk_219CC3498, v27);

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

void *sub_219A554B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v14[3] = type metadata accessor for RecipeFilterConfigManager();
  v14[4] = &off_282A9B8B8;
  v14[0] = a1;
  a6[12] = 0;
  swift_unknownObjectWeakInit();
  sub_218718690(v14, (a6 + 2));
  a6[7] = a2;
  a6[8] = a3;
  a6[9] = a4;
  a6[10] = a5;
  v12 = *(a4 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v12 + 6);
  sub_2189B0840(&v12[4]);
  os_unfair_lock_unlock(v12 + 6);

  __swift_destroy_boxed_opaque_existential_1(v14);
  return a6;
}

uint64_t sub_219A555CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_219A4F95C(a1, v4, v5, v6);
}

void RecipeFilterModule.createViewController(with:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v4 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for RecipeFilterViewController(0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(a1 + 16);
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  *(v5 + 56) = *(a1 + 32);

  sub_219A558E4(v9, v8);
  v7 = sub_219BE1E04();

  if (v7)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A557CC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187060FC(0, &unk_27CC22C40, &protocol descriptor for RecipeFilterResultProviderType);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187060FC(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType);
  return sub_219BE1BA4();
}

uint64_t RecipeFilterModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t RecipeFilterModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_219A559A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  v5 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  type metadata accessor for RecipeFilterViewController(0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(a1 + 16);
  *(v6 + 24) = *a1;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a1 + 32);

  sub_219A558E4(v10, v9);
  v8 = sub_219BE1E04();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for RecipeFilterViewController(uint64_t a1)
{
  result = qword_27CC22C80;
  if (!qword_27CC22C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A55C3C()
{
  v1 = [v0 presentingViewController];
  if (!v1 || (v2 = v1, v3 = [v1 traitCollection], v2, !v3))
  {
    v3 = [v0 traitCollection];
  }

  v4 = *&v0[qword_27CC22C78];
  v5 = [v3 horizontalSizeClass];
  v6 = v5;
  if ((*(v4 + 56) & 1) != 0 || *(v4 + 48) != v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_219A56CC0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
    sub_219BDC1F4();
  }

  else
  {

    *(v4 + 48) = v6;
    *(v4 + 56) = 0;
  }
}

double sub_219A55E34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_27CC22C68));
  swift_unknownObjectRelease();

  return result;
}

double sub_219A55E84(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_27CC22C68));
  swift_unknownObjectRelease();

  return result;
}

void sub_219A55EE8(void *a1)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = sub_219BF65B4();
  [v2 setRightBarButtonItem_];

  v3 = [v1 traitCollection];
  sub_219A56BCC();

  sub_219A55C3C();
}

void sub_219A55F84()
{
  sub_218FD9434(0);
  sub_219BF2664();
  v0 = v15[0];
  v1 = *(v15[0] + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v15[0] + 72);
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v0 + 16))
    {
      v5 = *v3;
      v6 = *(v3 - 7);
      v7 = *(v3 - 8);
      v8 = *(v3 - 3);
      v9 = *(v3 - 2);
      v10 = *(v3 - 4);
      v15[0] = *(v3 - 5);
      v15[1] = v10;
      v15[2] = v8;
      v15[3] = v9;
      v16 = v7;
      v17 = v6;
      v18 = v5;

      sub_219A56170(v15, &v14);

      v11 = v14;
      if ((~v14 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2191FBD48(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        if (v13 >= v12 >> 1)
        {
          v4 = sub_2191FBD48((v12 > 1), v13 + 1, 1, v4);
        }

        *(v4 + 2) = v13 + 1;
        *&v4[8 * v13 + 32] = v11;
      }

      ++v2;
      v3 += 6;
      if (v1 == v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_12:

    sub_218956D40(v4);
  }
}

void sub_219A56170(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = *(a1 + 33);
  v5 = a1[5];
  v85 = a1[1];
  v86 = a1[2];
  v84 = *a1;
  if (*(a1 + 32) > 1u)
  {
    v23 = MEMORY[0x277D84F90];
    if (*(a1 + 32) == 2)
    {
      v93 = MEMORY[0x277D84F90];
      v24 = *(v5 + 16);

      if (v24)
      {
        v25 = 0;
        v26 = v5 + 32;
        v27 = v24 - 1;
        do
        {
          v28 = *(v5 + 16);
          v29 = v26 + 72 * v25;
          v30 = v25;
          while (1)
          {
            if (v30 >= v28)
            {
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v88 = *v29;
            v31 = *(v29 + 16);
            v32 = *(v29 + 32);
            v33 = *(v29 + 48);
            v92 = *(v29 + 64);
            v90 = v32;
            v91 = v33;
            v89 = v31;
            v25 = v30 + 1;
            if (v92)
            {
              break;
            }

            v29 += 72;
            ++v30;
            if (v24 == v25)
            {
              goto LABEL_49;
            }
          }

          v74 = v27;
          v78 = v26;
          v34 = v89;
          v35 = v88;
          type metadata accessor for RecipeFilterTagCapsuleViewModel(0);
          v36 = swift_allocObject();
          sub_219A538E0(&v88, v87);

          sub_219BDC234();
          *(v36 + 16) = v35;
          *(v36 + 32) = v34;
          v37 = sub_219A5393C(&v88);
          *(v36 + 48) = 0;
          MEMORY[0x21CECC690](v37);
          if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v23 = v93;
          v27 = v74;
          v26 = v78;
        }

        while (v74 != v30);
      }

LABEL_49:
      sub_219A56B68(0, &qword_27CC0BA78, type metadata accessor for RecipeFilterTagCapsuleViewModel, &off_282A613A0);
      v68 = swift_allocObject();
      sub_219BDC234();
      *(v68 + 16) = v84;
      *(v68 + 24) = v85;
      *(v68 + 32) = v86;
      *(v68 + 40) = v3;
      *(v68 + 48) = v23;
      v67 = v68 | 0x8000000000000000;
    }

    else
    {
      v93 = MEMORY[0x277D84F90];
      v53 = *(v5 + 16);

      if (v53)
      {
        v54 = 0;
        v55 = v5 + 32;
        v56 = v53 - 1;
LABEL_39:
        v57 = *(v5 + 16);
        v58 = v55 + 72 * v54;
        v59 = v54;
        while (v59 < v57)
        {
          v88 = *v58;
          v60 = *(v58 + 16);
          v61 = *(v58 + 32);
          v62 = *(v58 + 48);
          v92 = *(v58 + 64);
          v90 = v61;
          v91 = v62;
          v89 = v60;
          v54 = v59 + 1;
          if (v92)
          {
            v76 = v56;
            v80 = v55;
            v63 = v89;
            v64 = v88;
            type metadata accessor for RecipeFilterTagCapsuleViewModel(0);
            v65 = swift_allocObject();
            sub_219A538E0(&v88, v87);

            sub_219BDC234();
            *(v65 + 16) = v64;
            *(v65 + 32) = v63;
            v66 = sub_219A5393C(&v88);
            *(v65 + 48) = 0;
            MEMORY[0x21CECC690](v66);
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
            }

            sub_219BF5A54();
            v23 = v93;
            v56 = v76;
            v55 = v80;
            if (v76 != v59)
            {
              goto LABEL_39;
            }

            goto LABEL_51;
          }

          v58 += 72;
          ++v59;
          if (v53 == v54)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_57;
      }

LABEL_51:
      sub_219A56B68(0, &qword_27CC0BA78, type metadata accessor for RecipeFilterTagCapsuleViewModel, &off_282A613A0);
      v68 = swift_allocObject();
      sub_219BDC234();
      *(v68 + 16) = v84;
      *(v68 + 24) = v85;
      *(v68 + 32) = v86;
      *(v68 + 40) = v3;
      *(v68 + 48) = v23;
      v67 = v68 | 0xC000000000000000;
    }

LABEL_52:
    *(v68 + 56) = v4;
LABEL_53:
    *a2 = v67;
    return;
  }

  if (!*(a1 + 32))
  {
    v6 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v7 = *(v5 + 16);

    if (v7)
    {
      v8 = 0;
      v9 = v5 + 32;
      v10 = v7 - 1;
      do
      {
        v11 = *(v5 + 16);
        v12 = v9 + 72 * v8;
        v13 = v8;
        while (1)
        {
          if (v13 >= v11)
          {
            __break(1u);
            goto LABEL_55;
          }

          v88 = *v12;
          v14 = *(v12 + 16);
          v15 = *(v12 + 32);
          v16 = *(v12 + 48);
          v92 = *(v12 + 64);
          v90 = v15;
          v91 = v16;
          v89 = v14;
          v8 = v13 + 1;
          if ((v92 & 1) == 0)
          {
            break;
          }

          v12 += 72;
          ++v13;
          if (v7 == v8)
          {
            goto LABEL_48;
          }
        }

        v73 = v10;
        v77 = v9;
        v81 = v3;
        v82 = v4;
        v83 = a2;
        v17 = *(&v91 + 1);
        v18 = *(&v90 + 1);
        v71 = v91;
        v72 = v90;
        v19 = *(&v89 + 1);
        v20 = *(&v88 + 1);
        v69 = v88;
        v70 = v89;
        type metadata accessor for RecipeFilterDurationItemViewModel(0);
        v21 = swift_allocObject();
        sub_219A538E0(&v88, v87);

        sub_219BDC234();
        *(v21 + 16) = v69;
        *(v21 + 24) = v20;
        *(v21 + 32) = v71;
        *(v21 + 40) = v17;
        *(v21 + 48) = v70;
        *(v21 + 56) = v19;
        *(v21 + 64) = v72;
        *(v21 + 72) = v18;
        v22 = sub_219A5393C(&v88);
        *(v21 + 80) = 0;
        MEMORY[0x21CECC690](v22);
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v6 = v93;
        v10 = v73;
        v9 = v77;
        a2 = v83;
        v4 = v82;
        v3 = v81;
      }

      while (v73 != v13);
    }

LABEL_48:
    sub_219A56B68(0, &unk_27CC22C90, type metadata accessor for RecipeFilterDurationItemViewModel, &off_282A32350);
    v67 = swift_allocObject();
    sub_219BDC234();
    *(v67 + 16) = v84;
    *(v67 + 24) = v85;
    *(v67 + 32) = v86;
    *(v67 + 40) = v3;
    *(v67 + 48) = v6;
    *(v67 + 56) = v4;
    goto LABEL_53;
  }

  v38 = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
  v39 = *(v5 + 16);

  if (!v39)
  {
LABEL_50:
    sub_219A56B68(0, &qword_27CC0BA78, type metadata accessor for RecipeFilterTagCapsuleViewModel, &off_282A613A0);
    v68 = swift_allocObject();
    sub_219BDC234();
    *(v68 + 16) = v84;
    *(v68 + 24) = v85;
    *(v68 + 32) = v86;
    *(v68 + 40) = v3;
    *(v68 + 48) = v38;
    v67 = v68 | 0x4000000000000000;
    goto LABEL_52;
  }

  v40 = 0;
  v41 = v5 + 32;
  v42 = v39 - 1;
LABEL_28:
  v43 = *(v5 + 16);
  v44 = v41 + 72 * v40;
  v45 = v40;
  while (v45 < v43)
  {
    v88 = *v44;
    v46 = *(v44 + 16);
    v47 = *(v44 + 32);
    v48 = *(v44 + 48);
    v92 = *(v44 + 64);
    v90 = v47;
    v91 = v48;
    v89 = v46;
    v40 = v45 + 1;
    if (v92)
    {
      v75 = v42;
      v79 = v41;
      v49 = v89;
      v50 = v88;
      type metadata accessor for RecipeFilterTagCapsuleViewModel(0);
      v51 = swift_allocObject();
      sub_219A538E0(&v88, v87);

      sub_219BDC234();
      *(v51 + 16) = v50;
      *(v51 + 32) = v49;
      v52 = sub_219A5393C(&v88);
      *(v51 + 48) = 0;
      MEMORY[0x21CECC690](v52);
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v38 = v93;
      v42 = v75;
      v41 = v79;
      if (v75 != v45)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    v44 += 72;
    ++v45;
    if (v39 == v40)
    {
      goto LABEL_50;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

void sub_219A56950(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  sub_219A56BCC();

  sub_219A55C3C();
}

uint64_t sub_219A569E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {
      v2 = v1;
      [v1 dismissViewControllerAnimated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

double sub_219A56A70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_219A56B38(void *a1)
{
  v1 = a1;
  sub_219A569E4();

  return 1;
}

void sub_219A56B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for RecipeFilterSectionViewModel(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_219A56BCC()
{
  v1 = &v0[qword_27CC22C68];
  sub_218718690(&v0[qword_27CC22C68], v6);
  v2 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    v5 = [v0 navigationItem];
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A56CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219A56D18()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8F70);
  __swift_project_value_buffer(v0, qword_27CCD8F70);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_219A56F70()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8F88);
  __swift_project_value_buffer(v0, qword_27CCD8F88);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219A57118()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8FA0);
  __swift_project_value_buffer(v0, qword_27CCD8FA0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_219A57368()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8FB8);
  __swift_project_value_buffer(v0, qword_27CCD8FB8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219A5751C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8FD0);
  __swift_project_value_buffer(v0, qword_27CCD8FD0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

void sub_219A57784(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) displayName];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_219BF5454();

  v9 = sub_219BF53D4();

  MEMORY[0x21CECEE10](v9);
}

uint64_t sub_219A5790C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A579D4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A57A9C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A57B5C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void sub_219A57C44(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_219BE09E4();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF104();
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEC084();
  v25 = *(v13 - 8);
  v26 = v13;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v17 = [a4 view];
  if (v17)
  {
    v18 = v17;
    [v17 bounds];

    sub_219BEC074();
    sub_219BEC2E4();
    sub_219BEF324();

    v19 = [a1 articleID];
    if (v19)
    {
      v20 = v19;
      sub_219BF5414();
    }

    sub_219BDD224();

    if ([a1 sourceChannel])
    {
      sub_219BE01F4();
      sub_219A58294(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
      sub_219BDD1F4();
      (*(v22 + 8))(v12, v10);
      sub_219BE01E4();
      sub_219A58294(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
      v21 = v24;
      sub_219BDD1F4();
      swift_unknownObjectRelease();
      (*(v23 + 8))(v9, v21);
    }

    __swift_project_boxed_opaque_existential_1((v4 + qword_280EBB6E8), *(v4 + qword_280EBB6E8 + 24));
    sub_219A58230();

    sub_219BE1E14();

    if (v29)
    {
      sub_2186CB1F0(&v28, v30);
      sub_219BEBBF4();
      sub_219BEC2D4();

      __swift_destroy_boxed_opaque_existential_1(v30);
      (*(v25 + 8))(v16, v26);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_219A58128()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_280EBB6E8));

  return result;
}

double sub_219A58178(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_280EBB6E8));

  return result;
}

unint64_t sub_219A58230()
{
  result = qword_280EE33E0;
  if (!qword_280EE33E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE33E0);
  }

  return result;
}

uint64_t sub_219A58294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219A582DC(uint64_t a1, int a2)
{
  v39 = a2;
  v4 = sub_219BDE204();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDE484();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDEE04();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD9C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDD3E4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 + 16);
  v36 = a1;
  v21(v15, a1, v12, v18);
  v22 = (*(v13 + 88))(v15, v12);
  if (v22 == *MEMORY[0x277D2FB70])
  {
    (*(v13 + 96))(v15, v12);
    (*(v17 + 32))(v20, v15, v16);
    if (*(v2 + 32))
    {
LABEL_3:
      swift_getObjectType();
      sub_219BDD3D4();
      sub_219BDD9B4();
      sub_219BDD3C4();
      (*(v17 + 8))(v20, v16);
      sub_219BDE554();

      sub_219308EE0(v40);
      return (*(v37 + 8))(v11, v38);
    }

    return (*(v17 + 8))(v20, v16);
  }

  if (v22 == *MEMORY[0x277D2FB58] || v22 == *MEMORY[0x277D2FB68])
  {
    return (*(v13 + 8))(v15, v12);
  }

  if (v22 != *MEMORY[0x277D2FB60])
  {
    if (v22 != *MEMORY[0x277D2FB50])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    (*(v13 + 96))(v15, v12);
    sub_219A589EC(0);
    v28 = *(v27 + 48);
    (*(v17 + 32))(v20, v15, v16);
    v29 = sub_219BDD794();
    (*(*(v29 - 8) + 8))(&v15[v28], v29);
    if (*(v2 + 32))
    {
      goto LABEL_3;
    }

    return (*(v17 + 8))(v20, v16);
  }

  (*(v13 + 96))(v15, v12);
  v25 = v33;
  v24 = v34;
  v26 = v35;
  (*(v34 + 32))(v33, v15, v35);
  if (*(v2 + 32))
  {
    swift_getObjectType();
    sub_219BDE474();
    sub_219BDE1E4();
    (*(v31 + 8))(v6, v32);
    sub_219BDD9B4();
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_219BDE554();

    sub_219308EE0(v40);
    (*(v37 + 8))(v11, v38);
  }

  return (*(v24 + 8))(v25, v26);
}

void (*sub_219A58930(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

void sub_219A589EC(uint64_t a1)
{
  if (!qword_280EE8EA0)
  {
    sub_219BDD3E4();
    sub_219BDD794();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE8EA0);
    }
  }
}

id sub_219A58A5C(void *a1)
{
  v2 = v1;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDAF64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 request];
  sub_219BDAF34();

  sub_219BDAF54();
  (*(v8 + 8))(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_218838478(v6);
  }

  else
  {
    (*(v12 + 32))(v15, v6, v11);
    v17 = sub_219BDB8D4();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_218718690(v2 + OBJC_IVAR____TtC7NewsUI232NewsAssetURLSchemeHandlerFactory_assetFetchService, v29);
      v21 = type metadata accessor for NewsAssetURLSchemeHandler();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR____TtC7NewsUI225NewsAssetURLSchemeHandler_cancelHandler];
      *v23 = 0u;
      *(v23 + 1) = 0u;
      *(v23 + 4) = 0;
      *&v22[OBJC_IVAR____TtC7NewsUI225NewsAssetURLSchemeHandler_task] = a1;
      sub_218718690(v29, &v22[OBJC_IVAR____TtC7NewsUI225NewsAssetURLSchemeHandler_assetFetchService]);
      v24 = &v22[OBJC_IVAR____TtC7NewsUI225NewsAssetURLSchemeHandler_resourceIdentifier];
      *v24 = v19;
      v24[1] = v20;
      v28.receiver = v22;
      v28.super_class = v21;
      swift_unknownObjectRetain();
      v25 = objc_msgSendSuper2(&v28, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v29);
      (*(v12 + 8))(v15, v11);
      return v25;
    }

    (*(v12 + 8))(v15, v11);
  }

  return 0;
}

id sub_219A58E00(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NewsAssetURLSchemeHandlerFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t BrowseChannelsRouteModel.identifier.getter()
{
  v1 = v0[1];
  if (v1 < 2)
  {
    return 0x72616C75676572;
  }

  if (v1 == 2)
  {
    return 0x73756C507377656ELL;
  }

  if (v1 == 3)
  {
    return 0x77654E6C61636F6CLL;
  }

  MEMORY[0x21CECC330](*v0);
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0x69286D6F74737563;
}

uint64_t BrowseChannelsRouteModel.description.getter()
{
  v1 = v0[1];
  if (v1 < 2)
  {
    return 0x72616C75676572;
  }

  if (v1 == 2)
  {
    return 0x73756C507377656ELL;
  }

  if (v1 == 3)
  {
    return 0x77654E6C61636F6CLL;
  }

  MEMORY[0x21CECC330](*v0);
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0x69286D6F74737563;
}

uint64_t sub_219A58FF0()
{
  v1 = v0[1];
  if (v1 < 2)
  {
    return 0x72616C75676572;
  }

  if (v1 == 2)
  {
    return 0x73756C507377656ELL;
  }

  if (v1 == 3)
  {
    return 0x77654E6C61636F6CLL;
  }

  MEMORY[0x21CECC330](*v0);
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0x69286D6F74737563;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI224BrowseChannelsRouteModelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219A590CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219A59120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_219A5918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v104 = a3;
  v98 = a2;
  v6 = MEMORY[0x277D83D88];
  sub_219A5BF58(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v73 - v8;
  sub_219A5BF58(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v73 - v11;
  sub_219A5BF58(0, &qword_280E919F0, sub_2186FF4C0, v6);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v73 - v13;
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v97 = v14;
  v83 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v73 - v15;
  v96 = sub_219BF2AB4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A5BF58(0, &unk_280E91B60, MEMORY[0x277D32040], v6);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = &v73 - v18;
  v93 = sub_219BEF554();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v88 = &v73 - v21;
  v22 = type metadata accessor for ArticlesSearchFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v22 - 8);
  v87 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF3E84();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF2124();
  v77 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_219BF14C4();
  v81 = *(v82 - 1);
  MEMORY[0x28223BE20](v82);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BF0BD4();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6F704(a1, v99);
  v34 = v99[0];
  if (!v99[0])
  {
    sub_218744C90(v99, &qword_27CC0E4F8, &type metadata for SearchFeedPool);
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    goto LABEL_8;
  }

  sub_218B6F84C(v99);
  if (!*(v34 + 16))
  {

    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    goto LABEL_8;
  }

  sub_2190AEDC8(v34 + 32, &v100);

  if (!v100)
  {
LABEL_8:
    sub_218744C90(&v100, &qword_27CC22CF8, &type metadata for SearchFeedPool.ArticleSearchResults);
    v41 = sub_219BEEDD4();
    sub_2187134E0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D323A8], v41);
    swift_willThrow();
    return v41;
  }

  v75 = v9;
  v76 = v4;
  v103[0] = v100;
  v103[1] = v101;
  v103[2] = v102;
  v35 = *(v100 + 16);
  v36 = v98 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_knobs;
  type metadata accessor for ArticlesSearchFeedGroupKnobs(0);
  v74 = v36;
  sub_219BED8E4();
  sub_219BEF524();
  (*(v31 + 8))(v33, v30);
  if (v99[0] >= v35)
  {
    sub_218B6F8A0();
    v43 = swift_allocBox();
    LOBYTE(v99[0]) = 0;
    v44 = MEMORY[0x277D84F90];
    sub_219BF2704();
    *v27 = v43;
    (*(v77 + 104))(v27, *MEMORY[0x277D33758], v25);
    sub_219BF14A4();
    sub_219A5BF58(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    v45 = v81;
    v46 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_219C09BA0;
    (*(v45 + 16))(v47 + v46, v29, v82);
    sub_218F0B984(v44);
    sub_218F0BA7C(v44);
    sub_218F0BB90(v44);
    v48 = v78;
    sub_219BF3E74();
    v49 = sub_2191F6E6C(0, 1, 1, v44);
    v51 = v49[2];
    v50 = v49[3];
    v52 = v75;
    v40 = v87;
    if (v51 >= v50 >> 1)
    {
      v49 = sub_2191F6E6C((v50 > 1), v51 + 1, 1, v49);
    }

    v38 = v89;
    v39 = v88;
    (*(v81 + 8))(v29, v82);
    v49[2] = v51 + 1;
    v53 = *(v79 + 32);
    v54 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = v49;
    v53(v49 + v54 + *(v79 + 72) * v51, v48, v80);
    v37 = v52;
  }

  else
  {
    v82 = MEMORY[0x277D84F90];
    v37 = v75;
    v38 = v89;
    v39 = v88;
    v40 = v87;
  }

  v55 = *(v84 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_formatService + 24);
  v87 = *(v84 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_formatService + 32);
  v88 = v55;
  v89 = __swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_formatService), v55);
  sub_218736A44(0);
  sub_219BEDD14();
  sub_219BEDCC4();
  sub_219BEDCC4();
  v56 = sub_219BEE5D4();
  v57 = v90;
  (*(*(v56 - 8) + 56))(v90, 1, 1, v56);
  (*(v83 + 16))(v85, v104, v97);
  sub_2186FF4C0(0);
  v59 = v58;
  v60 = *(v58 - 8);
  v61 = v86;
  (*(v60 + 16))(v86, v74, v58);
  (*(v60 + 56))(v61, 0, 1, v59);
  v62 = sub_219BF35D4();
  (*(*(v62 - 8) + 56))(v91, 1, 1, v62);
  LOBYTE(v99[0]) = 0;
  sub_2186FF3C0(0, &qword_27CC0E508, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v63 = sub_219BF2774();
  (*(*(v63 - 8) + 56))(v37, 1, 1, v63);
  v64 = v40;
  v65 = v39;
  v66 = v38;
  v67 = qword_280E8D828;
  *MEMORY[0x277D30B98];
  if (v67 != -1)
  {
    swift_once();
  }

  qword_280F61720;
  v68 = v94;
  sub_219BF2A84();
  v41 = sub_218F0AF50(v64, 0x73656C6369747261, 0xE800000000000000, v65, v66, v82, v57, v68, v88, v87);

  (*(v95 + 8))(v68, v96);
  sub_2188177F4(v57, &unk_280E91B60, MEMORY[0x277D32040]);
  v69 = *(v92 + 8);
  v70 = v93;
  v69(v66, v93);
  v69(v65, v70);
  v71 = sub_219BF1934();
  (*(*(v71 - 8) + 8))(v64, v71);
  sub_2190AEE00(v103);
  return v41;
}

uint64_t sub_219A5A0C4(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v6, v2);
  v10[3] = v7;
  v10[0] = v8;
  sub_218A80D28(0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A5A208(uint64_t a1)
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  sub_219BE3204();

  v1 = sub_219BE2E54();
  sub_219A5BCE8(0);
  sub_219BE2F64();

  v2 = sub_219BE2E54();
  sub_218B6F29C(0);
  sub_219BE2F84();

  v3 = sub_219BE2E54();
  v4 = sub_219BE3054();

  return v4;
}

uint64_t sub_219A5A37C(uint64_t *a1)
{
  sub_219BEF0C4();

  v1 = sub_219BE2E54();
  sub_219A5BCE8(0);
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_219A5A418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  sub_218B6F29C(0);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_219A5BF58(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v63 - v10;
  sub_219A5BF58(0, &unk_280E8FE90, MEMORY[0x277D343A8], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v63 - v12;
  sub_219A5BF58(0, &qword_280E91210, MEMORY[0x277D32A30], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v63 - v14;
  sub_219A5BF58(0, &qword_280E907B0, MEMORY[0x277D33528], v8);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v63 - v16;
  sub_219A5BF58(0, &qword_280EE9C40, MEMORY[0x277CC9578], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v63 - v18;
  v69 = sub_219BDBD64();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BF1904();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v81 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A5BF58(0, &qword_280E90840, MEMORY[0x277D33470], v8);
  MEMORY[0x28223BE20](v21 - 8);
  v71 = &v63 - v22;
  v84 = sub_219BF0F34();
  v23 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SearchFeedGroup(0);
  MEMORY[0x28223BE20](v70);
  v75 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF0BD4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A5BD6C(a1, &v86, sub_219A5BCE8);
  v88[4] = v87[4];
  v88[5] = v87[5];
  v88[6] = v87[6];
  v88[0] = v87[0];
  v88[1] = v87[1];
  v88[2] = v87[2];
  v88[3] = v87[3];
  if (!*(*&v87[0] + 16))
  {
    v60 = sub_219BEEDD4();
    sub_2187134E0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D323A8], v60);
    swift_willThrow();

LABEL_19:
    sub_218B6F84C(v88);
    return v60;
  }

  v80 = v86;
  v64 = v7;
  v65 = v3;
  sub_2190AEDC8(*&v87[0] + 32, &v86);
  v31 = v86;
  type metadata accessor for ArticlesSearchFeedGroupKnobs(0);

  sub_219BEF134();
  sub_219BEF524();
  (*(v28 + 8))(v30, v27);
  v32 = sub_219A78260(v89, v31);
  v83 = v34;
  v85 = v35 >> 1;
  v36 = (v35 >> 1) - v33;
  if (__OFSUB__(v35 >> 1, v33))
  {
    goto LABEL_16;
  }

  v66 = v32;
  v31 = MEMORY[0x277D84F90];
  if (!v36)
  {
LABEL_11:
    if (!(v31 >> 62))
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:

        v60 = sub_219BEEDD4();
        sub_2187134E0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D323A8], v60);
        swift_willThrow();
        swift_unknownObjectRelease();

        sub_2190AEE00(&v86);
        goto LABEL_19;
      }

LABEL_13:
      v85 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
      sub_219BED874();
      v41 = v67;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v68 + 8))(v41, v69);
      v42 = sub_219BDBD34();
      (*(*(v42 - 8) + 56))(v82, 1, 1, v42);
      v43 = sub_219BF1AD4();
      v44 = v74;
      (*(*(v43 - 8) + 56))(v74, 1, 1, v43);
      v45 = sub_219BEFC64();
      v46 = v76;
      (*(*(v45 - 8) + 56))(v76, 1, 1, v45);
      v47 = sub_219BF4334();
      v48 = v77;
      (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
      v49 = sub_219BEC004();
      v50 = v78;
      (*(*(v49 - 8) + 56))(v78, 1, 1, v49);
      v51 = v71;
      v52 = v81;
      sub_219BF1854();

      sub_2188177F4(v50, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      sub_2188177F4(v48, &unk_280E8FE90, MEMORY[0x277D343A8]);
      sub_2188177F4(v46, &qword_280E91210, MEMORY[0x277D32A30]);
      sub_2188177F4(v44, &qword_280E907B0, MEMORY[0x277D33528]);
      sub_2188177F4(v82, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v53 = v72;
      v54 = v73;
      (*(v72 + 8))(v52, v73);
      (*(v53 + 56))(v51, 0, 1, v54);
      v55 = v80;
      v56 = v75;
      sub_219BED824();
      sub_2188177F4(v51, &qword_280E90840, MEMORY[0x277D33470]);
      v57 = type metadata accessor for ArticlesSearchFeedGroup(0);
      sub_219A5BD6C(v87, v56 + *(v57 + 24), sub_218A35948);
      *(v56 + *(v57 + 20)) = v31;
      swift_storeEnumTagMultiPayload();
      sub_218B6F3E4(0);
      v59 = &v64[*(v58 + 48)];
      sub_219A5BD6C(v56, v64, type metadata accessor for SearchFeedGroup);
      *(v59 + 3) = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
      *v59 = v55;
      swift_storeEnumTagMultiPayload();
      sub_219A5BF58(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
      swift_allocObject();

      v60 = sub_219BE3014();

      swift_unknownObjectRelease();
      sub_219A5BDD4(v56, type metadata accessor for SearchFeedGroup);
      sub_2190AEE00(&v86);
      sub_218B6F84C(v88);
      return v60;
    }

LABEL_17:
    if (!sub_219BF7214())
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v33;
  v89 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v36 & 0x8000000000000000) == 0)
  {
    if (v37 <= v85)
    {
      v39 = v85;
    }

    else
    {
      v39 = v37;
    }

    while (v39 != v37)
    {
      v40 = v84;
      (*(v23 + 16))(v25, v83 + *(v23 + 72) * v37, v84);
      v31 = sub_219BF0F14();
      (*(v23 + 8))(v25, v40);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v85 == ++v37)
      {
        v31 = v89;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_219A5B22C(uint64_t a1)
{
  sub_218B6F29C(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219D12130);
  v9 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_219A5BF58(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A5B394()
{
  v1 = OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_config;
  sub_218736A44(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219A5BDD4(v0 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_knobs, type metadata accessor for ArticlesSearchFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticlesSearchFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CC22CC0;
  if (!qword_27CC22CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A5B4B8(uint64_t a1)
{
  sub_218736A44(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArticlesSearchFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219A5B58C(uint64_t a1, uint64_t a2)
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v17[-v8];
  v10 = *v2;
  v18 = a1;
  sub_2186DEEA0(0, &qword_27CC0E4F8, &type metadata for SearchFeedPool);
  sub_219BE3204();
  (*(v6 + 16))(v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;

  v13 = sub_219BE2E54();
  sub_219BED8D4();
  sub_219BE2F84();

  v14 = sub_219BE2E54();
  sub_2186DEEA0(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
  v15 = sub_219BE2F64();

  return v15;
}

uint64_t sub_219A5B828@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_config;
  sub_218736A44(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219A5B8BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ArticlesSearchFeedGroupKnobs(0);
  a1[4] = sub_2187134E0(&qword_280EB57F8, type metadata accessor for ArticlesSearchFeedGroupKnobs, &unk_219C2A738);
  a1[5] = sub_2187134E0(&qword_27CC0EC98, type metadata accessor for ArticlesSearchFeedGroupKnobs, &unk_219C2A710);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219A5BD6C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ArticlesSearchFeedGroupKnobs);
}

uint64_t sub_219A5B9C0@<X0>(uint64_t *a2@<X8>)
{
  sub_219A5BF58(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218736A44(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219A5BDD4(inited + 32, sub_2188317B0);
  sub_219A5BF58(0, &qword_27CC22D00, type metadata accessor for ArticlesSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219A5BFBC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219A5BB40(uint64_t a1)
{
  sub_2187134E0(&qword_27CC22CE0, type metadata accessor for ArticlesSearchFeedGroupEmitter, &unk_219CC3940);

  return sub_219BE2324();
}

void sub_219A5BCE8(uint64_t a1)
{
  if (!qword_27CC22CF0)
  {
    type metadata accessor for FormatGroupFeedGroupEmitterCursor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC22CF0);
    }
  }
}

uint64_t sub_219A5BD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A5BDD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A5BE34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  sub_2190AEE98(a1, (a2 + 1));
}

uint64_t sub_219A5BE6C(uint64_t a1, uint64_t a2)
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_219A5918C(a1, a2, v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_219A5BF58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219A5BFBC()
{
  result = qword_27CC22D08;
  if (!qword_27CC22D08)
  {
    sub_219A5BF58(255, &qword_27CC22D00, type metadata accessor for ArticlesSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22D08);
  }

  return result;
}

uint64_t sub_219A5C054(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  sub_219A5C5D8(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = v22 - v5;
  sub_218D51E90(0);
  MEMORY[0x28223BE20](v6 - 8);
  sub_219A5C5D8(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v8 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = sub_219BEB1B4();
  v22[0] = v12;
  v22[1] = v11;
  v30 = v3;
  v13 = sub_218F923C4(sub_219A5C6CC, v29);
  sub_218951DB0(0);
  v15 = v14;
  v16 = sub_2186EC110(&qword_280EE5950, sub_218951DB0, MEMORY[0x277D6D720]);
  v17 = sub_2186EC110(&qword_280EE5960, sub_218951DB0, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v13, v15, v16, v17);
  type metadata accessor for MagazineFeedSectionDescriptor(0);
  type metadata accessor for MagazineFeedModel(0);
  sub_2186EC110(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_2186EC110(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  sub_219BEB1A4();
  sub_219BEB2B4();
  sub_219BEB2C4();
  sub_2186EC110(&unk_280EB0340, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C70);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  if (sub_219BE6E54())
  {
    v19 = v24;
    v18 = v25;
    v20 = v26;
    (*(v25 + 104))(v24, *MEMORY[0x277D6DF80], v26);
  }

  else
  {
    v19 = v24;
    sub_219BE85C4();
    v18 = v25;
    v20 = v26;
  }

  v28(v19);
  (*(v18 + 8))(v19, v20);
  (*(v23 + 8))(v10, v8);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_219A5C4B4(uint64_t a1)
{
  v2 = sub_218BB79F0();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A5C4F4()
{
  result = qword_280E9D2D0;
  if (!qword_280E9D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D2D0);
  }

  return result;
}

void sub_219A5C5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EC110(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186EC110(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_219A5C6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  return sub_2199822CC(a1, *v5, *(v5 + 8), a2);
}

void sub_219A5C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218951F54(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v20 = a4;
  sub_218830064(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_219BE3204();
  (*(v10 + 16))(&v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  (*(v10 + 32))(v13 + v12, &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v14 = sub_219BE2E54();
  sub_219BE2F74();

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_219BE2E54();
  sub_219BE2F74();

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  v18 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_219A5C9E0(uint64_t a1, void (*a2)(char *))
{
  sub_2187EE224(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_219A5DC50(0);
  v10 = *(v9 + 48);
  sub_218951F54(0);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = *MEMORY[0x277D6D850];
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 104))(&v8[v10], v12, v13);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DF70], v5);
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219A5CB98(void *a1, void (*a2)(char *))
{
  sub_2187EE224(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  *(&v12 - v8) = a1;
  (*(v6 + 104))(&v12 - v8, *MEMORY[0x277D6DF68], v5, v7);
  v10 = a1;
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_219A5CCBC(uint64_t a1)
{
  sub_218830064(0, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);

  v1 = sub_219BE2E54();
  sub_21898C1B8(0);
  sub_2186EC158(&qword_280E8FC68, sub_21898C1B8, MEMORY[0x277D834C8]);
  v2 = sub_219BE2F34();

  return v2;
}

void *sub_219A5CDAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69[4] = a3;
  v5 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v87 = (v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v91 = v69 - v8;
  sub_218953870(0);
  v90 = v9;
  v92 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v98 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = v69 - v12;
  v80 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v80);
  v75 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v74 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v69 - v19;
  sub_218951DB0(0);
  v82 = v21;
  v78 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v84 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v73 = v69 - v24;
  sub_218D51E90(0);
  MEMORY[0x28223BE20](v25 - 8);
  v69[3] = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *a1;
  sub_218830064(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2186EC158(&unk_280EE5DD0, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v27 = sub_219BF56C4();
  sub_218951F54(0);
  v29 = v28;
  v69[2] = sub_219BEB1B4();
  v69[1] = v30;
  v31 = sub_2186EC158(&unk_280EE3610, sub_218951F54, MEMORY[0x277D6EC70]);
  v32 = sub_219BF5E44();
  v81 = a2;
  v79 = v29;
  if (v32)
  {
    v89 = v27;
    v101 = MEMORY[0x277D84F90];
    v77 = v32;
    sub_218C38558(0, v32 & ~(v32 >> 63), 0);
    v85 = v101;
    v76 = v31;
    result = sub_219BF5DF4();
    if ((v77 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v72 = (v78 + 16);
      v35 = (v92 + 16);
      v86 = (v92 + 8);
      v96 = (v92 + 32);
      v71 = (v16 + 8);
      v70 = (v78 + 8);
      v69[6] = v78 + 32;
      v36 = v90;
      v93 = v20;
      v94 = v15;
      v88 = (v92 + 16);
      while (1)
      {
        v37 = __OFADD__(v34, 1);
        v38 = v34 + 1;
        if (v37)
        {
          __break(1u);
          goto LABEL_27;
        }

        v83 = v38;
        v39 = sub_219BF5EC4();
        (*v72)(v84);
        v39(&v100, 0);
        sub_219BE6974();
        v40 = sub_2186EC158(&qword_280EE74F8, sub_218BB8698, MEMORY[0x277D6CC48]);
        v41 = sub_219BF5E44();
        if (v41)
        {
          break;
        }

        (*v71)(v20, v15);
        v44 = MEMORY[0x277D84F90];
LABEL_20:
        v57 = v82;
        v58 = v84;
        sub_219BE6934();
        v59 = sub_2186EC158(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
        v60 = sub_2186EC158(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
        MEMORY[0x21CEB9170](v44, v36, v59, v60);
        sub_2186EC158(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
        sub_2186EC158(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
        v61 = v73;
        sub_219BE6924();
        (*v70)(v58, v57);
        v62 = v85;
        v101 = v85;
        v64 = *(v85 + 16);
        v63 = *(v85 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_218C38558((v63 > 1), v64 + 1, 1);
          v62 = v101;
        }

        *(v62 + 16) = v64 + 1;
        v65 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v85 = v62;
        (*(v78 + 32))(v62 + v65 + *(v78 + 72) * v64, v61, v57);
        result = sub_219BF5E94();
        v34 = v83;
        v20 = v93;
        v15 = v94;
        v35 = v88;
        if (v83 == v77)
        {

          v66 = v85;
          goto LABEL_25;
        }
      }

      v42 = v41;
      v99 = MEMORY[0x277D84F90];
      sub_218C35700(0, v41 & ~(v41 >> 63), 0);
      v43 = v40;
      v44 = v99;
      v95 = v43;
      result = sub_219BF5DF4();
      if ((v42 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          v45 = sub_219BF5EC4();
          (*v35)(v98);
          v45(&v100, 0);
          v46 = v91;
          sub_219BE5FC4();
          if (swift_getEnumCaseMultiPayload() != 6)
          {
            break;
          }

          v47 = sub_219BE5B24();
          v49 = v89;
          if (!*(v89 + 16))
          {

            v36 = v90;
            goto LABEL_14;
          }

          v50 = sub_21870F700(v47, v48);
          v52 = v51;

          if ((v52 & 1) == 0)
          {

            v36 = v90;
            v35 = v88;
            goto LABEL_14;
          }

          *v87 = *(*(v49 + 56) + 8 * v50);
          swift_storeEnumTagMultiPayload();
          sub_2186EC158(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
          swift_retain_n();
          sub_219BE5FB4();

          v36 = v90;
          (*v86)(v98, v90);
          v35 = v88;
LABEL_15:
          v99 = v44;
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_218C35700((v53 > 1), v54 + 1, 1);
            v44 = v99;
          }

          *(v44 + 16) = v54 + 1;
          (*(v92 + 32))(v44 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v54, v97, v36);
          v56 = v93;
          v55 = v94;
          sub_219BF5E94();
          if (!--v42)
          {
            (*v71)(v56, v55);
            goto LABEL_20;
          }
        }

        sub_2199B76D4(v46);
LABEL_14:
        (*v96)(v97, v98, v36);
        goto LABEL_15;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
    v57 = v82;
LABEL_25:
    v67 = sub_2186EC158(&qword_280EE5950, sub_218951DB0, MEMORY[0x277D6D720]);
    v68 = sub_2186EC158(&qword_280EE5960, sub_218951DB0, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9170](v66, v57, v67, v68);
    sub_2186EC158(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_2186EC158(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    sub_219BEB1A4();
    sub_219BEB2B4();
    return sub_219BEB2C4();
  }

  return result;
}

uint64_t sub_219A5DA70(uint64_t a1)
{
  v2 = sub_218BB7B94();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A5DAB0()
{
  result = qword_280E99580;
  if (!qword_280E99580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99580);
  }

  return result;
}

void sub_219A5DC50(uint64_t a1)
{
  if (!qword_280EE3630)
  {
    sub_218951F54(255);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3630);
    }
  }
}

void sub_219A5DCC4(char *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [a1 setBackgroundColor_];

  v6 = [a1 maskView];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 blackColor];
    [v7 setBackgroundColor_];
  }

  v9 = sub_2194DC06C();
  [v9 setContentMode_];

  v10 = sub_2194DC078();
  v11 = [v4 systemPinkColor];
  [v10 setTintColor_];

  [*&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView] setContentMode_];
  v12 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer];
  v13 = [v4 whiteColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  v15 = [v12 layer];
  v16 = [v4 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  v18 = [v17 CGColor];
  [v15 setBorderColor_];

  v19 = [v12 layer];
  [v19 setBorderWidth_];

  v20 = [v12 layer];
  v21 = [v4 blackColor];
  v22 = [v21 CGColor];

  [v20 setShadowColor_];
  v23 = [v12 layer];
  LODWORD(v24) = 1034147594;
  [v23 setShadowOpacity_];

  v25 = [v12 layer];
  [v25 setShadowRadius_];

  v26 = [v12 layer];
  [v26 setShadowOffset_];

  v27 = [v12 layer];
  [v12 bounds];
  v32 = [objc_opt_self() bezierPathWithRoundedRect:v28 cornerRadius:{v29, v30, v31, 16.0}];
  v33 = [v32 CGPath];

  [v27 setShadowPath_];
  v34 = sub_219A5E274(v2);
  v35 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_titleLabel];
  [v35 setAttributedText_];
  [v35 setNumberOfLines_];
  v36 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_subtitleLabel];
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2196474F8(&v40);
  if (v41)
  {
    v43[0] = v40;
    v43[1] = v41;

    sub_2189AD3D8(v43);
    v44 = v42;
    sub_2189AD3D8(&v44);

    v37 = sub_219BF53D4();
  }

  else
  {
    v37 = 0;
  }

  [v36 setText_];

  v38 = [objc_opt_self() preferredFontForTextStyle_];
  [v36 setFont_];

  v39 = [v4 secondaryLabelColor];
  [v36 setTextColor_];

  [v36 setNumberOfLines_];
  [v36 setTextAlignment_];
}

id sub_219A5E274(uint64_t a1)
{
  v2 = sub_219BDB5A4();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_2196474F8(v34);
  if (!v34[1])
  {
    return 0;
  }

  v36 = v35;
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v5 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v32 = objc_opt_self();
  v33 = v5;
  v6 = [v32 labelColor];
  v7 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 64) = v7;
  *(inited + 40) = v6;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v10 = sub_219BF5204();

  v11 = [v8 initWithString:v9 attributes:v10];

  [v3 appendAttributedString_];
  sub_2186C6148(0, &unk_280E8E330, 0x277CCA898);
  sub_219BDB594();
  v12 = sub_219BF6764();
  [v3 &selRef:v12 initWithMass:? stiffness:? damping:? initialVelocity:? + 3];

  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_219C09BA0;
  *(v13 + 32) = v33;
  v14 = [v32 systemPinkColor];
  *(v13 + 64) = v7;
  *(v13 + 40) = v14;
  sub_2188195F4(v13);
  swift_setDeallocating();
  sub_21899E5A8(v13 + 32);
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_219BF53D4();
  v17 = sub_219BF5204();

  v18 = [v15 initWithString:v16 attributes:v17];

  v37 = v36;
  sub_2189AD3D8(&v37);
  [v3 appendAttributedString_];

  v19 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v19 setMinimumLineHeight_];
  [v19 setMaximumLineHeight_];
  [v19 setAlignment_];
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_219C09EC0;
  v21 = *MEMORY[0x277D74118];
  *(v20 + 32) = *MEMORY[0x277D74118];
  v22 = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(v20 + 40) = v19;
  v23 = *MEMORY[0x277D740A8];
  *(v20 + 64) = v22;
  *(v20 + 72) = v23;
  v24 = objc_opt_self();
  v25 = *MEMORY[0x277D74400];
  v26 = v21;
  v27 = v19;
  v28 = v23;
  v29 = [v24 systemFontOfSize:50.0 weight:v25];
  *(v20 + 104) = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(v20 + 80) = v29;
  sub_2188195F4(v20);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v30 = sub_219BF5204();

  [v3 addAttributes:v30 range:{0, objc_msgSend(v3, sel_length)}];

  return v3;
}

void sub_219A5E7F0(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_219A5EDC4(0);
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDE2B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_219BDE874();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  (*(v13 + 16))(&v34 - v18, v1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  if (v20 == *MEMORY[0x277D301C0] || v20 == *MEMORY[0x277D301B8] || v20 == *MEMORY[0x277D301A0] || v20 == *MEMORY[0x277D30198] || v20 == *MEMORY[0x277D301B0])
  {
    (*(v13 + 8))(v19, v12);
    sub_219BDE864();
    (*(v6 + 16))(v8, v11, v5);
    v25 = (*(v6 + 88))(v8, v5);
    if (v25 == *MEMORY[0x277D2FF58])
    {
      (*(v6 + 8))(v11, v5);
      v26 = MEMORY[0x277D2F830];
    }

    else if (v25 == *MEMORY[0x277D2FF48])
    {
      (*(v6 + 8))(v11, v5);
      v26 = MEMORY[0x277D2F810];
    }

    else if (v25 == *MEMORY[0x277D2FF40])
    {
      (*(v6 + 8))(v11, v5);
      v26 = MEMORY[0x277D2F738];
    }

    else if (v25 == *MEMORY[0x277D2FF30])
    {
      (*(v6 + 8))(v11, v5);
      v26 = MEMORY[0x277D2F5B8];
    }

    else if (v25 == *MEMORY[0x277D2FF38])
    {
      (*(v6 + 8))(v11, v5);
      v26 = MEMORY[0x277D2F670];
    }

    else
    {
      if (v25 != *MEMORY[0x277D2FF50])
      {
        sub_219BF7514();
        __break(1u);
        return;
      }

      (*(v6 + 8))(v11, v5);
      v26 = MEMORY[0x277D2F798];
    }

    v32 = *v26;
    v33 = sub_219BE16E4();
    (*(*(v33 - 8) + 104))(v37, v32, v33);
  }

  else if (v20 == *MEMORY[0x277D301C8])
  {
    (*(v13 + 96))(v19, v12);
    v27 = swift_projectBox();
    v29 = v35;
    v28 = v36;
    (*(v35 + 16))(v4, v27, v36);
    sub_219BEE474();
    sub_219A5E7F0(v37);
    (*(v13 + 8))(v15, v12);
    (*(v29 + 8))(v4, v28);
  }

  else
  {
    v30 = *MEMORY[0x277D2F818];
    v31 = sub_219BE16E4();
    (*(*(v31 - 8) + 104))(v37, v30, v31);
    (*(v13 + 8))(v19, v12);
  }
}

void sub_219A5EDC4(uint64_t a1)
{
  if (!qword_280E91BE8)
  {
    sub_219BDE874();
    sub_219A5EE28();
    v1 = sub_219BEE494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91BE8);
    }
  }
}

unint64_t sub_219A5EE28()
{
  result = qword_280EE8AE8;
  if (!qword_280EE8AE8)
  {
    sub_219BDE874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8AE8);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_219A5EEAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_219A5EEF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_219A5EF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A5EFDC(uint64_t result, int a2, int a3)
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
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ChannelPickerEngagementModel(uint64_t a1)
{
  result = qword_27CC22D10;
  if (!qword_27CC22D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A5F0C8(uint64_t a1)
{
  result = sub_219BE35B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219A5F154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 337))
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

uint64_t sub_219A5F1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
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
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_219A5F270()
{
  v1 = *(v0 + 48);
  sub_219BF7AA4();
  sub_219BF7AC4();
  if (v1)
  {
    sub_219BF5524();
  }

  return sub_219BF7AE4();
}

uint64_t sub_219A5F2E0(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    return sub_219BF7AC4();
  }

  sub_219BF7AC4();

  return sub_219BF5524();
}

uint64_t sub_219A5F358(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_219BF7AA4();
  sub_219BF7AC4();
  if (v2)
  {
    sub_219BF5524();
  }

  return sub_219BF7AE4();
}

uint64_t sub_219A5F3C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(a1 + 40) == *(a2 + 40) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_219BF78F4();
    }
  }

  return result;
}

unint64_t sub_219A5F414()
{
  result = qword_27CC22D20;
  if (!qword_27CC22D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22D20);
  }

  return result;
}

uint64_t sub_219A5F478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  sub_21872BE44(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25[-v8];
  sub_21872BE44(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25[-v11];
  sub_21872BE44(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25[-v14];
  v16 = type metadata accessor for AudioFeedGroupKnobs(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219A5FCF0(a1, v15);
  v20 = *(v17 + 48);
  if (v20(v15, 1, v16) == 1)
  {
    AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs(0);
    (*(*(AudioFeedGroupKnobs - 8) + 56))(v12, 1, 1, AudioFeedGroupKnobs);
    v22 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_21872B268(v12, v9, 0, v19);
    sub_219A5FD70(a1);
    if (v20(v15, 1, v16) != 1)
    {
      sub_219A5FD70(v15);
    }
  }

  else
  {
    sub_219A5FD70(a1);
    sub_219A5FDE8(v15, v19);
  }

  sub_219A5FDE8(v19, a4);
  if (v26)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = a2 & ~(a2 >> 63);
  }

  result = type metadata accessor for AudioFeedKnobsConfig(0);
  *(a4 + *(result + 20)) = v23;
  return result;
}

uint64_t sub_219A5F794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_21872BE44(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_219A5FEA0(0, &qword_280E8CEF8, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A5FE4C();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for AudioFeedGroupKnobs(0);
    v18 = 0;
    sub_219A5FF04(&qword_280ED1F48, &unk_219CA8A6C);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_219A5F478(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A5F9C4(void *a1, __n128 a2)
{
  sub_219A5FEA0(0, &qword_27CC22D28, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A5FE4C();
  sub_219BF7B44();
  v10[15] = 0;
  type metadata accessor for AudioFeedGroupKnobs(0);
  sub_219A5FF04(&qword_27CC22D30, &unk_219CA8A44);
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for AudioFeedKnobsConfig(0);
    v10[14] = 1;
    sub_219BF7824();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_219A5FB78(char *a2@<X8>)
{
  v3 = sub_219BF7614();

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

void sub_219A5FBD8(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_219A5FC3C(uint64_t a1)
{
  v2 = sub_219A5FE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A5FC78(uint64_t a1)
{
  v2 = sub_219A5FE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A5FCF0(uint64_t a1, uint64_t a2)
{
  sub_21872BE44(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A5FD70(uint64_t a1)
{
  sub_21872BE44(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219A5FDE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219A5FE4C()
{
  result = qword_280ECF570[0];
  if (!qword_280ECF570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECF570);
  }

  return result;
}

void sub_219A5FEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A5FE4C();
    v7 = a3(a1, &type metadata for AudioFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A5FF04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioFeedGroupKnobs(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A5FF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219A5FFC0()
{
  result = qword_27CC22D38;
  if (!qword_27CC22D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22D38);
  }

  return result;
}

unint64_t sub_219A60018()
{
  result = qword_280ECF560;
  if (!qword_280ECF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF560);
  }

  return result;
}

unint64_t sub_219A60070()
{
  result = qword_280ECF568;
  if (!qword_280ECF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF568);
  }

  return result;
}

uint64_t sub_219A600C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_218C42540(0);
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A60B48(0, &qword_280E8CC80, MEMORY[0x277D844C8]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SportsScoreSortingAndFilter(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A60A90();
  sub_219BF7B34();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_218C425D4(0);
    sub_219A609C4();
    sub_219BF7764();
    (*(v14 + 8))(v10, v8);
    (*(v15 + 32))(v13, v21, v5);
    sub_219A60AE4(v13, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A6034C(uint64_t a1)
{
  v2 = sub_219A60A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A60388(uint64_t a1)
{
  v2 = sub_219A60A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A603DC(void *a1, __n128 a2)
{
  sub_219A60B48(0, &qword_280E8C478, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A60A90();
  sub_219BF7B44();
  sub_218C425D4(0);
  sub_219A609C4();
  sub_219BF7854();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A60534(uint64_t a1, uint64_t a2)
{
  sub_218C425D4(0);
  sub_219A609C4();
  sub_218C4A1E8();

  return sub_219BF2694();
}

void sub_219A6059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218C42540(0);
  sub_219BF2664();
  v4 = *(v45 + 16);

  if (!v4)
  {
    goto LABEL_46;
  }

  sub_219BF2664();
  v5 = v45;
  v39 = *(v45 + 16);
  if (!v39)
  {

LABEL_46:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = a2;
  v38 = a2;
  while (1)
  {
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_49;
    }

    v41 = v6;
    v10 = *(v45 + 32 + 8 * v6);

    sub_219659C8C(a2, a3, v10);
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_219BF7214();
      v42 = v8;
      if (!v13)
      {
LABEL_19:

        v15 = v7;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = v8;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    sub_21870B65C(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_50;
    }

    v14 = 0;
    v15 = v7;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v12);
      }

      else
      {
      }

      v16 = sub_219BF3F84();
      v18 = v17;

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21870B65C((v19 > 1), v20 + 1, 1);
      }

      ++v14;
      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v13 != v14);

    v7 = MEMORY[0x277D84F90];
LABEL_20:
    v22 = sub_218845F78(v15);

    v23 = v42;
    if (v42 >> 62)
    {
      break;
    }

    v24 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_43:
    v9 = v7;
LABEL_5:
    v6 = v41 + 1;

    v8 = v9;
    v5 = v45;
    a2 = v38;
    if (v41 + 1 == v39)
    {

      return;
    }
  }

  v24 = sub_219BF7214();
  v23 = v42;
  if (!v24)
  {
    goto LABEL_43;
  }

LABEL_22:
  v25 = 0;
  v43 = v23 & 0xFFFFFFFFFFFFFF8;
  v44 = v23 & 0xC000000000000001;
  v26 = v22 + 56;
  while (2)
  {
    if (v44)
    {
      MEMORY[0x21CECE0F0](v25, v42);
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        break;
      }

      goto LABEL_28;
    }

    if (v25 >= *(v43 + 16))
    {
      goto LABEL_48;
    }

    v27 = __OFADD__(v25++, 1);
    if (!v27)
    {
LABEL_28:
      v28 = sub_219BF3F84();
      v30 = v29;
      if (*(v22 + 16) && (v31 = v28, sub_219BF7AA4(), sub_219BF5524(), v32 = sub_219BF7AE4(), v33 = -1 << *(v22 + 32), v34 = v32 & ~v33, ((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (*(v22 + 48) + 16 * v34);
          v37 = *v36 == v31 && v36[1] == v30;
          if (v37 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
LABEL_23:
      }

      if (v25 == v24)
      {
        v9 = v7;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

unint64_t sub_219A609C4()
{
  result = qword_280E8FDC8;
  if (!qword_280E8FDC8)
  {
    sub_218C425D4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FDC8);
  }

  return result;
}

uint64_t type metadata accessor for SportsScoreSortingAndFilter(uint64_t a1)
{
  result = qword_280EB68C0;
  if (!qword_280EB68C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219A60A90()
{
  result = qword_280EB6918[0];
  if (!qword_280EB6918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB6918);
  }

  return result;
}

uint64_t sub_219A60AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoreSortingAndFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A60B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A60A90();
    v7 = a3(a1, &type metadata for SportsScoreSortingAndFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A60BC0()
{
  result = qword_27CC22D40;
  if (!qword_27CC22D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22D40);
  }

  return result;
}

unint64_t sub_219A60C18()
{
  result = qword_280EB6908;
  if (!qword_280EB6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6908);
  }

  return result;
}

unint64_t sub_219A60C70()
{
  result = qword_280EB6910;
  if (!qword_280EB6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6910);
  }

  return result;
}

uint64_t sub_219A60CC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219A60CE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_219A60D28(uint64_t a1)
{
  v2 = sub_219A60DBC();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_219A60D68()
{
  result = qword_27CC22D48;
  if (!qword_27CC22D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22D48);
  }

  return result;
}

unint64_t sub_219A60DBC()
{
  result = qword_27CC22D50;
  if (!qword_27CC22D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22D50);
  }

  return result;
}

void sub_219A60F54()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v8 setFrame_];
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v22 = sub_219BF53D4();

    [v19 setAccessibilityLabel_];

    v23 = [v1 traitCollection];
    sub_219A62974();

    sub_219BE8664();
    v24 = sub_219BE7BC4();

    [v24 setKeyboardDismissMode_];

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_219A61440()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2)
  {
    if (v2 != 1 && v2 != 2)
    {
      return result;
    }

    sub_219BED0C4();
  }

  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  sub_219BE3494();

  return result;
}

uint64_t sub_219A61570(uint64_t a1)
{
  v2 = sub_219BEB384();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_219BDB5E4();
  v13 = v12;

  v30 = a1;
  v27 = *(a1 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_blueprintViewController);
  sub_219BE8644();
  sub_2189DA200(0);
  v15 = &v8[*(v14 + 48)];
  v16 = *(v14 + 64);
  if (qword_280E92F18 != -1)
  {
    swift_once();
  }

  v17 = qword_280F61998;
  v18 = qword_280F61998;
  MEMORY[0x21CEBD440](v11, v13, 0, 0xE000000000000000, v17);
  v19 = sub_219BE6C74();
  v20 = MEMORY[0x277D6D7C0];
  v15[3] = v19;
  v15[4] = v20;
  __swift_allocate_boxed_opaque_existential_1(v15);
  static EmptyStateStyler.dynamicSearchHomeTheme.getter();
  v21 = *MEMORY[0x277D6D9C8];
  v22 = sub_219BE73A4();
  (*(*(v22 - 8) + 104))(&v8[v16], v21, v22);
  (*(v6 + 104))(v8, *MEMORY[0x277D6EC90], v5);
  v24 = v28;
  v23 = v29;
  (*(v28 + 104))(v4, *MEMORY[0x277D6ECA8], v29);
  sub_219BE6BD4();

  (*(v24 + 8))(v4, v23);
  v25 = *(v6 + 8);
  v25(v8, v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_219BE8644();
    sub_219BE6BA4();

    return (v25)(v8, v5);
  }

  return result;
}

uint64_t sub_219A6191C(uint64_t a1)
{
  v34 = a1;
  v1 = sub_219BEB384();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BEB394();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_219BDB5E4();
  v32 = v11;
  v33 = v10;

  v12 = [v8 bundleForClass_];
  v13 = v34;
  v14 = sub_219BDB5E4();
  v16 = v15;

  v31[1] = *(v13 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_blueprintViewController);
  sub_219BE8644();
  sub_2189DA200(0);
  v18 = &v6[*(v17 + 48)];
  v19 = *(v17 + 64);
  if (qword_280E92F18 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61998;
  v21 = qword_280F61998;
  MEMORY[0x21CEBD440](v33, v32, v14, v16, v20);
  v22 = sub_219BE6C74();
  v23 = MEMORY[0x277D6D7C0];
  v18[3] = v22;
  v18[4] = v23;
  __swift_allocate_boxed_opaque_existential_1(v18);
  static EmptyStateStyler.dynamicSearchHomeTheme.getter();
  v24 = *MEMORY[0x277D6D9C8];
  v25 = sub_219BE73A4();
  (*(*(v25 - 8) + 104))(&v6[v19], v24, v25);
  v26 = v35;
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v35);
  v28 = v36;
  v27 = v37;
  (*(v36 + 104))(v3, *MEMORY[0x277D6ECA8], v37);
  sub_219BE6BD4();

  (*(v28 + 8))(v3, v27);
  v29 = *(v4 + 8);
  v29(v6, v26);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_219BE8644();
    sub_219BE6BA4();

    return (v29)(v6, v26);
  }

  return result;
}

uint64_t sub_219A61D34(uint64_t a1)
{
  v1 = sub_219BEB384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB394();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v6 + 104))(v8, *MEMORY[0x277D6EC88], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D6ECA8], v1);
  sub_219BE6BD4();

  (*(v2 + 8))(v4, v1);
  v9 = *(v6 + 8);
  v9(v8, v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_219BE8644();
    sub_219BE6BA4();

    return (v9)(v8, v5);
  }

  return result;
}

double sub_219A61F64()
{
  sub_2189320DC(0);
  sub_219BE5FC4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_219B62220(v7, v8);
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_recentSearchManager + 8);
  ObjectType = swift_getObjectType();
  v3 = sub_219BF5494();
  v5 = v4;

  (*(v1 + 16))(v3, v5, 4, ObjectType, v1);

  return result;
}

void sub_219A62048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9F74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a3, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277D6E950])
  {
    (*(v9 + 8))(v12, v8);
LABEL_3:
    v14 = *(*(v3 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 48))(ObjectType, v14);
    return;
  }

  if (v13 == *MEMORY[0x277D6E928])
  {
    v16 = *(v3 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler);
    v17 = sub_219BF5BF4();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    swift_unknownObjectRetain();
    v19 = &unk_219CC46F0;
    v20 = v7;
    v21 = v18;
LABEL_12:
    sub_218AB3D80(0, 0, v20, v19, v21);

    return;
  }

  if (v13 == *MEMORY[0x277D6E948] || v13 == *MEMORY[0x277D6E930])
  {
    v23 = *(v3 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler);
    v24 = *(v23 + 40);
    v25 = swift_getObjectType();
    (*(v24 + 48))(v25, v24);
    v26 = sub_219BF5BF4();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v23;
    swift_unknownObjectRetain();
    v19 = &unk_219CC46E8;
    v20 = v7;
    v21 = v27;
    goto LABEL_12;
  }

  if (v13 != *MEMORY[0x277D6E958])
  {
    if (v13 == *MEMORY[0x277D6E970])
    {
      goto LABEL_3;
    }

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_219A623B4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler) + 88), *(*(v0 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler) + 112));
  v1 = off_282A604B0;
  type metadata accessor for SearchHomeTracker();
  return v1();
}

double sub_219A62430(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();

  return result;
}

double sub_219A625FC(char *a1)
{
  sub_218760638(0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isViewLoaded])
  {
    v7 = *&a1[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler];
    v8 = sub_219BF5BF4();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    swift_unknownObjectRetain();
    sub_218AB3D80(0, 0, v5, &unk_219CC46F8, v9);
  }

  return result;
}

double sub_219A62720()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_219BE3494();

  return result;
}

uint64_t sub_219A6279C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21937D5A8(a1, v4, v5, v6);
}

uint64_t sub_219A62850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21937D5A8(a1, v4, v5, v6);
}

uint64_t sub_219A62904(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219139F0C(a1, v4);
}

void sub_219A62974()
{
  v1 = v0;
  swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_styler], v17);
  v3 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  [v5 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v17);
  v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 setBackgroundColor_];
  [v8 setAlwaysBounceVertical_];

  v9 = [v1 parentViewController];
  if (v9)
  {
    v10 = v9;
    sub_219BE7984();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      sub_218718690(v2, v17);
      v13 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v14 = [v12 view];
      if (v14)
      {
        v15 = v14;
        v16 = *(*__swift_project_boxed_opaque_existential_1((*v13 + 16), *(*v13 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
        [v15 setBackgroundColor_];

        __swift_destroy_boxed_opaque_existential_1(v17);
        return;
      }

      goto LABEL_9;
    }
  }
}

uint64_t type metadata accessor for SharedWithYouFeedFailedBlueprintModifier(uint64_t a1)
{
  result = qword_27CC22D88;
  if (!qword_27CC22D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A62C2C(uint64_t a1)
{
  result = type metadata accessor for SharedWithYouFeedFailedData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219A62C98(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v100 = a3;
  v101 = a2;
  v98 = sub_219BE6DF4();
  v92 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v91 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A63B8C(0, &qword_27CC1DA28, MEMORY[0x277D6DF88]);
  v99 = v6;
  v96 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v95 = (&v71 - v7);
  sub_21934EC04(0);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v90);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v89);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BF0644();
  v88 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v85 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v71 - v14;
  v15 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA8ABC(0);
  v84 = v18;
  v94 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v87 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A63B8C(0, &qword_27CC104F8, MEMORY[0x277D6EC60]);
  v21 = v20;
  v97 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  sub_218F93AE4(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40594(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v77 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - v32;
  v34 = v3;
  sub_219BEB244();
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    sub_219A63CD4(v26, sub_218F93AE4);
    sub_219A63C80();
    v35 = swift_allocError();
    v37 = v95;
    v36 = v96;
    *v95 = v35;
    v38 = v99;
    (*(v36 + 104))(v37, *MEMORY[0x277D6DF68], v99);
    v101(v37);
    return (*(v36 + 8))(v37, v38);
  }

  v40 = *(v29 + 32);
  v93 = v33;
  v40(v33, v26, v28);
  v41 = a1;
  (*(v97 + 16))(v23, a1, v21);
  v42 = v34;
  v73 = *(type metadata accessor for SharedWithYouFeedFailedData(0) + 20);
  sub_21988B010(v34 + v73, v17);
  v43 = v94;
  v44 = v84;
  v45 = (*(v94 + 48))(v17, 1, v84);
  v46 = v21;
  v47 = v29;
  v48 = v42;
  v75 = v41;
  v83 = v23;
  v82 = v28;
  v80 = v46;
  v74 = v47;
  if (v45 == 1)
  {
    sub_219A63CD4(v17, type metadata accessor for SharedWithYouFeedGapLocation);
LABEL_5:
    v49 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
    (*(*(v49 - 8) + 56))(v79, 1, 1, v49);
    sub_219A63D34(0, &qword_27CC0FB58, sub_218C40500, MEMORY[0x277D84560]);
    sub_218C40500(0);
    v51 = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_219C09BA0;
    sub_218EA8964(0);
    v54 = *(v53 + 48);
    v55 = v78;
    sub_21988B010(v48 + v73, v78);
    if (qword_27CC089B0 != -1)
    {
      swift_once();
    }

    v56 = sub_219BF1584();
    v57 = __swift_project_value_buffer(v56, qword_27CCD8F88);
    (*(*(v56 - 8) + 16))(v55 + v54, v57, v56);
    swift_storeEnumTagMultiPayload();
    sub_219A63D98(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    sub_219BE5FB4();
    v58 = sub_219A63D98(&qword_27CC19078, sub_218C40500, MEMORY[0x277D6D408]);
    v59 = sub_219A63D98(&qword_27CC19080, sub_218C40500, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](v52, v51, v58, v59);
    sub_219A63D98(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v60 = v77;
    sub_219BE6924();
    sub_219BEB234();
    v61 = v74;
    (*(v74 + 8))(v60, v82);
    v62 = v95;
    v63 = v96;
    goto LABEL_13;
  }

  (*(v43 + 32))(v87, v17, v44);
  sub_219BF0F74();
  v64 = v76;
  (*(v88 + 104))(v85, *MEMORY[0x277D32EF8], v76);
  sub_219A63D98(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
  sub_219BF5874();
  sub_219BF5874();
  if (v104 == v102 && v105 == v103)
  {
    v65 = *(v88 + 8);
    v65(v85, v64);
    v65(v86, v64);
  }

  else
  {
    v72 = v42;
    v66 = sub_219BF78F4();
    v67 = *(v88 + 8);
    v67(v85, v64);
    v67(v86, v64);

    if ((v66 & 1) == 0)
    {
      (*(v94 + 8))(v87, v44);
      v48 = v72;
      goto LABEL_5;
    }
  }

  sub_219BE6944();
  sub_219BEB214();

  (*(v94 + 8))(v87, v44);
  v62 = v95;
  v63 = v96;
  v61 = v74;
LABEL_13:
  v68 = v91;
  v69 = v92;
  (*(v92 + 104))(v91, *MEMORY[0x277D6D868], v98);
  sub_219A63D98(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
  sub_219A63D98(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
  sub_219A63D98(&qword_27CC203C0, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C19014);
  v70 = v83;
  sub_219BE85E4();
  (*(v69 + 8))(v68, v98);
  v101(v62);
  (*(v63 + 8))(v62, v99);
  (*(v97 + 8))(v70, v80);
  return (*(v61 + 8))(v93, v82);
}

uint64_t sub_219A63A48(uint64_t a1)
{
  v2 = sub_219A63D98(&qword_27CC20770, type metadata accessor for SharedWithYouFeedFailedBlueprintModifier, &unk_219CC4754);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_219A63B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_219A63D98(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_219A63D98(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_219A63C80()
{
  result = qword_27CC22DA0;
  if (!qword_27CC22DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DA0);
  }

  return result;
}

uint64_t sub_219A63CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219A63D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A63D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219A63DF4()
{
  result = qword_27CC22DA8;
  if (!qword_27CC22DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DA8);
  }

  return result;
}

uint64_t sub_219A63E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_219A63EA0()
{
  v1 = v0;
  sub_21872F21C(0);
  v3 = v2;
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FFFE8(0);
  v7 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218714064(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991E278(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v23;
      (*(v23 + 32))(v9, v17, v7);
      v20 = sub_219BEDCA4();
      (*(v19 + 8))(v9, v7);
    }

    else
    {
      v21 = v24;
      (*(v24 + 32))(v5, v17, v3);
      v20 = sub_219BEDCA4();
      (*(v21 + 8))(v5, v3);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v20 = sub_219BEDCA4();
    (*(v12 + 8))(v14, v11);
  }

  return v20;
}

uint64_t sub_219A6423C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  sub_21872F21C(0);
  v4 = v3;
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FFFE8(0);
  v8 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218714064(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991E278(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v23;
      (*(v23 + 32))(v10, v18, v8);
      v26(v8);
      return (*(v20 + 8))(v10, v8);
    }

    else
    {
      v22 = v24;
      (*(v24 + 32))(v6, v18, v4);
      v26(v4);
      return (*(v22 + 8))(v6, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v26(v12);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_219A64570(uint64_t (*a1)(uint64_t))
{
  v27 = a1;
  v2 = v1;
  sub_21872F21C(0);
  v4 = v3;
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FFFE8(0);
  v8 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218714064(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991E278(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v25;
      (*(v25 + 32))(v10, v18, v8);
      v21 = v27(v8);
      (*(v20 + 8))(v10, v8);
    }

    else
    {
      v22 = v26;
      (*(v26 + 32))(v6, v18, v4);
      v21 = v27(v4);
      (*(v22 + 8))(v6, v4);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v21 = v27(v12);
    (*(v13 + 8))(v15, v12);
  }

  return v21;
}

uint64_t sub_219A64918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2186FFFA0(&qword_27CC18788, type metadata accessor for SearchMoreFeedGroupConfig, &unk_219CC4974);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_219A64ABC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_21872F21C(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FFFE8(0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218714064(0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A65638(0);
  v11 = v10;
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_219A65694();
  v17 = v39;
  sub_219BF7B34();
  if (!v17)
  {
    v27 = v16;
    v19 = v36;
    v18 = v37;
    v39 = v14;
    sub_219A656E8();
    sub_219BF7734();
    v20 = v11;
    v21 = v13;
    if (v38[0])
    {
      if (v38[0] == 1)
      {
        sub_218718690(a1, v38);
        type metadata accessor for RecipesSearchMoreFeedGroupConfigData(0);
        sub_2186FFFA0(&qword_280E9AB18, type metadata accessor for RecipesSearchMoreFeedGroupConfigData, &unk_219C0C730);
        sub_2186FFFA0(qword_280E9AB20, type metadata accessor for RecipesSearchMoreFeedGroupConfigData, &unk_219C0C708);
        v23 = v18;
        sub_219BEDD24();
        v24 = v35;
        (*(v19 + 8))(v21, v20);
        v25 = v27;
        (*(v30 + 32))(v27, v23, v31);
      }

      else
      {
        sub_218718690(a1, v38);
        type metadata accessor for TagsSearchMoreFeedGroupConfigData(0);
        sub_2186FFFA0(&qword_280EA1598, type metadata accessor for TagsSearchMoreFeedGroupConfigData, &unk_219C6B17C);
        v37 = a1;
        sub_2186FFFA0(qword_280EA15A0, type metadata accessor for TagsSearchMoreFeedGroupConfigData, &unk_219C6B154);
        v26 = v34;
        sub_219BEDD24();
        v24 = v35;
        (*(v19 + 8))(v21, v20);
        v25 = v27;
        (*(v32 + 32))(v27, v26, v33);
        a1 = v37;
      }
    }

    else
    {
      sub_218718690(a1, v38);
      type metadata accessor for ArticlesSearchMoreFeedGroupConfigData(0);
      sub_2186FFFA0(&qword_280E99F20, type metadata accessor for ArticlesSearchMoreFeedGroupConfigData, &unk_219C84B90);
      sub_2186FFFA0(qword_280E99F28, type metadata accessor for ArticlesSearchMoreFeedGroupConfigData, &unk_219C84B68);
      sub_219BEDD24();
      (*(v19 + 8))(v13, v20);
      v25 = v27;
      (*(v28 + 32))(v27, v9, v29);
      v24 = v35;
    }

    swift_storeEnumTagMultiPayload();
    sub_219A6573C(v25, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A650DC(uint64_t a1)
{
  v24 = a1;
  sub_21872F21C(0);
  v2 = v1;
  v22 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FFFE8(0);
  v6 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218714064(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21991E278(v23, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v21;
      (*(v21 + 32))(v8, v16, v6);
      sub_219BEDD64();
      return (*(v18 + 8))(v8, v6);
    }

    else
    {
      v20 = v22;
      (*(v22 + 32))(v4, v16, v2);
      sub_219BEDD64();
      return (*(v20 + 8))(v4, v2);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    sub_219BEDD64();
    return (*(v11 + 8))(v13, v10);
  }
}

void sub_219A65404(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

void sub_219A65458(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_219A654B0(uint64_t a1)
{
  v2 = sub_219A65694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A654EC(uint64_t a1)
{
  v2 = sub_219A65694();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A65528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219A65974(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_219A65638(uint64_t a1)
{
  if (!qword_27CC22DC0)
  {
    sub_219A65694();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22DC0);
    }
  }
}

unint64_t sub_219A65694()
{
  result = qword_27CC22DC8;
  if (!qword_27CC22DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DC8);
  }

  return result;
}

unint64_t sub_219A656E8()
{
  result = qword_27CC22DD0;
  if (!qword_27CC22DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DD0);
  }

  return result;
}

uint64_t sub_219A6573C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGroupConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219A657C4()
{
  result = qword_27CC22DD8;
  if (!qword_27CC22DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DD8);
  }

  return result;
}

unint64_t sub_219A6581C()
{
  result = qword_27CC22DE0;
  if (!qword_27CC22DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DE0);
  }

  return result;
}

unint64_t sub_219A65874()
{
  result = qword_27CC22DE8;
  if (!qword_27CC22DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DE8);
  }

  return result;
}

unint64_t sub_219A658CC()
{
  result = qword_27CC22DF0;
  if (!qword_27CC22DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DF0);
  }

  return result;
}

unint64_t sub_219A65920()
{
  result = qword_27CC22DF8;
  if (!qword_27CC22DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22DF8);
  }

  return result;
}

unint64_t sub_219A65974(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219A659C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = sub_219BDD2D4();
  v20 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 16);
  v17(v12, a2, v6, v14);
  (v17)(v9, a3, v6);
  sub_219BDD2B4();
  sub_219A65D88(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();
  sub_219BE1294();
  sub_219A65D88(&qword_27CC22E00, MEMORY[0x277D2F0D8], MEMORY[0x277D2F0D0]);
  sub_219BDCCC4();
  sub_219BE1204();
  memset(v21, 0, sizeof(v21));
  sub_219A65D88(&qword_27CC22E08, MEMORY[0x277D2F068], MEMORY[0x277D2F060]);

  sub_219BDCCE4();

  sub_218806FD0(v21);
  return (*(v20 + 8))(v16, v13);
}

uint64_t sub_219A65CE8()
{
  sub_219BE1294();
  sub_219A65D88(&qword_27CC22E00, MEMORY[0x277D2F0D8], MEMORY[0x277D2F0D0]);
  return sub_219BDCC44();
}

uint64_t sub_219A65D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219A65DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a2;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = v7;
    v28 = a4;
    v31[0] = *(Strong + 112);
    sub_21898746C(0);
    sub_219A72A9C(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    sub_219BEE5E4();
    sub_219BEB294();
    sub_218B588AC(v31);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      (*(v18 + 8))(v20, v17);

      sub_219A72AE4(v10, sub_21929BEC4);
      v22 = 1;
      a4 = v28;
    }

    else
    {
      (*(v13 + 32))(v15, v10, v12);
      v23 = sub_219BE97D4();
      v24 = v27;
      (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
      a4 = v28;
      sub_21962AA38(v15, v24, v28);

      sub_219A72AE4(v24, sub_218B58900);
      (*(v13 + 8))(v15, v12);
      (*(v18 + 8))(v20, v17);
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  v25 = sub_219BE16D4();
  return (*(*(v25 - 8) + 56))(a4, v22, 1, v25);
}

uint64_t sub_219A661FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a2;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE16D4();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  sub_218953904(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v37 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v22 = v21;
  v38 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v33 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v34 = v10;
    v35 = v7;
    v36 = a4;
    v41[0] = *(Strong + 112);
    sub_21898746C(0);
    sub_219A72A9C(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();
    sub_219BEB354();
    v26 = *(v19 + 48);
    if (v26(v13, 1, v18) == 1)
    {

      sub_219BEE5E4();
      sub_219BEB294();
      sub_218B588AC(v41);
      if (v26(v13, 1, v18) != 1)
      {
        sub_219A72AE4(v13, sub_21929BEC4);
      }
    }

    else
    {
      (*(v19 + 32))(v16, v13, v18);
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    if (v26(v16, 1, v18) == 1)
    {
      (*(v38 + 8))(v24, v22);

      sub_219A72AE4(v16, sub_21929BEC4);
      v27 = 1;
      a4 = v36;
    }

    else
    {
      v28 = v37;
      (*(v19 + 32))(v37, v16, v18);
      v29 = sub_219BE97D4();
      v30 = v35;
      (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
      sub_21962AA38(v28, v30, v34);
      sub_219A72AE4(v30, sub_218B58900);
      a4 = v36;
      sub_219BE0004();

      (*(v19 + 8))(v28, v18);
      (*(v38 + 8))(v24, v22);
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  v31 = sub_219BE0014();
  return (*(*(v31 - 8) + 56))(a4, v27, 1, v31);
}

uint64_t sub_219A66768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v37 = a1;
  v38 = a2;
  v5 = sub_219BE14C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE14A4();
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = v8;
    v33 = v6;
    v34 = v5;
    v35 = a4;
    v39[0] = *(Strong + 112);
    sub_21898746C(0);
    sub_219A72A9C(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();
    sub_219BEB354();
    sub_218953904(0);
    v24 = v23;
    v25 = *(v23 - 8);
    v26 = *(v25 + 48);
    if (v26(v13, 1, v23) == 1)
    {

      sub_219BEE5E4();
      sub_219BEB294();
      sub_218B588AC(v39);
      if (v26(v13, 1, v24) != 1)
      {
        sub_219A72AE4(v13, sub_21929BEC4);
      }
    }

    else
    {
      (*(v25 + 32))(v16, v13, v24);
      (*(v25 + 56))(v16, 0, 1, v24);
    }

    v28 = v26(v16, 1, v24);
    a4 = v35;
    if (v28 == 1)
    {

      sub_219A72AE4(v16, sub_21929BEC4);
      v27 = 1;
    }

    else
    {
      sub_219A72AE4(v16, sub_21929BEC4);
      (*(v33 + 104))(v32, *MEMORY[0x277D2F2F8], v34);
      sub_219BE1484();
      sub_219BDFE44();

      v27 = 0;
    }

    (*(v19 + 8))(v21, v18);
  }

  else
  {
    v27 = 1;
  }

  v29 = sub_219BDFE54();
  return (*(*(v29 - 8) + 56))(a4, v27, 1, v29);
}

uint64_t sub_219A66C44(uint64_t a1)
{
  v23[3] = a1;
  v24 = sub_219BE9C04();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDF074();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE1544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BE1524();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v25 = *(v1 + 16);
  v15 = sub_219BE9924();
  v23[1] = v16;
  v23[2] = v15;
  (*(v9 + 104))(v11, *MEMORY[0x277D2F3B8], v8);
  sub_219BE9934();
  v17 = (*(v2 + 88))(v4, v24);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v17 != *MEMORY[0x277D6E840] && v17 != *MEMORY[0x277D6E848] && v17 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v18 = MEMORY[0x277D2D810];
  }

  (*(v5 + 104))(v7, *v18, v26);
  sub_219BE1514();
  sub_219A72A9C(&qword_280EE7FE0, 255, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v21 = v27;
  sub_219BDD1F4();
  (*(v12 + 8))(v14, v21);
  sub_219BDD134();
  v29 = 0xF000000000000000;
  return sub_219BE7884();
}

uint64_t sub_219A67054(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_219A72A9C(&qword_280EE7F30, 255, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_219A72AE4(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v12, v15, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_219BDF234();
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_219A72A9C(&qword_280EE8810, 255, MEMORY[0x277D2D9A8], MEMORY[0x277D2D9A0]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_219A72A9C(&qword_280EE8760, 255, MEMORY[0x277D2DB18], MEMORY[0x277D2DB00]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

void sub_219A67688(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v50 - v5;
  v6 = sub_219BF1DF4();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BEDAE4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28(0);
  v63 = v9;
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF04A4();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BF0F34();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v18 = v17;
  v50 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v72 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v26 + 8))(v28, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v39 = sub_219BE5B64();
      swift_getObjectType();
      v73 = v39;
      v40 = v68;
      sub_219BE75A4();
      v41 = v69;
      sub_219BE7574();
      sub_219BEB4C4();

      v42 = v71;
      v43 = *(v70 + 8);
      v43(v41, v71);
      v43(v40, v42);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v36 = &v23[*(v35 + 48)];
      }

      else
      {
        sub_2186FB36C(0);
        v48 = *(v47 + 48);
        v49 = sub_219BF1584();
        (*(*(v49 - 8) + 8))(&v23[v48], v49);
        v36 = v23;
      }

      sub_219A72AE4(v36, type metadata accessor for AudioFeedGapLocation);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v55;
      v30 = v56;
      v32 = v53;
      (*(v55 + 32))(v53, v23, v56);
      v33 = v54;
      sub_219BF07D4();
      v34 = sub_219BF0404();
      (*(v57 + 8))(v33, v58);
      sub_219A68A14(v72, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v61;
      v32 = v59;
      v30 = v63;
      (*(v61 + 32))(v59, v23, v63);
      v44 = v60;
      sub_219BF07D4();
      v45 = v65;
      sub_219BEDA84();
      (*(v62 + 8))(v44, v64);
      v46 = sub_219A68DD4(v72, v45);
      (*(v66 + 8))(v45, v67, v46);
    }

    (*(v31 + 8))(v32, v30);
  }

  else
  {
    v37 = v50;
    (*(v50 + 32))(v20, v23, v18);
    sub_219BF07D4();
    v38 = sub_219BF0F14();
    (*(v51 + 8))(v16, v52);
    sub_219A67F0C(v72, v38);
    swift_unknownObjectRelease();
    (*(v37 + 8))(v20, v18);
  }
}

double sub_219A67F0C(uint64_t a1, void *a2)
{
  v109 = a1;
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v102 = v4;
  v100 = *(v4 - 8);
  v99 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v105 = &v83 - v5;
  sub_218B59134(0);
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v7;
  MEMORY[0x28223BE20](v8);
  v107 = &v83 - v9;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v104 = v12;
  MEMORY[0x28223BE20](v12);
  v89 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v87 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  v91 = v19;
  v94 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v83 - v25;
  sub_21929BEC4(0);
  v95 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v103 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v90 = (&v83 - v30);
  v96 = v31;
  *&v33 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v35 = &v83 - v34;
  [*(v2 + 64) markArticleAsSeenWithHeadline:a2 rememberForever:{1, v33}];
  v36 = *(v2 + 96);
  v101 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 72), v36);
  v108 = a2;
  v37 = [a2 identifier];
  v38 = sub_219BF5414();
  v40 = v39;

  sub_219771548(v38, v40);

  sub_219BE7594();
  sub_219BE7564();
  v41 = v91;
  sub_219BE5FC4();
  (*(v94 + 8))(v21, v41);
  sub_21952CB7C();
  sub_219A72AE4(v18, type metadata accessor for AudioFeedModel);
  v42 = v26;
  sub_219BEB244();

  v43 = *(v24 + 8);
  v91 = v23;
  v86 = v24 + 8;
  v43(v26, v23);
  v94 = swift_allocBox();
  v45 = v44;
  v46 = sub_219BE16D4();
  v47 = *(*(v46 - 8) + 56);
  v47(v45, 1, 1, v46);
  v104 = v35;
  v48 = v35;
  v49 = v90;
  sub_219A7238C(v48, v90, sub_21929BEC4);
  v50 = v92;
  v51 = v93;
  if ((*(v92 + 48))(v49, 1) == 1)
  {
    sub_219A72AE4(v49, sub_21929BEC4);
  }

  else
  {
    v52 = *(v50 + 32);
    v85 = v43;
    v53 = v87;
    v52(v87, v49, v51);
    v90 = v47;
    sub_219BE7594();
    v54 = sub_219BE97D4();
    v55 = *(*(v54 - 8) + 56);
    v84 = v45;
    v56 = v88;
    v55(v88, 1, 1, v54);
    v57 = v89;
    sub_21962AA38(v53, v56, v89);
    sub_219A72AE4(v56, sub_218B58900);
    v85(v42, v91);
    (*(v50 + 8))(v53, v51);
    v90(v57, 0, 1, v46);
    sub_218B58ECC(v57, v84);
  }

  v58 = v101;
  __swift_project_boxed_opaque_existential_1(v101 + 18, v101[21]);
  v59 = v108;
  v60 = [v108 identifier];
  sub_219BF5414();

  LODWORD(v93) = sub_219BF4774();

  v61 = v58[26];
  v62 = __swift_project_boxed_opaque_existential_1(v58 + 23, v61);
  v63 = [v59 identifier];
  v64 = sub_219BF5414();
  v66 = v65;

  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v83 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70, v62, v61, v68);
  v72 = v107;
  sub_218A75968(v64, v66, v70, v61, v107);
  v92 = v58[2];
  v73 = v100;
  v74 = v102;
  (*(v100 + 16))(v105, v109, v102);
  sub_219A7238C(v104, v103, sub_21929BEC4);
  sub_219A7238C(v72, v106, sub_218B59134);
  v75 = (*(v73 + 80) + 24) & ~*(v73 + 80);
  v76 = (v99 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (*(v95 + 80) + v76 + 9) & ~*(v95 + 80);
  v78 = (v96 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v97 + 80) + v78 + 8) & ~*(v97 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v108;
  (*(v73 + 32))(v80 + v75, v105, v74);
  v81 = v80 + v76;
  *v81 = v58;
  *(v81 + 8) = v93 & 1;
  sub_219A723F4(v103, v80 + v77, sub_21929BEC4);
  *(v80 + v78) = v94;
  sub_219A723F4(v106, v80 + v79, sub_218B59134);
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_219A72AE4(v107, sub_218B59134);
  sub_219A72AE4(v104, sub_21929BEC4);

  return result;
}

uint64_t sub_219A68A14(uint64_t a1, void *a2)
{
  v38 = a1;
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v39 = v4;
  v5 = *(v4 - 8);
  v35 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = v33 - v6;
  sub_218B59134(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v33 - v10;
  sub_218718690(v2 + 184, v41);
  v12 = v42;
  v33[1] = v43;
  v13 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v40 = a2;
  v14 = [a2 dismissingIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_219BF5414();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = MEMORY[0x28223BE20](v14);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v13, v12, v19);
  v23 = v11;
  sub_218A75968(v16, v18, v21, v12, v11);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v24 = v37;
  v25 = v39;
  (*(v5 + 16))(v37, v38, v39);
  v26 = v11;
  v27 = v36;
  sub_219A7238C(v26, v36, sub_218B59134);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = (v35 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v34 + 80) + v29 + 8) & ~*(v34 + 80);
  v31 = swift_allocObject();
  (*(v5 + 32))(v31 + v28, v24, v25);
  *(v31 + v29) = v40;
  sub_219A723F4(v27, v31 + v30, sub_218B59134);
  swift_unknownObjectRetain();
  sub_219BDD154();

  return sub_219A72AE4(v23, sub_218B59134);
}

double sub_219A68DD4(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v4 = v3;
  v96 = *(v3 - 8);
  v93 = *(v96 + 64);
  MEMORY[0x28223BE20](v3);
  v104 = &v76 - v5;
  v6 = sub_219BF1DF4();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = v7;
  v101 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v88 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v9;
  MEMORY[0x28223BE20](v10);
  v103 = &v76 - v11;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  v82 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v84 = v16;
  v83 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  v87 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v76 - v28;
  sub_21929BEC4(0);
  v85 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8);
  v99 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - v33;
  v86 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v76 - v37;
  sub_219BE7594();
  v39 = v4;
  v40 = v29;
  v97 = a1;
  v98 = v39;
  sub_219BE7564();
  v41 = v87;
  sub_219BE5FC4();
  (*(v22 + 8))(v24, v41);
  sub_21952CB7C();
  sub_219A72AE4(v20, type metadata accessor for AudioFeedModel);
  sub_219BEB244();

  v42 = *(v27 + 8);
  v79 = v26;
  v78 = v27 + 8;
  v77 = v42;
  v42(v40, v26);
  v87 = swift_allocBox();
  v44 = v43;
  v45 = sub_219BE16D4();
  v46 = *(*(v45 - 8) + 56);
  v46(v44, 1, 1, v45);
  v100 = v38;
  sub_219A7238C(v38, v34, sub_21929BEC4);
  v47 = v83;
  v48 = v84;
  if ((*(v83 + 48))(v34, 1) == 1)
  {
    sub_219A72AE4(v34, sub_21929BEC4);
  }

  else
  {
    v49 = v80;
    (*(v47 + 32))(v80, v34, v48);
    v76 = v44;
    sub_219BE7594();
    v50 = sub_219BE97D4();
    v51 = v81;
    (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
    v52 = v82;
    sub_21962AA38(v49, v51, v82);
    sub_219A72AE4(v51, sub_218B58900);
    v77(v40, v79);
    (*(v47 + 8))(v49, v48);
    v46(v52, 0, 1, v45);
    sub_218B58ECC(v52, v76);
  }

  v53 = v91;
  v54 = *(v91 + 208);
  v55 = __swift_project_boxed_opaque_existential_1((v91 + 184), v54);
  v56 = v92;
  v57 = sub_219BF1DC4();
  v59 = v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v76 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v63 + 16))(v62, v55, v54, v60);
  v64 = v103;
  sub_218A75968(v57, v59, v62, v54, v103);
  v91 = *(v53 + 16);
  v65 = v94;
  v66 = v95;
  (*(v94 + 16))(v101, v56, v95);
  v67 = v96;
  v68 = v98;
  (*(v96 + 16))(v104, v97, v98);
  sub_219A7238C(v100, v99, sub_21929BEC4);
  sub_219A7238C(v64, v102, sub_218B59134);
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v90 + *(v67 + 80) + v69) & ~*(v67 + 80);
  v71 = (v93 + *(v85 + 80) + v70) & ~*(v85 + 80);
  v72 = (v86 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (*(v88 + 80) + v72 + 8) & ~*(v88 + 80);
  v74 = swift_allocObject();
  (*(v65 + 32))(v74 + v69, v101, v66);
  (*(v67 + 32))(v74 + v70, v104, v68);
  sub_219A723F4(v99, v74 + v71, sub_21929BEC4);
  *(v74 + v72) = v87;
  sub_219A723F4(v102, v74 + v73, sub_218B59134);

  sub_219BDD154();

  sub_219A72AE4(v103, sub_218B59134);
  sub_219A72AE4(v100, sub_21929BEC4);

  return result;
}

uint64_t sub_219A69894(uint64_t a1)
{
  v41 = a1;
  sub_219A6BD5C(0, &qword_280EE45C0, MEMORY[0x277D6E3A0]);
  v2 = v1;
  v43 = *(v1 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v42 = &v34 - v3;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v40 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v39 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v38 = sub_219BE16D4();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v35 = v2;
  v20 = v41;
  sub_219BE8F04();
  sub_219BE8EF4();
  sub_219BE8F24();
  v37 = v19;
  sub_21962AA38(v10, v6, v19);
  sub_219A72AE4(v6, sub_218B58900);
  (*(v8 + 8))(v10, v40);
  (*(v12 + 8))(v14, v39);
  v21 = v15;
  v22 = *(v15 + 16);
  v23 = v36;
  v24 = v38;
  v22(v36, v19, v38);
  v26 = v42;
  v25 = v43;
  v27 = v35;
  (*(v43 + 16))(v42, v20, v35);
  v28 = *(v21 + 80);
  v34 = v21;
  v29 = (v28 + 16) & ~v28;
  v30 = v25;
  v31 = (v16 + *(v25 + 80) + v29) & ~*(v25 + 80);
  v32 = swift_allocObject();
  (*(v21 + 32))(v32 + v29, v23, v24);
  (*(v30 + 32))(v32 + v31, v26, v27);
  sub_219BDD154();

  return (*(v34 + 8))(v37, v24);
}

uint64_t sub_219A69D0C(uint64_t a1, void *a2, uint64_t a3)
{
  v62 = a3;
  v57 = a1;
  v58 = a2;
  v3 = sub_219BDBD34();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE1444();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1904();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v20 = v19;
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v45 = *(v22 + 72);
  v48 = v20;
  v24 = swift_allocObject();
  v44 = xmmword_219C09BA0;
  *(v24 + 16) = xmmword_219C09BA0;
  v25 = *MEMORY[0x277CEAD18];
  v26 = *(v22 + 104);
  v46 = v23;
  v43 = v25;
  v49 = v21;
  v42 = v26;
  v26(v24 + v23);
  sub_219BE16D4();
  sub_219A72A9C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v47 = "NewsUI2/AudioFeedTracker.swift";
  sub_219BDCCC4();

  sub_219A6BD5C(0, &qword_280EE45C0, MEMORY[0x277D6E3A0]);
  sub_219BE8EF4();
  sub_219BE6934();
  (*(v16 + 8))(v18, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_219A72AE4(v13, type metadata accessor for AudioFeedSectionDescriptor);
    v28 = v61;
  }

  else
  {
    v28 = v61;
    if (EnumCaseMultiPayload == 3)
    {
      v29 = v56;
      sub_219A723F4(v13, v56, type metadata accessor for CuratedAudioFeedGroup);
      v30 = v53;
      sub_219BED874();
      v31 = sub_219BF1844();
      (*(v54 + 8))(v30, v55);
      if (v31)
      {
        v32 = [v31 identifier];
        v58 = v31;
        v33 = v32;
        sub_219BF5414();

        v34 = v50;
        sub_219BE1424();
        v35 = v46;
        v36 = swift_allocObject();
        *(v36 + 16) = v44;
        v42(v36 + v35, v43, v49);
        sub_219A72A9C(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v37 = v52;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v51 + 8))(v34, v37);
        v38 = v56;
      }

      else
      {
        v38 = v29;
      }

      sub_219A72AE4(v38, type metadata accessor for CuratedAudioFeedGroup);
    }
  }

  sub_219BE0254();
  v39 = v59;
  sub_219BE8F14();
  sub_219A72A9C(&qword_280EE8470, 255, MEMORY[0x277D2E3F8], MEMORY[0x277D2E3F0]);
  sub_219BDCC64();
  v40 = *(v60 + 8);
  v40(v39, v28);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v40)(v39, v28);
}

uint64_t sub_219A6A488(uint64_t a1)
{
  v25 = a1;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = sub_219BE16D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[14];
  v26 = v1[2];
  v27 = v14;
  sub_21898746C(0);
  sub_219A72A9C(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v15 = sub_219BE97D4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_21962AA38(v25, v4, v13);
  sub_219A72AE4(v4, sub_218B58900);
  (*(v7 + 8))(v9, v6);
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v16 = sub_219BDCD44();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09BA0;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x277CEAD18], v16);
  sub_219A72A9C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v20 = v26;
  sub_219BDD1F4();

  (*(v11 + 8))(v13, v10);
  v21 = v1[6];
  v22 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v21);
  return (*(v22 + 8))(v20, v21, v22);
}

uint64_t sub_219A6A8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v19 = a2;
  v4 = sub_219BF0F34();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0614();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D38(0);
  sub_219BE7564();
  sub_219BE5FD4();
  (*(v13 + 8))(v15, v12);
  result = (*(v8 + 88))(v10, v7);
  if (result == *MEMORY[0x277D32DB8] || result == *MEMORY[0x277D32D10] || result == *MEMORY[0x277D32E00])
  {
    return (*(v8 + 8))(v10, v7);
  }

  if (result == *MEMORY[0x277D32E10])
  {
    (*(v8 + 96))(v10, v7);
    v17 = v20;
    (*(v20 + 32))(v6, v10, v4);
    v18 = sub_219BF0F14();
    sub_219A6ACDC(a1, v18, v19, v21);
    swift_unknownObjectRelease();
    return (*(v17 + 8))(v6, v4);
  }

  else if (result == *MEMORY[0x277D32E18] || result == *MEMORY[0x277D32DD8] || result == *MEMORY[0x277D32CF8] || result == *MEMORY[0x277D32DC0] || result == *MEMORY[0x277D32CF0] || result == *MEMORY[0x277D32E08] || result == *MEMORY[0x277D32DB0] || result == *MEMORY[0x277D32DE0] || result == *MEMORY[0x277D32DF0] || result == *MEMORY[0x277D32D38] || result == *MEMORY[0x277D32DE8] || result == *MEMORY[0x277D32D18] || result == *MEMORY[0x277D32DA8] || result == *MEMORY[0x277D32DF8] || result != *MEMORY[0x277D32DD0])
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

double sub_219A6ACDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v90 = a3;
  v108 = a1;
  sub_218B58D38(0);
  v110 = v6;
  v102 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v100 = v7;
  v101 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v9;
  MEMORY[0x28223BE20](v10);
  v111 = &v84 - v11;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v107 = v14;
  MEMORY[0x28223BE20](v14);
  v86 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v89 = v18;
  v88 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v84 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF13A4();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v92 = v23;
  v93 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90(0);
  v94 = v26;
  v103 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  v95 = *(v29 - 8);
  MEMORY[0x28223BE20](v29 - 8);
  v106 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v84 - v32;
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v105 = v34;
  v97 = *(v34 - 8);
  *&v35 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v37 = &v84 - v36;
  [*(v4 + 64) markArticleAsSeenWithHeadline:a2 rememberForever:{1, v35}];
  __swift_project_boxed_opaque_existential_1((v4 + 72), *(v4 + 96));
  v112 = a2;
  v38 = [a2 identifier];
  v39 = sub_219BF5414();
  v41 = v40;

  sub_219771548(v39, v41);

  v42 = *(v4 + 112);
  v113 = v4;
  v114[0] = v42;
  sub_21898746C(0);
  sub_219A72A9C(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
  v104 = v37;
  sub_219BE7B94();
  sub_219BE7594();
  sub_219BE7564();
  v43 = v92;
  sub_219BE5FC4();
  (*(v93 + 8))(v25, v43);
  sub_219BF1384();
  sub_219A72AE4(v22, MEMORY[0x277D33320]);
  v44 = v94;
  sub_219BEB244();

  (*(v103 + 8))(v28, v44);
  v94 = swift_allocBox();
  v46 = v45;
  v47 = sub_219BE16D4();
  v48 = *(*(v47 - 8) + 56);
  v48(v46, 1, 1, v47);
  sub_218B58FCC(0);
  v50 = *(*(v49 - 8) + 48);
  v107 = v33;
  if (v50(v33, 1, v49) != 1)
  {
    v51 = v87;
    sub_219BEB244();
    v52 = v88;
    v53 = v89;
    if ((*(v88 + 48))(v51, 1, v89) == 1)
    {
      sub_219A72AE4(v51, sub_21929BEC4);
    }

    else
    {
      v54 = v84;
      (*(v52 + 32))(v84, v51, v53);
      v55 = sub_219BE97D4();
      v56 = v85;
      (*(*(v55 - 8) + 56))(v85, 1, 1, v55);
      v57 = v86;
      sub_21962AA38(v54, v56, v86);
      sub_219A72AE4(v56, sub_218B58900);
      (*(v52 + 8))(v54, v53);
      v48(v57, 0, 1, v47);
      sub_218B58ECC(v57, v46);
    }
  }

  v58 = v113;
  __swift_project_boxed_opaque_existential_1(v113 + 18, v113[21]);
  v59 = v112;
  v60 = [v112 identifier];
  sub_219BF5414();

  LODWORD(v103) = sub_219BF4774();

  sub_218718690((v58 + 23), v114);
  v61 = v115;
  v62 = __swift_project_boxed_opaque_existential_1(v114, v115);
  v63 = [v59 respondsToSelector_];
  if ((v63 & 1) != 0 && (v63 = [v59 dismissingIdentifier]) != 0)
  {
    v64 = v63;
    v65 = sub_219BF5414();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = MEMORY[0x28223BE20](v63);
  v70 = &v84 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70, v62, v61, v68);
  v72 = v111;
  sub_218A75968(v65, v67, v70, v61, v111);
  __swift_destroy_boxed_opaque_existential_1(v114);
  v93 = v113[2];
  v73 = v101;
  v74 = v102;
  v75 = v110;
  (*(v102 + 16))(v101, v108, v110);
  sub_219A7238C(v107, v106, sub_218B58F98);
  sub_219A7238C(v72, v109, sub_218B59134);
  v76 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v77 = (v76 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v76 + v100 + 23) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v95 + 80) + v78 + 8) & ~*(v95 + 80);
  v80 = (v96 + *(v98 + 80) + v79) & ~*(v98 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v112;
  (*(v74 + 32))(v81 + v76, v73, v75);
  v82 = v81 + v77;
  *v82 = v113;
  *(v82 + 8) = v103 & 1;
  *(v81 + v78) = v94;
  sub_219A723F4(v106, v81 + v79, sub_218B58F98);
  sub_219A723F4(v109, v81 + v80, sub_218B59134);
  swift_unknownObjectRetain();

  sub_219BDD154();

  sub_219A72AE4(v111, sub_218B59134);
  (*(v97 + 8))(v104, v105);
  sub_219A72AE4(v107, sub_218B58F98);

  return result;
}

uint64_t sub_219A6B980()
{
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - v4;
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 112);
  v16[0] = v0;
  v16[1] = v14;
  sub_21898746C(0);
  sub_219A72A9C(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  sub_219BF4B14();
  sub_219BEB244();

  (*(v3 + 8))(v5, v2);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return sub_219A72AE4(v8, sub_21929BEC4);
  }

  (*(v11 + 32))(v13, v8, v10);
  sub_219A6A488(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_219A6BC3C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  return v0;
}

uint64_t sub_219A6BCA4()
{
  sub_219A6BC3C();

  return swift_deallocClassInstance();
}

uint64_t sub_219A6BD04(uint64_t a1, uint64_t a2)
{
  result = sub_219A72A9C(qword_280ED8C58, a2, type metadata accessor for AudioFeedTracker, &unk_219CC4DA4);
  *(a1 + 8) = result;
  return result;
}

void sub_219A6BD5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_219A72A9C(&qword_280EBC460, 255, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v8[3] = sub_219A72A9C(&qword_280EDCBF0, 255, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219A6BE58(uint64_t a1, void (**a2)(void, void, __n128), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v171 = a8;
  v194 = a6;
  v193 = a5;
  v204 = a4;
  v208 = a3;
  v221 = a1;
  v175 = sub_219BDBD34();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v10 - 8);
  v172 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_219BDF754();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v160 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v13 - 8);
  v197 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_219BDF4A4();
  v170 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v159 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BDBD64();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDFFB4();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BE1714();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v19 - 8);
  v205 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_219BE16D4();
  v177 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v158 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BE0444();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A725DC(0);
  MEMORY[0x28223BE20](v23 - 8);
  v162 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v202 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v207 = v27;
  v203 = *(v27 - 1);
  MEMORY[0x28223BE20](v27);
  v176 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_219BE09E4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BDF104();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v31 - 8);
  v190 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_219BE0724();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v161 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BE1774();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_219BDF8A4();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_219BEFBD4();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BDF1A4();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BDFCE4();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_219BE0D44();
  v201 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_219BDF0E4();
  v218 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v41 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = swift_projectBox();
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v214 = v42;
  v43 = sub_219BDCD44();
  v217 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 80);
  v46 = (v45 + 32) & ~v45;
  v216 = v46 + *(v44 + 72);
  v47 = swift_allocObject();
  v220 = xmmword_219C09BA0;
  *(v47 + 16) = xmmword_219C09BA0;
  v48 = *MEMORY[0x277CEAD18];
  v49 = *(v44 + 104);
  v49(v47 + v46, v48, v43);
  v219 = "NewsUI2/AudioFeedTracker.swift";
  sub_219A72A9C(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v50 = v215;
  sub_219BDCCC4();

  (v218)[1](v41, v50);
  v51 = v195;
  v218 = a2;
  sub_219BF6834();
  v211 = v45;
  v52 = swift_allocObject();
  *(v52 + 16) = v220;
  v210 = v46;
  LODWORD(v215) = v48;
  v212 = v44 + 104;
  v213 = v49;
  v49(v52 + v46, v48, v217);
  sub_219A72A9C(&qword_280EE8190, 255, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v53 = v196;
  sub_219BDCCC4();

  (*(v201 + 8))(v51, v53);
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v55 = v54;
  v56 = sub_219A72A9C(&qword_280EDCBF8, 255, type metadata accessor for AudioFeedModel, &unk_219C86F68);
  v201 = v55;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v196 = v56;
  v58 = v178;
  sub_219BDFCD4();
  v59 = swift_allocObject();
  *(v59 + 16) = v220;
  v60 = v210;
  v213(v59 + v210, v215, v217);
  sub_219A72A9C(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v61 = v180;
  sub_219BDCCC4();

  (*(v179 + 8))(v58, v61);
  v62 = v182;
  v63 = v181;
  v64 = v183;
  (*(v182 + 104))(v181, *MEMORY[0x277D328F8], v183);
  v65 = v184;
  sub_219BE02C4();
  (*(v62 + 8))(v63, v64);
  v66 = swift_allocObject();
  *(v66 + 16) = v220;
  v67 = v66 + v60;
  v68 = v215;
  v69 = v217;
  v70 = v213;
  v213(v67, v215, v217);
  sub_219A72A9C(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v71 = v186;
  sub_219BDCCC4();

  (*(v185 + 8))(v65, v71);
  v72 = v187;
  sub_219BDF894();
  v73 = swift_allocObject();
  *(v73 + 16) = v220;
  v70(v73 + v210, v68, v69);
  sub_219A72A9C(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v74 = v189;
  sub_219BDCCC4();

  (*(v188 + 8))(v72, v74);
  v75 = [v218 scoreProfile];
  v76 = v206;
  v77 = v205;
  v78 = v207;
  v79 = v203;
  v80 = v192;
  v81 = v190;
  if (v75)
  {
    v82 = v75;
    if ([v75 hasShadowScores])
    {
      [v82 shadowTabiScore];
      [v82 shadowAgedPersonalizationScore];
      v83 = v76;
      v84 = v152;
      sub_219BE1764();
      v85 = swift_allocObject();
      *(v85 + 16) = v220;
      v213(v85 + v210, v215, v217);
      sub_219A72A9C(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v86 = v77;
      v87 = v154;
      sub_219BDCCC4();

      v88 = v84;
      v76 = v83;
      v78 = v207;
      v89 = v87;
      v77 = v86;
      (*(v153 + 8))(v88, v89);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v90 = v191;
  if ((*(v191 + 48))(v81, 1, v80) == 1)
  {
    sub_219A72AE4(v81, sub_218B58FEC);
    v91 = v202;
    v92 = v210;
  }

  else
  {
    v93 = v77;
    v94 = v161;
    (*(v90 + 32))(v161, v81, v80);
    v95 = swift_allocObject();
    *(v95 + 16) = v220;
    v92 = v210;
    v213(v95 + v210, v215, v217);
    sub_219A72A9C(&unk_27CC0DC50, 255, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    v96 = v94;
    v77 = v93;
    (*(v90 + 8))(v96, v80);
    v91 = v202;
  }

  v97 = [v218 sourceChannel];
  if (v97)
  {
    v204 = *(v204 + 120);
    v98 = v163;
    v195 = v97;
    sub_219BE01F4();
    v99 = swift_allocObject();
    *(v99 + 16) = v220;
    v100 = v215;
    v101 = v213;
    v213(v99 + v92, v215, v217);
    sub_219A72A9C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v102 = v165;
    sub_219BDCCC4();

    (*(v164 + 8))(v98, v102);
    v103 = v166;
    sub_219BE01E4();
    v79 = v203;
    v78 = v207;
    v104 = swift_allocObject();
    *(v104 + 16) = v220;
    v105 = v100;
    v77 = v205;
    v101(v104 + v210, v105, v217);
    sub_219A72A9C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v92 = v210;
    v106 = v168;
    v76 = v206;
    sub_219BDCCC4();
    v91 = v202;
    swift_unknownObjectRelease();

    (*(v167 + 8))(v103, v106);
  }

  sub_219A7238C(v194, v91, sub_21929BEC4);
  if ((*(v79 + 48))(v91, 1, v78) != 1)
  {
    (*(v79 + 32))(v176, v91, v78);
    v107 = v162;
    sub_219BE7564();
    sub_218AB7640(0);
    (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
    v109 = sub_219BE6A34();
    result = sub_219A72AE4(v107, sub_219A725DC);
    if (v109 >= 0xFFFFFFFF80000000)
    {
      if (v109 <= 0x7FFFFFFF)
      {
        v110 = v92;
        v111 = v155;
        sub_219BE0434();
        v112 = swift_allocObject();
        *(v112 + 16) = v220;
        v213(v112 + v110, v215, v217);
        sub_219A72A9C(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v113 = v157;
        sub_219BDCCC4();

        v114 = v111;
        v92 = v110;
        (*(v156 + 8))(v114, v113);
        (*(v79 + 8))(v176, v78);
        goto LABEL_17;
      }

LABEL_33:
      __break(1u);
      return result;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_219A72AE4(v91, sub_21929BEC4);
LABEL_17:
  v115 = v177;
  v116 = v169;
  swift_beginAccess();
  sub_219A7238C(v116, v77, sub_218B58D58);
  if ((*(v115 + 48))(v77, 1, v76) == 1)
  {
    sub_219A72AE4(v77, sub_218B58D58);
  }

  else
  {
    v117 = v158;
    (*(v115 + 32))(v158, v77, v76);
    v118 = swift_allocObject();
    *(v118 + 16) = v220;
    v213(v118 + v92, v215, v217);
    sub_219A72A9C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v115 + 8))(v117, v76);
  }

  v119 = v197;
  if ([v218 respondsToSelector_])
  {
    v120 = [v218 parentIssue];
    if (v120)
    {
      v121 = v143;
      v207 = v120;
      sub_21934C4BC();
      v122 = swift_allocObject();
      *(v122 + 16) = v220;
      v123 = v217;
      v124 = v213;
      v213(v122 + v92, v215, v217);
      sub_219A72A9C(&unk_280EE7F60, 255, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
      v125 = v145;
      sub_219BDCCC4();

      (*(v144 + 8))(v121, v125);
      v126 = v146;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v147 + 8))(v126, v148);
      v127 = v149;
      sub_219BDFFA4();
      v128 = swift_allocObject();
      *(v128 + 16) = v220;
      v124(v128 + v210, v215, v123);
      sub_219A72A9C(&unk_280EE84F0, 255, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
      v92 = v210;
      v129 = v151;
      sub_219BDCCC4();
      v119 = v197;

      (*(v150 + 8))(v127, v129);
    }
  }

  sub_219A7238C(v171, v119, sub_218B59134);
  v130 = v170;
  if ((*(v170 + 48))(v119, 1, v198) == 1)
  {
    sub_219A72AE4(v119, sub_218B59134);
  }

  else
  {
    v131 = v159;
    v132 = v198;
    (*(v130 + 32))(v159, v119, v198);
    v133 = swift_allocObject();
    *(v133 + 16) = v220;
    v213(v133 + v92, v215, v217);
    sub_219A72A9C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v130 + 8))(v131, v132);
  }

  v134 = v172;
  sub_219BF6804();
  if ((*(v199 + 48))(v134, 1, v200) == 1)
  {
    sub_219A72AE4(v134, sub_218BD3B80);
  }

  else
  {
    v135 = v199;
    v136 = v160;
    v137 = v200;
    (*(v199 + 32))(v160, v134, v200);
    v138 = swift_allocObject();
    *(v138 + 16) = v220;
    v213(v138 + v92, v215, v217);
    sub_219A72A9C(&unk_280EE86A0, 255, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();

    (*(v135 + 8))(v136, v137);
  }

  sub_219BE0834();
  v139 = v173;
  sub_219BE75A4();
  sub_219A72A9C(&qword_280EE82C0, 255, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v140 = *(v174 + 8);
  v141 = v175;
  v140(v139, v175);
  sub_219BE7574();
  v222[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v222);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v140(v139, v141);
  return sub_219A72AE4(v222, sub_21880702C);
}