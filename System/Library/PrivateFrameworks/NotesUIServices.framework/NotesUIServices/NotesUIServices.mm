uint64_t sub_25C79B070()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25C79B0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  return sub_25C79CB08(v3 + v4, a2, &qword_27FC151B0, &qword_25C7AB888);
}

uint64_t sub_25C79B124()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C79B15C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C79B194()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C79B200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA63C();
  *a1 = result;
  return result;
}

uint64_t sub_25C79B258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA65C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C79B3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25C79B4B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15328, &qword_25C7ABCB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15330, &qword_25C7ABCB8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_25C79B5D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15328, &qword_25C7ABCB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15330, &qword_25C7ABCB8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_25C79B734()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C79B7C8()
{
  v1 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_25C7A9CC0(*(v0 + v4), *(v0 + v4 + 8));
  sub_25C7A9CCC(*(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_25C7AA54C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_25C7AA58C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25C79B99C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C79B9DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA69C();
  *a1 = result;
  return result;
}

uint64_t sub_25C79BA34@<X0>(uint64_t a1@<X8>)
{
  result = sub_25C7AA6BC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25C79BA98()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

id sub_25C79BB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_25C79CAC0(&qword_28119B618, type metadata accessor for NotesIndexSharedModel, &protocol conformance descriptor for NotesIndexSharedModel);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[9]) = 0x404A000000000000;
  *(a2 + v4[10]) = 0x4020000000000000;
  *(a2 + v4[11]) = 0x402C000000000000;
  *(a2 + v4[12]) = 0x402C000000000000;
  v7 = (a2 + v4[13]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (a2 + v4[14]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (a2 + v4[8]);
  *v9 = a1;
  v9[1] = v3;

  return a1;
}

ICNotesSharedIndexedViewHelper __swiftcall ICNotesSharedIndexedViewHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25C79BE68(uint64_t a1)
{
  v2 = sub_25C7AAC3C();

  return sub_25C79BEAC(a1, v2);
}

unint64_t sub_25C79BEAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C79CB80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88DCF0](v9, a1);
      sub_25C79CBDC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25C79BF74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15090, &qword_25C7AB838);
    v3 = sub_25C7AAC8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C79CB08(v4, v13, &qword_27FC15098, &qword_25C7AB840);
      result = sub_25C79BE68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25C79CB70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id _sSo30ICNotesSharedIndexedViewHelperC15NotesUIServicesE020makeNoteSearchResultD04with13attachmentURLSo28CSSearchableItemAttributeSetCSgSo017ICSearchIndexableI0_p_10Foundation0N0VSgtFZ_0(void *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_25C7AA43C();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v50[-v16];
  sub_25C79BF74(MEMORY[0x277D84F90]);
  v18 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v19 = sub_25C7AAA9C();

  v54 = [v18 initWithAttributes_];

  v20 = objc_opt_self();
  v21 = [objc_opt_self() noteSortTypeDefaultAscending];
  v22 = [v20 dateForCurrentSortTypeForNote:a1 folderNoteSortType:v21];

  if (v22)
  {
    sub_25C7AA51C();

    v23 = sub_25C7AA52C();
    (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  }

  else
  {
    v24 = sub_25C7AA52C();
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  }

  sub_25C79C910(v15, v17);
  sub_25C79CB08(v17, v12, &qword_27FC15078, &unk_25C7ABBB0);
  v25 = [a1 isSharedViaICloud];
  v55 = v17;
  v56 = v5;
  v52 = a1;
  v26 = v12;
  if (v25)
  {
    v51 = 1;
  }

  else
  {
    v51 = [a1 isSharedViaICloudFolder];
  }

  v27 = sub_25C7AA4FC();
  v28 = *(*(v27 - 8) + 56);
  v28(v8, 1, 1, v27);
  v29 = type metadata accessor for NotesIndexSharedModel(0);
  v30 = objc_allocWithZone(v29);
  v31 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v32 = sub_25C7AA52C();
  (*(*(v32 - 8) + 56))(&v30[v31], 1, 1, v32);
  v33 = &v30[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v28(&v30[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL], 1, 1, v27);
  swift_beginAccess();
  sub_25C79C980(v26, &v30[v31], &qword_27FC15078, &unk_25C7ABBB0);
  swift_endAccess();
  v30[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = v51;
  swift_beginAccess();
  *v33 = 0;
  v33[1] = 0;

  swift_beginAccess();
  sub_25C79C980(v8, &v30[v34], &qword_27FC15070, &qword_25C7AB768);
  swift_endAccess();
  v30[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = 0;
  v59.receiver = v30;
  v59.super_class = v29;
  v35 = objc_msgSendSuper2(&v59, sel_init);
  sub_25C79C9E8(v8, &qword_27FC15070, &qword_25C7AB768);
  sub_25C79C9E8(v26, &qword_27FC15078, &unk_25C7ABBB0);
  sub_25C79CB08(v53, v8, &qword_27FC15070, &qword_25C7AB768);
  v36 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  swift_beginAccess();
  sub_25C79CA48(v8, &v35[v36]);
  swift_endAccess();
  v37 = v52;
  v38 = [v52 folderName];
  if (v38)
  {
    v39 = v38;
    v40 = sub_25C7AAABC();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = v56;
  v44 = &v35[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  swift_beginAccess();
  *v44 = v40;
  v44[1] = v42;

  v45 = [v37 hasUnreadChanges];
  v46 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
  v47 = swift_beginAccess();
  v35[v46] = v45;
  MEMORY[0x28223BE20](v47);
  *&v50[-16] = v35;
  type metadata accessor for NotesSharedIndexedSearchView(0);
  sub_25C79CAC0(&qword_28119B5B0, type metadata accessor for NotesSharedIndexedSearchView, &protocol conformance descriptor for NotesSharedIndexedSearchView);
  sub_25C7AA42C();
  v48 = v54;
  sub_25C7AABCC();

  (*(v57 + 8))(v43, v58);
  sub_25C79C9E8(v55, &qword_27FC15078, &unk_25C7ABBB0);
  return v48;
}

unint64_t type metadata accessor for ICNotesSharedIndexedViewHelper()
{
  result = qword_27FC15060;
  if (!qword_27FC15060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC15060);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C79C82C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25C79C84C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for UIEdgeInsets()
{
  if (!qword_27FC15068)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FC15068);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C79C910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C79C980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C79C9E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C79CA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C79CAC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C79CB08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_25C79CB70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id MathNotesUpdateSafeAreaInsetsAction.performAction(forSceneController:)(void *a1)
{
  v2 = [a1 delegate];
  if (!v2 || (v51[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15170, &qword_25C7AB870), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15178, &qword_25C7AB878), (swift_dynamicCast() & 1) == 0))
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    return sub_25C79C9E8(&v45, &qword_27FC15108, &unk_25C7AB860);
  }

  if (!*(&v46 + 1))
  {
    return sub_25C79C9E8(&v45, &qword_27FC15108, &unk_25C7AB860);
  }

  sub_25C79D390(&v45, v51);
  v3 = [v1 info];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 objectForSetting_];

  if (v5)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_16;
  }

  sub_25C7A1E50(0, &qword_27FC15188, 0x277CCAE60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v7 = v49[0];
  [v49[0] UIEdgeInsetsValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v1 info];
  if (!v16)
  {
LABEL_15:
    v45 = 0u;
    v46 = 0u;
LABEL_16:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v17 = v16;
  v18 = [v16 objectForSetting_];

  if (v18)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_16;
  }

  sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v19 = v49[0];
  v20 = [v49[0] BOOLValue];

  v21 = [v1 info];
  if (!v21)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_30:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    v24 = 0;
    goto LABEL_31;
  }

  v22 = v21;
  v23 = [v21 objectForSetting_];

  if (v23)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_30;
  }

  sub_25C7A1E50(0, &qword_27FC151A0, 0x277CF0B70);
  if (swift_dynamicCast())
  {
    v24 = v49[0];
  }

  else
  {
    v24 = 0;
  }

LABEL_31:
  v25 = [v1 info];
  if (!v25)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_39:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    goto LABEL_40;
  }

  v26 = v25;
  v27 = [v25 objectForSetting_];

  if (v27)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_39;
  }

  if (swift_dynamicCast())
  {
    v28 = v49[0];
    goto LABEL_41;
  }

LABEL_40:
  v28 = 0;
LABEL_41:
  v29 = [v1 info];
  if (!v29)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_50:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    v32 = 0;
    goto LABEL_51;
  }

  v30 = v29;
  v31 = [v29 objectForSetting_];

  if (v31)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_50;
  }

  sub_25C7A1E50(0, &qword_27FC15198, 0x277CF05B8);
  if (swift_dynamicCast())
  {
    v32 = v49[0];
  }

  else
  {
    v32 = 0;
  }

