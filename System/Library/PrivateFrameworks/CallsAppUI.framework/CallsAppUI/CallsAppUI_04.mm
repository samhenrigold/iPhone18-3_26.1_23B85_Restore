uint64_t sub_1CFC108D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    v4 = 1;
  }

  else
  {
    sub_1CFC9DB98();
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    sub_1CFC9DB88();
    v4 = 0;
  }

  v7 = sub_1CFC9DBB8();
  return (*(*(v7 - 8) + 56))(a1, v4, 1, v7);
}

void *sub_1CFC10A28(void *a1)
{
  v2 = v1;
  v4 = sub_1CFC9DC18();
  MEMORY[0x1EEE9AC00](v4);
  v28 = sub_1CFC9DC48();
  v5 = *(v28 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  sub_1CFC9CD38();
  sub_1CFC9DC28();
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC38();

  sub_1CFC9DC08();
  sub_1CFBA2D80(0, &qword_1EE04CF60, 0x1E6995580);
  v10 = sub_1CFC9FD18();
  v11 = v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  if (*(v11 + 8) == 1)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 != 6)
    {
      v14 = objc_opt_self();
      v15 = [v14 fractionalWidthDimension_];
      v16 = [v14 estimatedDimension_];
      v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

      v18 = sub_1CFC9F728();
      v19 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v17 elementKind:v18 alignment:1];

      [v19 setZIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CFCA2540;
      *(v20 + 32) = v19;
      sub_1CFBA2D80(0, &qword_1EE04CF58, 0x1E6995548);
      v21 = v19;
      v22 = sub_1CFC9F898();

      [v10 setBoundarySupplementaryItems_];

      [v10 setSupplementaryContentInsetsReference_];
      [v10 contentInsets];
      [v10 setContentInsets_];
    }
  }

  sub_1CFC9CD38();
  [v10 contentInsets];
  [v10 setContentInsets_];
  sub_1CFC9CD38();
  [v10 contentInsets];
  [v10 setContentInsets_];
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 6)
  {
    [v10 setInterGroupSpacing_];

    (*(v5 + 8))(v8, v28);
  }

  else
  {
    (*(v5 + 8))(v8, v28);
  }

  return v10;
}

uint64_t sub_1CFC11114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v54 = a2;
  v6 = sub_1CFC9DB68();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9DB78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for VoicemailsSectionController.Item(0);
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v9 + 16))(a4, v54, v8);
  }

  v27 = Strong;
  v52 = a4;
  v53 = v8;
  v28 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  v29 = *(v27 + v28);

  v43 = a1;
  v30 = sub_1CFC9C118();
  if ((v30 & 0x8000000000000000) != 0 || v30 >= *(v29 + 16))
  {

    a4 = v52;
    v8 = v53;
    return (*(v9 + 16))(a4, v54, v8);
  }

  v42 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v41 = *(v11 + 72);
  sub_1CFC09700(v29 + v42 + v41 * v30, v22, type metadata accessor for VoicemailsSectionController.Item);

  sub_1CFC18374(v22, v25, type metadata accessor for VoicemailsSectionController.Item);
  v31 = v51;
  (*(v9 + 16))(v51, v54, v53);
  if (!sub_1CFC9C0F8())
  {
    (*(v48 + 104))(v47, *MEMORY[0x1E69DC178], v49);
    sub_1CFC9DB38();
  }

  sub_1CFC09700(v25, v19, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1CFC16B30(v19, type metadata accessor for VoicemailsSectionController.Item);
  if (EnumCaseMultiPayload)
  {
    goto LABEL_18;
  }

  v33 = *(v27 + v28);

  result = sub_1CFC9C118();
  v35 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v36 = v46;
    if ((v35 & 0x8000000000000000) != 0 || v35 >= *(v33 + 16))
    {
    }

    else
    {
      v37 = v44;
      sub_1CFC09700(v33 + v42 + v35 * v41, v44, type metadata accessor for VoicemailsSectionController.Item);

      sub_1CFC18374(v37, v36, type metadata accessor for VoicemailsSectionController.Item);
      v38 = v45;
      sub_1CFC09700(v36, v45, type metadata accessor for VoicemailsSectionController.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v48 + 104))(v47, *MEMORY[0x1E69DC178], v49);
        sub_1CFC9DB48();
        v39 = v36;
      }

      else
      {
        sub_1CFC16B30(v36, type metadata accessor for VoicemailsSectionController.Item);
        v39 = v38;
      }

      sub_1CFC16B30(v39, type metadata accessor for VoicemailsSectionController.Item);
    }

LABEL_18:
    sub_1CFC18C50(v31, v25);

    sub_1CFC16B30(v25, type metadata accessor for VoicemailsSectionController.Item);
    return (*(v9 + 32))(v52, v31, v53);
  }

  __break(1u);
  return result;
}

id sub_1CFC116CC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for VoicemailsSectionController.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9C448();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = sub_1CFC9C118();
  v15 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items;
  swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = *&a2[v15];
  if (v14 >= *(v16 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    sub_1CFC9F8C8();
    goto LABEL_6;
  }

  v17 = a2;
  sub_1CFC09700(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, type metadata accessor for VoicemailsSectionController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFC16B30(v7, type metadata accessor for VoicemailsSectionController.Item);
    return 0;
  }

  v15 = v41;
  a2 = v42;
  v19 = *(v41 + 32);
  v20 = v7;
  v21 = v13;
  v19(v13, v20, v42);
  v49 = MEMORY[0x1E69E7CC0];
  v22 = swift_allocObject();
  v13 = v17;
  v2 = v21;
  swift_weakInit();
  (*(v15 + 16))(v10, v21, a2);
  v23 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v19((v24 + v23), v10, a2);
  v47 = sub_1CFC1863C;
  v48 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CFC1A29C;
  v46 = &block_descriptor_137;
  v25 = _Block_copy(&aBlock);
  v26 = objc_opt_self();

  v27 = [v26 contextualActionWithStyle:1 title:0 handler:v25];
  _Block_release(v25);

  v28 = objc_opt_self();
  v29 = sub_1CFC9F728();
  v30 = [v28 __systemImageNamedSwift_];

  [v27 setImage_];
  v47 = sub_1CFC11EB4;
  v48 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CFC1A370;
  v46 = &block_descriptor_140;
  v31 = _Block_copy(&aBlock);
  v32 = v27;
  [v32 setAccessibilityIdentifierBlock_];
  _Block_release(v31);

  v10 = v32;
  MEMORY[0x1D3871DC0]();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1CFC9F8F8();
  v33 = *&v13[OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_remindMeActionConfigurator];
  v34 = &v13[OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(*(v34 + 1) + 8);
  }

  else
  {
    v35 = 0;
  }

  v36 = v33 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  *(v36 + 8) = v35;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v37 = sub_1CFC1A858(v2);
  if (v37)
  {
    v38 = v37;
    MEMORY[0x1D3871DC0]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();
  }

  sub_1CFBA2D80(0, &qword_1EC4EE600, 0x1E69DC8E8);
  v39 = sub_1CFC9F898();

  v40 = [objc_opt_self() configurationWithActions_];

  (*(v15 + 8))(v2, a2);
  return v40;
}

void sub_1CFC11CE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
    v10 = sub_1CFC9C448();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CFCA1DD0;
    (*(v11 + 16))(v13 + v12, a6, v10);
    v14 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
    swift_beginAccess();

    v15 = sub_1CFC186D8((v9 + v14), v13);

    v16 = *(*(v9 + v14) + 16);
    if (v16 < v15)
    {
      __break(1u);
    }

    else
    {
      sub_1CFBCC85C(v15, v16);
      swift_endAccess();
      sub_1CFC9C888();

      sub_1CFC0F18C();
      a3(1);
    }
  }
}

uint64_t sub_1CFC11ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v51 = a2;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE508, &qword_1CFCA4648);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE510, &qword_1CFCA4650);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE518, &qword_1CFCA4658);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - v8;
  v9 = type metadata accessor for LegacyMailbox(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE520, &unk_1CFCA4660);
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v41 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = sub_1CFC9C448();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for VoicemailsSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFC09700(v51, v26, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE4E8, &qword_1CFCA4608) + 48));
      v30 = v43;
      sub_1CFC18374(v26, v43, type metadata accessor for LegacyMailbox);
      v31 = v45;
      sub_1CFC0C94C(v45);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678);
      v33 = *(v32 + 48);
      v34 = v50;
      sub_1CFC09700(v30, v50, type metadata accessor for LegacyMailbox);
      *(v34 + v33) = v29;
      (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
      sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
      v28 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v34, &qword_1EC4EE510, &qword_1CFCA4650);
      (*(v48 + 8))(v31, v49);
      sub_1CFC16B30(v30, type metadata accessor for LegacyMailbox);
    }

    else
    {
      v39 = v44;
      sub_1CFC0D0C0(v44);
      LOBYTE(v54) = 0;
      sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
      v28 = sub_1CFC9FBA8();
      (*(v46 + 8))(v39, v47);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v35 = *v26;
    v36 = *(v26 + 2);
    v37 = *(v26 + 1);
    sub_1CFC0BC48(v13);
    v38 = 0x10000;
    if (!v36)
    {
      v38 = 0;
    }

    v54 = v38 | v35;
    v55 = v37;
    sub_1CFBA2D80(0, &unk_1EE04CF68, 0x1E69DC868);
    v28 = sub_1CFC9FBA8();
    (*(v42 + 8))(v13, v11);
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    sub_1CFC0B0F4(v19);
    (*(v21 + 16))(v16, v23, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
    type metadata accessor for RecentsStyleListCell();
    v28 = sub_1CFC9FBA8();
    sub_1CFBC2FB0(v16, &qword_1EC4EE368, &unk_1CFCA4040);
    (*(v41 + 8))(v19, v17);
    (*(v21 + 8))(v23, v20);
  }

  return v28;
}

uint64_t sub_1CFC12624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  sub_1CFC0D56C(&v10 - v6);
  type metadata accessor for SectionHeaderView();
  v8 = sub_1CFC9FBB8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

id sub_1CFC12720(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v7 = type metadata accessor for LegacyMailbox(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_1CFC9C448();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for VoicemailsSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC09700(a1, v19, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v14 + 32))(v16, v19, v13);
      v21 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedCell;
      v22 = *(v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedCell);
      if (v22)
      {
        [v22 setSelected_];
      }

      [a2 setSelected_];
      v23 = *(v4 + v21);
      *(v4 + v21) = a2;
      v24 = a2;

      (*(v14 + 16))(v12, v16, v13);
      (*(v14 + 56))(v12, 0, 1, v13);
      v25 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedItem;
      swift_beginAccess();
      sub_1CFBA735C(v12, v4 + v25, &qword_1EC4EE368, &unk_1CFCA4040);
      swift_endAccess();
      v26 = objc_opt_self();
      v27 = [v26 shared];
      v28 = [v27 current];

      if (v28 || (v42 = sub_1CFC9C408()) == 0)
      {
        v29 = [v26 shared];
        v30 = [v29 tapRecentsToCall];

        if (v30)
        {
          sub_1CFC9C898();
          sub_1CFC12CAC(v45, v44);
          return (*(v14 + 8))(v16, v13);
        }
      }

      else
      {
      }

      sub_1CFC88EA4(v16);
      return (*(v14 + 8))(v16, v13);
    }

    v34 = v19[2];
    v35 = *(v19 + 1);
    v49 = *v19;
    v50 = v34;
    v51 = v35;
    sub_1CFC1308C(&v49);
    v36 = v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
    swift_beginAccess();
    if (*(v36 + 8) != 1)
    {
      return [a2 setSelected_];
    }

    v37 = 0;
    return v45(v37);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v38 = v4 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = *(v38 + 8);
      ObjectType = swift_getObjectType();
      (*(v39 + 40))(ObjectType, v39);
      swift_unknownObjectRelease();
    }

    [a2 setSelected_];
    v37 = 1;
    return v45(v37);
  }

  sub_1CFC18374(v19, v9, type metadata accessor for LegacyMailbox);
  v31 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v4 + v31, &v49, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (v52)
  {
    sub_1CFBB94B0(&v49, v46);
    sub_1CFBC2FB0(&v49, &qword_1EC4EE538, qword_1CFCA9BD0);
    v32 = v47;
    v33 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v33 + 56))(v9, v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    sub_1CFBC2FB0(&v49, &qword_1EC4EE538, qword_1CFCA9BD0);
  }

  [a2 setSelected_];
  v45(1);
  return sub_1CFC16B30(v9, type metadata accessor for LegacyMailbox);
}

uint64_t sub_1CFC12CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9F638();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9F658();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9F678();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v21 = sub_1CFC9FC28();
  sub_1CFC9F668();
  sub_1CFC9F688();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1CFC182D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_82;
  v18 = _Block_copy(aBlock);

  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBB7418(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0, MEMORY[0x1E69E6328]);
  sub_1CFC9FF58();
  v19 = v21;
  MEMORY[0x1D3872120](v16, v9, v6, v18);
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

void *sub_1CFC1308C(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = (v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode);
  swift_beginAccess();
  v5 = v4[8];
  if (v5 == 1)
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v25 = v4;
      v26 = MEMORY[0x1E69E7CC0];
      v9 = *v4;

      sub_1CFBCA9C8(0, v7, 0);
      v8 = v26;
      v10 = v3 ^ 1;
      v24 = v9;
      v11 = (v9 + 34);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = sub_1CFC9D758();
        if (v14 == sub_1CFC9D758())
        {
          v15 = v10;
        }

        else
        {
          v15 = v13;
        }

        v17 = *(v26 + 16);
        v16 = *(v26 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1CFBCA9C8((v16 > 1), v17 + 1, 1);
        }

        *(v26 + 16) = v17 + 1;
        v18 = v26 + 16 * v17;
        *(v18 + 32) = v12;
        *(v18 + 34) = v15 & 1;
        *(v18 + 40) = 0;
        v11 += 16;
        --v7;
      }

      while (v7);
      sub_1CFC0DC38(v24, 1);
      v4 = v25;
      v6 = *v25;
      v23 = v25[8];
      LOBYTE(v5) = 1;
    }

    else
    {
      v23 = 1;
    }

    *v4 = v8;
    v4[8] = v5;
    sub_1CFC0DC38(v6, v23);
    return sub_1CFC0F18C();
  }

  else
  {
    v19 = v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 24))(v2, ObjectType, v21);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1CFC13254(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1CFC9C448();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v22 = *(v1 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
  v9 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails;
  swift_beginAccess();
  v10 = *(*(v1 + v9) + 16);

  v29 = v10;
  if (v10)
  {
    v12 = 0;
    v24 = (v4 + 32);
    v26 = (v4 + 8);
    v27 = v4 + 16;
    v13 = MEMORY[0x1E69E7CC0];
    v23 = v2;
    v28 = result;
    while (v12 < *(result + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      (*(v4 + 16))(v8, result + v14 + v15 * v12, v3);
      v16 = sub_1CFC9C408();
      if (v16 && (v17 = v16, sub_1CFC9D5B8(), v17, LODWORD(v17) = sub_1CFC9D758(), v17 == sub_1CFC9D758()))
      {
        v18 = *v24;
        (*v24)(v25, v8, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFBB22BC(0, *(v13 + 16) + 1, 1);
          v13 = v30;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1CFBB22BC((v20 > 1), v21 + 1, 1);
          v13 = v30;
        }

        *(v13 + 16) = v21 + 1;
        v18((v13 + v14 + v21 * v15), v25, v3);
      }

      else
      {
        (*v26)(v8, v3);
      }

      ++v12;
      result = v28;
      if (v29 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_1CFC9C888();
  }

  return result;
}

void sub_1CFC13528(__int16 a1)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v4 = [v2 &:ObjCClassFromMetadata OBJC:0xE000000000000000 LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  sub_1CFC9BE28();

  v5 = sub_1CFC9F728();

  v6 = sub_1CFC9F728();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{0, 0xE000000000000000}];

  v8 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = sub_1CFC9F728();

  aBlock[4] = sub_1CFC181A0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:2 handler:{v12, 0xE000000000000000}];
  _Block_release(v12);

  v15 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v16 = sub_1CFC9F728();

  v17 = [v13 actionWithTitle:v16 style:1 handler:{0, 0xE000000000000000}];

  [v7 addAction_];
  [v7 addAction_];
  v18 = v22 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v19 + 48))(v7, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1CFC139A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC13254(a3);
  }

  return result;
}

uint64_t VoicemailsSectionController.deinit()
{
  sub_1CFBA79B8(v0 + 24);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___cellRegistration, &qword_1EC4EE540, &qword_1CFCA4690);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___mailboxCellRegistration, &qword_1EC4EE548, &qword_1CFCA4698);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___legacyCellRegistration, &qword_1EC4EE550, &qword_1CFCA46A0);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___accountProvisioningCellRegistration, &qword_1EC4EE558, &unk_1CFCA46A8);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___headerRegistration, &qword_1EC4EE038, &qword_1CFCA3AE0);
  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFC0DC38(*(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode), *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode + 8));

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedItem, &qword_1EC4EE368, &unk_1CFCA4040);

  return v0;
}