LABEL_51:
  v33 = __swift_project_boxed_opaque_existential_1Tm(v51, v51[3]);
  v34 = *v33;
  result = [*v33 view];
  if (result)
  {
    v35 = result;
    v36 = [result window];

    if (v36)
    {
      v37 = [v36 windowScene];

      if (v37)
      {
        if (v32)
        {
          [v37 _synchronizeDrawingWithFence_];
        }
      }
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    *(v38 + 24) = v9;
    *(v38 + 32) = v11;
    *(v38 + 40) = v13;
    *(v38 + 48) = v15;
    *(v38 + 56) = v20;
    *(v38 + 64) = v24;
    v39 = objc_opt_self();
    if (v24)
    {
      v47 = sub_25C7A08DC;
      v48 = v38;
      *&v45 = MEMORY[0x277D85DD0];
      *(&v45 + 1) = 1107296256;
      *&v46 = sub_25C79E418;
      *(&v46 + 1) = &block_descriptor_3;
      v40 = _Block_copy(&v45);
      v41 = v24;
      v42 = v34;

      [v39 _animateWithAnimationSettings_animations_completion_];

      _Block_release(v40);
    }

    else
    {
      v47 = sub_25C7A08DC;
      v48 = v38;
      *&v45 = MEMORY[0x277D85DD0];
      *(&v45 + 1) = 1107296256;
      *&v46 = sub_25C79E418;
      *(&v46 + 1) = &block_descriptor;
      v43 = _Block_copy(&v45);
      v44 = v34;

      [v39 animateWithDuration:v43 animations:*&v28];

      _Block_release(v43);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C79D390(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id MathNotesUpdateSafeAreaInsetsAction.__allocating_init(safeAreaInsets:isModeButtonHidden:animationSettings:animationDuration:animationFenceHandle:)(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v16 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
  v17 = sub_25C7AABDC();
  [v16 setObject:v17 forSetting:0];

  v18 = [objc_opt_self() valueWithUIEdgeInsets_];
  [v16 setObject:v18 forSetting:1];

  [v16 setObject:a2 forSetting:2];
  v19 = sub_25C7AAB7C();
  [v16 setObject:v19 forSetting:3];

  if (a3)
  {
    [v16 setObject:a3 forSetting:4];
  }

  v20 = [objc_allocWithZone(v9) initWithInfo:v16 responder:0];

  return v20;
}

void sub_25C79D5B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id MathNotesUpdateCalculatorModeAction.__allocating_init(mode:)(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
  v4 = sub_25C7AABEC();
  [v3 setObject:v4 forSetting:0];

  v5 = [objc_allocWithZone(v2) initWithInfo:v3 responder:0];
  return v5;
}

uint64_t MathNotesUpdateCalculatorModeAction.performAction(forSceneController:)(void *a1)
{
  v2 = [a1 delegate];
  if (v2 && (v20[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15170, &qword_25C7AB870), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15178, &qword_25C7AB878), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v18 + 1))
    {
      sub_25C79D390(&v17, v20);
      v3 = [v1 info];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 objectForSetting_];

        if (v5)
        {
          sub_25C7AAC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          *v14 = 0u;
          v15 = 0u;
        }

        v17 = *v14;
        v18 = v15;
        if (*(&v15 + 1))
        {
          sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return __swift_destroy_boxed_opaque_existential_1Tm(v20);
          }

          v7 = [v14[0] integerValue];

          if (v7 >= 3)
          {
            return __swift_destroy_boxed_opaque_existential_1Tm(v20);
          }

          v8 = *__swift_project_boxed_opaque_existential_1Tm(v20, v20[3]);
          v9 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
          swift_beginAccess();
          sub_25C79CB08(v8 + v9, &v17, &qword_27FC151B0, &qword_25C7AB888);
          if (*(&v18 + 1))
          {
            sub_25C7A091C(&v17, v14);
            sub_25C79C9E8(&v17, &qword_27FC151B0, &qword_25C7AB888);
            v10 = *(&v15 + 1);
            v11 = v16;
            __swift_project_boxed_opaque_existential_1Tm(v14, *(&v15 + 1));
            (*(v11 + 24))(v8, v7, v10, v11);
            __swift_destroy_boxed_opaque_existential_1Tm(v14);
            return __swift_destroy_boxed_opaque_existential_1Tm(v20);
          }

          v12 = &qword_27FC151B0;
          v13 = &qword_25C7AB888;
LABEL_18:
          sub_25C79C9E8(&v17, v12, v13);
          return __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v12 = &qword_27FC15180;
      v13 = &qword_25C7AB880;
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  return sub_25C79C9E8(&v17, &qword_27FC15108, &unk_25C7AB860);
}

unint64_t MathNotesCalculatorMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id sub_25C79DAA8(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id sub_25C79DB04(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id sub_25C79DB6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a3, a4);
}

id sub_25C79DBC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_25C79DC00(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_25C79DC44(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_25C79DC90(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id sub_25C79DD00(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v6, sel_initWithXPCDictionary_, a3);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

id MathNotesUpdateCalculatorModeAction.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_25C79DDBC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_25C79DE28(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_25C79DEAC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_25C79D5B4;
    v14[3] = a5;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v7) initWithInfo:a1 timeout:a2 forResponseOnQueue:v11 withHandler:a6];
  _Block_release(v11);

  return v12;
}

id sub_25C79DF98(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = v6;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v18[4] = a3;
    v18[5] = a4;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_25C79D5B4;
    v18[3] = a5;
    v15 = _Block_copy(v18);
  }

  else
  {
    v15 = 0;
  }

  v19.receiver = v8;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v15, a6);
  sub_25C7A090C(a3, a4);

  _Block_release(v15);
  return v16;
}

id sub_25C79E168()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C79E1B4()
{
  v1 = *v0;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v1);
  return sub_25C7AAD4C();
}

uint64_t sub_25C79E228(uint64_t a1)
{
  v2 = *v1;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v2);
  return sub_25C7AAD4C();
}

unint64_t *sub_25C79E26C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_25C79E294()
{
  v0 = ICNotesAppBundleIdentifier();
  if (!v0)
  {
    sub_25C7AAABC();
    v0 = sub_25C7AAAAC();
  }

  v1 = [objc_opt_self() applicationWithBundleIdentifier_];

  qword_27FC15100 = v1;
}

void sub_25C79E370(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27FC15050 != -1)
    {
      swift_once();
    }

    sub_25C79E538(qword_27FC15100);
  }
}

uint64_t sub_25C79E418(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25C79E538(void *a1)
{
  if ([objc_opt_self() isMainThread])
  {
    if ([a1 isLocked])
    {

      sub_25C79F3B4(v3);
    }

    else
    {
      v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
      [*(v1 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) removeFromSuperview];
      v5 = *(v1 + v4);
      *(v1 + v4) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_25C79E5D8()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController;
  v2 = *(v0 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController);
  }

  else
  {
    v4 = type metadata accessor for MathNotesHostingViewController.AppProtectionController();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id MathNotesHostingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MathNotesHostingViewController.init()()
{
  *&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController] = 0;
  *&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController] = 0;
  *&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView] = 0;
  v1 = &v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate];
  v2 = type metadata accessor for MathNotesHostingViewController();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_25C79E85C(uint64_t a1, uint64_t *a2)
{
  sub_25C79CB08(a1, v6, &qword_27FC151B0, &qword_25C7AB888);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  sub_25C7A09A4(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_25C79E8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  return sub_25C79CB08(v1 + v3, a1, &qword_27FC151B0, &qword_25C7AB888);
}

uint64_t sub_25C79E938(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  sub_25C7A09A4(a1, v1 + v3);
  return swift_endAccess();
}

void sub_25C79EAC0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for MathNotesHostingViewController();
  v22.receiver = v1;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, sel_viewIsAppearing_, a1 & 1);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = [v9 windowScene];

      if (v10)
      {
        v11 = objc_opt_self();
        v12 = [v11 defaultCenter];
        [v12 addObserver:v1 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:v10];

        v13 = [v11 defaultCenter];
        [v13 addObserver:v1 selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:v10];
      }
    }

    if (qword_27FC15050 != -1)
    {
      swift_once();
    }

    if ([qword_27FC15100 isLocked])
    {
      sub_25C79F3B4(v14);
      v15 = sub_25C7AAB6C();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_25C7AAB4C();
      v16 = v1;
      v17 = sub_25C7AAB3C();
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v16;
      sub_25C79FD2C(0, 0, v5, &unk_25C7AB8A0, v18);
    }

    else
    {
      v20 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
      [*&v1[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView] removeFromSuperview];
      v21 = *&v1[v20];
      *&v1[v20] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25C79EDE0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for MathNotesHostingViewController();
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, v3 & 1);
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {
      v7 = [v6 windowScene];

      if (v7)
      {
        v8 = objc_opt_self();
        v9 = [v8 defaultCenter];
        [v9 removeObserver:v2 name:*MEMORY[0x277D76E58] object:v7];

        v10 = [v8 defaultCenter];
        [v10 removeObserver:v2 name:*MEMORY[0x277D76E80] object:v7];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25C79EF78()
{
  if (qword_27FC15050 != -1)
  {
    swift_once();
  }

  if ([qword_27FC15100 isLocked])
  {

    sub_25C79F3B4(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
    [*(v0 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) removeFromSuperview];
    v3 = *(v0 + v2);
    *(v0 + v2) = 0;
  }
}

void sub_25C79F238(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (a1)
  {
    sub_25C79F3B4(v6);
    if (a2)
    {
      v9 = sub_25C7AAB6C();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      sub_25C7AAB4C();
      v10 = v2;
      v11 = sub_25C7AAB3C();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      v12[2] = v11;
      v12[3] = v13;
      v12[4] = v10;
      sub_25C79FD2C(0, 0, v8, &unk_25C7ABB38, v12);
    }
  }

  else
  {
    v14 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
    [*&v2[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView] removeFromSuperview];
    v15 = *&v2[v14];
    *&v2[v14] = 0;
  }
}

void sub_25C79F3B4(double a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
  v4 = *&v1[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView];
  gotLoadHelper_x21__OBJC_CLASS___APBaseShieldView(a1);
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {

      [v5 resetShield];
      return;
    }
  }

  if (qword_27FC15050 != -1)
  {
    swift_once();
  }

  v6 = [objc_allocWithZone(*(v2 + 3792)) initWithApplication_];
  v7 = sub_25C79E5D8();
  [v6 setDelegate_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152E8, &qword_25C7ABB30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25C7AB850;
  v11 = [v6 leadingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v15;
  v16 = [v6 trailingAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v10 + 40) = v20;
  v21 = [v6 topAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v10 + 48) = v25;
  v26 = [v6 bottomAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = objc_opt_self();
  v30 = [v28 bottomAnchor];

  v31 = [v26 constraintEqualToAnchor_];
  *(v10 + 56) = v31;
  sub_25C7A1E50(0, &unk_27FC152F0, 0x277CCAAD0);
  v32 = sub_25C7AAAEC();

  [v29 activateConstraints_];

  v33 = *&v1[v3];
  *&v1[v3] = v6;
}

uint64_t sub_25C79F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_25C7AAB4C();
  v4[19] = sub_25C7AAB3C();
  v6 = sub_25C7AAB2C();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_25C79F840, v6, v5);
}

uint64_t sub_25C79F840()
{
  v1 = [objc_opt_self() sharedGuard];
  v0[22] = v1;
  if (qword_27FC15050 != -1)
  {
    swift_once();
  }

  v2 = qword_27FC15100;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_25C79F9C0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152D8, &qword_25C7ABB20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25C79FC60;
  v0[13] = &block_descriptor_85;
  v0[14] = v3;
  [v1 authenticateForShieldDismissalForSubject:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25C79F9C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_25C79FB7C;
  }

  else
  {
    v5 = sub_25C79FAF0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25C79FAF0()
{
  v1 = v0[22];
  v2 = v0[18];

  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
  [*(v2 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) removeFromSuperview];
  v4 = *(v2 + v3);
  *(v2 + v3) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_25C79FB7C()
{
  v1 = v0[22];
  v2 = v0[18];

  swift_willThrow();

  v4 = *(v2 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView);
  if (v4)
  {
    gotLoadHelper_x8__OBJC_CLASS___APBaseShieldView(v3);
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v6 = v0[23];
    if (v5)
    {
      v7 = v5;
      v8 = v4;
      [v7 setShieldStyle_];

      goto LABEL_7;
    }

    v9 = v0[23];
  }

  else
  {
    v9 = v0[23];
  }

LABEL_7:
  v10 = v0[1];

  return v10();
}

uint64_t sub_25C79FC60(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152E0, &qword_25C7ABB28);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_25C79FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25C79CB08(a3, v25 - v10, &qword_27FC151D0, &qword_25C7AB890);
  v12 = sub_25C7AAB6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25C79C9E8(v11, &qword_27FC151D0, &qword_25C7AB890);
  }

  else
  {
    sub_25C7AAB5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25C7AAB2C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25C7AAACC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25C79C9E8(a3, &qword_27FC151D0, &qword_25C7AB890);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25C79C9E8(a3, &qword_27FC151D0, &qword_25C7AB890);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_25C7A002C()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController;
  if (*&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController])
  {
    return;
  }

  v2 = ICNotesAppBundleIdentifier();
  if (!v2)
  {
    sub_25C7AAABC();
    v2 = sub_25C7AAAAC();
  }

  v3 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  v4 = [objc_allocWithZone(type metadata accessor for NKNotesSceneSpecification()) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithProcessIdentity:v3 sceneSpecification:v4];
  v6 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
  [v5 setActivationController_];

  [v5 setDelegate_];
  v7 = [v5 sceneViewController];
  [v0 addChildViewController_];

  v8 = [v5 sceneView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [v5 sceneViewController];
  [v9 loadViewIfNeeded];

  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v46 = v4;
  v47 = v3;
  v12 = [v5 sceneView];
  [v11 insertSubview:v12 atIndex:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152E8, &qword_25C7ABB30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25C7AB850;
  v14 = [v5 sceneView];
  v15 = [v14 leadingAnchor];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v13 + 32) = v19;
  v20 = [v5 sceneView];
  v21 = [v20 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v44 = v1;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v13 + 40) = v25;
  v26 = [v5 sceneView];
  v27 = [v26 bottomAnchor];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v13 + 48) = v31;
  v32 = [v5 sceneView];
  v33 = [v32 topAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 topAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v13 + 56) = v38;
  sub_25C7A1E50(0, &unk_27FC152F0, 0x277CCAAD0);
  v39 = sub_25C7AAAEC();

  [v36 activateConstraints_];

  v40 = [v5 sceneViewController];
  [v40 didMoveToParentViewController_];

  v41 = *&v44[v0];
  *&v44[v0] = v5;
  v42 = v5;

  v43 = [v42 sceneView];
  v45 = [objc_opt_self() systemOrangeColor];
  [v43 setTintColor_];
}

id MathNotesHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25C7AAAAC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_25C7A0770(char *a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  sub_25C79CB08(&a1[v14], v22, &qword_27FC151B0, &qword_25C7AB888);
  if (v23)
  {
    sub_25C7A091C(v22, v19);
    sub_25C79C9E8(v22, &qword_27FC151B0, &qword_25C7AB888);
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    (*(v16 + 16))(a1, a2 & 1, a3, v15, v16, a4, a5, a6, a7);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_25C79C9E8(v22, &qword_27FC151B0, &qword_25C7AB888);
  }

  v17 = [a1 view];
  if (v17)
  {
    v18 = v17;
    [v17 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C7A090C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25C7A091C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C7A09A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151B0, &qword_25C7AB888);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7A0A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25C7A1F00;

  return sub_25C79F7A8(a1, v4, v5, v6);
}

uint64_t UIScene.hostApplicationIdentifier.getter()
{
  v1 = [v0 _FBSScene];
  v2 = [v1 hostHandle];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_11:
    sub_25C79C9E8(&v9, &qword_27FC15180, &qword_25C7AB880);
    return 0;
  }

  v3 = [v2 auditToken];

  v4 = sub_25C7AAAAC();
  v5 = [v3 valueForEntitlement_];

  if (v5)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_25C7A0DA0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25C7A0DD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25C7A0ED0;

  return v6(a1);
}

uint64_t sub_25C7A0ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25C7A0FC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25F88DD00](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_25C7AAC7C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_25C7A10F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_25C7AAB6C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_25C7AAB4C();
    v6 = v4;
    v7 = sub_25C7AAB3C();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_25C79FD2C(0, 0, v2, &unk_25C7ABB00, v8);
  }
}

uint64_t sub_25C7A1230(unint64_t a1)
{
  v2 = sub_25C7AAA6C();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25C7AAA8C();
  v24 = *(v26 - 8);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_24:
    v4 = sub_25C7AAC7C();
    v7 = v4;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x25F88DD00](v10, a1);
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v11 = *(a1 + 8 * v10 + 32);
        }

        v12 = v11;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v10;
        if (v9 == v7)
        {
          goto LABEL_17;
        }
      }

      MEMORY[0x25F88DB80]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25C7AAB0C();
      }

      v4 = sub_25C7AAB1C();
      v8 = aBlock[0];
    }

    while (v9 != v7);
  }

LABEL_17:
  if (qword_27FC15050 != -1)
  {
    v4 = swift_once();
  }

  aBlock[0] = qword_27FC15100;
  MEMORY[0x28223BE20](v4);
  *(&v22 - 2) = aBlock;
  v13 = sub_25C7A0FC8(sub_25C7A18A8, (&v22 - 4), v8);

  if (v13)
  {
    sub_25C7A1E50(0, &qword_27FC152B8, 0x277D85C78);
    v15 = sub_25C7AABAC();
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 16) = v23;
    aBlock[4] = sub_25C7A1900;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C79E418;
    aBlock[3] = &block_descriptor_60;
    v18 = _Block_copy(aBlock);
    v19 = v17;

    sub_25C7AAA7C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25C7A1908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152C8, &qword_25C7ABAF8);
    sub_25C7A1960();
    v20 = v25;
    v21 = v28;
    sub_25C7AAC2C();
    MEMORY[0x25F88DC60](0, v6, v20, v18);
    _Block_release(v18);

    (*(v27 + 8))(v20, v21);
    return (*(v24 + 8))(v6, v26);
  }

  return result;
}

unint64_t sub_25C7A16A0()
{
  result = qword_27FC151D8;
  if (!qword_27FC151D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC151D8);
  }

  return result;
}

unint64_t sub_25C7A1908()
{
  result = qword_27FC152C0;
  if (!qword_27FC152C0)
  {
    sub_25C7AAA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC152C0);
  }

  return result;
}

unint64_t sub_25C7A1960()
{
  result = qword_27FC152D0;
  if (!qword_27FC152D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC152C8, &qword_25C7ABAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC152D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C7A1A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25C7A1AC0;

  return sub_25C79F7A8(a1, v4, v5, v6);
}

uint64_t sub_25C7A1AC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25C7A1BC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25C7A1F00;

  return sub_25C7A0DD8(a1, v4);
}

uint64_t sub_25C7A1C80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25C7A1AC0;

  return sub_25C7A0DD8(a1, v4);
}