uint64_t VoicemailsSectionController.__deallocating_deinit()
{
  VoicemailsSectionController.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1CFC13C20(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC19124;
}

void sub_1CFC13CB4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t (*sub_1CFC13D3C(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1CFC09D00(v2);
  return sub_1CFC13DAC;
}

void sub_1CFC13DAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t VoicemailsSectionController.contextMenu(for:at:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VoicemailsSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9C448();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC09700(a1, v6, type metadata accessor for VoicemailsSectionController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFC16B30(v6, type metadata accessor for VoicemailsSectionController.Item);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1CFC9C828();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_allocWithZone(type metadata accessor for ContactActionsController(0));
    v15 = sub_1CFC9619C(v12, v13);
    v16 = *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_contactActionsController);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_contactActionsController) = v15;
    v17 = v15;

    v18 = sub_1CFC96E60();
    if (v18)
    {
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CFCA2540;
      v21 = v20;
      *(v20 + 32) = v19;
    }

    else
    {

      v21 = 0;
    }

    (*(v8 + 8))(v10, v7);
    return v21;
  }
}

uint64_t sub_1CFC140F0(unsigned __int16 a1)
{
  if (a1 == 2)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    if (a1 > 1u)
    {
      return 0;
    }

    type metadata accessor for BundleClass();
    v1 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
  }

  v4 = sub_1CFC9BE28();

  return v4;
}

uint64_t sub_1CFC14290(uint64_t a1)
{
  v2 = sub_1CFC9DE68();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1CFC9E338();
}

uint64_t sub_1CFC14358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1CFC14388(void *a1)
{
  v2 = *(sub_1CFC9C448() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFBA5EC4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CFC14430(v5);
  *a1 = v3;
}

void sub_1CFC14430(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CFCA0278();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CFC9C448();
        v6 = sub_1CFC9F8E8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1CFC9C448() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CFC14938(v8, v9, a1, v4);
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
    sub_1CFC1455C(0, v2, 1, a1);
  }
}

void sub_1CFC1455C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v42 - v12;
  v13 = sub_1CFC9C448();
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v42 - v16;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v18;
  v44 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v56 = *(v19 + 16);
    v57 = v19 + 16;
    v23 = *(v19 + 72);
    v53 = (v19 + 8);
    v54 = &v42 - v18;
    v24 = (v22 + v23 * (a3 - 1));
    v49 = -v23;
    v50 = (v19 + 32);
    v25 = a1 - a3;
    v51 = v22;
    v43 = v23;
    v26 = v22 + v23 * a3;
    v55 = v13;
LABEL_5:
    v47 = v24;
    v48 = a3;
    v45 = v26;
    v46 = v25;
    while (1)
    {
      v59 = v25;
      v27 = v56;
      (v56)(v21, v26, v13, v20);
      v28 = v58;
      v27(v58, v24, v13);
      v29 = v60;
      sub_1CFC9C3A8();
      v30 = v28;
      v31 = sub_1CFC9BFB8();
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      if (v33(v29, 1, v31) == 1)
      {
        break;
      }

      sub_1CFC9C3A8();
      if (v33(v10, 1, v31) == 1)
      {
        goto LABEL_14;
      }

      v34 = v60;
      v35 = sub_1CFC9BF78();
      v36 = *(v32 + 8);
      v36(v10, v31);
      v36(v34, v31);
      v37 = *v53;
      v13 = v55;
      (*v53)(v30, v55);
      v21 = v54;
      v37(v54, v13);
      v38 = v59;
      if (v35)
      {
        if (!v51)
        {
          goto LABEL_15;
        }

        v39 = *v50;
        v40 = v52;
        (*v50)(v52, v26, v13);
        swift_arrayInitWithTakeFrontToBack();
        v39(v24, v40, v13);
        v24 += v49;
        v26 += v49;
        v41 = __CFADD__(v38, 1);
        v25 = v38 + 1;
        if (!v41)
        {
          continue;
        }
      }

      a3 = v48 + 1;
      v24 = &v47[v43];
      v25 = v46 - 1;
      v26 = v45 + v43;
      if (v48 + 1 == v44)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1CFC14938(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v182 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v189 = &v155 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v155 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v155 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v155 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v155 - v21;
  v186 = sub_1CFC9C448();
  v23 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v169 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v180 = &v155 - v26;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v188 = &v155 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v159 = &v155 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v175 = &v155 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v163 = &v155 - v39;
  v40 = a3[1];
  if (v40 >= 1)
  {
    v161 = a4;
    v157 = v37;
    v155 = v36;
    v158 = v22;
    v156 = v19;
    v41 = 0;
    v184 = (v23 + 8);
    v185 = v23 + 16;
    v183 = (v23 + 32);
    v42 = MEMORY[0x1E69E7CC0];
    v166 = a3;
    v170 = v14;
    v160 = v23;
    while (1)
    {
      v43 = v41;
      v167 = v42;
      if (v41 + 1 >= v40)
      {
        v71 = v41 + 1;
      }

      else
      {
        v177 = v40;
        v162 = v5;
        v44 = *a3;
        v45 = *(v23 + 72);
        v14 = &v44[v45 * (v41 + 1)];
        v46 = *(v23 + 16);
        v47 = v186;
        v46(v163, v14, v186, v38);
        v165 = v41;
        v187 = v45;
        v168 = v44;
        v48 = &v44[v45 * v41];
        v49 = v157;
        v179 = v46;
        (v46)(v157, v48, v47);
        v50 = v158;
        sub_1CFC9C3A8();
        v51 = sub_1CFC9BFB8();
        v52 = *(v51 - 8);
        v53 = *(v52 + 48);
        if (v53(v50, 1, v51) == 1)
        {
          goto LABEL_145;
        }

        v54 = v156;
        sub_1CFC9C3A8();
        v178 = v52 + 48;
        v174 = v53;
        v55 = v53(v54, 1, v51);
        v56 = v159;
        if (v55 == 1)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        LODWORD(v181) = sub_1CFC9BF78();
        v57 = *(v52 + 8);
        v57(v54, v51);
        v172 = v57;
        v173 = v52 + 8;
        v57(v50, v51);
        v58 = *v184;
        v59 = v186;
        (*v184)(v49, v186);
        v171 = v58;
        (v58)(v163, v59);
        v60 = (v165 + 2);
        v61 = v168 + v187 * (v165 + 2);
        while (v177 != v60)
        {
          v62 = v179;
          v179(v175, v61, v59);
          v62(v56, v14, v59);
          v63 = v174;
          v64 = v176;
          sub_1CFC9C3A8();
          if (v63(v64, 1, v51) == 1)
          {
            goto LABEL_140;
          }

          v65 = v170;
          sub_1CFC9C3A8();
          if (v63(v65, 1, v51) == 1)
          {
            goto LABEL_139;
          }

          v66 = v56;
          v67 = v176;
          v68 = sub_1CFC9BF78() & 1;
          v69 = v172;
          (v172)(v65, v51);
          v69(v67, v51);
          v59 = v186;
          v70 = v171;
          (v171)(v66, v186);
          (v70)(v175, v59);
          ++v60;
          v61 += v187;
          v14 += v187;
          v56 = v66;
          if ((v181 & 1) != v68)
          {
            v71 = (v60 - 1);
            goto LABEL_15;
          }
        }

        v71 = v177;
LABEL_15:
        v5 = v162;
        a3 = v166;
        v23 = v160;
        v42 = v167;
        v43 = v165;
        if (v181)
        {
          if (v71 < v165)
          {
            goto LABEL_132;
          }

          if (v165 < v71)
          {
            v72 = v187 * (v71 - 1);
            v73 = v71 * v187;
            v177 = v71;
            v74 = v165;
            v75 = v165 * v187;
            do
            {
              if (v74 != --v71)
              {
                v76 = *a3;
                if (!v76)
                {
                  goto LABEL_142;
                }

                v14 = &v76[v75];
                v77 = *v183;
                (*v183)(v169, &v76[v75], v59);
                if (v75 < v72 || v14 >= &v76[v73])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v75 != v72)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v77(&v76[v72], v169, v59);
                a3 = v166;
                v42 = v167;
              }

              ++v74;
              v72 -= v187;
              v73 -= v187;
              v75 += v187;
            }

            while (v74 < v71);
            v5 = v162;
            v23 = v160;
            v78 = v161;
            v43 = v165;
            v71 = v177;
            goto LABEL_29;
          }
        }
      }

      v78 = v161;
LABEL_29:
      v79 = a3[1];
      if (v71 >= v79)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v71, v43))
      {
        goto LABEL_131;
      }

      if (v71 - v43 >= v78)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v43, v78))
      {
        goto LABEL_133;
      }

      if (v43 + v78 >= v79)
      {
        v14 = a3[1];
      }

      else
      {
        v14 = v43 + v78;
      }

      if (v14 < v43)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        v42 = sub_1CFC7E7DC(v42);
LABEL_105:
        v190 = v42;
        v151 = *(v42 + 2);
        if (v151 >= 2)
        {
          while (*a3)
          {
            v152 = *&v42[16 * v151];
            v153 = *&v42[16 * v151 + 24];
            sub_1CFC157A0((*a3 + *(v23 + 72) * v152), (*a3 + *(v23 + 72) * *&v42[16 * v151 + 16]), *a3 + *(v23 + 72) * v153, v14);
            if (v5)
            {
              goto LABEL_113;
            }

            if (v153 < v152)
            {
              goto LABEL_128;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_1CFC7E7DC(v42);
            }

            if (v151 - 2 >= *(v42 + 2))
            {
              goto LABEL_129;
            }

            v154 = &v42[16 * v151];
            *v154 = v152;
            *(v154 + 1) = v153;
            v190 = v42;
            sub_1CFBB26AC(v151 - 1);
            v42 = v190;
            v151 = *(v190 + 2);
            if (v151 <= 1)
            {
              goto LABEL_113;
            }
          }

          goto LABEL_143;
        }