uint64_t sub_25C7A1D48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25C7A1E50(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id NotesIndexSharedModel.__allocating_init(date:showCollaboratorBadge:notesFolder:attachmentURL:hasUnreadChanges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v15 = sub_25C7AA52C();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v18 = sub_25C7AA4FC();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  swift_beginAccess();
  sub_25C79C980(a1, &v13[v14], &qword_27FC15078, &unk_25C7ABBB0);
  swift_endAccess();
  v13[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = a2;
  swift_beginAccess();
  *v16 = a3;
  v16[1] = a4;

  swift_beginAccess();
  sub_25C79C980(a5, &v13[v17], &qword_27FC15070, &qword_25C7AB768);
  swift_endAccess();
  v13[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = a6;
  v22.receiver = v13;
  v22.super_class = v7;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  sub_25C79C9E8(a5, &qword_27FC15070, &qword_25C7AB768);
  sub_25C79C9E8(a1, &qword_27FC15078, &unk_25C7ABBB0);
  return v19;
}

uint64_t NotesSharedIndexedSearchView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v6 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = 0x404A000000000000;
  *(a3 + v6[10]) = 0x4020000000000000;
  *(a3 + v6[11]) = 0x402C000000000000;
  *(a3 + v6[12]) = 0x402C000000000000;
  v10 = (a3 + v6[13]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a3 + v6[14]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a3 + v6[8]);
  *v12 = a1;
  v12[1] = a2;
  return result;
}

uint64_t sub_25C7A2324()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25C7A2368(char a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25C7A2418(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25C7A2484()
{
  v1 = (v0 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25C7A24DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25C7A259C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_25C79CB08(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_25C7A81C0(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_25C7A2690@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_25C79CB08(v4 + v8, a4, a2, a3);
}

uint64_t sub_25C7A2718(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_25C7A81C0(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_25C7A27EC()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25C7A2830(char a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id NotesIndexSharedModel.init(date:showCollaboratorBadge:notesFolder:attachmentURL:hasUnreadChanges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v13 = sub_25C7AA52C();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = &v6[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v16 = sub_25C7AA4FC();
  (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
  swift_beginAccess();
  sub_25C79C980(a1, &v6[v12], &qword_27FC15078, &unk_25C7ABBB0);
  swift_endAccess();
  v6[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = a2;
  swift_beginAccess();
  *v14 = a3;
  v14[1] = a4;

  swift_beginAccess();
  sub_25C79C980(a5, &v6[v15], &qword_27FC15070, &qword_25C7AB768);
  swift_endAccess();
  v6[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = a6;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for NotesIndexSharedModel(0);
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_25C79C9E8(a5, &qword_27FC15070, &qword_25C7AB768);
  sub_25C79C9E8(a1, &qword_27FC15078, &unk_25C7ABBB0);
  return v17;
}

id NotesIndexSharedModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25C7A2B84()
{
  v1 = *v0;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v1);
  return sub_25C7AAD4C();
}

uint64_t sub_25C7A2BF8(uint64_t a1)
{
  v2 = *v1;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v2);
  return sub_25C7AAD4C();
}

unint64_t sub_25C7A2C3C()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6C6F467365746F6ELL;
  v4 = 0x656D686361747461;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25C7A2CEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25C7A9978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25C7A2D2C(uint64_t a1)
{
  v2 = sub_25C7A8280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25C7A2D68(uint64_t a1)
{
  v2 = sub_25C7A8280();

  return MEMORY[0x2821FE720](a1, v2);
}

id NotesIndexSharedModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesIndexSharedModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C7A2E50(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15300, &qword_25C7ABC90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C7A8280();
  sub_25C7AAD6C();
  v14 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  swift_beginAccess();
  sub_25C79CB08(v2 + v14, v9, &qword_27FC15078, &unk_25C7ABBB0);
  v22 = 0;
  sub_25C7AA52C();
  sub_25C7A82D4(&qword_28119B5C0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v15 = v18;
  sub_25C7AACEC();
  sub_25C79C9E8(v9, &qword_27FC15078, &unk_25C7ABBB0);
  if (!v15)
  {
    swift_beginAccess();
    v21 = 1;
    sub_25C7AACFC();
    swift_beginAccess();
    v20 = 2;

    sub_25C7AACDC();

    v17 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
    swift_beginAccess();
    sub_25C79CB08(v2 + v17, v6, &qword_27FC15070, &qword_25C7AB768);
    v19 = 3;
    sub_25C7AA4FC();
    sub_25C7A82D4(&qword_28119B5C8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_25C7AACEC();
    sub_25C79C9E8(v6, &qword_27FC15070, &qword_25C7AB768);
    swift_beginAccess();
    v23 = 4;
    sub_25C7AACFC();
  }

  return (*(v11 + 8))(v13, v10);
}

char *NotesIndexSharedModel.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15308, &qword_25C7ABC98);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v14 = sub_25C7AA52C();
  v15 = *(*(v14 - 8) + 56);
  v48 = v13;
  v15(&v2[v13], 1, 1, v14);
  v16 = &v2[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v16 = 0;
  v16[1] = 0;
  v42 = v16;
  v17 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v18 = sub_25C7AA4FC();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v19(&v2[v17], 1, 1, v18);
  v20 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  sub_25C7A8280();
  v40 = v12;
  v21 = v41;
  sub_25C7AAD5C();
  if (v21)
  {
    v24 = v48;
    v25 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    sub_25C79C9E8(&v2[v24], &qword_27FC15078, &unk_25C7ABBB0);

    sub_25C79C9E8(&v2[v25], &qword_27FC15070, &qword_25C7AB768);
    type metadata accessor for NotesIndexSharedModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v6;
    v22 = v38;
    v47 = 0;
    sub_25C7A82D4(&qword_28119B550, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v23 = v39;
    sub_25C7AACAC();
    v27 = v48;
    swift_beginAccess();
    sub_25C7A81C0(v9, &v2[v27], &qword_27FC15078, &unk_25C7ABBB0);
    swift_endAccess();
    v47 = 1;
    v28 = v22;
    v2[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = sub_25C7AACBC() & 1;
    v47 = 2;
    v29 = sub_25C7AAC9C();
    v31 = v42;
    v30 = v43;
    v32 = v29;
    v34 = v33;
    swift_beginAccess();
    *v31 = v32;
    v31[1] = v34;

    v46 = 3;
    sub_25C7A82D4(&qword_28119B558, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v35 = v41;
    sub_25C7AACAC();
    swift_beginAccess();
    sub_25C7A81C0(v35, &v2[v30], &qword_27FC15070, &qword_25C7AB768);
    swift_endAccess();
    v46 = 4;
    v2[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = sub_25C7AACBC() & 1;
    v36 = type metadata accessor for NotesIndexSharedModel(0);
    v45.receiver = v2;
    v45.super_class = v36;
    v2 = objc_msgSendSuper2(&v45, sel_init);
    (*(v28 + 8))(v40, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  return v2;
}

uint64_t sub_25C7A38FC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_25C79CB08(v4 + v8, a4, a2, a3);
}

char *sub_25C7A3968@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for NotesIndexSharedModel(0));
  result = NotesIndexSharedModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NotesYellowHeaderView.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25C7AA94C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  v21 = sub_25C7AA9AC();
  v7(v5, v6, v2);
  v20 = sub_25C7AA9AC();
  v8 = [objc_opt_self() quaternaryLabelColor];
  v9 = sub_25C7AA93C();
  v10 = _UISolariumEnabled();
  v11 = _UISolariumEnabled();
  if (_UISolariumEnabled())
  {
    v22 = sub_25C7AA95C();
    sub_25C7A831C();
    v12 = sub_25C7AA9CC();
  }

  else
  {
    v7(v5, v6, v2);
    v12 = sub_25C7AA9AC();
  }

  v13 = v12;
  if (_UISolariumEnabled())
  {
    v22 = sub_25C7AA95C();
    sub_25C7A831C();
    result = sub_25C7AA9CC();
    v15 = result;
  }

  else
  {
    v7(v5, v6, v2);
    sub_25C7AA9AC();
    v15 = sub_25C7AA97C();
  }

  v16 = 0.0;
  if (v11)
  {
    v16 = 2.0;
  }

  v17 = 4.0;
  v18 = v20;
  *a1 = v21;
  *(a1 + 8) = v18;
  *(a1 + 16) = v9;
  if (v10)
  {
    v17 = 5.0;
  }

  *(a1 + 24) = v17;
  *(a1 + 32) = v16;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  return result;
}

uint64_t NotesYellowHeaderView.body.getter@<X0>(uint64_t a8@<X8>)
{
  v10 = *(v8 + 16);
  v13[0] = *v8;
  v13[1] = v10;
  v13[2] = *(v8 + 32);
  v14 = *(v8 + 48);
  *a8 = sub_25C7AA79C();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15318, &qword_25C7ABCA0);
  return sub_25C7A3D00(v13, a8 + *(v11 + 44));
}

uint64_t sub_25C7A3D00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154D8, &qword_25C7AC3D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[1];
  v20 = *a1;
  v21 = v10;
  v22 = a1[2];
  v23 = *(a1 + 6);
  sub_25C7A3F10(&v18 - v8);
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = a1[2];
  *(v11 + 64) = *(a1 + 6);
  sub_25C7AA2DC(a1, &v20);
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v18 = v21;
  v19 = v20;
  v13 = v22;
  v25 = BYTE8(v20);
  v24 = BYTE8(v21);
  sub_25C79CB08(v9, v7, &qword_27FC154D8, &qword_25C7AC3D0);
  v14 = v25;
  LOBYTE(a1) = v24;
  sub_25C79CB08(v7, a2, &qword_27FC154D8, &qword_25C7AC3D0);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154E0, &qword_25C7AC3D8) + 48);
  *v15 = sub_25C7AA2D4;
  *(v15 + 8) = v11;
  v16 = v18;
  *(v15 + 16) = v19;
  *(v15 + 24) = v14;
  *(v15 + 32) = v16;
  *(v15 + 40) = a1;
  *(v15 + 48) = v13;

  sub_25C79C9E8(v9, &qword_27FC154D8, &qword_25C7AC3D0);

  return sub_25C79C9E8(v7, &qword_27FC154D8, &qword_25C7AC3D0);
}

double sub_25C7A3F10@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v25 = v1[5];
  v26 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154F0, &qword_25C7AC3E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25C7ABB80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;

  sub_25C7AAA4C();
  sub_25C7AAA5C();
  MEMORY[0x25F88DAB0](v5);
  sub_25C7AA60C();

  sub_25C7AAA2C();
  sub_25C7AA5EC();
  LOBYTE(v33) = v28;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154F8, &qword_25C7AC3F0) + 36);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15500, &qword_25C7AC3F8) + 36);
  v8 = *MEMORY[0x277CE13B0];
  v9 = sub_25C7AAA3C();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = v27;
  *(v6 + 8) = v28;
  *(v6 + 16) = v29;
  *(v6 + 24) = v30;
  *(v6 + 32) = v31;
  *(v6 + 40) = v32;
  *(v6 + 48) = xmmword_25C7ABB90;
  *(v6 + 64) = v26;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0xBFF0000000000000;

  v10 = sub_25C7AAA1C();
  v12 = v11;
  v13 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15508, &qword_25C7AC400) + 36));
  *v13 = v10;
  v13[1] = v12;
  *a1 = v36;
  *(a1 + 16) = v37;
  *(a1 + 32) = v38;
  *(a1 + 40) = v25;
  *(a1 + 48) = xmmword_25C7ABBA0;
  *(a1 + 64) = 0x3FF0000000000000;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15510, &qword_25C7AC408) + 36)) = 0;
  LOBYTE(v10) = sub_25C7AA7DC();
  sub_25C7AA57C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15518, &qword_25C7AC410) + 36);
  *v22 = v10;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154D8, &qword_25C7AC3D0) + 36));
  *v23 = v33;
  v23[1] = v34;
  result = *&v35;
  v23[2] = v35;
  return result;
}

__n128 sub_25C7A41F4@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25C7AA88C();
  v5 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154E8, &qword_25C7AC3E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25C7ABB80;
  *(v6 + 32) = 0x3F50624DD2F1A9FCLL;
  *(v6 + 40) = *(a2 + 24);
  sub_25C7AA5AC();

  v7 = sub_25C7AAA2C();
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  *(a3 + 64) = v14;
  result = v11;
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 80) = v5;
  *(a3 + 88) = 256;
  *(a3 + 96) = v7;
  *(a3 + 104) = v9;
  return result;
}

void sub_25C7A42F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25C7AA5FC();
  remainder(v4, *(a3 + 24));
  sub_25C7AA86C();
  sub_25C7AA5FC();
  v6 = v5 * 0.25;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 - 0x2000000000000000) >> 62 == 3)
  {
    sub_25C7AA5FC();
    remainder(v7, 4.0);
    sub_25C7AA87C();
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_25C7A43F0()
{
  v1 = sub_25C7AA6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *v0;

    sub_25C7AAB9C();
    v7 = sub_25C7AA7CC();
    sub_25C7AA55C();

    sub_25C7AA6DC();
    swift_getAtKeyPath();
    sub_25C7A9CC0(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_25C7A455C()
{
  v1 = sub_25C7AA6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
  }

  else
  {

    sub_25C7AAB9C();
    v7 = sub_25C7AA7CC();
    sub_25C7AA55C();

    sub_25C7AA6DC();
    swift_getAtKeyPath();
    sub_25C7A9CCC(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_25C7A46C0@<X0>(void *a1@<X8>)
{
  v3 = sub_25C7AA6EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NotesSharedIndexedSearchView(0);
  sub_25C79CB08(v1 + *(v10 + 28), v9, &qword_27FC15088, &qword_25C7AB830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25C7AA58C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25C7AAB9C();
    v13 = sub_25C7AA7CC();
    sub_25C7AA55C();

    sub_25C7AA6DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_25C7A48C8@<X0>(uint64_t a8@<X8>)
{
  v10 = *(v8 + 16);
  v13[0] = *v8;
  v13[1] = v10;
  v13[2] = *(v8 + 32);
  v14 = *(v8 + 48);
  *a8 = sub_25C7AA79C();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15318, &qword_25C7ABCA0);
  return sub_25C7A3D00(v13, a8 + *(v11 + 44));
}

uint64_t NotesSharedIndexedSearchView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15320, &qword_25C7ABCA8);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for NotesSharedIndexedSearchView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v8 = KeyPath;
  v8[8] = 0;
  v25 = swift_getKeyPath();
  *(v8 + 2) = v25;
  *(v8 + 3) = 0;
  v8[32] = 0;
  v9 = v6[6];
  *&v8[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  swift_storeEnumTagMultiPayload();
  v10 = v6[7];
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  swift_storeEnumTagMultiPayload();
  *&v8[v6[9]] = 0x404A000000000000;
  *&v8[v6[10]] = 0x4020000000000000;
  *&v8[v6[11]] = 0x402C000000000000;
  *&v8[v6[12]] = 0x402C000000000000;
  v11 = &v8[v6[13]];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v8[v6[14]];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C7A8370();
  v22 = v5;
  v13 = v27;
  sub_25C7AAD5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_25C79C9E8(&v8[v9], &qword_27FC15328, &qword_25C7ABCB0);
    return sub_25C79C9E8(&v8[v10], &qword_27FC15330, &qword_25C7ABCB8);
  }

  else
  {
    type metadata accessor for NotesIndexSharedModel(0);
    sub_25C7A82D4(&qword_28119B620, type metadata accessor for NotesIndexSharedModel, &protocol conformance descriptor for NotesIndexSharedModel);
    v14 = v24;
    v15 = v22;
    sub_25C7AACCC();
    (*(v23 + 8))(v15, v14);
    v17 = v28;
    v18 = sub_25C7A82D4(&qword_28119B618, type metadata accessor for NotesIndexSharedModel, &protocol conformance descriptor for NotesIndexSharedModel);
    v19 = &v8[v6[8]];
    *v19 = v17;
    *(v19 + 1) = v18;
    sub_25C7A83C4(v8, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_25C7A8428(v8);
  }
}

uint64_t sub_25C7A4CC0()
{
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](0);
  return sub_25C7AAD4C();
}

uint64_t sub_25C7A4D2C(uint64_t a1)
{
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](0);
  return sub_25C7AAD4C();
}

uint64_t sub_25C7A4D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25C7AAD1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25C7A4E10(uint64_t a1)
{
  v2 = sub_25C7A8370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25C7A4E4C(uint64_t a1)
{
  v2 = sub_25C7A8370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotesSharedIndexedSearchView.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15338, &qword_25C7ABCC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C7A8370();
  sub_25C7AAD6C();
  v8 = *(v2 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 32));
  swift_getObjectType();
  v10[1] = v8;
  sub_25C7AAD0C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t NotesSharedIndexedSearchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25C7AA58C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15340, &qword_25C7ABCC8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  *v10 = sub_25C7AA79C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15348, &qword_25C7ABCD0);
  sub_25C7A528C(v1, &v10[*(v11 + 44)]);
  v12 = sub_25C7AAA2C();
  v14 = v13;
  v15 = [objc_opt_self() systemBackgroundColor];
  v16 = sub_25C7AA93C();
  v17 = &v10[*(v8 + 44)];
  *v17 = v16;
  v17[1] = v12;
  v17[2] = v14;
  v18 = [objc_opt_self() mainScreen];
  v19 = [v18 traitCollection];

  v20 = [v19 userInterfaceStyle];
  if (v20 == 1)
  {
    v21 = MEMORY[0x277CDF3D0];
  }

  else
  {
    if (v20 != 2)
    {
      sub_25C7A46C0(v6);
      goto LABEL_7;
    }

    v21 = MEMORY[0x277CDF3C0];
  }

  (*(v4 + 104))(v6, *v21, v3);
LABEL_7:
  KeyPath = swift_getKeyPath();
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15350, &qword_25C7ABD08) + 36));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15358, &qword_25C7ABD10);
  (*(v4 + 32))(v23 + *(v24 + 28), v6, v3);
  *v23 = KeyPath;
  return sub_25C7AA26C(v10, a1, &qword_27FC15340, &qword_25C7ABCC8);
}

uint64_t sub_25C7A528C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153B8, &qword_25C7AC268);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  NotesYellowHeaderView.init()(v49);
  v47 = v49[1];
  v48 = v49[0];
  v11 = v49[2];
  v12 = v49[3];
  v13 = v49[4];
  v14 = v49[5];
  v15 = v49[6];
  *v10 = sub_25C7AA70C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153C0, &qword_25C7AC270);
  sub_25C7A5560(a1, &v10[*(v16 + 44)]);
  v17 = sub_25C7AA7FC();
  type metadata accessor for NotesSharedIndexedSearchView(0);
  sub_25C7AA57C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153C8, &qword_25C7AC278) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_25C7AA80C();
  sub_25C7AA57C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153D0, &qword_25C7AC280) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_25C7AA7EC();
  sub_25C7AA57C();
  v38 = &v10[*(v5 + 44)];
  *v38 = v37;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  sub_25C79CB08(v10, v8, &qword_27FC153B8, &qword_25C7AC268);
  v43 = v47;
  *a2 = v48;
  a2[1] = v43;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153D8, &qword_25C7AC288);
  sub_25C79CB08(v8, a2 + *(v44 + 48), &qword_27FC153B8, &qword_25C7AC268);

  sub_25C79C9E8(v10, &qword_27FC153B8, &qword_25C7AC268);
  sub_25C79C9E8(v8, &qword_27FC153B8, &qword_25C7AC268);
}