LABEL_113:

        return;
      }

      if (v71 == v14)
      {
LABEL_38:
        v14 = v71;
        if (v71 < v43)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v162 = v5;
        v127 = *a3;
        v128 = *(v23 + 72);
        v181 = *(v23 + 16);
        v129 = &v127[v128 * (v71 - 1)];
        v178 = -v128;
        v165 = v43;
        v130 = v43 - v71;
        v177 = v71;
        v179 = v127;
        v168 = v128;
        v131 = &v127[v71 * v128];
        v132 = v186;
        v133 = v155;
        v171 = v14;
        do
        {
          v172 = v131;
          v173 = v130;
          v134 = v131;
          v135 = v130;
          v174 = v129;
          do
          {
            v187 = v135;
            v136 = v181;
            (v181)(v188, v134, v132, v38);
            v136(v133, v129, v132);
            v137 = v133;
            v138 = v189;
            sub_1CFC9C3A8();
            v139 = sub_1CFC9BFB8();
            v140 = *(v139 - 8);
            v141 = *(v140 + 48);
            if (v141(v138, 1, v139) == 1)
            {
              goto LABEL_137;
            }

            v142 = v182;
            sub_1CFC9C3A8();
            if (v141(v142, 1, v139) == 1)
            {
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v143 = v189;
            v144 = sub_1CFC9BF78();
            v145 = *(v140 + 8);
            v145(v142, v139);
            v145(v143, v139);
            v146 = *v184;
            v132 = v186;
            (*v184)(v137, v186);
            v146(v188, v132);
            v133 = v137;
            if ((v144 & 1) == 0)
            {
              break;
            }

            v147 = v187;
            if (!v179)
            {
              goto LABEL_138;
            }

            v148 = *v183;
            v149 = v180;
            (*v183)(v180, v134, v132);
            swift_arrayInitWithTakeFrontToBack();
            v148(v129, v149, v132);
            v129 += v178;
            v134 += v178;
            v150 = __CFADD__(v147, 1);
            v135 = v147 + 1;
          }

          while (!v150);
          v129 = &v174[v168];
          v130 = v173 - 1;
          v14 = v171;
          v131 = &v172[v168];
          ++v177;
        }

        while (v177 != v171);
        v5 = v162;
        a3 = v166;
        v23 = v160;
        v42 = v167;
        v43 = v165;
        if (v171 < v165)
        {
          goto LABEL_130;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1CFBB2454(0, *(v42 + 2) + 1, 1, v42);
      }

      v14 = *(v42 + 2);
      v81 = *(v42 + 3);
      v82 = v14 + 1;
      if (v14 >= v81 >> 1)
      {
        v42 = sub_1CFBB2454((v81 > 1), v14 + 1, 1, v42);
      }

      *(v42 + 2) = v82;
      v83 = &v42[16 * v14];
      v84 = v171;
      *(v83 + 4) = v43;
      *(v83 + 5) = v84;
      if (!*v164)
      {
        goto LABEL_144;
      }

      if (v14)
      {
        v85 = *v164;
        while (1)
        {
          v14 = v82 - 1;
          if (v82 >= 4)
          {
            break;
          }

          if (v82 == 3)
          {
            v86 = *(v42 + 4);
            v87 = *(v42 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_59:
            if (v89)
            {
              goto LABEL_119;
            }

            v102 = &v42[16 * v82];
            v104 = *v102;
            v103 = *(v102 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_122;
            }

            v108 = &v42[16 * v14 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_126;
            }

            if (v106 + v111 >= v88)
            {
              if (v88 < v111)
              {
                v14 = v82 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v112 = &v42[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_73:
          if (v107)
          {
            goto LABEL_121;
          }

          v115 = &v42[16 * v14];
          v117 = *(v115 + 4);
          v116 = *(v115 + 5);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_124;
          }

          if (v118 < v106)
          {
            goto LABEL_3;
          }

LABEL_80:
          v123 = v14 - 1;
          if (v14 - 1 >= v82)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
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
            goto LABEL_134;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v124 = *&v42[16 * v123 + 32];
          v125 = *&v42[16 * v14 + 40];
          sub_1CFC157A0((*a3 + *(v23 + 72) * v124), (*a3 + *(v23 + 72) * *&v42[16 * v14 + 32]), *a3 + *(v23 + 72) * v125, v85);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v125 < v124)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1CFC7E7DC(v42);
          }

          if (v123 >= *(v42 + 2))
          {
            goto LABEL_116;
          }

          v126 = &v42[16 * v123];
          *(v126 + 4) = v124;
          *(v126 + 5) = v125;
          v190 = v42;
          sub_1CFBB26AC(v14);
          v42 = v190;
          v82 = *(v190 + 2);
          if (v82 <= 1)
          {
            goto LABEL_3;
          }
        }

        v90 = &v42[16 * v82 + 32];
        v91 = *(v90 - 64);
        v92 = *(v90 - 56);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_117;
        }

        v95 = *(v90 - 48);
        v94 = *(v90 - 40);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_118;
        }

        v97 = &v42[16 * v82];
        v99 = *v97;
        v98 = *(v97 + 1);
        v96 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v96)
        {
          goto LABEL_120;
        }

        v96 = __OFADD__(v88, v100);
        v101 = v88 + v100;
        if (v96)
        {
          goto LABEL_123;
        }

        if (v101 >= v93)
        {
          v119 = &v42[16 * v14 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v96 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v96)
          {
            goto LABEL_127;
          }

          if (v88 < v122)
          {
            v14 = v82 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

LABEL_3:
      v40 = a3[1];
      v41 = v171;
      if (v171 >= v40)
      {
        goto LABEL_103;
      }
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_103:
  v14 = *v164;
  if (*v164)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_105;
  }

LABEL_147:
  __break(1u);
}

void sub_1CFC157A0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - v16;
  v90 = sub_1CFC9C448();
  v17 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v76 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_66;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v29 = (a2 - a1) / v27;
    v93 = a1;
    v92 = a4;
    if (v29 >= v28 / v27)
    {
      v84 = v10;
      v31 = v28 / v27 * v27;
      if (a4 < a2 || &a2[v31] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      if (v31 < 1)
      {
        v57 = &a4[v31];
      }

      else
      {
        v79 = (v17 + 8);
        v80 = (v17 + 16);
        v55 = -v27;
        v56 = &a4[v31];
        v57 = &a4[v31];
        v89 = a1;
        v77 = -v27;
        v78 = a4;
        do
        {
          v76 = v57;
          v58 = a2;
          a2 += v55;
          v82 = v58;
          v83 = a2;
          while (1)
          {
            if (v58 <= a1)
            {
              v93 = v58;
              v91 = v76;
              goto LABEL_64;
            }

            v59 = a3;
            v81 = v57;
            v60 = *v80;
            v87 = &v56[v55];
            v88 = v56;
            v61 = v90;
            v60(v85);
            (v60)(v19, a2, v61);
            v62 = v86;
            sub_1CFC9C3A8();
            v63 = v19;
            v64 = sub_1CFC9BFB8();
            v65 = *(v64 - 8);
            v66 = *(v65 + 48);
            if (v66(v62, 1, v64) == 1)
            {
              goto LABEL_70;
            }

            v67 = v84;
            sub_1CFC9C3A8();
            if (v66(v67, 1, v64) == 1)
            {
              goto LABEL_71;
            }

            v68 = v59 + v55;
            v69 = v86;
            v70 = sub_1CFC9BF78();
            v71 = *(v65 + 8);
            v71(v67, v64);
            v71(v69, v64);
            v72 = *v79;
            v73 = v90;
            (*v79)(v63, v90);
            v72(v85, v73);
            a2 = v83;
            v74 = v78;
            v19 = v63;
            if (v70)
            {
              break;
            }

            v75 = v87;
            v57 = v87;
            a1 = v89;
            a3 = v68;
            if (v59 < v88 || v68 >= v88)
            {
              swift_arrayInitWithTakeFrontToBack();
              v55 = v77;
            }

            else
            {
              v55 = v77;
              if (v59 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v56 = v57;
            v58 = v82;
            if (v75 <= v74)
            {
              a2 = v82;
              goto LABEL_63;
            }
          }

          a1 = v89;
          a3 = v68;
          if (v59 < v82 || v68 >= v82)
          {
            swift_arrayInitWithTakeFrontToBack();
            v57 = v81;
            v55 = v77;
          }

          else
          {
            v57 = v81;
            v55 = v77;
            if (v59 != v82)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v56 = v88;
        }

        while (v88 > v74);
      }

LABEL_63:
      v93 = a2;
      v91 = v57;
    }

    else
    {
      v30 = v29 * v27;
      v83 = v24;
      if (a4 < a1 || &a1[v30] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = &a4[v30];
      v91 = &a4[v30];
      if (v30 >= 1 && a2 < a3)
      {
        v33 = *(v17 + 16);
        v81 = a3;
        v82 = v33;
        v85 = (v17 + 16);
        v79 = (v17 + 8);
        v80 = v27;
        do
        {
          v89 = a1;
          v34 = a2;
          v35 = v90;
          v36 = v82;
          (v82)(v87, a2, v90);
          v37 = v83;
          (v36)(v83, a4, v35);
          v38 = v88;
          sub_1CFC9C3A8();
          v39 = sub_1CFC9BFB8();
          v40 = *(v39 - 8);
          v41 = *(v40 + 48);
          if (v41(v38, 1, v39) == 1)
          {
            goto LABEL_68;
          }

          v42 = v84;
          sub_1CFC9C3A8();
          v43 = v42;
          if (v41(v42, 1, v39) == 1)
          {
            goto LABEL_69;
          }

          v44 = v88;
          v45 = sub_1CFC9BF78();
          v46 = v43;
          v47 = v45;
          v48 = *(v40 + 8);
          v48(v46, v39);
          v48(v44, v39);
          v49 = *v79;
          v50 = v90;
          (*v79)(v37, v90);
          v49(v87, v50);
          a2 = v34;
          v51 = v89;
          if (v47)
          {
            v53 = v80;
            v52 = v81;
            if (v89 < a2 || v89 >= (v80 + a2))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v89 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v53 + a2;
          }

          else
          {
            v53 = v80;
            v52 = v81;
            v54 = v80 + a4;
            if (v89 < a4 || v89 >= v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v89 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v92 = v54;
            a4 = v53 + a4;
          }

          a1 = v53 + v51;
          v93 = a1;
        }

        while (a4 < v86 && a2 < v52);
      }
    }

LABEL_64:
    sub_1CFBB25C8(&v93, &v92, &v91);
    return;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t sub_1CFC15FE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CFC9FFD8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CFC9FFD8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CFBA57C0(&qword_1EC4EE630, &qword_1EC4EE628, &qword_1CFCA4B08, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE628, &qword_1CFCA4B08);
            v9 = sub_1CFC16350(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CFBA2D80(0, &qword_1EE04FF78, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC1619C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CFC9FFD8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CFC9FFD8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CFBA57C0(&qword_1EC4EE5A0, &qword_1EC4EE598, &unk_1CFCA4970, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE598, &unk_1CFCA4970);
            v9 = sub_1CFC163D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1CFC16350(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3872640](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CFC19114;
  }

  __break(1u);
  return result;
}

void (*sub_1CFC163D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3872640](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CFC16450;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC16458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE608, &qword_1CFCA4AC8);
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE610, &qword_1CFCA4AD8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v37 = *(v0 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
  v41[0] = sub_1CFC9C848();
  v10 = sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v11 = sub_1CFC9FC28();
  v40 = v11;
  v12 = sub_1CFC9FBF8();
  v13 = *(v12 - 8);
  v29 = *(v13 + 56);
  v30 = v12;
  v28[1] = v13 + 56;
  v29(v5, 1, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE618, &unk_1CFCA4AE0);
  sub_1CFBA57C0(&qword_1EE04D5C8, &qword_1EC4EE618, &unk_1CFCA4AE0, MEMORY[0x1E695BED8]);
  v31 = sub_1CFC18FBC();
  v32 = v10;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v5, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  v14 = v36;
  swift_weakInit();
  sub_1CFBA57C0(&qword_1EE04D5E0, &qword_1EC4EE610, &qword_1CFCA4AD8, MEMORY[0x1E695BE98]);
  sub_1CFC9DD68();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  v15 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v14 + v15, v41, &qword_1EC4EE538, qword_1CFCA9BD0);
  v16 = v42;
  if (v42)
  {
    v17 = v43;
    v18 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v19 = *(v16 - 8);
    v20 = MEMORY[0x1EEE9AC00](v18);
    v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    sub_1CFBC2FB0(v41, &qword_1EC4EE538, qword_1CFCA9BD0);
    v23 = (*(v17 + 8))(v16, v17);
    (*(v19 + 8))(v22, v16);
    v39 = v23;
    v24 = sub_1CFC9FC28();
    v38 = v24;
    (v29)(v5, 1, 1, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF890, &unk_1CFCA8270);
    sub_1CFBA57C0(&qword_1EC4EFD80, &qword_1EC4EF890, &unk_1CFCA8270, MEMORY[0x1E695BF88]);
    v25 = v33;
    sub_1CFC9DD88();
    sub_1CFBC2FB0(v5, &qword_1EC4EF860, &qword_1CFCA4AD0);

    swift_allocObject();
    swift_weakInit();
    sub_1CFBA57C0(&qword_1EC4EE620, &qword_1EC4EE608, &qword_1CFCA4AC8, MEMORY[0x1E695BE98]);
    v26 = v35;
    sub_1CFC9DD68();

    (*(v34 + 8))(v25, v26);
    swift_beginAccess();
    sub_1CFC9DC88();
    swift_endAccess();
  }

  else
  {
    sub_1CFBC2FB0(v41, &qword_1EC4EE538, qword_1CFCA9BD0);
  }

  sub_1CFC9C8B8();
  return sub_1CFC9C8C8();
}

uint64_t sub_1CFC16B30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFC16B90(uint64_t a1, uint64_t a2)
{
  v37 = sub_1CFC9C448();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = v28 - v12;
  v13 = *(a1 + 16);
  v14 = v13 == 0;
  v33 = v13;
  if (!v13)
  {
    return 0;
  }

  v28[1] = v2;
  v15 = 0;
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = a1 + v16;
  v17 = *(v5 + 72);
  v39 = (v5 + 16);
  v40 = v17;
  v29 = a2 + v16;
  v30 = a2;
  while (1)
  {
    v31 = v14;
    v18 = *(a2 + 16);
    if (v18)
    {
      v35 = v15;
      v41 = MEMORY[0x1E69E7CC0];
      sub_1CFBCA9E8(0, v18, 0);
      v19 = v41;
      v38 = *v39;
      v20 = v29;
      do
      {
        v21 = v37;
        v38(v7, v20, v37);
        sub_1CFC9C338();
        (*(v5 + 8))(v7, v21);
        v41 = v19;
        v22 = v10;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1CFBCA9E8((v23 > 1), v24 + 1, 1);
          v19 = v41;
        }

        *(v19 + 16) = v24 + 1;
        sub_1CFBCCE88(v22, v19 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v24, &qword_1EC4ED570, &unk_1CFCA2470);
        v20 += v40;
        --v18;
        v10 = v22;
      }

      while (v18);
      a2 = v30;
      v15 = v35;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v25 = v34;
    sub_1CFC9C338();
    v26 = sub_1CFC1D394(v25, v19);

    sub_1CFBC2FB0(v25, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v26)
    {
      break;
    }

    v14 = ++v15 == v33;
    if (v15 == v33)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t sub_1CFC16EEC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = *a4;
  v14 = *(a4 + 8);
  *(v5 + 16) = 1;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  type metadata accessor for RecentsEditMode(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  sub_1CFC9C188();
  *(v5 + 48) = v15;
  *(v5 + 56) = 0;
  v16 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___cellRegistration;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___mailboxCellRegistration;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE520, &unk_1CFCA4660);
  (*(*(v19 - 8) + 56))(v5 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___legacyCellRegistration;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE518, &qword_1CFCA4658);
  (*(*(v21 - 8) + 56))(v5 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___accountProvisioningCellRegistration;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE508, &qword_1CFCA4648);
  (*(*(v23 - 8) + 56))(v5 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController____lazy_storage___headerRegistration;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  (*(*(v25 - 8) + 56))(v5 + v24, 1, 1, v25);
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_contactActionsController) = 0;
  v26 = v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxService;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_cancellables) = MEMORY[0x1E69E7CD0];
  v27 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_legacyMailboxes) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_voicemails) = v27;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_items) = v27;
  v28 = OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedItem;
  v29 = sub_1CFC9C448();
  (*(*(v29 - 8) + 56))(v5 + v28, 1, 1, v29);
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_selectedCell) = 0;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource) = a1;
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_detailsPresenter) = a2;
  v30 = v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  *v30 = v13;
  *(v30 + 8) = v14;
  swift_beginAccess();
  a1;

  sub_1CFC181AC(a3, v26);
  swift_endAccess();
  v31 = sub_1CFC9C878();
  type metadata accessor for RecentsRemindMeActionConfigurator(0);
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_remindMeActionConfigurator) = RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(v31);
  sub_1CFC0EA70();
  v32 = sub_1CFC9F998();
  (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
  sub_1CFC9F968();

  v33 = sub_1CFC9F958();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v5;
  sub_1CFBDC030(0, 0, v12, &unk_1CFCA4968, v34);

  sub_1CFBC2FB0(a3, &qword_1EC4EE538, qword_1CFCA9BD0);
  return v5;
}

id _s10CallsAppUI27VoicemailsSectionControllerC21dragPreviewParameters4cellSo06UIDraghI0CSgSo20UICollectionViewCellC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v10 = MEMORY[0x1E69E63B0];
  LOBYTE(v8) = 2;
  sub_1CFC9CD28();
  v3 = v2;
  [a1 bounds];
  v4 = CGRectGetWidth(v13) - v12;
  [a1 bounds];
  Height = CGRectGetHeight(v14);
  v11 = MEMORY[0x1E69E7DE0];
  LOBYTE(v9) = 2;
  sub_1CFC9CD28();
  v6 = [objc_opt_self() bezierPathWithRoundedRect:v12 cornerRadius:{0.0, v4, Height, v12, sub_1CFBCCF10, 0, sub_1CFBCCF10, 0, sub_1CFBCCF10, 0, v9, v11}];
  [v3 setVisiblePath_];

  return v3;
}

uint64_t sub_1CFC17624(uint64_t a1)
{
  result = sub_1CFBB7418(&qword_1EC4EE560, type metadata accessor for VoicemailsSectionController.Item, &protocol conformance descriptor for VoicemailsSectionController.Item);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFC17680()
{
  result = qword_1EC4EE568;
  if (!qword_1EC4EE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE568);
  }

  return result;
}

uint64_t sub_1CFC1771C(uint64_t a1)
{
  result = sub_1CFBB7418(&qword_1EC4EFAC0, type metadata accessor for VoicemailsSectionController, &protocol conformance descriptor for VoicemailsSectionController);
  *(a1 + 8) = result;
  return result;
}

void sub_1CFC1779C(uint64_t a1)
{
  sub_1CFC17E50(319, &qword_1EE04D0C0, &qword_1EC4EE528, &qword_1CFCA4670);
  if (v1 <= 0x3F)
  {
    sub_1CFC17E50(319, &qword_1EE04D0A0, &qword_1EC4EE520, &unk_1CFCA4660);
    if (v2 <= 0x3F)
    {
      sub_1CFC17E50(319, &qword_1EE04D0A8, &qword_1EC4EE518, &qword_1CFCA4658);
      if (v3 <= 0x3F)
      {
        sub_1CFC17E50(319, &qword_1EE04D098, &qword_1EC4EE508, &qword_1CFCA4648);
        if (v4 <= 0x3F)
        {
          sub_1CFC17E50(319, &qword_1EE04D078, &qword_1EC4EE018, &unk_1CFCA4680);
          if (v5 <= 0x3F)
          {
            sub_1CFC17EA4(319);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1CFC17E50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1CFC9FEB8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CFC17EA4(uint64_t a1)
{
  if (!qword_1EE04D6B8)
  {
    sub_1CFC9C448();
    v1 = sub_1CFC9FEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D6B8);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1CFC17F1C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1CFC17F64(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1CFC18014(uint64_t a1)
{
  sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    sub_1CFC18090(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFC18090(uint64_t a1)
{
  if (!qword_1EC4EE588)
  {
    type metadata accessor for LegacyMailbox(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC4EE588);
    }
  }
}

uint64_t getEnumTagSinglePayload for VoicemailsSectionController.MailboxItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailsSectionController.MailboxItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CFC181AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC1821C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CFBD431C;

  return sub_1CFC0DF48();
}

uint64_t sub_1CFC18374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC183DC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1CFC9C448() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1CFC0BA94(v4, v5, a1);
}

uint64_t sub_1CFC1845C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 18))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_1CFC0C724(v2 | *(v1 + 16), *(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_1CFC18480()
{
  result = qword_1EC4EE5B8;
  if (!qword_1EC4EE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE5B8);
  }

  return result;
}

uint64_t sub_1CFC184D4()
{
  if (*(v0 + 26))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_1CFC0C6C4(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_1CFC18508()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE530, &qword_1CFCA4678) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1CFC0D018(v0 + 16, v2);
}

uint64_t sub_1CFC18580@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  result = swift_weakInit();
  *a1 = sub_1CFC18634;
  a1[1] = v2;
  return result;
}

unint64_t sub_1CFC185E0()
{
  result = qword_1EC4EE5F0;
  if (!qword_1EC4EE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE5F0);
  }

  return result;
}

void sub_1CFC1863C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1CFC9C448() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_1CFC11CE8(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1CFC186D8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  v9 = sub_1CFC9C448();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v53 - v19;
  v21 = a1;
  v22 = *a1;
  v23 = v74;
  result = sub_1CFC16B90(v22, a2);
  if (v23)
  {
    return v22;
  }

  v61 = a2;
  v26 = v22;
  v65 = v20;
  v59 = v14;
  v57 = v11;
  if (v25)
  {
    return *(v22 + 16);
  }

  v54 = v21;
  v27 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = result;
    v28 = v26;
    v53[1] = 0;
    v29 = v62;
    v73 = v62 + 16;
    v71 = (v62 + 8);
    v55 = v9;
    v56 = (v62 + 40);
    v30 = v65;
    v60 = v8;
    while (1)
    {
      v33 = v28[2];
      if (v27 == v33)
      {
        return v22;
      }

      if (v27 >= v33)
      {
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
        break;
      }

      v34 = v8;
      v67 = v28;
      v68 = v22;
      v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v36 = *(v29 + 72);
      v69 = v27;
      v72 = v36;
      v37 = *(v29 + 16);
      v66 = v36 * v27;
      v64 = v28 + v35;
      v74 = v37;
      v37(v30, v28 + v35 + v36 * v27, v9);
      v38 = v61;
      v39 = *(v61 + 16);
      v63 = v35;
      if (v39)
      {
        v40 = v9;
        v75 = MEMORY[0x1E69E7CC0];
        sub_1CFBCA9E8(0, v39, 0);
        v41 = v74;
        v42 = v75;
        v43 = v38 + v35;
        v44 = v58;
        do
        {
          v41(v17, v43, v40);
          sub_1CFC9C338();
          (*v71)(v17, v40);
          v75 = v42;
          v46 = *(v42 + 16);
          v45 = *(v42 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_1CFBCA9E8((v45 > 1), v46 + 1, 1);
            v42 = v75;
          }

          *(v42 + 16) = v46 + 1;
          sub_1CFBCCE88(v44, v42 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v46, &qword_1EC4ED570, &unk_1CFCA2470);
          v43 += v72;
          --v39;
          v41 = v74;
        }

        while (v39);
        v8 = v60;
        v9 = v40;
        v29 = v62;
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
        v8 = v34;
      }

      v30 = v65;
      sub_1CFC9C338();
      v47 = sub_1CFC1D394(v8, v42);

      sub_1CFBC2FB0(v8, &qword_1EC4ED570, &unk_1CFCA2470);
      result = (*v71)(v30, v9);
      v22 = v68;
      if (v47)
      {
        v28 = v67;
        v31 = v69;
      }

      else
      {
        v31 = v69;
        result = v59;
        v28 = v67;
        if (v68 != v69)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v48 = v67[2];
          if (v68 >= v48)
          {
            goto LABEL_34;
          }

          v49 = v64;
          v72 *= v68;
          v50 = v74;
          result = (v74)(v59, &v64[v72], v9);
          if (v69 >= v48)
          {
            goto LABEL_35;
          }

          v50(v57, &v49[v66], v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1CFC829D4(v28);
          }

          v29 = v62;
          v51 = v28 + v63;
          v52 = *v56;
          v9 = v55;
          result = (*v56)(v28 + v63 + v72, v57, v55);
          v31 = v69;
          if (v69 >= v28[2])
          {
            goto LABEL_36;
          }

          result = v52(&v51[v66], v59, v9);
          *v54 = v28;
          v30 = v65;
          v8 = v60;
        }

        v32 = __OFADD__(v22++, 1);
        if (v32)
        {
          goto LABEL_32;
        }
      }

      v32 = __OFADD__(v31, 1);
      v27 = v31 + 1;
      if (v32)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC18C50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9DB68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VoicemailsSectionController.Item(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9CD28();
  sub_1CFC09700(a2, v9, type metadata accessor for VoicemailsSectionController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CFC16B30(v9, type metadata accessor for LegacyMailbox);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = MEMORY[0x1E69DC178];
    if (!v9[2])
    {
      v11 = MEMORY[0x1E69DC180];
    }

    (*(v4 + 104))(v6, *v11, v3);
    sub_1CFC9DB48();
  }

  else
  {
    sub_1CFC9CD28();
    sub_1CFC16B30(v9, type metadata accessor for VoicemailsSectionController.Item);
  }

  return sub_1CFC9DB58();
}

unint64_t sub_1CFC18FBC()
{
  result = qword_1EE04FF90;
  if (!qword_1EE04FF90)
  {
    sub_1CFBA2D80(255, &qword_1EE04FF80, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04FF90);
  }

  return result;
}

uint64_t sub_1CFC19034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC0E310(a1, v4, v5, v6);
}

id static CAUILayoutManager.shared.getter()
{
  if (qword_1EE04CFB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE04CFB8;

  return v1;
}

id static CAUILayoutManager.classicAvailable.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4 = [v3 phoneClassicEnabled];

  return v4;
}

void sub_1CFC19218(uint64_t a1)
{
  v2 = v1;
  sub_1CFBA2114();
  v5 = v4;
  v6 = [v2 current];
  v7 = sub_1CFC9F728();
  [v5 setInteger:v6 forKey:v7];

  v8 = OBJC_IVAR___CAUILayoutManager__current;
  if (*&v2[OBJC_IVAR___CAUILayoutManager__current] != a1)
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v9 = sub_1CFC9D938();
    __swift_project_value_buffer(v9, qword_1EE052308);
    v10 = v2;
    v11 = sub_1CFC9D918();
    v12 = sub_1CFC9FAF8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v24[0] = v14;
      *v13 = 136315138;
      *&v22 = *&v2[v8];
      type metadata accessor for CAUILayout(0);
      v15 = sub_1CFC9F798();
      v17 = sub_1CFBB531C(v15, v16, v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1CFB9F000, v11, v12, "Current CAUILayout changed to %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D3873280](v14, -1, -1);
      MEMORY[0x1D3873280](v13, -1, -1);
    }

    v18 = [*&v10[OBJC_IVAR___CAUILayoutManager_observers] objectEnumerator];
    if (v18)
    {
      v19 = v18;
      while (1)
      {
        if ([v19 nextObject])
        {
          sub_1CFC9FF18();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
        }

        v24[0] = v22;
        v24[1] = v23;
        if (!*(&v23 + 1))
        {

          sub_1CFBA235C(v24);
          return;
        }

        _s24LayoutUpdateRegistrationCMa();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v20 = *(v21 + 16);

        v20([v10 current]);
      }
    }
  }
}

uint64_t CAUILayoutManager.tapRecentsToCall.getter()
{
  if ([v0 current] == 1)
  {
    return v0[OBJC_IVAR___CAUILayoutManager__tapRecentsToCall];
  }

  else
  {
    return 1;
  }
}

id CAUILayoutManager.shouldShowTip.getter()
{
  sub_1CFBA2114();
  v1 = v0;
  v2 = sub_1CFC9F728();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();
    sub_1CFBA235C(v9);
    return 0;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_1CFBA235C(v9);
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      return 0;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      v8 = [v7 phoneClassicEnabled];

      return v8;
    }
  }
}

uint64_t sub_1CFC19644()
{

  return swift_deallocClassInstance();
}

uint64_t CAUILayoutManager.addObserver(_:onUpdate:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1CFCA02A8();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CFBA296C;
  v9[3] = &block_descriptor_8;
  v7 = _Block_copy(v9);

  [v3 addObserver:v6 initialUpdate:1 onUpdate:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t CAUILayoutManager.addObserver(_:initialUpdate:onUpdate:)(void *a1, char a2, uint64_t (*a3)(id), uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___CAUILayoutManager_observers];
  _s24LayoutUpdateRegistrationCMa();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v9;

  [v11 setObject:v10 forKey:sub_1CFCA02A8()];

  result = swift_unknownObjectRelease();
  if (a2)
  {
    return a3([v4 current]);
  }

  return result;
}

uint64_t CAUILayoutManager.removeObserver(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CAUILayoutManager_observers);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = v2;
  [v3 removeObjectForKey_];

  return swift_unknownObjectRelease();
}

unint64_t type metadata accessor for CAUILayoutManager()
{
  result = qword_1EC4EE668;
  if (!qword_1EC4EE668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4EE668);
  }

  return result;
}

uint64_t sub_1CFC19A44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CFC19A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1CFC19AF4@<D0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE678, &qword_1CFCA4C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_1CFC9BE28();
  v14 = v13;

  v25[0] = v12;
  v25[1] = v14;
  sub_1CFBB4460();
  v15 = sub_1CFC9EDF8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  *v9 = sub_1CFC9E588();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE680, &qword_1CFCA4C08);
  sub_1CFC19D2C(&v9[*(v22 + 44)]);
  sub_1CFC19FE0(v9, v6);
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE688, &unk_1CFCA4C10);
  sub_1CFC19FE0(v6, a3 + *(v23 + 48));
  sub_1CFBB45F4(v15, v17, v19 & 1);

  sub_1CFC1A050(v9);
  sub_1CFC1A050(v6);
  sub_1CFBB44C0(v15, v17, v19 & 1);

  return result;
}