uint64_t sub_25C7A5560@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153E0, &qword_25C7AC290);
  MEMORY[0x28223BE20](v88);
  v90 = (v77 - v4);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153E8, &qword_25C7AC298);
  MEMORY[0x28223BE20](v89);
  v83 = (v77 - v5);
  v6 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v7 = v6 - 8;
  v77[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77[1] = v8;
  v78 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153F0, &qword_25C7AC2A0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v81 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = (v77 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v79 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = v77 - v17;
  MEMORY[0x28223BE20](v16);
  v87 = v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153F8, &qword_25C7AC2A8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v91 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v77 - v22;
  v24 = *(v7 + 40);
  v92 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  v27 = v25[1];
  ObjectType = swift_getObjectType();
  v29 = (*(v27 + 32))(ObjectType, v27);
  v93 = v23;
  v86 = ObjectType;
  if (v29)
  {
    v30 = *(v27 + 56);
    v84 = v27;
    v85 = v26;
    if (v30(ObjectType, v27))
    {
      v31 = sub_25C7AA79C();
      LOBYTE(v122) = 0;
      sub_25C7A67AC(&v120);
      v111 = v121[3];
      v112 = v121[4];
      v113 = v121[5];
      v107 = v120;
      v108 = v121[0];
      v109 = v121[1];
      v110 = v121[2];
      v153 = v121[0];
      v152 = v120;
      v154 = v121[1];
      v155 = v121[2];
      v156 = v121[3];
      v157 = v121[4];
      v158 = v121[5];
      sub_25C79CB08(&v107, &v118, &qword_27FC154A0, &qword_25C7AC338);
      sub_25C79C9E8(&v152, &qword_27FC154A0, &qword_25C7AC338);
      *&v94[55] = v110;
      *&v94[71] = v111;
      *&v94[87] = v112;
      *&v94[103] = v113;
      *&v94[7] = v107;
      *&v94[23] = v108;
      *&v94[39] = v109;
      *&v120 = v31;
      *(&v120 + 1) = 0x4010000000000000;
      LOBYTE(v121[0]) = v122;
      *(&v121[3] + 1) = *&v94[48];
      *(&v121[2] + 1) = *&v94[32];
      *(&v121[1] + 1) = *&v94[16];
      *(v121 + 1) = *v94;
      *&v121[7] = *(&v113 + 1);
      *(&v121[6] + 1) = *&v94[96];
      *(&v121[5] + 1) = *&v94[80];
      *(&v121[4] + 1) = *&v94[64];
      sub_25C7AA114(&v120);
      v119[7] = v121[7];
      v119[8] = v121[8];
      v119[9] = v121[9];
      *(&v119[9] + 9) = *(&v121[9] + 9);
      v119[3] = v121[3];
      v119[4] = v121[4];
      v119[5] = v121[5];
      v119[6] = v121[6];
      v118 = v120;
      v119[0] = v121[0];
      v119[1] = v121[1];
      v119[2] = v121[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15410, &qword_25C7AC2C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15418, &qword_25C7AC2C8);
      v32 = MEMORY[0x277CE1198];
      sub_25C7AA3D4(&qword_28119B4F0, &qword_27FC15410, &qword_25C7AC2C0, MEMORY[0x277CE1198]);
      sub_25C7AA3D4(&qword_28119B4E8, &qword_27FC15418, &qword_25C7AC2C8, v32);
    }

    else
    {
      v35 = sub_25C7AA7AC();
      LOBYTE(v122) = 0;
      sub_25C7A698C(&v120);
      v113 = v121[5];
      v114 = v121[6];
      v115 = v121[7];
      v116 = v121[8];
      v109 = v121[1];
      v110 = v121[2];
      v111 = v121[3];
      v112 = v121[4];
      v107 = v120;
      v108 = v121[0];
      v158 = v121[5];
      v159 = v121[6];
      v160 = v121[7];
      v161 = v121[8];
      v154 = v121[1];
      v155 = v121[2];
      v156 = v121[3];
      v157 = v121[4];
      v152 = v120;
      v153 = v121[0];
      sub_25C79CB08(&v107, &v118, &qword_27FC15498, &qword_25C7AC330);
      sub_25C79C9E8(&v152, &qword_27FC15498, &qword_25C7AC330);
      *&v95[55] = v110;
      *&v95[39] = v109;
      *&v95[103] = v113;
      *&v95[119] = v114;
      *&v95[135] = v115;
      *&v95[151] = v116;
      *&v95[71] = v111;
      *&v95[87] = v112;
      *&v95[7] = v107;
      *&v95[23] = v108;
      *(&v121[7] + 1) = *&v95[112];
      *(&v121[8] + 1) = *&v95[128];
      *(&v121[9] + 1) = *&v95[144];
      *(&v121[3] + 1) = *&v95[48];
      *(&v121[4] + 1) = *&v95[64];
      *(&v121[5] + 1) = *&v95[80];
      *(&v121[6] + 1) = *&v95[96];
      *(v121 + 1) = *v95;
      *(&v121[1] + 1) = *&v95[16];
      v120 = v35;
      LOBYTE(v121[0]) = v122;
      *&v121[10] = *(&v116 + 1);
      *(&v121[2] + 1) = *&v95[32];
      sub_25C7AA100(&v120);
      v119[7] = v121[7];
      v119[8] = v121[8];
      v119[9] = v121[9];
      *(&v119[9] + 9) = *(&v121[9] + 9);
      v119[3] = v121[3];
      v119[4] = v121[4];
      v119[5] = v121[5];
      v119[6] = v121[6];
      v118 = v120;
      v119[0] = v121[0];
      v119[1] = v121[1];
      v119[2] = v121[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15410, &qword_25C7AC2C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15418, &qword_25C7AC2C8);
      v36 = MEMORY[0x277CE1198];
      sub_25C7AA3D4(&qword_28119B4F0, &qword_27FC15410, &qword_25C7AC2C0, MEMORY[0x277CE1198]);
      sub_25C7AA3D4(&qword_28119B4E8, &qword_27FC15418, &qword_25C7AC2C8, v36);
    }

    sub_25C7AA7BC();
    v121[7] = v130;
    v121[8] = v131;
    v121[9] = v132[0];
    *(&v121[9] + 9) = *(v132 + 9);
    v121[3] = v126;
    v121[4] = v127;
    v121[5] = v128;
    v121[6] = v129;
    v120 = v122;
    v121[0] = v123;
    v121[1] = v124;
    v121[2] = v125;
    sub_25C7AA10C(&v120);
    v119[7] = v121[7];
    v119[8] = v121[8];
    v119[9] = v121[9];
    *(&v119[9] + 10) = *(&v121[9] + 10);
    v119[3] = v121[3];
    v119[4] = v121[4];
    v119[5] = v121[5];
    v119[6] = v121[6];
    v118 = v120;
    v119[0] = v121[0];
    v119[1] = v121[1];
    v119[2] = v121[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15400, &qword_25C7AC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15408, &qword_25C7AC2B8);
    sub_25C7A9BE0();
    sub_25C7AA3D4(&qword_28119B4F8, &qword_27FC15408, &qword_25C7AC2B8, MEMORY[0x277CE1198]);
    sub_25C7AA7BC();
    v27 = v84;
  }

  else
  {
    v33 = sub_25C7AA79C();
    LOBYTE(v120) = 1;
    sub_25C7AAA2C();
    sub_25C7AA5EC();
    LOBYTE(v122) = 1;
    LOBYTE(v107) = v148;
    LOBYTE(v96) = v150;
    v34 = v120;
    v120 = v33;
    LOBYTE(v121[0]) = v34;
    *(&v121[0] + 1) = 0;
    LOBYTE(v121[1]) = 1;
    *(&v121[1] + 1) = v147;
    LOBYTE(v121[2]) = v148;
    *(&v121[2] + 1) = v149;
    LOBYTE(v121[3]) = v150;
    *(&v121[3] + 8) = v151;
    sub_25C7A9BD4(&v120);
    v119[7] = v121[7];
    v119[8] = v121[8];
    v119[9] = v121[9];
    *(&v119[9] + 10) = *(&v121[9] + 10);
    v119[3] = v121[3];
    v119[4] = v121[4];
    v119[5] = v121[5];
    v119[6] = v121[6];
    v118 = v120;
    v119[0] = v121[0];
    v119[1] = v121[1];
    v119[2] = v121[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15400, &qword_25C7AC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15408, &qword_25C7AC2B8);
    sub_25C7A9BE0();
    sub_25C7AA3D4(&qword_28119B4F8, &qword_27FC15408, &qword_25C7AC2B8, MEMORY[0x277CE1198]);
    sub_25C7AA7BC();
  }

  v85 = sub_25C7AA7AC();
  LOBYTE(v122) = 0;
  sub_25C7A6B9C(v92, &v120);
  v142 = v121[7];
  v143 = v121[8];
  v138 = v121[3];
  v139 = v121[4];
  v141 = v121[6];
  v140 = v121[5];
  v134 = v120;
  v135 = v121[0];
  v137 = v121[2];
  v136 = v121[1];
  v145[8] = v121[7];
  v145[9] = v121[8];
  v145[4] = v121[3];
  v145[5] = v121[4];
  v145[7] = v121[6];
  v145[6] = v121[5];
  v145[0] = v120;
  v145[1] = v121[0];
  v144 = *&v121[9];
  v146 = *&v121[9];
  v145[3] = v121[2];
  v145[2] = v121[1];
  sub_25C79CB08(&v134, &v118, &qword_27FC15420, &qword_25C7AC2D0);
  sub_25C79C9E8(v145, &qword_27FC15420, &qword_25C7AC2D0);
  *(&v133[7] + 7) = v141;
  *(&v133[8] + 7) = v142;
  *(&v133[9] + 7) = v143;
  *(&v133[3] + 7) = v137;
  *(&v133[4] + 7) = v138;
  *(&v133[5] + 7) = v139;
  *(&v133[6] + 7) = v140;
  *(v133 + 7) = v134;
  *(&v133[1] + 7) = v135;
  *(&v133[10] + 7) = v144;
  *(&v133[2] + 7) = v136;
  LODWORD(v84) = v122;
  v37 = *(v27 + 48);
  v39 = v86;
  v38 = v87;
  v37(v86, v27);
  v40 = sub_25C7AA4FC();
  v41 = (*(*(v40 - 8) + 48))(v38, 1, v40);
  sub_25C79C9E8(v38, &qword_27FC15070, &qword_25C7AB768);
  if (v41 == 1)
  {
    v42 = v90;
    *v90 = 0;
    *(v42 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_25C7AA3D4(&qword_27FC15428, &qword_27FC153E8, &qword_25C7AC298, MEMORY[0x277CE14C0]);
    v43 = v93;
    sub_25C7AA7BC();
  }

  else
  {
    v44 = sub_25C7AA79C();
    v45 = v27;
    v46 = v82;
    *v82 = v44;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15448, &qword_25C7AC2F0);
    v47 = v39;
    v48 = v80;
    v37(v47, v45);
    v49 = v78;
    sub_25C7A83C4(v92, v78);
    v50 = (*(v77[0] + 80) + 16) & ~*(v77[0] + 80);
    v51 = swift_allocObject();
    sub_25C7A9CDC(v49, v51 + v50);
    sub_25C79CB08(v48, v79, &qword_27FC15070, &qword_25C7AB768);
    v52 = swift_allocObject();
    v52[2] = sub_25C7A9D40;
    v52[3] = v51;
    v52[4] = sub_25C7A7D48;
    v52[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15450, &qword_25C7AC2F8);
    sub_25C7A9DCC();
    sub_25C7AA56C();
    sub_25C79C9E8(v48, &qword_27FC15070, &qword_25C7AB768);
    v53 = v81;
    sub_25C79CB08(v46, v81, &qword_27FC153F0, &qword_25C7AC2A0);
    v54 = v83;
    *v83 = 0;
    *(v54 + 8) = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15490, &qword_25C7AC328);
    sub_25C79CB08(v53, v54 + *(v55 + 48), &qword_27FC153F0, &qword_25C7AC2A0);
    sub_25C79C9E8(v53, &qword_27FC153F0, &qword_25C7AC2A0);
    sub_25C79CB08(v54, v90, &qword_27FC153E8, &qword_25C7AC298);
    swift_storeEnumTagMultiPayload();
    sub_25C7AA3D4(&qword_27FC15428, &qword_27FC153E8, &qword_25C7AC298, MEMORY[0x277CE14C0]);
    v43 = v93;
    sub_25C7AA7BC();
    sub_25C79C9E8(v54, &qword_27FC153E8, &qword_25C7AC298);
    sub_25C79C9E8(v46, &qword_27FC153F0, &qword_25C7AC2A0);
  }

  v104 = v160;
  v105 = v161;
  v106[0] = v162[0];
  *(v106 + 10) = *(v162 + 10);
  v100 = v156;
  v101 = v157;
  v102 = v158;
  v103 = v159;
  v96 = v152;
  v97 = v153;
  v98 = v154;
  v99 = v155;
  v56 = v91;
  sub_25C79CB08(v43, v91, &qword_27FC153F8, &qword_25C7AC2A8);
  v57 = v105;
  v115 = v104;
  v116 = v105;
  v58 = v106[0];
  v117[0] = v106[0];
  *(v117 + 10) = *(v106 + 10);
  v59 = v100;
  v60 = v101;
  v111 = v100;
  v112 = v101;
  v61 = v102;
  v62 = v103;
  v113 = v102;
  v114 = v103;
  v63 = v96;
  v64 = v97;
  v107 = v96;
  v108 = v97;
  v65 = v98;
  v66 = v99;
  v109 = v98;
  v110 = v99;
  a2[8] = v104;
  a2[9] = v57;
  a2[10] = v58;
  *(a2 + 170) = *(v106 + 10);
  a2[4] = v59;
  a2[5] = v60;
  a2[6] = v61;
  a2[7] = v62;
  *a2 = v63;
  a2[1] = v64;
  a2[2] = v65;
  a2[3] = v66;
  *(&v119[7] + 1) = v133[7];
  *(&v119[8] + 1) = v133[8];
  *(&v119[9] + 1) = v133[9];
  v119[10] = *(&v133[9] + 15);
  *(&v119[3] + 1) = v133[3];
  *(&v119[4] + 1) = v133[4];
  *(&v119[5] + 1) = v133[5];
  *(&v119[6] + 1) = v133[6];
  *(v119 + 1) = v133[0];
  v67 = v85;
  *&v118 = v85;
  *(&v118 + 1) = 0x4010000000000000;
  v68 = v84;
  LOBYTE(v119[0]) = v84;
  *(&v119[1] + 1) = v133[1];
  *(&v119[2] + 1) = v133[2];
  v69 = v119[8];
  a2[20] = v119[7];
  a2[21] = v69;
  v70 = v119[10];
  a2[22] = v119[9];
  a2[23] = v70;
  v71 = v119[4];
  a2[16] = v119[3];
  a2[17] = v71;
  v72 = v119[6];
  a2[18] = v119[5];
  a2[19] = v72;
  v73 = v119[0];
  a2[12] = v118;
  a2[13] = v73;
  v74 = v119[2];
  a2[14] = v119[1];
  a2[15] = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15430, &qword_25C7AC2D8);
  sub_25C79CB08(v56, a2 + *(v75 + 64), &qword_27FC153F8, &qword_25C7AC2A8);
  sub_25C79CB08(&v107, &v120, &qword_27FC15438, &qword_25C7AC2E0);
  sub_25C79CB08(&v118, &v120, &qword_27FC15440, &qword_25C7AC2E8);
  sub_25C79C9E8(v93, &qword_27FC153F8, &qword_25C7AC2A8);
  sub_25C79C9E8(v56, &qword_27FC153F8, &qword_25C7AC2A8);
  *(&v121[7] + 1) = v133[7];
  *(&v121[8] + 1) = v133[8];
  *(&v121[9] + 1) = v133[9];
  v121[10] = *(&v133[9] + 15);
  *(&v121[3] + 1) = v133[3];
  *(&v121[4] + 1) = v133[4];
  *(&v121[5] + 1) = v133[5];
  *(&v121[6] + 1) = v133[6];
  *(v121 + 1) = v133[0];
  *(&v121[1] + 1) = v133[1];
  *&v120 = v67;
  *(&v120 + 1) = 0x4010000000000000;
  LOBYTE(v121[0]) = v68;
  *(&v121[2] + 1) = v133[2];
  sub_25C79C9E8(&v120, &qword_27FC15440, &qword_25C7AC2E8);
  v130 = v104;
  v131 = v105;
  v132[0] = v106[0];
  *(v132 + 10) = *(v106 + 10);
  v126 = v100;
  v127 = v101;
  v128 = v102;
  v129 = v103;
  v122 = v96;
  v123 = v97;
  v124 = v98;
  v125 = v99;
  return sub_25C79C9E8(&v122, &qword_27FC15438, &qword_25C7AC2E0);
}

uint64_t sub_25C7A67AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154A8, &qword_25C7AC340);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_25C7AA9DC();
  v6 = sub_25C7AA96C();
  v7 = sub_25C7AA9DC();
  v8 = sub_25C7AA82C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_25C7AA83C();
  sub_25C79C9E8(v4, &qword_27FC154A8, &qword_25C7AC340);
  KeyPath = swift_getKeyPath();
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v11 = v16[1];
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v23 = 1;
  v22 = v17;
  v21 = v19;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0x3FE0000000000000;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v20;
}

double sub_25C7A698C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154A8, &qword_25C7AC340);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v5 = v21;
  v6 = v23;
  v8 = v25;
  v7 = v26;
  v34 = 1;
  v33 = v22;
  v32 = v24;
  v9 = sub_25C7AA9DC();
  v10 = sub_25C7AA82C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_25C7AA83C();
  sub_25C79C9E8(v4, &qword_27FC154A8, &qword_25C7AC340);
  KeyPath = swift_getKeyPath();
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v34;
  v18 = v33;
  v19 = v32;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = v5;
  *(a1 + 24) = v18;
  *(a1 + 32) = v6;
  *(a1 + 40) = v19;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v11;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v13;
  *(a1 + 120) = v14;
  *(a1 + 128) = v15;
  *(a1 + 136) = v16;
  result = *&v31;
  *(a1 + 144) = v31;
  return result;
}

uint64_t sub_25C7A6B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25C7A6E98(&v32);
  v21 = v33;
  v22 = v32;
  v4 = v34;
  v23 = v36;
  v24 = v35;
  v20 = v37;
  v19 = v38;
  v26 = sub_25C7AA6FC();
  sub_25C7A76C8(a1, &v32);
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v25 = v35;
  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = 1;
  v9 = v7;
  LOBYTE(v28) = v7;
  v42 = 0;
  v10 = *(a1 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 32) + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 40))(ObjectType, v10);
  if (v12)
  {
    sub_25C7A7104(&v32);

    v13 = v32;
    v14 = v33;
    v15 = v34;
    v16 = v35;
    sub_25C7AA11C(v32, v33, v34);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v42 = v4;
  v28 = v26;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = v5;
  *&v30 = v6;
  BYTE8(v30) = v9;
  *v31 = v25;
  *&v31[8] = KeyPath;
  *&v31[16] = 1;
  v31[24] = 0;
  *&v27[7] = v26;
  *&v27[64] = *&v31[9];
  *&v27[55] = *v31;
  *&v27[39] = v30;
  *&v27[23] = v29;
  sub_25C7AA11C(v22, v21, v4);

  sub_25C79CB08(&v28, &v32, &qword_27FC154B8, &qword_25C7AC3B0);
  sub_25C7AA12C(v13, v14, v15, v16);
  sub_25C7AA170(v13, v14, v15, v16);
  *(a2 + 65) = *&v27[16];
  *(a2 + 81) = *&v27[32];
  *(a2 + 97) = *&v27[48];
  *(a2 + 113) = *&v27[64];
  v17 = v42;
  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v17;
  *(a2 + 24) = v24;
  *(a2 + 32) = v23;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  *(a2 + 49) = *v27;
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  sub_25C7AA170(v13, v14, v15, v16);
  v32 = v26;
  v33 = 0;
  v34 = 1;
  v35 = v5;
  v36 = v6;
  LOBYTE(v37) = v9;
  v38 = v25;
  v39 = KeyPath;
  v40 = 1;
  v41 = 0;
  sub_25C79C9E8(&v32, &qword_27FC154B8, &qword_25C7AC3B0);
  sub_25C7AA1B4(v22, v21, v4);
}

uint64_t sub_25C7A6E98@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v2 = sub_25C7AA46C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = sub_25C7A43F0();
  v10 = [v9 displayName];

  if (v10)
  {
    v11 = sub_25C7AAABC();
    v13 = v12;
  }

  else
  {
    v14 = (v1 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 52));
    v11 = *v14;
    v13 = v14[1];
  }

  v15 = sub_25C7AA98C();
  sub_25C7A72E8(v11, v13, v15);

  (*(v3 + 16))(v6, v8, v2);
  v16 = sub_25C7AA8EC();
  v18 = v17;
  v20 = v19;
  sub_25C7AA85C();
  v21 = sub_25C7AA8CC();
  v23 = v22;
  v36 = v8;
  v37 = v2;
  v25 = v24;

  sub_25C7AA1B4(v16, v18, v20 & 1);

  v26 = sub_25C7AA8BC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_25C7AA1B4(v21, v23, v25 & 1);

  (*(v3 + 8))(v36, v37);
  result = swift_getKeyPath();
  v34 = v38;
  *v38 = v26;
  v34[1] = v28;
  *(v34 + 16) = v30 & 1;
  v34[3] = v32;
  v34[4] = result;
  v34[5] = 1;
  *(v34 + 48) = 0;
  return result;
}

uint64_t sub_25C7A7104@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_25C7AA75C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_25C7AA74C();
  sub_25C7AA73C();
  sub_25C7AA9DC();
  sub_25C7AA71C();

  sub_25C7AA73C();
  sub_25C7AA72C();
  sub_25C7AA73C();
  sub_25C7AA77C();
  v5 = sub_25C7AA8DC();
  v7 = v6;
  v9 = v8;
  sub_25C7AA84C();
  v10 = sub_25C7AA8CC();
  v12 = v11;
  v14 = v13;

  sub_25C7AA1B4(v5, v7, v9 & 1);

  sub_25C7AA99C();
  v15 = sub_25C7AA89C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_25C7AA1B4(v10, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

uint64_t sub_25C7A72E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154C0, &qword_25C7AC3B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154C8, &qword_25C7AC3C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154D0, &qword_25C7AC3C8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = sub_25C7AA4BC();
  MEMORY[0x28223BE20](v14 - 8);

  sub_25C7AA4AC();
  sub_25C7AA47C();
  v24[0] = a3;
  sub_25C7AA218();

  sub_25C7AA48C();
  v24[0] = sub_25C7A455C();
  v24[1] = v15;
  v16 = sub_25C7AA53C();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_25C7AA46C();
  sub_25C7A82D4(&qword_28119B560, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  sub_25C7AA1C4();
  sub_25C7AA4DC();
  sub_25C79C9E8(v6, &qword_27FC154C0, &qword_25C7AC3B8);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = &qword_27FC154C8;
    v18 = &qword_25C7AC3C0;
    v19 = v9;
  }

  else
  {
    sub_25C7AA26C(v9, v13, &qword_27FC154D0, &qword_25C7AC3C8);
    v20 = sub_25C7AA96C();
    sub_25C7AA3D4(&qword_28119B4D0, &qword_27FC154D0, &qword_25C7AC3C8, MEMORY[0x277D83D30]);
    v21 = sub_25C7AA49C();
    v23[1] = v20;
    sub_25C7AA4CC();
    v21(v24, 0);
    v19 = v13;
    v17 = &qword_27FC154D0;
    v18 = &qword_25C7AC3C8;
  }

  return sub_25C79C9E8(v19, v17, v18);
}

uint64_t sub_25C7A76C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v69 = a2;
  v3 = sub_25C7AA46C();
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v63 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v8 = *(a1 + *(v63 + 32) + 8);
  ObjectType = swift_getObjectType();
  (*(v8 + 24))(ObjectType, v8);
  v10 = sub_25C7AA52C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v68 = a1;
  if (v12 == 1)
  {
    sub_25C79C9E8(v7, &qword_27FC15078, &unk_25C7ABBB0);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v13 = sub_25C7AA50C();
    v14 = v15;
    (*(v11 + 8))(v7, v10);
  }

  v70 = v13;
  v71 = v14;
  sub_25C7AA1C4();
  v16 = sub_25C7AA8FC();
  v18 = v17;
  v20 = v19;
  sub_25C7AA81C();
  v21 = sub_25C7AA8CC();
  v23 = v22;
  v25 = v24;

  sub_25C7AA1B4(v16, v18, v20 & 1);

  sub_25C7AA76C();
  v26 = sub_25C7AA8DC();
  v28 = v27;
  LOBYTE(v16) = v29;
  v30 = sub_25C7AA8AC();
  v64 = v31;
  v65 = v30;
  v33 = v32;
  v66 = v34;
  sub_25C7AA1B4(v26, v28, v16 & 1);

  sub_25C7AA1B4(v21, v23, v25 & 1);

  v35 = v68;
  v36 = sub_25C7A43F0();
  v37 = [v36 contentDescription];

  if (v37)
  {
    v38 = sub_25C7AAABC();
    v40 = v39;
  }

  else
  {
    v41 = (v35 + *(v63 + 56));
    v38 = *v41;
    v40 = v41[1];
  }

  v42 = sub_25C7AA99C();
  sub_25C7A72E8(v38, v40, v42);

  v43 = sub_25C7AA8EC();
  v45 = v44;
  v47 = v46;
  sub_25C7AA81C();
  v48 = sub_25C7AA8CC();
  v50 = v49;
  v52 = v51;

  sub_25C7AA1B4(v43, v45, v47 & 1);

  LOBYTE(v43) = v33;
  v53 = v64;
  v54 = v65;
  v67 = sub_25C7AA8AC();
  v68 = v55;
  v57 = v56;
  v59 = v58;
  sub_25C7AA1B4(v48, v50, v52 & 1);

  sub_25C7AA1B4(v54, v53, v43 & 1);

  v61 = v69;
  *v69 = v67;
  v61[1] = v57;
  *(v61 + 16) = v59 & 1;
  v61[3] = v68;
  return result;
}