uint64_t sub_1CFC19D2C@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF670, &qword_1CFCA3640);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_1CFC9BE28();
  v15 = v14;

  v21[0] = v13;
  v21[1] = v15;
  sub_1CFBB4460();

  sub_1CFC9F2C8();
  v16 = *(v5 + 16);
  v16(v7, v10, v4);
  *a3 = 0;
  *(a3 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE690, &qword_1CFCA4C20);
  v16((a3 + *(v17 + 48)), v7, v4);
  v18 = a3 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = *(v5 + 8);
  v19(v10, v4);
  return (v19)(v7, v4);
}

double sub_1CFC19F7C@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFC9E688();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE670, &qword_1CFCA4BF8);
  return sub_1CFC19AF4(a1 + *(v2 + 44));
}

uint64_t sub_1CFC19FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE678, &qword_1CFCA4C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC1A050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE678, &qword_1CFCA4C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFC1A0B8()
{
  result = qword_1EC4EE698;
  if (!qword_1EC4EE698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE6A0, &qword_1CFCA4C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE698);
  }

  return result;
}

void *sub_1CFC1A11C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_1CFC9C488();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x1D3871DC0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_1CFC1A29C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1CFC1D374, v8);
}

id sub_1CFC1A370(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_1CFC9F728();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t RecentsRemindMeActionConfigurator.__allocating_init(recentsReminderActionProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(a1);
  return v2;
}

uint64_t sub_1CFC1A484(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1CFC1A4F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1CFC1A590;
}

void sub_1CFC1A590(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

char *RecentsRemindMeActionConfigurator.init(recentsReminderActionProvider:)(uint64_t a1)
{
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0;
  v3 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule;
  v4 = sub_1CFC9D398();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  v6 = sub_1CFC9C448();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_featureFlags;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_staticReminderTimes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6B0, &qword_1CFCA4C50);
  v9 = sub_1CFC9C488();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CFCA4C30;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x1E69936C0], v9);
  v15(v14 + v11, *MEMORY[0x1E69936C8], v9);
  v15(v14 + 2 * v11, *MEMORY[0x1E69936D0], v9);
  *&v1[v8] = v13;
  *&v1[OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 2) = a1;
  return v1;
}

id sub_1CFC1A858(uint64_t a1)
{
  if (![*(v1 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_featureFlags) callRemindersEnabled] || (sub_1CFC9C388() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1D386E860]();
  v4 = swift_allocObject();
  swift_weakInit();
  v26 = sub_1CFC1AD24;
  v27 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CFC1A29C;
  v25 = &block_descriptor_9;
  v5 = _Block_copy(&aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:0 handler:v5];
  _Block_release(v5);

  v8 = objc_opt_self();
  v10 = sub_1CFC9F728();
  v11 = [v8 __systemImageNamedSwift_];

  [v7 setImage_];
  v12 = [objc_opt_self() systemBlueColor];
  [v7 setBackgroundColor_];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v15 = sub_1CFC1AD50(v3 & 1, a1);
  v16 = v15;
  if (v15 >> 62)
  {
    sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
    v17 = sub_1CFCA01E8();
  }

  else
  {

    sub_1CFCA02C8();
    sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
    v17 = v16;
  }

  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
  v21 = v17;
  v18 = sub_1CFC9FD68();
  [v7 _setMenu_];

  v26 = sub_1CFC1AD2C;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CFC1A370;
  v25 = &block_descriptor_3;
  v19 = _Block_copy(&aBlock);
  v20 = v7;
  [v20 setAccessibilityIdentifierBlock_];
  _Block_release(v19);

  return v20;
}

uint64_t sub_1CFC1AC88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 24);
    *(result + 24) = a2;
    v10 = result;
    v11 = a2;

    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;

    sub_1CFBB2564(v12, v13);
  }

  return result;
}

unint64_t sub_1CFC1AD50(char a1, uint64_t a2)
{
  v56 = sub_1CFC9C448();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v5;
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6D8, &qword_1CFCA4DB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6E0, &qword_1CFCA4DC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_1CFC9C488();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v6;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1CFCA3B40;
    v52 = sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = ObjCClassFromMetadata;
    v50 = objc_opt_self();
    v19 = [v50 bundleForClass_];
    v44 = 0xE000000000000000;
    sub_1CFC9BE28();

    v20 = a2;
    v48 = a2;
    v21 = v4;
    v22 = v56;
    v49 = *(v21 + 16);
    v49(v6, v20, v56);
    v23 = v6;
    v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v25 = swift_allocObject();
    v26 = v54;
    *(v25 + 16) = v54;
    v47 = *(v21 + 32);
    v47(v25 + v24, v23, v22);

    *(v53 + 32) = sub_1CFC9FDF8();
    v27 = [v50 bundleForClass_];
    sub_1CFC9BE28();

    v28 = v55;
    v49(v55, v48, v22);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v47(v29 + v24, v28, v22);

    v43 = sub_1CFC1D1C8;
    v44 = v29;
    v42 = 0;
    v30 = sub_1CFC9FDF8();
    result = v53;
    *(v53 + 40) = v30;
  }

  else
  {
    v32 = v54;
    MEMORY[0x1EEE9AC00](v15);
    v44 = v32;
    v45 = a2;
    v58 = sub_1CFC1A11C(sub_1CFC1D1E0, &v42, v33);
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    v34 = sub_1CFC9C078();
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
    v35 = sub_1CFC9C0B8();
    (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
    LOBYTE(v45) = 1;
    v44 = 0;
    LOBYTE(v43) = 1;
    v42 = 0;
    sub_1CFC9BDD8();
    (*(v14 + 104))(v17, *MEMORY[0x1E69936B8], v13);
    sub_1CFC9C468();
    (*(v14 + 8))(v17, v13);
    v36 = v55;
    v37 = a2;
    v38 = v56;
    (*(v4 + 16))(v55, v37, v56);
    v39 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v32;
    (*(v4 + 32))(v40 + v39, v36, v38);

    v43 = sub_1CFC1D1FC;
    v44 = v40;
    v42 = 0;
    v41 = sub_1CFC9FDF8();
    MEMORY[0x1D3871DC0]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();

    return v58;
  }

  return result;
}

uint64_t sub_1CFC1B520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v29 = a2;
  v30 = a4;
  v28 = sub_1CFC9C488();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = sub_1CFC9C448();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFC9C478();
  result = 0;
  if (v12)
  {
    v26 = sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    v14 = sub_1CFC9C468();
    v24 = v15;
    v25 = v14;
    (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v8);
    v16 = *(v6 + 16);
    v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = v28;
    v16(v23, a1, v28);
    v18 = *(v9 + 80);
    v27 = v4;
    v19 = (v18 + 24) & ~v18;
    v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    (*(v9 + 32))(v21 + v19, v11, v8);
    (*(v6 + 32))(v21 + v20, v23, v17);

    result = sub_1CFC9FDF8();
  }

  *v30 = result;
  return result;
}

uint64_t sub_1CFC1B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1CFC9CB38();
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 40);

    v6(1);
    sub_1CFBB2564(v6, v7);
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;

    return sub_1CFBB2564(v8, v9);
  }

  return result;
}

void sub_1CFC1B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = v7;
      sub_1CFC1BAE8(a3, v7);
    }
  }
}

uint64_t sub_1CFC1B90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 32);
  v4 = *(a2 + 32);
  if (v4)
  {
    v6 = *(a2 + 40);

    v4(1);
    sub_1CFBB2564(v4, v6);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    *v5 = 0;
    v5[1] = 0;
    sub_1CFBB2564(v7, v8);
  }

  return sub_1CFC9CB28();
}

void sub_1CFC1B988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED500, &qword_1CFCA2420);
  v5 = sub_1CFC9C448();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFCA1DD0;
  (*(v6 + 16))(v8 + v7, a3, v5);
  sub_1CFC9CB18();

  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(a2 + 40);

    v9(1);
    sub_1CFBB2564(v9, v10);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;

    sub_1CFBB2564(v11, v12);
  }
}

uint64_t sub_1CFC1BAE8(uint64_t a1, void *a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6B8, &unk_1CFCA4C58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v63 - v4;
  v5 = sub_1CFC9D398();
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v63 - v8;
  v9 = sub_1CFC9BF28();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6C8, &unk_1CFCA4DA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v63 - v13;
  v14 = sub_1CFC9D3D8();
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1CFC9C488();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CFC9C448();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CFC9C768();
  v74 = *(v20 - 8);
  v75 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1CFC9BFB8();
  v22 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1CFC9BDE8();
  v85 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v63 - v29;
  v31 = *(v18 + 16);
  v31(&v63 - v29, a1, v17, v28);
  (*(v18 + 56))(v30, 0, 1, v17);
  v32 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  v33 = v86;
  swift_beginAccess();
  sub_1CFBA735C(v30, v33 + v32, &qword_1EC4EE368, &unk_1CFCA4040);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for RecentsRemindMeActionConfigurator(0);
  sub_1CFC9BFA8();
  v34 = v26;
  v84 = v26;
  sub_1CFC1C59C(v26);
  (*(v22 + 8))(v24, v64);
  v35 = v17;
  v36 = v82;
  (v31)(v65, a1, v35);
  v37 = v68;
  v38 = v85;
  v39 = *(v85 + 16);
  v40 = v66;
  v39(v66, v34, v36);
  (*(v67 + 104))(v40, *MEMORY[0x1E69936B8], v69);
  sub_1CFC9C748();
  sub_1CFC9D3C8();
  sub_1CFC9C758();
  v41 = sub_1CFC9D3B8();
  v42 = v71;
  sub_1CFC9D408();
  v41(v88, 0);
  v43 = v72;
  v44 = v70;
  v39(v70, v84, v36);
  (*(v38 + 56))(v44, 0, 1, v36);
  v45 = sub_1CFC9D3B8();
  sub_1CFC9D3F8();
  v45(v88, 0);
  v46 = v73;
  sub_1CFC9C738();
  if ((*(v43 + 48))(v46, 1, v42) == 1)
  {
    sub_1CFBC2FB0(v46, &qword_1EC4EFAB0, &qword_1CFCA4DA0);
  }

  else
  {
    v47 = v63;
    (*(v43 + 32))(v63, v46, v42);
    v48 = objc_allocWithZone(MEMORY[0x1E69C6D30]);
    v49 = sub_1CFC9BEE8();
    [v48 initWithUniversalLink_];

    v50 = sub_1CFC9D3B8();
    sub_1CFC9D3E8();
    v50(v88, 0);
    (*(v43 + 8))(v47, v42);
  }

  v51 = v79;
  sub_1CFC9D3A8();
  v52 = sub_1CFC9D378();
  v53 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  v54 = v53;
  [v54 setModalPresentationStyle_];
  sub_1CFC9D388();
  swift_getObjectType();
  sub_1CFC1D0E8();
  v55 = v86;
  swift_unknownObjectRetain();
  sub_1CFC9D418();
  swift_unknownObjectRelease();
  v56 = [v54 popoverPresentationController];

  if (v56)
  {
    v57 = *(v55 + 24);
    [v56 setSourceView_];
  }

  v59 = v80;
  v58 = v81;
  v60 = v78;
  (*(v80 + 16))(v78, v51, v81);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule;
  swift_beginAccess();
  sub_1CFBA735C(v60, v55 + v61, &qword_1EC4EE6B8, &unk_1CFCA4C58);
  swift_endAccess();
  if (v87)
  {
    [v87 presentViewController:v54 animated:1 completion:0];
  }

  (*(v59 + 8))(v51, v58);
  (*(v76 + 8))(v37, v77);
  (*(v74 + 8))(v83, v75);
  return (*(v85 + 8))(v84, v82);
}

uint64_t sub_1CFC1C59C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1CFC9C038();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9C078();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CFC9BFB8();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9BF58();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969868], v1);
  sub_1CFC9C048();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6C0, &qword_1CFCA4D98);
  v11 = sub_1CFC9C068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CFCA4C40;
  v16 = *(v12 + 104);
  v16(v15 + v14, *MEMORY[0x1E6969AB8], v11);
  v16(v15 + v14 + v13, *MEMORY[0x1E6969A50], v11);
  v16(v15 + v14 + 2 * v13, *MEMORY[0x1E6969AC0], v11);
  v16(v15 + v14 + 3 * v13, *MEMORY[0x1E6969A68], v11);
  v16(v15 + v14 + 4 * v13, *MEMORY[0x1E6969A78], v11);
  v16(v15 + v14 + 5 * v13, *MEMORY[0x1E6969A48], v11);
  v16(v15 + v14 + 6 * v13, *MEMORY[0x1E6969A58], v11);
  sub_1CFC72714(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CFC9C058();

  (*(v19 + 8))(v7, v20);
  return (*(v8 + 8))(v10, v18);
}

uint64_t RecentsRemindMeActionConfigurator.deinit()
{

  sub_1CFBB2564(*(v0 + 32), *(v0 + 40));
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule, &qword_1EC4EE6B8, &unk_1CFCA4C58);
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item, &qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1D3873340](v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_hostViewController);

  sub_1CFBA79B8(v0 + OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_delegate);
  return v0;
}

uint64_t RecentsRemindMeActionConfigurator.__deallocating_deinit()
{
  RecentsRemindMeActionConfigurator.deinit();

  return swift_deallocClassInstance();
}

void sub_1CFC1CAD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6B8, &unk_1CFCA4C58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v9 = sub_1CFC9C448();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  swift_beginAccess();
  sub_1CFBA735C(v6, v0 + v10, &qword_1EC4EE368, &unk_1CFCA4040);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  v11 = sub_1CFC9D398();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_reminderCreationModule;
  swift_beginAccess();
  sub_1CFBA735C(v3, v0 + v12, &qword_1EC4EE6B8, &unk_1CFCA4C58);
  swift_endAccess();
  v13 = v0[3];
  v0[3] = 0;

  v14 = v0[4];
  if (v14)
  {
    v15 = v0[5];

    v14(1);
    sub_1CFBB2564(v14, v15);
    v16 = v0[4];
    v17 = v0[5];
    v0[4] = 0;
    v0[5] = 0;
    sub_1CFBB2564(v16, v17);
  }
}

uint64_t sub_1CFC1CD3C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1CFC9C448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC10CallsAppUI33RecentsRemindMeActionConfigurator_item;
  swift_beginAccess();
  sub_1CFC1D140(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1CFBC2FB0(v8, &qword_1EC4EE368, &unk_1CFCA4040);
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = [a1 remObjectID];
  v16 = [v15 uuid];

  sub_1CFC9BFE8();
  v17 = sub_1CFC9C008();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_1CFC9CB48();
  sub_1CFBC2FB0(v5, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFC1CAD0();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1CFC1D0E8()
{
  result = qword_1EC4EE6D0;
  if (!qword_1EC4EE6D0)
  {
    type metadata accessor for RecentsRemindMeActionConfigurator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE6D0);
  }

  return result;
}

uint64_t sub_1CFC1D140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC1D214(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1CFC9C448() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1CFC1D29C(uint64_t a1)
{
  v3 = *(sub_1CFC9C448() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1CFC9C488() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1CFC1B7C0(a1, v7, v1 + v4, v8);
}

uint64_t sub_1CFC1D394(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_1CFC9C008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_1CFBA29FC(v13, v10, &qword_1EC4ED570, &unk_1CFCA2470);
    sub_1CFBA29FC(v29, &v10[v16], &qword_1EC4ED570, &unk_1CFCA2470);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_1CFBA29FC(v10, v30, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1CFC1FED8(&qword_1EC4EE738, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v26 = sub_1CFC9F6F8();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_1CFBC2FB0(v10, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_1CFBC2FB0(v10, &qword_1EC4EE730, &qword_1CFCA51D0);
    goto LABEL_5;
  }

  sub_1CFBC2FB0(v10, &qword_1EC4ED570, &unk_1CFCA2470);
  return 1;
}

BOOL sub_1CFC1D7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1CFC1FED8(a4, a5, a6);
  }

  while ((sub_1CFC9F6F8() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1CFC1D8A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  v4 = sub_1CFC9C448();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1CFC1D9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  v5 = sub_1CFC9C448();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CFC1DA98(uint64_t a1)
{
  v2 = sub_1CFC9C448();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1CFC1DB64(v5);
}

uint64_t sub_1CFC1DB64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFC9C448();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1CFC1FED8(&qword_1EC4EE740, MEMORY[0x1E6993688], MEMORY[0x1E6993690]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1CFC9F6F8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1CFC1DE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9C448();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void sub_1CFC1DF48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CFC1DF78(v1);
}

void sub_1CFC1DF78(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  v5 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CFC9D698();
  v6 = v5;
  v7 = a1;
  v8 = sub_1CFC9FDE8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t VoicemailDetailContainerViewModel.deleteAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction);

  return v1;
}

void sub_1CFC1E1DC(int64x2_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges);
  v3 = v2[1].i64[0];
  if (v3 == a1[1].i64[0])
  {
    if (v3)
    {
      v4 = v2 == a1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges) = a1;
    }

    else
    {
      v5 = v2 + 2;
      v6 = a1 + 2;
      while (v3)
      {
        v7 = vmovn_s64(vceqq_s64(*v5, *v6));
        if ((v7.i32[0] & v7.i32[1] & 1) == 0)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }
}

double sub_1CFC1E38C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems;
  if (sub_1CFC28368(*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC1E4FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionId;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v6, v5, &qword_1EC4ED570, &unk_1CFCA2470);
  v7 = sub_1CFC294F0(v5, a1);
  sub_1CFBC2FB0(v5, &qword_1EC4ED570, &unk_1CFCA2470);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  else
  {
    sub_1CFBA29FC(a1, v5, &qword_1EC4ED570, &unk_1CFCA2470);
    swift_beginAccess();
    sub_1CFBA735C(v5, v1 + v6, &qword_1EC4ED570, &unk_1CFCA2470);
    swift_endAccess();
  }

  return sub_1CFBC2FB0(a1, &qword_1EC4ED570, &unk_1CFCA2470);
}

uint64_t sub_1CFC1E804(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC1E91C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  return *(v2 + *a2);
}

uint64_t sub_1CFC1E9D0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *a4 = *(v6 + *a3);
  return result;
}

void sub_1CFC1EAAC(char a1)
{
  v2 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0];
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) = a1 & 1;
    swift_getKeyPath();
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    if (*(v1 + v2) == 1)
    {
      sub_1CFC27310();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }
}

void sub_1CFC1EC48(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0];
  *(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) = a2;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(a1 + v3) == 1)
  {
    sub_1CFC27310();
  }
}

void *sub_1CFC1ED20(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1CFC1EDDC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1CFC1EEA0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CFC1EED0(v1);
}

void sub_1CFC1EED0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player;
  v5 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CFBA2D80(0, &qword_1EC4EE728, 0x1E6988098);
  v6 = v5;
  v7 = a1;
  v8 = sub_1CFC9FDE8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1CFC1F100(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  return *(v2 + *a2);
}

double sub_1CFC1F1BC@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v7 = v6 + *a3;
  v8 = *(v7 + 16);
  *a4 = *v7;
  result = *(v7 + 8);
  *(a4 + 8) = result;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_1CFC1F2E0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = HIDWORD(a2);
  v11 = v6 + *a4;
  result = sub_1CFC9FD48();
  if (result)
  {
    *v11 = a1;
    *(v11 + 8) = v8;
    *(v11 + 12) = v10;
    *(v11 + 16) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC1F424@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver;
  swift_beginAccess();
  return sub_1CFBA29FC(v5 + v3, a1, &qword_1EC4EE650, &qword_1CFCA4B10);
}

uint64_t sub_1CFC1F4FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver;
  swift_beginAccess();
  return sub_1CFBA29FC(v3 + v4, a2, &qword_1EC4EE650, &qword_1CFCA4B10);
}

uint64_t sub_1CFC1F5D4(uint64_t a1, uint64_t *a2)
{
  sub_1CFBA29FC(a1, v3, &qword_1EC4EE650, &qword_1CFCA4B10);
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C148();

  return sub_1CFBC2FB0(v3, &qword_1EC4EE650, &qword_1CFCA4B10);
}

uint64_t sub_1CFC1F6DC(uint64_t a1, uint64_t a2)
{
  sub_1CFBA29FC(a2, v5, &qword_1EC4EE650, &qword_1CFCA4B10);
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver;
  swift_beginAccess();
  sub_1CFBA735C(v5, a1 + v3, &qword_1EC4EE650, &qword_1CFCA4B10);
  return swift_endAccess();
}

uint64_t sub_1CFC1F77C()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 userInterfaceLayoutDirection];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1CFC9BE28();

  return v3;
}

uint64_t VoicemailDetailContainerViewModel.transcriptPrefix.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptPrefix);

  return v1;
}

uint64_t sub_1CFC1F8C8()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 userInterfaceLayoutDirection];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1CFC9BE28();

  return v3;
}

uint64_t VoicemailDetailContainerViewModel.transcriptSuffix.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptSuffix);

  return v1;
}

uint64_t sub_1CFC1FA14()
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CFC9D618();

  return v3;
}

uint64_t type metadata accessor for VoicemailDetailContainerViewModel(uint64_t a1)
{
  result = qword_1EE04DF60;
  if (!qword_1EE04DF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC1FB4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6E8, &qword_1CFCA4E08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1CFC9D6A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  swift_getKeyPath();
  v29 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v11 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  v12 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v12)
  {
    v26 = v6;
    v27 = v5;
    v13 = v12;
    v14 = sub_1CFC9D618();
    v16 = v15;

    v12 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v12 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      swift_getKeyPath();
      v29 = v1;
      sub_1CFC9C158();

      v17 = *(v1 + v11);
      if (v17)
      {
        v18 = v17;
        sub_1CFC9D638();

        v20 = v26;
        v19 = v27;
        if ((*(v26 + 48))(v4, 1, v27) != 1)
        {
          (*(v20 + 32))(v10, v4, v19);
          v21 = v28;
          (*(v20 + 104))(v28, *MEMORY[0x1E699BF28], v19);
          sub_1CFC1FED8(&qword_1EC4EE6F0, MEMORY[0x1E699BF40], MEMORY[0x1E699BF48]);
          v22 = sub_1CFC9F6F8();
          v23 = *(v20 + 8);
          v23(v21, v19);
          v23(v10, v19);
          LOBYTE(v12) = v22 ^ 1;
          return v12 & 1;
        }
      }

      else
      {
        (*(v26 + 56))(v4, 1, 1, v27);
      }

      sub_1CFBC2FB0(v4, &qword_1EC4EE6E8, &qword_1CFCA4E08);
      LOBYTE(v12) = 1;
    }
  }

  return v12 & 1;
}

uint64_t sub_1CFC1FED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC1FF20()
{
  v1 = 206967550000;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_timeIntervalFormatter);
    v4 = v2;
    sub_1CFC9D678();
    v5 = [v3 stringFromTimeInterval_];
    if (v5)
    {
      v6 = v5;
      v1 = sub_1CFC9F768();
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1CFC20038()
{
  v1 = v0;
  v2 = sub_1CFC9C318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFC9C448();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v10, v6);
  sub_1CFC9C3B8();
  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E6993658])
  {
    (*(v3 + 96))(v5, v2);
    v11 = *v5;

    v12 = [v11 callerIdLocation];
    v13 = sub_1CFC9F768();

    return v13;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_1CFC202E8()
{
  v1 = v0;
  v2 = sub_1CFC9C448();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v29 = v0;
  v6 = sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller) != 1)
  {
    swift_getKeyPath();
    v29 = v0;
    sub_1CFC9C158();

    v12 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = sub_1CFC9C428();
    (*(v3 + 8))(v5, v2);
    if (v13 >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        goto LABEL_6;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3872640](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v14 = *(v13 + 32);
      }

      v2 = v14;

      swift_getKeyPath();
      v28 = v1;
      sub_1CFC9C158();

      v15 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = v15;
      v13 = sub_1CFC9D5F8();

      if (!v13)
      {
        goto LABEL_38;
      }

      v17 = [v13 type];
      if (v17 == 2)
      {
        v22 = [v2 phoneNumbers];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D0, &unk_1CFCA4E60);
        v23 = sub_1CFC9F8A8();

        if (v23 >> 62)
        {
          result = sub_1CFC9FFD8();
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_36;
          }
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1D3872640](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v24 = *(v23 + 32);
        }

        v20 = v24;

        v21 = [v20 label];
        if (v21)
        {
LABEL_26:
          v25 = v21;
          v26 = [objc_opt_self() localizedStringForLabel_];

          v27 = sub_1CFC9F768();
          return v27;
        }

        goto LABEL_28;
      }

      if (v17 == 3)
      {
        v18 = [v2 emailAddresses];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D0, &unk_1CFCA4E60);
        v6 = sub_1CFC9F8A8();

        if (!(v6 >> 62))
        {
          result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_15:
            if ((v6 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1D3872640](0, v6);
LABEL_18:
              v20 = v19;

              v21 = [v20 label];
              if (v21)
              {
                goto LABEL_26;
              }

LABEL_28:

LABEL_37:
LABEL_38:

              return 0;
            }

            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v19 = *(v6 + 32);
              goto LABEL_18;
            }

            __break(1u);
LABEL_44:
            __break(1u);
            return result;
          }

LABEL_36:

          goto LABEL_37;
        }

LABEL_33:
        result = sub_1CFC9FFD8();
        if (result)
        {
          goto LABEL_15;
        }

        goto LABEL_36;
      }

      return 0;
    }

    return 0;
  }

  result = sub_1CFC20038();
  if (!v8)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_1CFC9BE28();

    return v11;
  }

  return result;
}

uint64_t sub_1CFC208AC@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10 = *a2;
  swift_beginAccess();
  return sub_1CFBA29FC(v12 + v10, a5, a3, a4);
}

uint64_t sub_1CFC209B0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v11 = *a3;
  swift_beginAccess();
  return sub_1CFBA29FC(v10 + v11, a6, a4, a5);
}

uint64_t sub_1CFC20ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1CFBA29FC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1CFC20B68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v6, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v7 = sub_1CFC29810(v5, a1);
  sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  else
  {
    sub_1CFBA29FC(a1, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
    swift_beginAccess();
    sub_1CFBA735C(v5, v1 + v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
    swift_endAccess();
  }

  return sub_1CFBC2FB0(a1, &qword_1EC4EE6F8, &qword_1CFCA6060);
}

uint64_t sub_1CFC20D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1CFBA29FC(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_1CFBA735C(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1CFC20E68(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();
}

uint64_t sub_1CFC20F20@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *a4 = *(v6 + *a3);
}

double sub_1CFC21004(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes;

  v5 = sub_1CFC28528(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC21190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1CFC9D4D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v9 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v9, v4, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFBC2FB0(v4, &qword_1EC4EE6F8, &qword_1CFCA6060);
    v10 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_1CFC9D488())
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_1CFC9D478() ^ 1;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v10 & 1;
}

BOOL sub_1CFC213E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6E8, &qword_1CFCA4E08);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_1CFC9D6A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v8 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  v9 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_1CFC9D5E8();
  if (v11)
  {
    if (v11 == 1)
    {
      v27 = v5;
      swift_getKeyPath();
      v28 = v0;
      sub_1CFC9C158();

      v12 = *(v0 + v8);
      if (v12)
      {
        v13 = v12;
        sub_1CFC9D638();

        v14 = v27;
        if ((*(v27 + 48))(v3, 1, v4) != 1)
        {
          (*(v14 + 32))(v7, v3, v4);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE700, &unk_1CFCA4E98);
          v22 = *(v14 + 72);
          v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1CFCA4C30;
          v25 = v24 + v23;
          v26 = *(v14 + 104);
          v26(v25, *MEMORY[0x1E699BF38], v4);
          v26(v25 + v22, *MEMORY[0x1E699BF28], v4);
          v26(v25 + 2 * v22, *MEMORY[0x1E699BF30], v4);
          v20 = sub_1CFC1D7A0(v7, v24, MEMORY[0x1E699BF40], &qword_1EC4EE6F0, MEMORY[0x1E699BF40], MEMORY[0x1E699BF48]);

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v14 + 8))(v7, v4);
          return v20;
        }
      }

      else
      {

        (*(v27 + 56))(v3, 1, 1, v4);
      }

      sub_1CFBC2FB0(v3, &qword_1EC4EE6E8, &qword_1CFCA4E08);
      return 0;
    }

    goto LABEL_8;
  }

  v15 = sub_1CFC9D628();
  if (v16)
  {
LABEL_8:

    return 0;
  }

  v17 = v15;
  sub_1CFC29B30();
  v19 = v18;

  return (v19 * 100.0) >= v17;
}