uint64_t sub_25C7A7B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_25C7AA9EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v24 = sub_25C7AA9FC();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for NotesSharedIndexedSearchView(0);
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v8 = v25;
  LOBYTE(v7) = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15460, &qword_25C7AC300) + 36));
  v14 = *(sub_25C7AA62C() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_25C7AA78C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #5.0 }

  *v13 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15478, &qword_25C7AC318);
  *&v13[*(result + 36)] = 256;
  *a3 = v24;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  return result;
}

double sub_25C7A7D48@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25C7AA95C();
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_25C7A7DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A8, &qword_25C7AC258) + 36);
  *v5 = 0;
  *(v5 + 8) = 257;
  sub_25C7AA5FC();
  v7 = v6 * 0.5;
  sub_25C7AA5FC();
  v9 = v8 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153B0, &qword_25C7AC260);
  v11 = (a2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t sub_25C7A7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, v7, v4);
  *a2 = sub_25C7A9B48;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_25C7A803C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA63C();
  *a1 = result;
  return result;
}

uint64_t sub_25C7A8094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA65C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C7A81C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7A8248(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25C7A8280()
{
  result = qword_28119B640;
  if (!qword_28119B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B640);
  }

  return result;
}

uint64_t sub_25C7A82D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25C7A831C()
{
  result = qword_27FC15310;
  if (!qword_27FC15310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15310);
  }

  return result;
}

unint64_t sub_25C7A8370()
{
  result = qword_28119B5F8;
  if (!qword_28119B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B5F8);
  }

  return result;
}

uint64_t sub_25C7A83C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSharedIndexedSearchView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7A8428(uint64_t a1)
{
  v2 = type metadata accessor for NotesSharedIndexedSearchView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25C7A8484@<X0>(void (*a1)(uint64_t)@<X1>, void (*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154B0, &qword_25C7AC378);
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15460, &qword_25C7AC300);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-1] - v9;
  v11 = sub_25C7AA61C();
  if (v11)
  {
    a1(v11);
    sub_25C79CB08(v10, v7, &qword_27FC15460, &qword_25C7AC300);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15488, &qword_25C7AC320);
    sub_25C7A9E58();
    sub_25C7AA07C();
    sub_25C7AA7BC();

    return sub_25C79C9E8(v10, &qword_27FC15460, &qword_25C7AC300);
  }

  else
  {
    a2(v19);
    v13 = v19[1];
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    *v7 = v19[0];
    *(v7 + 1) = v13;
    v7[16] = v14;
    *(v7 + 3) = v15;
    v7[32] = v16;
    *(v7 + 40) = v17;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15488, &qword_25C7AC320);
    sub_25C7A9E58();
    sub_25C7AA07C();
    return sub_25C7AA7BC();
  }
}

uint64_t sub_25C7A86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_25C7A878C(uint64_t a1)
{
  *(a1 + 8) = sub_25C7A82D4(&qword_28119B620, type metadata accessor for NotesIndexSharedModel, &protocol conformance descriptor for NotesIndexSharedModel);
  result = sub_25C7A82D4(&qword_28119B628, type metadata accessor for NotesIndexSharedModel, &protocol conformance descriptor for NotesIndexSharedModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_19Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_25C79CB08(v8 + v9, a5, a3, a4);
}

uint64_t keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_22Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_25C7A8AA0(uint64_t a1)
{
  sub_25C7A9288(319, &qword_28119B648, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25C7A9288(319, qword_28119B650, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25C7A8FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25C7A8FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25C7A906C(uint64_t a1)
{
  sub_25C7A9288(319, &qword_28119B578, sub_25C7A91EC, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_25C7A9238();
    if (v2 <= 0x3F)
    {
      sub_25C7A9288(319, &qword_28119B590, MEMORY[0x277CE4148], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_25C7A9288(319, &qword_28119B588, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_25C7A92EC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_25C7A91EC()
{
  result = qword_28119B570;
  if (!qword_28119B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119B570);
  }

  return result;
}

void sub_25C7A9238()
{
  if (!qword_28119B580)
  {
    v0 = sub_25C7AA59C();
    if (!v1)
    {
      atomic_store(v0, &qword_28119B580);
    }
  }
}

void sub_25C7A9288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25C7A92EC()
{
  result = qword_28119B5B8;
  if (!qword_28119B5B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28119B5B8);
  }

  return result;
}

unint64_t sub_25C7A934C()
{
  result = qword_27FC15368;
  if (!qword_27FC15368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15350, &qword_25C7ABD08);
    sub_25C7A9404();
    sub_25C7AA3D4(&qword_28119B500, &qword_27FC15358, &qword_25C7ABD10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15368);
  }

  return result;
}

unint64_t sub_25C7A9404()
{
  result = qword_27FC15370;
  if (!qword_27FC15370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15340, &qword_25C7ABCC8);
    sub_25C7AA3D4(&qword_27FC15378, &qword_27FC15380, &qword_25C7ABFB8, MEMORY[0x277CE1198]);
    sub_25C7AA3D4(&qword_28119B510, &qword_27FC15388, &unk_25C7ABFC0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotesSharedIndexedSearchView.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NotesSharedIndexedSearchView.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotesIndexSharedModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotesIndexSharedModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25C7A9750()
{
  result = qword_27FC15390;
  if (!qword_27FC15390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15390);
  }

  return result;
}

unint64_t sub_25C7A97A8()
{
  result = qword_27FC15398;
  if (!qword_27FC15398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15398);
  }

  return result;
}

unint64_t sub_25C7A981C()
{
  result = qword_28119B5E8;
  if (!qword_28119B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B5E8);
  }

  return result;
}

unint64_t sub_25C7A9874()
{
  result = qword_28119B5F0;
  if (!qword_28119B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B5F0);
  }

  return result;
}

unint64_t sub_25C7A98CC()
{
  result = qword_28119B630;
  if (!qword_28119B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B630);
  }

  return result;
}

unint64_t sub_25C7A9924()
{
  result = qword_28119B638;
  if (!qword_28119B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B638);
  }

  return result;
}

uint64_t sub_25C7A9978(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25C7AAD1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025C7AC980 == a2 || (sub_25C7AAD1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F467365746F6ELL && a2 == 0xEB00000000726564 || (sub_25C7AAD1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xED00004C5255746ELL || (sub_25C7AAD1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025C7AC9B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25C7AAD1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25C7A9B48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25C7A7DF8(v4, a1);
}

unint64_t sub_25C7A9BE0()
{
  result = qword_28119B508;
  if (!qword_28119B508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15400, &qword_25C7AC2B0);
    v1 = MEMORY[0x277CE1198];
    sub_25C7AA3D4(&qword_28119B4F0, &qword_27FC15410, &qword_25C7AC2C0, MEMORY[0x277CE1198]);
    sub_25C7AA3D4(&qword_28119B4E8, &qword_27FC15418, &qword_25C7AC2C8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B508);
  }

  return result;
}

void sub_25C7A9CC0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7A9CCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7A9CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSharedIndexedSearchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7A9D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotesSharedIndexedSearchView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25C7A7B28(a1, v6, a2);
}

unint64_t sub_25C7A9DCC()
{
  result = qword_27FC15458;
  if (!qword_27FC15458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15450, &qword_25C7AC2F8);
    sub_25C7A9E58();
    sub_25C7AA07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15458);
  }

  return result;
}

unint64_t sub_25C7A9E58()
{
  result = qword_28119B518;
  if (!qword_28119B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15460, &qword_25C7AC300);
    sub_25C7A9F10();
    sub_25C7AA3D4(&qword_28119B540, &qword_27FC15478, &qword_25C7AC318, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B518);
  }

  return result;
}

unint64_t sub_25C7A9F10()
{
  result = qword_28119B520;
  if (!qword_28119B520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15468, &qword_25C7AC308);
    sub_25C7A9F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B520);
  }

  return result;
}

unint64_t sub_25C7A9F9C()
{
  result = qword_28119B528;
  if (!qword_28119B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15470, &qword_25C7AC310);
    sub_25C7AA028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B528);
  }

  return result;
}

unint64_t sub_25C7AA028()
{
  result = qword_28119B548;
  if (!qword_28119B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B548);
  }

  return result;
}

unint64_t sub_25C7AA07C()
{
  result = qword_27FC15480;
  if (!qword_27FC15480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15488, &qword_25C7AC320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15480);
  }

  return result;
}

uint64_t sub_25C7AA11C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7AA12C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25C7AA11C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25C7AA170(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25C7AA1B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25C7AA1B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_25C7AA1C4()
{
  result = qword_28119B4D8;
  if (!qword_28119B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B4D8);
  }

  return result;
}

unint64_t sub_25C7AA218()
{
  result = qword_28119B568;
  if (!qword_28119B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B568);
  }

  return result;
}

uint64_t sub_25C7AA26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25C7AA31C()
{
  result = qword_28119B530;
  if (!qword_28119B530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15520, &qword_25C7AC418);
    sub_25C7AA3D4(&qword_28119B538, &qword_27FC15528, &unk_25C7AC420, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B530);
  }

  return result;
}

uint64_t sub_25C7AA3D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void gotLoadHelper_x21__OBJC_CLASS___APBaseShieldView(double a1)
{
  if (!atomic_load(dlopenHelperFlag_AppProtectionUI))
  {
    dlopenHelper_AppProtectionUI(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___APBaseShieldView(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppProtectionUI))
  {
    return dlopenHelper_AppProtectionUI(result);
  }

  return result;
}