uint64_t sub_1CFC21814()
{
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  swift_beginAccess();
}

uint64_t sub_1CFC218D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1CFC2199C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();

  v5 = sub_1CFC950B8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

void sub_1CFC21AEC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1CFC21B5C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1CFC21004(v3);
  }

  return result;
}

uint64_t sub_1CFC21BC0(uint64_t a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7 + 16;
  v9 = sub_1CFC9D4D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1CFBA29FC(a1, v8, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CFBC2FB0(v8, &qword_1EC4EE6F8, &qword_1CFCA6060);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (sub_1CFC9D4C8())
    {
      v13 = [objc_opt_self() sharedInstance];
      v20[0] = 0;
      v14 = [v13 overrideOutputAudioPort:1936747378 error:v20];

      if (v14)
      {
        v15 = v20[0];
      }

      else
      {
        v16 = v20[0];
        v17 = sub_1CFC9BE88();

        swift_willThrow();
      }
    }

    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFBA29FC(a1, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
    sub_1CFC20B68(v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC27310();
  }

  return result;
}

uint64_t sub_1CFC21EC0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v6 = sub_1CFC9D938();
  __swift_project_value_buffer(v6, qword_1EE052308);
  v7 = sub_1CFC9D918();
  v8 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 proximityState];

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1CFB9F000, v7, v8, "Voicemail proximityStateDidChangeNotification %{BOOL}d", v9, 8u);
    MEMORY[0x1D3873280](v9, -1, -1);
  }

  v12 = sub_1CFC9F998();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_1CFC9F968();

  v13 = sub_1CFC9F958();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a2;
  sub_1CFBDC330(0, 0, v5, &unk_1CFCA5280, v14);
}

uint64_t sub_1CFC220EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  sub_1CFC9F968();
  v4[10] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC22184, v6, v5);
}

uint64_t sub_1CFC22184()
{

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 proximityState];

  if (v2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC264F0();
LABEL_6:

      v3 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC2680C();
      goto LABEL_6;
    }
  }

  v3 = 1;
LABEL_8:
  **(v0 + 64) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CFC22290(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9BDC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1CFC9BDB8();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t VoicemailDetailContainerViewModel.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  v3 = sub_1CFC9C448();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionId, &qword_1EC4ED570, &unk_1CFCA2470);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver, &qword_1EC4EE650, &qword_1CFCA4B10);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute, &qword_1EC4EE6F8, &qword_1CFCA6060);

  v4 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  v5 = sub_1CFC9C198();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t VoicemailDetailContainerViewModel.__deallocating_deinit()
{
  VoicemailDetailContainerViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1CFC2262C()
{
  v1 = v0;
  v79 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v69 - v3;
  v5 = sub_1CFC9BF28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v69 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&aBlock = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player))
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v13 = sub_1CFC9D938();
    __swift_project_value_buffer(v13, qword_1EE052308);
    v14 = sub_1CFC9D918();
    v15 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CFB9F000, v14, v15, "Not creating an AVPlayer as we already have one", v16, 2u);
      MEMORY[0x1D3873280](v16, -1, -1);
    }
  }

  else
  {
    v73 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player;
    swift_getKeyPath();
    *&aBlock = v0;
    sub_1CFC9C158();

    v17 = *(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
    if (v17)
    {
      v18 = v17;
      sub_1CFC9D5D8();

      v70 = v6;
      (*(v6 + 32))(v11, v8, v5);
      v19 = [objc_opt_self() sharedInstance];
      v20 = *MEMORY[0x1E6958090];
      *&aBlock = 0;
      v21 = [v19 setCategory:v20 error:&aBlock];

      v71 = v5;
      v72 = v11;
      v69[1] = v12;
      if (v21)
      {
        v22 = aBlock;
      }

      else
      {
        v23 = aBlock;
        v24 = sub_1CFC9BE88();

        swift_willThrow();
        if (qword_1EE050010 != -1)
        {
          swift_once();
        }

        v25 = sub_1CFC9D938();
        __swift_project_value_buffer(v25, qword_1EE052308);
        v26 = v24;
        v27 = sub_1CFC9D918();
        v28 = sub_1CFC9FAF8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&aBlock = v30;
          *v29 = 136315138;
          swift_getErrorValue();
          v31 = sub_1CFCA0318();
          v33 = sub_1CFBB531C(v31, v32, &aBlock);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_1CFB9F000, v27, v28, "Failed to configure voicemail audio session %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1D3873280](v30, -1, -1);
          MEMORY[0x1D3873280](v29, -1, -1);
        }

        else
        {
        }
      }

      v69[0] = 0;
      v34 = objc_allocWithZone(MEMORY[0x1E6988098]);
      v35 = sub_1CFC9BEE8();
      v36 = [v34 initWithURL_];

      sub_1CFC1EED0(v36);
      v37 = sub_1CFC9F998();
      (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
      v38 = swift_allocObject();
      swift_weakInit();
      sub_1CFC9F968();

      v39 = sub_1CFC9F958();
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v39;
      v40[3] = v41;
      v40[4] = v38;

      *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = sub_1CFBDC030(0, 0, v4, &unk_1CFCA50B8, v40);

      v42 = objc_opt_self();
      v43 = [v42 defaultCenter];
      v44 = sub_1CFC9F728();
      v45 = objc_opt_self();
      v46 = [v45 mainQueue];
      v47 = swift_allocObject();
      swift_weakInit();
      v77 = sub_1CFC2A474;
      v78 = v47;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v76 = sub_1CFC22290;
      *(&v76 + 1) = &block_descriptor_10;
      v48 = _Block_copy(&aBlock);

      v49 = [v43 addObserverForName:v44 object:0 queue:v46 usingBlock:v48];
      _Block_release(v48);
      swift_unknownObjectRelease();

      v50 = [v42 defaultCenter];
      v51 = *MEMORY[0x1E6987A10];
      swift_getKeyPath();
      *&aBlock = v1;
      sub_1CFC9C158();

      v52 = *(v1 + v73);
      if (v52 && (v53 = [v52 currentItem]) != 0)
      {
        *&aBlock = v53;
        sub_1CFBA2D80(0, &qword_1EE04D0E8, 0x1E69880B0);
        v54 = sub_1CFCA02A8();
      }

      else
      {
        v54 = 0;
      }

      v55 = [v45 mainQueue];
      v56 = swift_allocObject();
      swift_weakInit();
      v77 = sub_1CFC2A47C;
      v78 = v56;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v76 = sub_1CFC22290;
      *(&v76 + 1) = &block_descriptor_152;
      v57 = _Block_copy(&aBlock);

      v58 = [v50 addObserverForName:v51 object:v54 queue:v55 usingBlock:v57];
      _Block_release(v57);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_getKeyPath();
      *&aBlock = v1;
      sub_1CFC9C158();

      v59 = *(v1 + v73);
      if (v59)
      {
        v60 = v59;
        CMTimeMake(&aBlock, 1, 40);
        v61 = aBlock;
        v62 = v76;
        sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
        v63 = *(&aBlock + 1);
        v64 = sub_1CFC9FC28();
        v65 = swift_allocObject();
        swift_weakInit();
        v77 = sub_1CFC2A484;
        v78 = v65;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v76 = sub_1CFC250A0;
        *(&v76 + 1) = &block_descriptor_156;
        v66 = _Block_copy(&aBlock);

        *&aBlock = v61;
        *(&aBlock + 1) = v63;
        *&v76 = v62;
        v67 = [v60 addPeriodicTimeObserverForInterval:&aBlock queue:v64 usingBlock:v66];
        _Block_release(v66);

        sub_1CFC9FF18();
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock = 0u;
        v76 = 0u;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v69[-2] = v1;
      v69[-1] = &aBlock;
      v74 = v1;
      sub_1CFC9C148();

      (*(v70 + 8))(v72, v71);
      sub_1CFBC2FB0(&aBlock, &qword_1EC4EE650, &qword_1CFCA4B10);
    }
  }
}

uint64_t sub_1CFC23158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v4[21] = sub_1CFC9F968();
  v4[22] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC231F4, v6, v5);
}

uint64_t sub_1CFC231F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_getKeyPath();
      v0[17] = v3;
      sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
      sub_1CFC9C158();

      v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
      v5 = v4;

      if (v4)
      {
        v6 = [v5 currentItem];

        if (v6)
        {
          v0[26] = [v6 asset];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE710, &qword_1CFCA5148);
          v7 = sub_1CFC9C1F8();
          v0[27] = v7;
          v8 = sub_1CFC9F958();
          v0[28] = v8;
          v9 = swift_task_alloc();
          v0[29] = v9;
          *v9 = v0;
          v9[1] = sub_1CFC235C4;
          v10 = MEMORY[0x1E69E85E0];

          return MEMORY[0x1EEE68140](v0 + 31, v7, v8, v10);
        }
      }
    }

    v11 = *MEMORY[0x1E6960CC0];
    v12 = *(MEMORY[0x1E6960CC0] + 8);
    v13 = *(MEMORY[0x1E6960CC0] + 12);
    v14 = *(MEMORY[0x1E6960CC0] + 16);

    v15 = v0[25] + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration;
    v16 = sub_1CFC9FD48();
    v17 = v0[25];
    if (v16)
    {
      *v15 = v11;
      *(v15 + 8) = v12;
      *(v15 + 12) = v13;
      *(v15 + 16) = v14;
    }

    else
    {
      swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v17;
      *(v18 + 24) = v11;
      *(v18 + 32) = v12;
      *(v18 + 36) = v13;
      *(v18 + 40) = v14;
      v0[18] = v17;
      sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
      sub_1CFC9C148();
    }
  }

  else
  {
  }

  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    *(v19 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1CFC235C4()
{
  v2 = *v1;
  v2[30] = v0;

  v3 = v2[26];

  if (v0)
  {

    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_1CFC23924;
  }

  else
  {
    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_1CFC23750;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFC23750()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 260);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 200) + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration;
  if (sub_1CFC9FD48())
  {
    *v5 = v4;
    *(v5 + 8) = v1;
    *(v5 + 12) = v2;
    *(v5 + 16) = v3;
  }

  else
  {
    v6 = *(v0 + 200);
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    *(v7 + 32) = v1;
    *(v7 + 36) = v2;
    *(v7 + 40) = v3;
    *(v0 + 144) = v6;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1CFC23924()
{
  v16 = v0;

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_1CFC9D938();
  __swift_project_value_buffer(v2, qword_1EE052308);
  v3 = v1;
  v4 = sub_1CFC9D918();
  v5 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1CFCA0318();
    v10 = sub_1CFBB531C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1CFB9F000, v4, v5, "Failed to load voicemail audio asset %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D3873280](v7, -1, -1);
    MEMORY[0x1D3873280](v6, -1, -1);
  }

  v11 = *(v0 + 240);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1CFC23B28(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1CFC9F998();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_1CFBDC330(0, 0, v5, &unk_1CFCA5118, v7);
}

uint64_t sub_1CFC23C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CFC23C54, 0, 0);
}

uint64_t sub_1CFC23C54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    *(v0 + 64) = sub_1CFC9F958();
    v3 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC23D4C, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1CFC23D4C()
{

  sub_1CFC2680C();

  return MEMORY[0x1EEE6DFA0](sub_1CFC23DC0, 0, 0);
}

uint64_t sub_1CFC23DE8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1CFC9F998();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1CFC9F968();

  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1CFC247A4(0, 0, v5, &unk_1CFCA5100, v8);
}

uint64_t sub_1CFC23F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  sub_1CFC9F968();
  v4[32] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[33] = v6;
  v4[34] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC23FA4, v6, v5);
}

uint64_t sub_1CFC23FA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = Strong, swift_getKeyPath(), v0[30] = v2, sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel), sub_1CFC9C158(), , v3 = *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player), v0[35] = v3, v4 = v3, , v3))
  {
    v5 = MEMORY[0x1E6960CC0];
    v6 = *MEMORY[0x1E6960CC0];
    v7 = *(MEMORY[0x1E6960CC0] + 16);
    v0[2] = v0;
    v0[7] = v0 + 42;
    v0[3] = sub_1CFC242F0;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE708, &qword_1CFCA5108);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1CFC24748;
    v0[13] = &block_descriptor_175;
    v0[14] = v8;
    v0[39] = v6;
    v0[40] = *(v5 + 8);
    v0[41] = v7;
    [v4 seekToTime:v0 + 39 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC2680C();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1CFC27310();
    }

    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    v0[36] = v9;
    if (v9)
    {
      v10 = swift_task_alloc();
      v0[37] = v10;
      *v10 = v0;
      v10[1] = sub_1CFC24558;

      return sub_1CFC2570C();
    }

    else
    {

      v11 = v0[1];

      return v11();
    }
  }
}

uint64_t sub_1CFC242F0()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1CFC243F8, v2, v1);
}

uint64_t sub_1CFC243F8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC2680C();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CFC27310();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 288) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 296) = v2;
    *v2 = v0;
    v2[1] = sub_1CFC24558;

    return sub_1CFC2570C();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1CFC24558()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_1CFC246D8;
  }

  else
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_1CFC24674;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFC24674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC246D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC24748(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1CFC247A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1CFBA29FC(a3, v22 - v9, &qword_1EC4ED950, &qword_1CFCA2710);
  v11 = sub_1CFC9F998();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1CFBC2FB0(v10, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1CFC9F938();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1CFC9F7A8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1CFC24A50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1CFC9F998();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1CFC9F968();

  v13 = sub_1CFC9F958();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a4;
  *(v14 + 40) = a1;
  *(v14 + 48) = v6;
  *(v14 + 52) = v8;
  *(v14 + 56) = a3;
  sub_1CFC247A4(0, 0, v11, &unk_1CFCA50F0, v14);
}

uint64_t sub_1CFC24B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_1CFC9F968();
  v7[10] = sub_1CFC9F958();
  v9 = sub_1CFC9F938();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFC24C38, v9, v8);
}

uint64_t sub_1CFC24C38()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (!Strong)
  {
LABEL_8:

    v12 = *(v0 + 8);

    return v12();
  }

  v2 = Strong;
  v3 = Strong + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime;
  v4 = sub_1CFC9FD48();
  v5 = *(v0 + 72);
  v7 = *(v0 + 64);
  v6 = *(v0 + 68);
  v8 = *(v0 + 56);
  if (v4)
  {
    *v3 = v8;
    *(v3 + 8) = v7;
    *(v3 + 12) = v6;
    *(v3 + 16) = v5;
  }

  else
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v2;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;
    *(v9 + 36) = v6;
    *(v9 + 40) = v5;
    *(v0 + 40) = v2;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  *(v0 + 128) = *(v0 + 56);
  *(v0 + 136) = v11;
  *(v0 + 144) = v10;
  if (CMTimeGetSeconds((v0 + 128)) < 5.0)
  {

    goto LABEL_8;
  }

  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1CFC24E84;

  return sub_1CFC2570C();
}

uint64_t sub_1CFC24E84()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1CFC25030;
  }

  else
  {
    v5 = sub_1CFC24FC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CFC24FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC25030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC250A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

void sub_1CFC2510C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  swift_getKeyPath();
  v15 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v5 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead;
  if ((*(v0 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead) & 1) != 0 || (sub_1CFC1FB4C() & 1) == 0 || sub_1CFC213E4())
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFC9D938();
    __swift_project_value_buffer(v6, qword_1EE052308);
    swift_retain_n();
    v7 = sub_1CFC9D918();
    v8 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109632;
      swift_getKeyPath();
      v15 = v0;
      sub_1CFC9C158();

      *(v9 + 4) = *(v0 + v5);

      *(v9 + 8) = 1024;
      *(v9 + 10) = sub_1CFC1FB4C() & 1;

      *(v9 + 14) = 1024;
      *(v9 + 16) = sub_1CFC213E4();

      _os_log_impl(&dword_1CFB9F000, v7, v8, "Not marking item as read onAppear. markedAsRead: %{BOOL}d, shouldShowTranscript: %{BOOL}d, transcriptIsLowConfidence: %{BOOL}d", v9, 0x14u);
      MEMORY[0x1D3873280](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v10 = sub_1CFC9F998();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1CFC9F968();

    v11 = sub_1CFC9F958();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v1;
    sub_1CFC247A4(0, 0, v4, &unk_1CFCA50A8, v12);
  }
}

uint64_t sub_1CFC2543C()
{
  v0[2] = sub_1CFC9F968();
  v0[3] = sub_1CFC9F958();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC254E8;

  return sub_1CFC2570C();
}

uint64_t sub_1CFC254E8()
{
  *(*v1 + 40) = v0;

  v3 = sub_1CFC9F938();
  if (v0)
  {
    v4 = sub_1CFC256A8;
  }

  else
  {
    v4 = sub_1CFC25644;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1CFC25644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC256A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC2570C()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v2 = sub_1CFC9C448();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = sub_1CFC9C008();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_1CFC9F968();
  v1[22] = sub_1CFC9F958();
  v5 = sub_1CFC9F938();
  v1[23] = v5;
  v1[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFC258FC, v5, v4);
}

uint64_t sub_1CFC258FC()
{
  v1 = v0[18];
  v33 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v31 = v0[13];
  v5 = v0[9];
  swift_getKeyPath();
  v0[5] = v5;
  v0[25] = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  v0[26] = sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v6 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v2 + 16))(v3, v5 + v6, v4);
  sub_1CFC9C3C8();
  (*(v2 + 8))(v3, v4);
  if ((*(v1 + 48))(v31, 1, v33) == 1)
  {
    v7 = v0[13];

    sub_1CFBC2FB0(v7, &qword_1EC4ED570, &unk_1CFCA2470);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v8 = sub_1CFC9D938();
    __swift_project_value_buffer(v8, qword_1EE052308);
    v9 = sub_1CFC9D918();
    v10 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1CFB9F000, v9, v10, "Missing message UUID from RecentItem", v11, 2u);
      MEMORY[0x1D3873280](v11, -1, -1);
    }

    goto LABEL_9;
  }

  v12 = v0[9];
  (*(v0[18] + 32))(v0[21], v0[13], v0[17]);
  swift_getKeyPath();
  v0[6] = v12;
  sub_1CFC9C158();

  v13 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead;
  v0[27] = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead;
  if (*(v12 + v13))
  {
    (*(v0[18] + 8))(v0[21], v0[17]);

LABEL_9:

    v14 = v0[1];

    return v14();
  }

  v16 = v0[20];
  v18 = v0[17];
  v17 = v0[18];
  v29 = v0[21];
  v30 = v0[12];
  v32 = v0[11];
  v19 = v0[9];
  v34 = v0[10];
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = 1;
  v0[7] = v19;
  sub_1CFC9C148();

  v21 = *(v17 + 16);
  v0[28] = v21;
  v0[29] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v16, v29, v18);
  v22 = *(v17 + 56);
  v22(v30, 1, 1, v18);
  v22(v32, 1, 1, v18);
  v23 = sub_1CFC9BF28();
  (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
  v24 = objc_allocWithZone(sub_1CFC9D6D8());
  v25 = sub_1CFC9D6C8();
  v0[30] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v26 = swift_allocObject();
  v0[31] = v26;
  *(v26 + 16) = xmmword_1CFCA2540;
  *(v26 + 32) = v25;
  v27 = v25;
  v28 = swift_task_alloc();
  v0[32] = v28;
  *v28 = v0;
  v28[1] = sub_1CFC25EE0;

  return MEMORY[0x1EEE03C18](v26);
}

uint64_t sub_1CFC25EE0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1CFC260EC;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1CFC25FFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CFC25FFC()
{
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[18];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CFC260EC()
{
  v38 = v0;

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[17];
  v6 = sub_1CFC9D938();
  __swift_project_value_buffer(v6, qword_1EE052308);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_1CFC9D918();
  v9 = sub_1CFC9FAD8();

  if (os_log_type_enabled(v8, v9))
  {
    v33 = v0[33];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v13 = 136315394;
    sub_1CFC1FED8(&unk_1EC4EDA68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1CFCA0288();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1CFBB531C(v14, v16, &v37);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v33;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v32 = v20;
    _os_log_impl(&dword_1CFB9F000, v8, v9, "Failed to mark messageUUID: %s as read, error: %@.", v13, 0x16u);
    sub_1CFBC2FB0(v32, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1D3873280](v35, -1, -1);
    MEMORY[0x1D3873280](v13, -1, -1);
  }

  else
  {
    v22 = v0[18];
    v21 = v0[19];
    v23 = v0[17];

    v17 = *(v22 + 8);
    v17(v21, v23);
  }

  v24 = v0[27];
  v25 = v0[9];
  v26 = v0[33];
  v27 = v0[30];
  if (*(v25 + v24))
  {
    v34 = v0[21];
    v36 = v17;
    v28 = v0[17];
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v25;
    *(v29 + 24) = 0;
    v0[8] = v25;
    sub_1CFC9C148();

    v36(v34, v28);
  }

  else
  {
    v17(v0[21], v0[17]);

    *(v25 + v24) = 0;
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_1CFC2651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v5[4] = sub_1CFC9F968();
  v5[5] = sub_1CFC9F958();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_1CFC265DC;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v7, a4, v8);
}

uint64_t sub_1CFC265DC()
{

  v1 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC26718, v1, v0);
}

uint64_t sub_1CFC26718()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  [*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) play];
  v2 = v0[1];

  return v2();
}

id sub_1CFC26838(char a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v18 - v10;
  sub_1CFC1EAAC(a1);
  v12 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);
  if (v12)
  {
    v13 = sub_1CFC9F998();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_1CFC9F968();
    swift_retain_n();

    v14 = sub_1CFC9F958();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = v8;
    sub_1CFBDC030(0, 0, v11, a3, v15);
  }

  else
  {
    swift_getKeyPath();
    v18[1] = v4;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    return [*(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) *a4];
  }
}

uint64_t sub_1CFC26A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v5[4] = sub_1CFC9F968();
  v5[5] = sub_1CFC9F958();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_1CFC26ADC;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v7, a4, v8);
}

uint64_t sub_1CFC26ADC()
{

  v1 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC26C18, v1, v0);
}

uint64_t sub_1CFC26C18()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  [*(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) pause];
  v2 = v0[1];

  return v2();
}

id sub_1CFC26D0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime;
  if (sub_1CFC9FD48())
  {
    *v9 = a1;
    *(v9 + 8) = v6;
    *(v9 + 12) = v8;
    *(v9 + 16) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v4;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  swift_getKeyPath();
  v13 = v4;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v11 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  v13 = a1;
  v14 = v6;
  v15 = v8;
  v16 = a3;
  return [v11 seekToTime_];
}

uint64_t sub_1CFC26EF4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_1CFC9D4D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v32 - v12;
  swift_getKeyPath();
  v45 = v2;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v35 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);
  v14 = *(v13 + 16);

  v40 = v14;
  if (v14)
  {
    v16 = 0;
    v39 = v5 + 16;
    v36 = (v5 + 8);
    v42 = (v5 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    v37 = v13;
    v38 = v4;
    v18 = v5;
    while (1)
    {
      if (v16 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = *(v18 + 72);
      (*(v18 + 16))(v44, v13 + v19 + v20 * v16, v4);
      if (sub_1CFC9D4A8() == a1 && v21 == v41)
      {
        break;
      }

      v22 = sub_1CFCA02B8();

      if (v22)
      {
        goto LABEL_10;
      }

      result = (*v36)(v44, v4);
LABEL_4:
      if (v40 == ++v16)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v23 = a1;
    v24 = v18;
    v25 = *v42;
    (*v42)(v43, v44, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CFBCAA08(0, *(v17 + 16) + 1, 1);
      v17 = v45;
    }

    v28 = *(v17 + 16);
    v27 = *(v17 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1CFBCAA08((v27 > 1), v28 + 1, 1);
      v17 = v45;
    }

    *(v17 + 16) = v28 + 1;
    v29 = v17 + v19 + v28 * v20;
    v4 = v38;
    result = (v25)(v29, v43, v38);
    v18 = v24;
    a1 = v23;
    v13 = v37;
    goto LABEL_4;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v18 = v5;
LABEL_16:

  if (!*(v17 + 16))
  {
  }

  v30 = v33;
  (*(v18 + 16))(v33, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v4);

  v31 = v34;
  (*(v18 + 32))(v34, v30, v4);
  sub_1CFC9D578();
  return (*(v18 + 8))(v31, v4);
}

void sub_1CFC27310()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1CFC9D4D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v9 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v9, v4, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFBC2FB0(v4, &qword_1EC4EE6F8, &qword_1CFCA6060);
LABEL_5:
    v14 = [objc_opt_self() currentDevice];
    [v14 setProximityMonitoringEnabled_];

    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = objc_opt_self();
  v11 = v6;
  v12 = [v10 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13)
  {
    (*(v11 + 8))(v8, v5);
    goto LABEL_5;
  }

  v25 = v11;
  v26 = v5;
  v15 = v8;
  if ((sub_1CFC9D478() & 1) != 0 && (swift_getKeyPath(), v27 = v1, sub_1CFC9C158(), , *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) == 1))
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v16 = sub_1CFC9D938();
    __swift_project_value_buffer(v16, qword_1EE052308);
    v17 = sub_1CFC9D918();
    v18 = sub_1CFC9FAF8();
    v19 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    if (!os_log_type_enabled(v17, v18))
    {
      v21 = 1;
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1CFB9F000, v17, v18, "Enabling proximity monitoring for voicemail", v20, 2u);
    v21 = 1;
  }

  else
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v22 = sub_1CFC9D938();
    __swift_project_value_buffer(v22, qword_1EE052308);
    v17 = sub_1CFC9D918();
    v23 = sub_1CFC9FAF8();
    v19 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    if (!os_log_type_enabled(v17, v23))
    {
      v21 = 0;
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1CFB9F000, v17, v23, "Disabling proximity monitoring for voicemail", v20, 2u);
    v21 = 0;
  }

  MEMORY[0x1D3873280](v20, -1, -1);
LABEL_19:

  v24 = [v10 v19[154]];
  [v24 setProximityMonitoringEnabled_];

  (*(v25 + 8))(v15, v26);
}

Swift::Void __swiftcall VoicemailDetailContainerViewModel.messageStoreDidUpdateMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1CFC9F968();

  v8 = sub_1CFC9F958();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2]._rawValue = v8;
  v9[3]._rawValue = v10;
  v9[4]._rawValue = a1._rawValue;
  v9[5]._rawValue = v2;
  sub_1CFBDC030(0, 0, v6, &unk_1CFCA4EB0, v9);
}

uint64_t sub_1CFC27904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_1CFC9C008();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  v5[16] = swift_task_alloc();
  v7 = sub_1CFC9C448();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_1CFC9F968();
  v5[23] = sub_1CFC9F958();
  v9 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC27AE0, v9, v8);
}

uint64_t sub_1CFC27AE0()
{
  v1 = v0[10];

  swift_weakInit();
  v62 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_38;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v61 = v0;
  if (v2)
  {
    v3 = 0;
    v52 = v1 & 0xFFFFFFFFFFFFFF8;
    v53 = v1 & 0xC000000000000001;
    v4 = v0[13];
    v50 = (v4 + 56);
    v51 = v0[10] + 32;
    v5 = v0[18];
    v48 = (v5 + 8);
    v49 = (v5 + 16);
    v60 = (v4 + 48);
    v46 = v2;
    v47 = v0[15];
    v44 = (v4 + 32);
    v45 = (v4 + 8);
    while (1)
    {
      if (v53)
      {
        v6 = MEMORY[0x1D3872640](v3, v0[10]);
      }

      else
      {
        if (v3 >= *(v52 + 16))
        {
          goto LABEL_37;
        }

        v6 = *(v51 + 8 * v3);
      }

      v7 = v6;
      v1 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v2 = sub_1CFC9FFD8();
        goto LABEL_3;
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_6:
      ++v3;
      if (v1 == v2)
      {
        v32 = v62;
        goto LABEL_25;
      }
    }

    v9 = Strong;
    v55 = v3;
    v59 = v3 + 1;
    v10 = v0[22];
    v54 = v0[21];
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    v14 = v61[12];
    v56 = v14;
    v58 = v7;
    sub_1CFC9D598();
    (*v50)(v10, 0, 1, v14);
    swift_getKeyPath();
    v61[9] = v9;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v15 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
    swift_beginAccess();
    (*v49)(v11, v9 + v15, v13);
    sub_1CFC9C3C8();
    (*v48)(v11, v13);
    v16 = *(v47 + 48);
    sub_1CFBA29FC(v10, v12, &qword_1EC4ED570, &unk_1CFCA2470);
    v17 = v12;
    sub_1CFBA29FC(v54, v12 + v16, &qword_1EC4ED570, &unk_1CFCA2470);
    v18 = *v60;
    v19 = (*v60)(v12, 1, v56);
    v20 = v61[12];
    if (v19 == 1)
    {
      v22 = v61[21];
      v21 = v61[22];

      sub_1CFBC2FB0(v22, &qword_1EC4ED570, &unk_1CFCA2470);
      sub_1CFBC2FB0(v21, &qword_1EC4ED570, &unk_1CFCA2470);
      if (v18(v17 + v16, 1, v20) == 1)
      {
        sub_1CFBC2FB0(v61[16], &qword_1EC4ED570, &unk_1CFCA2470);
LABEL_20:
        sub_1CFCA0138();
        sub_1CFCA0178();
        sub_1CFCA0188();
        sub_1CFCA0148();
        goto LABEL_21;
      }
    }

    else
    {
      sub_1CFBA29FC(v61[16], v61[20], &qword_1EC4ED570, &unk_1CFCA2470);
      v23 = v18(v12 + v16, 1, v20);
      v25 = v61[21];
      v24 = v61[22];
      v26 = v61[20];
      if (v23 != 1)
      {
        v57 = v61[16];
        v28 = v61[14];
        v29 = v61[12];
        (*v44)(v28, v17 + v16, v29);
        sub_1CFC1FED8(&qword_1EC4EE738, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v30 = sub_1CFC9F6F8();

        v31 = *v45;
        (*v45)(v28, v29);
        sub_1CFBC2FB0(v25, &qword_1EC4ED570, &unk_1CFCA2470);
        sub_1CFBC2FB0(v24, &qword_1EC4ED570, &unk_1CFCA2470);
        v31(v26, v29);
        sub_1CFBC2FB0(v57, &qword_1EC4ED570, &unk_1CFCA2470);
        if (v30)
        {
          goto LABEL_20;
        }

LABEL_18:

LABEL_21:
        v2 = v46;
        v1 = v59;
        v0 = v61;
        v3 = v55;
        goto LABEL_6;
      }

      v27 = v61[12];

      sub_1CFBC2FB0(v25, &qword_1EC4ED570, &unk_1CFCA2470);
      sub_1CFBC2FB0(v24, &qword_1EC4ED570, &unk_1CFCA2470);
      (*v45)(v26, v27);
    }

    sub_1CFBC2FB0(v61[16], &qword_1EC4EE730, &qword_1CFCA51D0);
    goto LABEL_18;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_25:
  result = swift_weakDestroy();
  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    result = sub_1CFC9FFD8();
    if (result)
    {
      goto LABEL_28;
    }

LABEL_40:

    goto LABEL_41;
  }

  if (!*(v32 + 16))
  {
    goto LABEL_40;
  }

LABEL_28:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1D3872640](0, v32);
  }

  else
  {
    if (!*(v32 + 16))
    {
      __break(1u);
      return result;
    }

    v34 = *(v32 + 32);
  }

  v35 = v34;

  v36 = qword_1EE050010;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_1CFC9D938();
  __swift_project_value_buffer(v38, qword_1EE052308);
  v39 = sub_1CFC9D918();
  v40 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1CFB9F000, v39, v40, "Updating voicemail UI with new message.", v41, 2u);
    v0 = v61;
    MEMORY[0x1D3873280](v41, -1, -1);
  }

  v42 = v37;
  sub_1CFC1DF78(v37);

LABEL_41:

  v43 = v0[1];

  return v43();
}

uint64_t sub_1CFC28368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CFCA02B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1CFC283F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v9 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1CFCA02B8() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v13 = v4 == v9 && v5 == v8;
        if (!v13 && (sub_1CFCA02B8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1CFCA02B8() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1CFC28528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9D4D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1CFC1FED8(&qword_1EC4EE718, MEMORY[0x1E6995D28], MEMORY[0x1E6995D30]);
    v22 = sub_1CFC9F6F8();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void *sub_1CFC2873C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1CFC287B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CFC287E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t), void (*a7)(char *, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v92 = a8;
  v79 = a7;
  v78 = a6;
  v77 = a4;
  LODWORD(v76) = a2;
  v91 = a11;
  v80 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE750, &unk_1CFCA5250);
  v88 = *(v16 - 8);
  v89 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE758, &qword_1CFCA5260);
  v82 = *(v20 - 8);
  v83 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v74 - v21;
  v22 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message) = 0;
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions) = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges) = MEMORY[0x1E69E7CC0];
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems) = v23;
  v24 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionId;
  v25 = sub_1CFC9C008();
  (*(*(v25 - 8) + 56))(v12 + v24, 1, 1, v25);
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) = 0;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead) = 0;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) = 0;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) = 0;
  v26 = *MEMORY[0x1E6960CC0];
  v27 = *(MEMORY[0x1E6960CC0] + 8);
  v28 = *(MEMORY[0x1E6960CC0] + 12);
  v29 = *(MEMORY[0x1E6960CC0] + 16);
  v30 = v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration;
  *v30 = *MEMORY[0x1E6960CC0];
  *(v30 + 8) = v27;
  *(v30 + 12) = v28;
  *(v30 + 16) = v29;
  v31 = v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime;
  *v31 = v26;
  *(v31 + 8) = v27;
  *(v31 + 12) = v28;
  *(v31 + 16) = v29;
  v32 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver);
  *v32 = 0u;
  v32[1] = 0u;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  v33 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_timeIntervalFormatter;
  v34 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v34 setAllowedUnits_];
  [v34 setZeroFormattingBehavior_];
  *(v12 + v33) = v34;
  v35 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptPrefix);
  *v35 = sub_1CFC1F77C();
  v35[1] = v36;
  v37 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptSuffix);
  *v37 = sub_1CFC1F8C8();
  v37[1] = v38;
  v39 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService;
  sub_1CFC9D588();
  sub_1CFC9D528();
  sub_1CFC9D518();
  *(v12 + v39) = sub_1CFC9D548();
  v40 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  v41 = sub_1CFC9D4D8();
  (*(*(v41 - 8) + 56))(v12 + v40, 1, 1, v41);
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes) = v23;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_defaultTranscriptLowConfidenceLimit) = 1060115369;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables) = MEMORY[0x1E69E7CD0];
  sub_1CFC9C188();
  v42 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  v43 = sub_1CFC9C448();
  v85 = *(v43 - 8);
  v86 = v43;
  (*(v85 + 16))(v12 + v42, a1);
  v90 = a1;
  v44 = sub_1CFC9C408();

  *(v12 + v22) = v44;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller) = v76;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_messageStoreController) = a3;
  v45 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction);
  *v45 = v77;
  v45[1] = a5;
  v46 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_activityAction);
  v47 = v79;
  *v46 = v78;
  v46[1] = v47;
  v48 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_createContactAction);
  v49 = v91;
  *v48 = v92;
  v48[1] = a9;
  v50 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction);
  *v50 = v80;
  v50[1] = v49;
  swift_getKeyPath();
  v51 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  aBlock[0] = v12;
  v52 = sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);

  v91 = v52;
  sub_1CFC9C158();

  v53 = *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v53)
  {
    v54 = v53;
    sub_1CFC9D5B8();
    v55 = sub_1CFC9D758();
    if (v55 == sub_1CFC9D758())
    {
      v56 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage;
      if (*(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) == 1)
      {

        *(v12 + v56) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v74 - 2) = v12;
        *(&v74 - 8) = 1;
        aBlock[0] = v12;
        sub_1CFC9C148();
      }
    }

    else
    {
    }
  }

  sub_1CFC9D6E8();

  v80 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService;
  aBlock[0] = sub_1CFC9D558();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v58 = sub_1CFC9FC28();
  v94 = v58;
  v59 = sub_1CFC9FBF8();
  v60 = *(v59 - 8);
  v78 = *(v60 + 56);
  v79 = (v60 + 56);
  v92 = v51;
  v61 = v84;
  v78(v84, 1, 1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE760, &qword_1CFCA5268);
  v77 = MEMORY[0x1E695BED8];
  sub_1CFBA57C0(&qword_1EE04D5C0, &qword_1EC4EE760, &qword_1CFCA5268, MEMORY[0x1E695BED8]);
  v76 = sub_1CFC18FBC();
  v62 = v81;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v61, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  swift_weakInit();
  v75 = MEMORY[0x1E695BE98];
  sub_1CFBA57C0(&qword_1EE04D5D8, &qword_1EC4EE758, &qword_1CFCA5260, MEMORY[0x1E695BE98]);

  v63 = v83;
  sub_1CFC9DDA8();

  (*(v82 + 8))(v62, v63);
  swift_getKeyPath();
  aBlock[0] = v12;
  sub_1CFC9C158();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C178();

  v83 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C168();

  aBlock[0] = sub_1CFC9D538();
  v64 = sub_1CFC9FC28();
  v94 = v64;
  v78(v61, 1, 1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE768, &qword_1CFCA5270);
  sub_1CFBA57C0(&qword_1EE04D5D0, &qword_1EC4EE768, &qword_1CFCA5270, v77);
  v65 = v87;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v61, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  swift_weakInit();
  sub_1CFBA57C0(&qword_1EE04D5E8, &qword_1EC4EE750, &unk_1CFCA5250, v75);
  v66 = v89;
  sub_1CFC9DDA8();

  (*(v88 + 8))(v65, v66);
  swift_getKeyPath();
  aBlock[0] = v12;
  sub_1CFC9C158();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C178();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C168();

  v67 = [objc_opt_self() defaultCenter];
  v68 = *MEMORY[0x1E69DDCC0];
  v69 = [objc_opt_self() mainQueue];
  v70 = swift_allocObject();
  swift_weakInit();

  aBlock[4] = sub_1CFC2A9B0;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC22290;
  aBlock[3] = &block_descriptor_219;
  v71 = _Block_copy(aBlock);

  v72 = [v67 addObserverForName:v68 object:0 queue:v69 usingBlock:v71];
  _Block_release(v71);
  swift_unknownObjectRelease();

  (*(v85 + 8))(v90, v86);
  return v12;
}

uint64_t sub_1CFC294F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9C008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1CFBA29FC(a1, &v21 - v12, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFBA29FC(a2, &v13[v15], &qword_1EC4ED570, &unk_1CFCA2470);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1CFBA29FC(v13, v10, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1CFC1FED8(&qword_1EC4EE738, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1CFC9F6F8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1CFBC2FB0(v13, &qword_1EC4ED570, &unk_1CFCA2470);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CFBC2FB0(v13, &qword_1EC4EE730, &qword_1CFCA51D0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CFBC2FB0(v13, &qword_1EC4ED570, &unk_1CFCA2470);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1CFC29810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9D4D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE720, &qword_1CFCA5178);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1CFBA29FC(a1, &v21 - v12, &qword_1EC4EE6F8, &qword_1CFCA6060);
  sub_1CFBA29FC(a2, &v13[v15], &qword_1EC4EE6F8, &qword_1CFCA6060);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1CFBA29FC(v13, v10, &qword_1EC4EE6F8, &qword_1CFCA6060);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1CFC1FED8(&qword_1EC4EE718, MEMORY[0x1E6995D28], MEMORY[0x1E6995D30]);
      v18 = sub_1CFC9F6F8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1CFBC2FB0(v13, &qword_1EC4EE6F8, &qword_1CFCA6060);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CFBC2FB0(v13, &qword_1EC4EE720, &qword_1CFCA5178);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CFBC2FB0(v13, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v17 = 0;
  return v17 & 1;
}

void sub_1CFC29B30()
{
  v0 = sub_1CFC9F728();
  v1 = PHPreferencesGetValue();

  if (v1)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1CFBA2D80(0, &qword_1EC4EE748, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      [v2 floatValue];
    }
  }

  else
  {
    sub_1CFBC2FB0(v5, &qword_1EC4EE650, &qword_1CFCA4B10);
  }
}

uint64_t sub_1CFC29C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC27904(a1, v4, v5, v7, v6);
}

void sub_1CFC29D10(uint64_t a1)
{
  sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    sub_1CFC2A0A8(319, &qword_1EE04D6F8, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      sub_1CFC2A0A8(319, &qword_1EE04D630, MEMORY[0x1E6995D28]);
      if (v3 <= 0x3F)
      {
        sub_1CFC9C198();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1CFC2A0A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFC9FEB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFC2A11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC26A1C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1CFC2A234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC2651C(a1, v4, v5, v7, v6);
}

uint64_t sub_1CFC2A30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CFBD4A14;

  return sub_1CFC2543C();
}

uint64_t sub_1CFC2A3C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC23158(a1, v4, v5, v6);
}

uint64_t sub_1CFC2A4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFBD4A14;

  return sub_1CFC24B9C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CFC2A57C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC23F0C(a1, v4, v5, v6);
}

uint64_t sub_1CFC2A648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC23C34(a1, v4, v5, v6);
}

double sub_1CFC2A78C(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 16) + *a1;
  result = *(v1 + 32);
  *v3 = *(v1 + 24);
  *(v3 + 8) = result;
  *(v3 + 16) = v2;
  return result;
}

void sub_1CFC2A7B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) = v2;
  v4 = v2;
}

void sub_1CFC2A8E8(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void sub_1CFC2A944()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message) = v2;
  v4 = v2;
}

uint64_t objectdestroy_136Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1CFC2AA04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC220EC(a1, v4, v5, v6);
}

id sub_1CFC2AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker] = 0;
  *&v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_dataSource] = a1;
  *v6 = a2;
  *(v6 + 1) = a3;

  sub_1CFBB2568(a2, a3);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for FavoritePickerViewController();
  v7 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  [v7 setAllowsEditing_];
  [v7 setAutocloses_];
  [v7 setDelegate_];
  [v7 setHidesSearchableSources_];
  [v7 setMode_];
  [v7 setOnlyRealContacts_];
  sub_1CFC2B5B8();
  v8 = sub_1CFC9FAA8();
  [v7 setPredicateForEnablingContact_];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v11 = sub_1CFC9F728();

  [v7 setPrompt_];

  sub_1CFBB2564(a2, a3);

  return v7;
}

id sub_1CFC2AE48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FavoritePickerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1CFC2AFD8(void *a1, void *a2)
{
  [a1 invalidateSelectionAnimated_];
  v5 = sub_1CFC2B63C(a2);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E695D1C8]) initWithContact_];
    v8 = *(v2 + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker) = v7;
    v9 = v7;

    [v9 setDelegate_];
    v10 = [v9 viewController];
    [v10 setModalPresentationStyle_];
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_1CFC2B178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker;
  v5 = *&v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker];
  if (v5)
  {
    v6 = [v5 viewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  [v3 dismissViewControllerAnimated:1 completion:0];
  v7 = *&v3[v4];
  *&v3[v4] = 0;

  result = sub_1CFC9C708();
  v9 = &v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion];
  v10 = *&v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion];
  if (v10)
  {
    v11 = *(v9 + 1);

    v10(1);

    return sub_1CFBB2564(v10, v11);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFC2B324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CFC2B36C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1CFC2B3C0()
{
  result = qword_1EC4EE850;
  if (!qword_1EC4EE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE850);
  }

  return result;
}

id sub_1CFC2B414()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for FavoritePickerViewController());

  sub_1CFBB2568(v2, v3);
  return sub_1CFC2AB48(v1, v2, v3);
}

uint64_t sub_1CFC2B474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC2B564();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1CFC2B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC2B564();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1CFC2B53C(uint64_t a1)
{
  sub_1CFC2B564();
  sub_1CFC9EAD8();
  __break(1u);
}

unint64_t sub_1CFC2B564()
{
  result = qword_1EC4EE858;
  if (!qword_1EC4EE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE858);
  }

  return result;
}

unint64_t sub_1CFC2B5B8()
{
  result = qword_1EC4EE860;
  if (!qword_1EC4EE860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4EE860);
  }

  return result;
}

uint64_t sub_1CFC2B604(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

id sub_1CFC2B63C(id a1)
{
  v24 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA2540;
  *(v2 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v23 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE870, &unk_1CFCA53E0);
  v3 = sub_1CFC9F898();

  v4 = [a1 areKeysAvailable_];

  if (v4)
  {

    v5 = a1;
  }

  else
  {
    if ([a1 availableKeyDescriptor])
    {
      v6 = swift_unknownObjectRetain();
      MEMORY[0x1D3871DC0](v6);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      swift_unknownObjectRelease();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v8 = [a1 identifier];
    if (!v8)
    {
      sub_1CFC9F768();
      v8 = sub_1CFC9F728();
    }

    v9 = sub_1CFC9F898();

    v22 = 0;
    a1 = [v7 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v22];

    v10 = v22;
    if (!a1)
    {
      v11 = v10;
      v12 = sub_1CFC9BE88();

      swift_willThrow();
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v13 = sub_1CFC9D938();
      __swift_project_value_buffer(v13, qword_1EE052308);
      v14 = v12;
      v15 = sub_1CFC9D918();
      v16 = sub_1CFC9FAD8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v12;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_1CFB9F000, v15, v16, "Error fetching contact for favorite entry: %@", v17, 0xCu);
        sub_1CFBFDC3C(v18);
        MEMORY[0x1D3873280](v18, -1, -1);
        MEMORY[0x1D3873280](v17, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  return a1;
}

double preferredKeyPadSize(idiom:)(uint64_t a1)
{
  result = 310.0;
  v2 = 310.0;
  if (a1 != 5)
  {
    v2 = 0.0;
  }

  if (a1 != 1)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1CFC2BA24()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1CFC2BAD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

double sub_1CFC2BB80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CFC2BBC0(v1, v2);
}

double sub_1CFC2BBC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1CFCA02B8() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

void sub_1CFC2BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_1CFC2BD5C()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();
}

uint64_t sub_1CFC2BE00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  *a2 = *(v3 + 32);
}

double sub_1CFC2BED8(uint64_t a1)
{

  sub_1CFC2C8F0(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC2C02C()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();
}

uint64_t sub_1CFC2C0D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  *a2 = *(v3 + 40);
}

double sub_1CFC2C1A8(uint64_t a1)
{

  v4 = sub_1CFC2C710(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC2C2FC()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  return *(v0 + 48);
}

uint64_t sub_1CFC2C39C(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

char *VoicemailSmartActionsBannerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC10CallsAppUI36VoicemailSmartActionsBannerViewModel___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VoicemailSmartActionsBannerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10CallsAppUI36VoicemailSmartActionsBannerViewModel___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VoicemailSmartActionsBannerViewModel(uint64_t a1)
{
  result = qword_1EE04D8D0;
  if (!qword_1EE04D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC2C634(uint64_t a1)
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFC2C710(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1CFC94B54(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1CFCA02B8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1CFC2C8B4()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

void sub_1CFC2C8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9C008();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE878, &qword_1CFCA5520);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v52 = (&v48 - v11);
    v53 = v12;
    v51 = v6;
    v14 = 0;
    v49 = a1;
    v15 = *(a1 + 64);
    v48 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v55 = v59 + 16;
    v56 = (v59 + 32);
    v50 = (v59 + 8);
    while (1)
    {
      v20 = v53;
      if (!v18)
      {
        break;
      }

      v57 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v26 = (*(v49 + 48) + 16 * v21);
      v27 = *v26;
      v28 = v26[1];
      v30 = v58;
      v29 = v59;
      (*(v59 + 16))(v58, *(v49 + 56) + *(v59 + 72) * v21, v4, v13);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE880, &qword_1CFCA5528);
      v32 = *(v31 + 48);
      *v20 = v27;
      *(v20 + 1) = v28;
      (*(v29 + 32))(&v20[v32], v30, v4);
      (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
      v33 = v52;
      sub_1CFC2CE60(v20, v52);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE880, &qword_1CFCA5528);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = *(v34 + 48);
      v37 = *v33;
      v36 = v33[1];
      v38 = v54;
      v39 = v51;
      (*v56)(v51, v33 + v35, v4);
      v40 = sub_1CFC94B54(v37, v36);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        (*v50)(v39, v4);
        return;
      }

      v44 = v58;
      v43 = v59;
      (*(v59 + 16))(v58, *(v38 + 56) + *(v59 + 72) * v40, v4);
      sub_1CFC2CED0(&qword_1EC4EE738, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v45 = sub_1CFC9F6F8();
      v46 = *(v43 + 8);
      v46(v44, v4);
      v46(v39, v4);
      v18 = v57;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE880, &qword_1CFCA5528);
        (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
        v57 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v25 = *(v48 + 8 * v24);
      ++v14;
      if (v25)
      {
        v57 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v14 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1CFC2CE24()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1CFC2CE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE878, &qword_1CFCA5520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC2CED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CFC2CF18()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

void sub_1CFC2CF58(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    v11[0] = a3;
    v11[1] = a4;
    v10 = a5 & 1;
    v12 = a5 & 1;
    v13 = a6;
    sub_1CFBB45F4(a3, a4, a5 & 1);

    a1(&v14, v11);
    sub_1CFBB44C0(a3, a4, v10);

    if (v6)
    {
      __break(1u);
    }
  }
}