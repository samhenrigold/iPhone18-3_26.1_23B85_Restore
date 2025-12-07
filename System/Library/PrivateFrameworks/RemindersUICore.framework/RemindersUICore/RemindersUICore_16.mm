uint64_t sub_21D22F098(id *a1, uint64_t a2)
{
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 URL];
  sub_21DBF546C();

  v9 = sub_21DBF544C();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

id sub_21D22F1A4@<X0>(void *a1@<X8>)
{
  result = [*v1 objectID];
  *a1 = result;
  return result;
}

uint64_t sub_21D22F234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v60 = a3;
  v5 = v4;
  v62[3] = *MEMORY[0x277D85DE8];
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for TTRSharedWithYouHighlight(0);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_customFetchShareForSharedList);
  if (v19)
  {
    v20 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_customFetchShareForSharedList + 8);

    v19(a1);
    result = sub_21D0D0E88(v19, v20);
    if (!v4)
    {
      return sub_21D23018C(v18, v59, type metadata accessor for TTRSharedWithYouHighlight);
    }

    goto LABEL_9;
  }

  v57 = v14;
  v58 = v8;
  v56 = v16;
  v22 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_highlightCenter + 8);
  ObjectType = swift_getObjectType();
  if (((*(v22 + 8))(ObjectType, v22) & 1) == 0)
  {
    sub_21D22FA74();
    v5 = swift_allocError();
    *v27 = 1;
    goto LABEL_8;
  }

  v24 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_store);
  v25 = [a1 objectID];
  v62[0] = 0;
  v26 = [v24 fetchShareForListWithID:v25 error:v62];

  if (v62[0])
  {
    v5 = v62[0];

LABEL_8:
    result = swift_willThrow();
LABEL_9:
    *v60 = v5;
    return result;
  }

  if (!v26)
  {
LABEL_15:
    sub_21D22FA74();
    v5 = swift_allocError();
    *v38 = 0;
    goto LABEL_8;
  }

  v28 = [v26 URL];
  if (!v28)
  {

    goto LABEL_15;
  }

  v55 = v26;
  v29 = v28;
  sub_21DBF546C();

  v31 = (v9 + 32);
  v30 = *(v9 + 32);
  v32 = v57;
  v60 = v31;
  v54 = v30;
  v30(v57, v11, v58);
  v33 = [a1 accountID];
  v34 = OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_containerForAccountID;
  swift_beginAccess();
  v35 = sub_21D1AA27C(v33, *(a2 + v34));
  if (v35)
  {
    v36 = v35;
    swift_endAccess();
    v37 = v36;
  }

  else
  {
    swift_endAccess();
    v39 = objc_opt_self();
    v40 = [a1 account];
    v37 = [v39 newCloudContainerForAccount_];

    swift_beginAccess();
    v41 = *(a2 + v34);
    if ((v41 & 0xC000000000000001) != 0)
    {
      if (v41 >= 0)
      {
        v41 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v42 = v37;
      v43 = v33;
      v44 = sub_21DBFBD7C();
      if (__OFADD__(v44, 1))
      {
        __break(1u);
      }

      *(a2 + v34) = sub_21D98447C(v41, v44 + 1);
    }

    else
    {
      v45 = v37;
      v46 = v33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(a2 + v34);
    sub_21D4775F0(v37, v33, isUniquelyReferenced_nonNull_native);
    *(a2 + v34) = v61;

    swift_endAccess();
    v36 = 0;
  }

  v48 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  v49 = v36;
  v50 = [v48 init];
  v51 = [objc_opt_self() rem_remindersAllowedSharingOptions];
  v52 = v55;
  sub_21DBFAF4C();

  v53 = v59;
  result = v54(v59, v32, v58);
  *(v53 + *(v56 + 20)) = v50;
  return result;
}

id TTRSharedWithYouProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRSharedWithYouProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D22F908()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t sub_21D22F940(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*sub_21D22F988(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [v1 delegate];
  return sub_21D22F9E4;
}

uint64_t sub_21D22F9E4(uint64_t *a1)
{
  [a1[1] setDelegate_];

  return swift_unknownObjectRelease();
}

unint64_t sub_21D22FA74()
{
  result = qword_27CE59E88;
  if (!qword_27CE59E88)
  {
    result = swift_getWitnessTable(aY_8, &type metadata for TTRSharedWithYouProvider.HighlightFetchError, v0, v1);
    atomic_store(result, &qword_27CE59E88);
  }

  return result;
}

void _s15RemindersUICore24TTRSharedWithYouProviderC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0()
{
  if (qword_27CE56598 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE59E20);
  oslog = sub_21DBF84AC();
  v1 = sub_21DBFAEDC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v1, "SharedWithYou: Highlights did change", v2, 2u);
    MEMORY[0x223D46520](v2, -1, -1);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSharedWithYouHighlight(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void destroy for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t initializeWithCopy for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t initializeWithTake for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_21D22FF54(uint64_t a1)
{
  result = sub_21DBF54CC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D2300E0()
{
  result = qword_27CE59F00;
  if (!qword_27CE59F00)
  {
    result = swift_getWitnessTable(byte_21DC0D338, &type metadata for TTRSharedWithYouProvider.ShareOperationParams, v0, v1);
    atomic_store(result, &qword_27CE59F00);
  }

  return result;
}

unint64_t sub_21D230138()
{
  result = qword_27CE59F08;
  if (!qword_27CE59F08)
  {
    result = swift_getWitnessTable(byte_21DC0D418, &type metadata for TTRSharedWithYouProvider.HighlightFetchError, v0, v1);
    atomic_store(result, &qword_27CE59F08);
  }

  return result;
}

uint64_t sub_21D23018C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D2301F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F20, &qword_21DC0D488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D230264(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D2302AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F28, &qword_21DC0D490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRRemindersListImportedContent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListImportedContent.notes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes);
  sub_21DBF8E0C();
  return v1;
}

void *TTRRemindersListImportedContent.userActivity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  v2 = v1;
  return v1;
}

void *TTRRemindersListImportedContent.copyPasteItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem);
  v2 = v1;
  return v1;
}

id TTRRemindersListImportedContent.__allocating_init(title:notes:url:userActivity:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = sub_21D232860(a1, a2);
  v19 = v18;

  v20 = &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_21D232860(a3, a4);
  v23 = v22;

  v24 = &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v24 = v21;
  v24[1] = v23;
  sub_21D0D3954(a5, &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url], &qword_27CE5EA20, &qword_21DC0D4A0);
  *&v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = a6;
  sub_21D0D3954(a7, &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image], &qword_27CE59F60, &qword_21DC0D4A8);
  *&v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = 0;
  v27.receiver = v16;
  v27.super_class = v8;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  sub_21D0CF7E0(a7, &qword_27CE59F60, &qword_21DC0D4A8);
  sub_21D0CF7E0(a5, &qword_27CE5EA20, &qword_21DC0D4A0);
  return v25;
}

id TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = sub_21D232860(a1, a2);
  v19 = v18;

  v20 = &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_21D232860(a3, a4);
  v23 = v22;

  v24 = &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v24 = v21;
  v24[1] = v23;
  sub_21D0D3954(a5, &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url], &qword_27CE5EA20, &qword_21DC0D4A0);
  *&v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = a6;
  sub_21D0D3954(a7, &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image], &qword_27CE59F60, &qword_21DC0D4A8);
  *&v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = 0;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  sub_21D0CF7E0(a7, &qword_27CE59F60, &qword_21DC0D4A8);
  sub_21D0CF7E0(a5, &qword_27CE5EA20, &qword_21DC0D4A0);
  return v25;
}

id TTRRemindersListImportedContent.__allocating_init(copyPasteItem:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url;
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = 0;
  v8 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image;
  v9 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  *&v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = a1;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TTRRemindersListImportedContent.init(copyPasteItem:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url;
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = 0;
  v8 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image;
  v9 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

void TTRRemindersListImportedContent.applyToReminder(with:isForNewReminder:)(uint64_t a1, int a2)
{
  v34 = a2;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60, &qword_21DC0D4A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v32 = type metadata accessor for TTRDirectlySavableImageData(0);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url, v10, &qword_27CE5EA20, &qword_21DC0D4A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    TTRReminderEditor.editAttachmentOrUserActivity(_:)(v14);
    (*(v12 + 8))(v14, v11);
  }

  sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v5, &qword_27CE59F60, &qword_21DC0D4A8);
  if ((*(v6 + 48))(v5, 1, v32) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE59F60, &qword_21DC0D4A8);
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v15 = v31;
    sub_21D232994(v5, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65F10, &qword_21DC09980);
    v16 = *(type metadata accessor for TTRUnsavedAttachment(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21DC08D00;
    sub_21D2329F8(v15, v18 + v17);
    swift_storeEnumTagMultiPayload();
    TTRReminderEditor.add(attachments:)(v18);
    swift_setDeallocating();
    sub_21D232A5C(v18 + v17, type metadata accessor for TTRUnsavedAttachment);
    swift_deallocClassInstance();
    sub_21D232A5C(v15, type metadata accessor for TTRDirectlySavableImageData);
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title + 8))
  {
    v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v20 = sub_21DBFA12C();
    v21 = [v19 initWithString_];

    v22 = sub_21D9CA3E0(v21, 0, 1);
    if (v22)
    {
      v23 = v22;
      swift_retain_n();
      sub_21D182E74(sub_21D233058, v23);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes + 8))
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_21DBFA12C();
    v26 = [v24 initWithString_];

    v27 = sub_21D9C7928(v26);
    if (v27)
    {
      v28 = v27;
      swift_retain_n();
      sub_21D182E74(sub_21D23298C, v28);
    }
  }

  v29 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  if (v29)
  {
    v30 = v29;
    TTRReminderEditor.edit(userActivity:)(v29);
  }
}

uint64_t sub_21D230EEC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE59F30 = result;
  *algn_27CE59F38 = v1;
  return result;
}

uint64_t (*static TTRRemindersListImportedContent.defaultTitleForReminderWithLink.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE565A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D231088()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE59F40 = result;
  *algn_27CE59F48 = v1;
  return result;
}

uint64_t sub_21D231174(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  sub_21DBF8E0C();
  return v5;
}

double sub_21D23120C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = a1;
  *a5 = a2;

  return result;
}

uint64_t (*static TTRRemindersListImportedContent.defaultTitleForReminderWithImage.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE565A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_21D231310@<D0>(void *a1@<X3>, void *a2@<X4>, uint64_t *a3@<X5>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = *a3;
  *a5 = *a2;
  a5[1] = v8;
  sub_21DBF8E0C();
  return result;
}

double sub_21D231388(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t a8)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = *a5;
  sub_21DBF8E0C();
  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v11;
  *a7 = v10;

  return result;
}

uint64_t static TTRRemindersListImportedContent.undoActionNameForApplyToExistingReminder(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60, &qword_21DC0D4A8);
  MEMORY[0x28223BE20](v2 - 8);
  v20 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  if (a1 >> 62)
  {
LABEL_18:
    v8 = sub_21DBFBD7C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v21 = a1;
      v22 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      v11 = v20;
      do
      {
        if (v22)
        {
          v13 = MEMORY[0x223D44740](v9, a1, v5);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_17;
          }

          v13 = *(a1 + 8 * v9 + 32);
        }

        v14 = v13;
        a1 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        sub_21D0D3954(v13 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url, v7, &qword_27CE5EA20, &qword_21DC0D4A0);
        v15 = sub_21DBF54CC();
        if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
        {
          sub_21D0CF7E0(v7, &qword_27CE5EA20, &qword_21DC0D4A0);
          sub_21D0D3954(v14 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v11, &qword_27CE59F60, &qword_21DC0D4A8);

          v16 = type metadata accessor for TTRDirectlySavableImageData(0);
          v17 = (*(*(v16 - 8) + 48))(v11, 1, v16);
          sub_21D0CF7E0(v11, &qword_27CE59F60, &qword_21DC0D4A8);
          if (v17 == 1)
          {
            if (qword_280D1BAA8 != -1)
            {
              goto LABEL_21;
            }

            return sub_21DBF516C();
          }
        }

        else
        {

          sub_21D0CF7E0(v7, &qword_27CE5EA20, &qword_21DC0D4A0);
        }

        ++v9;
        v12 = a1 == v8;
        a1 = v21;
      }

      while (!v12);
    }
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_21:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRRemindersListImportedContent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60, &qword_21DC0D4A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for TTRDirectlySavableImageData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  if (v9)
  {
    v30[0] = v8;
    strcpy(v31, "userActivity=");
    HIWORD(v31[1]) = -4864;
    v10 = v9;
    v11 = [v10 description];
    v12 = sub_21DBFA16C();
    v14 = v13;

    MEMORY[0x223D42AA0](v12, v14);

    v15 = v31[0];
    v16 = v31[1];
    v17 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_21D210A84((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v16;
    v8 = v30[0];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v4, &qword_27CE59F60, &qword_21DC0D4A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE59F60, &qword_21DC0D4A8);
  }

  else
  {
    sub_21D232994(v4, v8);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    MEMORY[0x223D42AA0](0x3D6567616D69, 0xE600000000000000);
    sub_21DBFC14C();
    v21 = v31[0];
    v22 = v31[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_21D210A84(0, *(v17 + 2) + 1, 1, v17);
    }

    v24 = *(v17 + 2);
    v23 = *(v17 + 3);
    if (v24 >= v23 >> 1)
    {
      v17 = sub_21D210A84((v23 > 1), v24 + 1, 1, v17);
    }

    sub_21D232A5C(v8, type metadata accessor for TTRDirectlySavableImageData);
    *(v17 + 2) = v24 + 1;
    v25 = &v17[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v31[0] = 0xD000000000000021;
  v31[1] = 0x800000021DC46A70;
  v30[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v26 = sub_21DBFA07C();
  v28 = v27;

  MEMORY[0x223D42AA0](v26, v28);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return v31[0];
}

id sub_21D231C3C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21DBFA12C();

  return v5;
}

uint64_t TTRRemindersListImportedContent.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60, &qword_21DC0D4A8);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v54 - v3;
  v58 = type metadata accessor for TTRDirectlySavableImageData(0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title + 8))
  {
    v13 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title);
    v60[0] = 0x3D656C746974;
    v60[1] = 0xE600000000000000;
    MEMORY[0x223D42AA0](v13, v10);
    v14 = v60[0];
    v15 = v60[1];
    v16 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_21D210A84((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v15;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes + 8))
  {
    v20 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes);
    v60[0] = 0x3D7365746F6ELL;
    v60[1] = 0xE600000000000000;
    MEMORY[0x223D42AA0](v20);
    v21 = v60[0];
    v22 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v24 = *(v16 + 2);
    v23 = *(v16 + 3);
    if (v24 >= v23 >> 1)
    {
      v16 = sub_21D210A84((v23 > 1), v24 + 1, 1, v16);
    }

    *(v16 + 2) = v24 + 1;
    v25 = &v16[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  sub_21D0D3954(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url, v7, &qword_27CE5EA20, &qword_21DC0D4A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v60[0] = 1030517365;
    v60[1] = 0xE400000000000000;
    sub_21D232ABC();
    v26 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v26);

    v28 = v60[0];
    v27 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v30 = *(v16 + 2);
    v29 = *(v16 + 3);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_21D210A84((v29 > 1), v30 + 1, 1, v16);
    }

    (*(v9 + 8))(v12, v8);
    *(v16 + 2) = v30 + 1;
    v31 = &v16[16 * v30];
    *(v31 + 4) = v28;
    *(v31 + 5) = v27;
  }

  v32 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  if (v32)
  {
    strcpy(v60, "userActivity=");
    HIWORD(v60[1]) = -4864;
    v33 = v32;
    v34 = [v33 description];
    v35 = sub_21DBFA16C();
    v37 = v36;

    MEMORY[0x223D42AA0](v35, v37);

    v38 = v60[0];
    v39 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v41 = *(v16 + 2);
    v40 = *(v16 + 3);
    if (v41 >= v40 >> 1)
    {
      v16 = sub_21D210A84((v40 > 1), v41 + 1, 1, v16);
    }

    *(v16 + 2) = v41 + 1;
    v42 = &v16[16 * v41];
    *(v42 + 4) = v38;
    *(v42 + 5) = v39;
  }

  v43 = v57;
  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v57, &qword_27CE59F60, &qword_21DC0D4A8);
  if ((*(v56 + 48))(v43, 1, v58) == 1)
  {
    sub_21D0CF7E0(v43, &qword_27CE59F60, &qword_21DC0D4A8);
  }

  else
  {
    v44 = v55;
    sub_21D232994(v43, v55);
    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    MEMORY[0x223D42AA0](0x3D6567616D69, 0xE600000000000000);
    sub_21DBFC14C();
    v45 = v60[0];
    v46 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v48 = *(v16 + 2);
    v47 = *(v16 + 3);
    if (v48 >= v47 >> 1)
    {
      v16 = sub_21D210A84((v47 > 1), v48 + 1, 1, v16);
    }

    sub_21D232A5C(v44, type metadata accessor for TTRDirectlySavableImageData);
    *(v16 + 2) = v48 + 1;
    v49 = &v16[16 * v48];
    *(v49 + 4) = v45;
    *(v49 + 5) = v46;
  }

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v60[0] = 0xD000000000000021;
  v60[1] = 0x800000021DC46A70;
  v59 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v50 = sub_21DBFA07C();
  v52 = v51;

  MEMORY[0x223D42AA0](v50, v52);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return v60[0];
}

id TTRRemindersListImportedContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRRemindersListImportedContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TTRRemindersListImportedContentFilter.init(forInsertingAsNewRemindersIn:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 account];
  v5 = [v4 capabilities];

  LODWORD(v4) = [v5 supportsAttachments];
  v6 = 14;
  if (v4)
  {
    v6 = 15;
  }

  *a2 = v6;
}

void TTRRemindersListImportedContentFilter.init(forAddingTo:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = [v5 attachmentContext];

  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v7 = [v3 attachmentContext];
    if (!v7)
    {
      v8 = 0;
LABEL_11:
      v9 = v3;
      v10 = REMReminder.canAddURL.getter();

      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_10;
  }

LABEL_14:
  v12 = v3;
  v10 = REMReminder.canAddURL.getter();

  if (v6)
  {
LABEL_15:
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_19;
  }

LABEL_12:
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:
  *a2 = v11;
}

BOOL sub_21D23274C()
{
  v1 = [v0 attachmentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 urlAttachments];
    sub_21D232B14();
    v4 = sub_21DBFA5EC();

    if (v4 >> 62)
    {
      v5 = sub_21DBFBD7C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v5 == 0;
  }

  else
  {
    v7 = [v0 userActivity];
    if (v7 || (v7 = [v0 notesAsString]) != 0)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_21D232860(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12[0] = a1;
    v12[1] = a2;
    sub_21DBF4C5C();
    sub_21D176F0C();
    a1 = sub_21DBFBB3C();
    v9 = v8;
    (*(v5 + 8))(v7, v4);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_21D232994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D2329F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D232A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D232ABC()
{
  result = qword_27CE59F18;
  if (!qword_27CE59F18)
  {
    v3 = sub_21DBF54CC();
    result = swift_getWitnessTable(MEMORY[0x277CC9290], v3, v0, v1);
    atomic_store(result, &qword_27CE59F18);
  }

  return result;
}

unint64_t sub_21D232B14()
{
  result = qword_280D17820;
  if (!qword_280D17820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17820);
  }

  return result;
}

unint64_t sub_21D232B64()
{
  result = qword_27CE59F68;
  if (!qword_27CE59F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportableAttachmentTypes, &type metadata for TTRRemindersListImportableAttachmentTypes, v0, v1);
    atomic_store(result, &qword_27CE59F68);
  }

  return result;
}

unint64_t sub_21D232BBC()
{
  result = qword_27CE59F70;
  if (!qword_27CE59F70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportableAttachmentTypes, &type metadata for TTRRemindersListImportableAttachmentTypes, v0, v1);
    atomic_store(result, &qword_27CE59F70);
  }

  return result;
}

unint64_t sub_21D232C14()
{
  result = qword_27CE59F78;
  if (!qword_27CE59F78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportableAttachmentTypes, &type metadata for TTRRemindersListImportableAttachmentTypes, v0, v1);
    atomic_store(result, &qword_27CE59F78);
  }

  return result;
}

unint64_t sub_21D232C6C()
{
  result = qword_27CE59F80;
  if (!qword_27CE59F80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportableAttachmentTypes, &type metadata for TTRRemindersListImportableAttachmentTypes, v0, v1);
    atomic_store(result, &qword_27CE59F80);
  }

  return result;
}

unint64_t sub_21D232CC4()
{
  result = qword_27CE59F88;
  if (!qword_27CE59F88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportedContentFilter, &type metadata for TTRRemindersListImportedContentFilter, v0, v1);
    atomic_store(result, &qword_27CE59F88);
  }

  return result;
}

unint64_t sub_21D232D1C()
{
  result = qword_27CE59F90;
  if (!qword_27CE59F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportedContentFilter, &type metadata for TTRRemindersListImportedContentFilter, v0, v1);
    atomic_store(result, &qword_27CE59F90);
  }

  return result;
}

unint64_t sub_21D232D74()
{
  result = qword_27CE59F98;
  if (!qword_27CE59F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportedContentFilter, &type metadata for TTRRemindersListImportedContentFilter, v0, v1);
    atomic_store(result, &qword_27CE59F98);
  }

  return result;
}

unint64_t sub_21D232DCC()
{
  result = qword_27CE59FA0;
  if (!qword_27CE59FA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListImportedContentFilter, &type metadata for TTRRemindersListImportedContentFilter, v0, v1);
    atomic_store(result, &qword_27CE59FA0);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersListImportedContent(uint64_t a1)
{
  result = qword_27CE59FA8;
  if (!qword_27CE59FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D232E74(uint64_t a1)
{
  sub_21D232FC8(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_21D232FC8(319, &qword_27CE59FB8, type metadata accessor for TTRDirectlySavableImageData);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D232FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TTRListDetailViewModelBadgeDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D2330EC()
{
  result = qword_27CE59FC0;
  if (!qword_27CE59FC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRListDetailViewModelBadgeDisplayStyle, &type metadata for TTRListDetailViewModelBadgeDisplayStyle, v0, v1);
    atomic_store(result, &qword_27CE59FC0);
  }

  return result;
}

uint64_t static TTRLocalizableStrings.ListPicker.createOrSelectTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.selectListInstructionsForNoSelection.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.moveActionButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.addActionButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.deleteListUndoAction.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.addListMenuListName(withAccountName:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.ReminderDetail.discardNewReminderAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.GroupDetail.deleteGroupActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.GroupDetail.showGroupInfoActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteListActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.manageSectionsActionText(listLayout:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.createSmartList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.selectReminders.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationMessage(withCount:isForGroceries:)(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationText(withCount:isForGroceries:)(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t static TTRLocalizableStrings.RemindersList.selectedCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.RemindersList.keyCommandTitleForAddingStructuredHashtag(hasExistingStructuredHashtags:)(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.addNotePlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Assignments.assigneeSelectionCellNoneTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeRepeat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.deleteGroup.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addListWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.removeListWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.moveListWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.choosePerson.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.batchChangeDueDate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.batchChangeAssignment.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.batchChangeTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.anyTagText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.showMoreText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.showLessText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.showMoreCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

id static TTRLocalizableStrings.ConvertToCustomSmartListAlert.detailsForFooter.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v0 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v1 = sub_21DBFA12C();
  v2 = [v0 initWithString_];

  v3 = sub_21DBFA12C();

  v4 = sub_21DBFA12C();

  v5 = [v3 rangeOfString_];
  v7 = v6;

  if (v5 != sub_21DBF4B4C())
  {
    v8 = *MEMORY[0x277D740E8];
    v9 = sub_21DBFA12C();
    [v2 addAttribute:v8 value:v9 range:{v5, v7}];
  }

  return v2;
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.inlinePermissionRequestSettingsButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.settingsButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.notificationAccessMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.locationAccessTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.locationAccessMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.contactsAccessMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SpotlightView.commaSeparator.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SpotlightView.dashSeparator.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A4ListO31quickbarAssignReminderLabelText14isForGroceriesSSSb_tFZ_0(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO08createInE12Instructions8listNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO013createInSmartE12Instructions05smartE4NameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO07includeE12Instructions8listNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO07excludeE12Instructions8listNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO21assignmentPickerTitle9withCount14isForGroceriesSSSi_SbtFZ_0(uint64_t a1, char a2)
{
  if (a1 == 1)
  {
    if (a2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO13SpotlightViewO9completed10dateStringS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO13SpotlightViewO3due10dateStringS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t TTRWidgetRefresher.__allocating_init(widgetCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

void sub_21D2367DC()
{
  if (qword_280D0F2E0 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_280D0F2E8);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "TTRWidgetRefresher did receive store change notification", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  TTRWidgetCenter.reloadAllTimelines()();
}

uint64_t TTRWidgetRefresher.deinit()
{

  return v0;
}

uint64_t TTRWidgetRefresher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))(char *, void)
{
  v5 = sub_21DBF5D5C();
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    v11 = 0;
    v12 = *(v6 + 16);
    goto LABEL_12;
  }

  v11 = 0;
  v14 = *(v6 + 16);
  v13 = v6 + 16;
  v12 = v14;
  v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v16 = *(v13 + 56);
  v26 = a2;
  v27 = v16;
  v28 = v13;
  v29 = v2;
  v17 = (v13 - 8);
  v25[1] = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  while (1)
  {
    v18 = v12;
    v12(v9, v15, v5, v7);
    v19 = sub_21DBF5D0C();
    if (v19 == sub_21DBF5D0C())
    {
      break;
    }

    (*v17)(v9, v5);
LABEL_4:
    v12 = v18;
    v15 += v27;
    if (!--v10)
    {
      goto LABEL_10;
    }
  }

  v20 = sub_21DBF5CFC();
  v21 = sub_21DBF5CFC();
  (*v17)(v9, v5);
  if (v20 >= v21)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v11++, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_10:
  a2 = v26;
  v2 = v29;
LABEL_12:
  (v12)(a2, v2, v5);
  result = sub_21DBF5CEC();
  if (__OFSUB__(*v24, v11))
  {
    __break(1u);
  }

  else
  {
    *v24 -= v11;
    return result(v30, 0);
  }

  return result;
}

uint64_t sub_21D236B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_21D236C30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21D236C9C(uint64_t a1)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v26 = *(v6 + 16);
  v26(v23 - v11, v2, v5, v10);
  v27[0] = a1;
  sub_21DBF8E0C();
  sub_21D2370A8(v27);
  v13 = *(v27[0] + 16);
  if (v13)
  {
    v24 = v6;
    v25 = a2;
    v14 = *(v6 + 80);
    v23[1] = v27[0];
    v15 = v27[0] + ((v14 + 32) & ~v14);
    v16 = *(v6 + 72);
    v17 = (v6 + 8);
    while (1)
    {
      (v26)(v8, v15, v5);
      v18 = sub_21DBF5D0C();
      if (v18 == sub_21DBF5D0C())
      {
        v19 = sub_21DBF5CFC();
        if (v19 < sub_21DBF5CFC())
        {
          v20 = sub_21DBF5CEC();
          if (__OFADD__(*v21, 1))
          {
            __break(1u);

            __break(1u);
            return result;
          }

          ++*v21;
          v20(v27, 0);
        }
      }

      (*v17)(v8, v5);
      v15 += v16;
      if (!--v13)
      {

        v6 = v24;
        a2 = v25;
        return (*(v6 + 32))(a2, v12, v5);
      }
    }
  }

  return (*(v6 + 32))(a2, v12, v5);
}

uint64_t sub_21D236F88(uint64_t a1, uint64_t a2)
{
  sub_21DBF5D5C();
  sub_21D23894C(&qword_27CE59FD0, MEMORY[0x277CC9B38]);
  v5 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](a1, a2);
  return v5;
}

uint64_t sub_21D237024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21DBF5D5C();
  sub_21D23894C(&qword_27CE59FD0, MEMORY[0x277CC9B38]);
  v7 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](a3, a4);
  return v7;
}

void sub_21D2370A8(uint64_t *a1)
{
  v2 = *(sub_21DBF5D5C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21D82E42C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21D2375A8(v5);
  *a1 = v3;
}

uint64_t sub_21D237198(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_21D237204(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21D237268(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D2372CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D237330(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D237394(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D23751C(uint64_t a1)
{
  result = sub_21DBF5D5C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_21D2375A8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
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
        sub_21DBF5D5C();
        v6 = sub_21DBFA69C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21DBF5D5C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21D237984(v8, v9, a1, v4);
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
    sub_21D2376D4(0, v2, 1, a1);
  }
}

void sub_21D2376D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21DBF5D5C();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_21D23894C(&qword_280D17158, MEMORY[0x277CC9B10]);
      v26 = sub_21DBFA08C();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D237984(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_21D82E300(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_21D238384(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21D82E300(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_21D82E274(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_21D23894C(&qword_280D17158, MEMORY[0x277CC9B10]);
      LODWORD(v133) = sub_21DBFA08C();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_21DBFA08C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_21D210B90(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_21D210B90((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_21D238384(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21D82E300(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_21D82E274(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_21D23894C(&qword_280D17158, MEMORY[0x277CC9B10]);
    v109 = sub_21DBFA08C();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_21D238384(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_21DBF5D5C();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v53 = a3;
  v15 = (a2 - a1) / v13;
  v57 = a1;
  v56 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v46 = (v8 + 8);
      v47 = (v8 + 16);
      v28 = a4 + v17;
      v29 = v53;
      v44 = a1;
      v45 = a4;
      v48 = v27;
      do
      {
        v42 = v26;
        v30 = a2 + v27;
        v31 = v26;
        v49 = a2;
        v50 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v57 = a2;
            v26 = v42;
            goto LABEL_59;
          }

          v33 = v29;
          v43 = v31;
          v53 = v29 + v27;
          v34 = v28 + v27;
          v35 = *v47;
          v36 = v51;
          v37 = v28 + v27;
          v38 = v28;
          v39 = v54;
          (*v47)(v51, v37, v54);
          v40 = v52;
          (v35)(v52, v30, v39);
          sub_21D23894C(&qword_280D17158, MEMORY[0x277CC9B10]);
          LOBYTE(v35) = sub_21DBFA08C();
          v41 = *v46;
          (*v46)(v40, v39);
          v41(v36, v39);
          if (v35)
          {
            break;
          }

          v31 = v34;
          v29 = v53;
          if (v33 < v38 || v53 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v50;
            a1 = v44;
          }

          else
          {
            v30 = v50;
            a1 = v44;
            if (v33 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v45;
          v27 = v48;
          a2 = v49;
          if (!v32)
          {
            v26 = v31;
            goto LABEL_58;
          }
        }

        v29 = v53;
        if (v33 < v49 || v53 >= v49)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
          v28 = v38;
        }

        else
        {
          a2 = v50;
          a1 = v44;
          v28 = v38;
          if (v33 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v43;
        v27 = v48;
      }

      while (v28 > v45);
    }

LABEL_58:
    v57 = a2;
LABEL_59:
    v55 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v16;
    v55 = a4 + v16;
    if (v16 >= 1 && a2 < v53)
    {
      v48 = *(v8 + 16);
      v49 = v8 + 16;
      v46 = v13;
      v47 = (v8 + 8);
      do
      {
        v19 = v51;
        v20 = v54;
        v21 = v48;
        v48(v51, a2, v54);
        v22 = v52;
        v21(v52, a4, v20);
        sub_21D23894C(&qword_280D17158, MEMORY[0x277CC9B10]);
        LOBYTE(v21) = sub_21DBFA08C();
        v23 = *v47;
        (*v47)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v46;
          if (a1 < a2 || a1 >= v46 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v46;
          v25 = v46 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v25;
          a4 += v24;
        }

        a1 += v24;
        v57 = a1;
      }

      while (a4 < v50 && a2 < v53);
    }
  }

  sub_21D65F5E0(&v57, &v56, &v55);
}

uint64_t sub_21D23894C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21DBF5D5C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D2389C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE59FF8);
  v1 = __swift_project_value_buffer(v0, qword_27CE59FF8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall LSApplicationWorkspace.showDefaultListInSettings()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_21DBFBEEC();

  v21 = 0xD00000000000001ALL;
  v22 = 0x800000021DC488B0;
  v9 = sub_21DBFA16C();
  MEMORY[0x223D42AA0](v9);

  sub_21DBF54BC();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D238E40(v4);
    if (qword_27CE565B8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE59FF8);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Can't create URL for navigating to Settings", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = sub_21DBF53FC();
    sub_21D17716C(MEMORY[0x277D84F90]);
    v15 = sub_21DBF9E5C();

    v16 = [v1 openSensitiveURL:v14 withOptions:v15];

    if ((v16 & 1) == 0)
    {
      if (qword_27CE565B8 != -1)
      {
        swift_once();
      }

      v17 = sub_21DBF84BC();
      __swift_project_value_buffer(v17, qword_27CE59FF8);
      v18 = sub_21DBF84AC();
      v19 = sub_21DBFAEBC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to open Settings", v20, 2u);
        MEMORY[0x223D46520](v20, -1, -1);
      }
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21D238E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.value.setter(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.__allocating_init(authorizationStatusPublisher:initialValue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRGeoLocationAuthorizationStatusObserver.init(authorizationStatusPublisher:initialValue:)(a1, a2);
  return v4;
}

char *TTRGeoLocationAuthorizationStatusObserver.init(authorizationStatusPublisher:initialValue:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(v5 + 96);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(&v2[v12], 1, 1, v6, v9);
  *&v2[*(*v2 + 104)] = 0;
  v15 = &v2[*(*v2 + 120)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v2[*(*v2 + 128)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v2[*(*v2 + 112)] = a1;
  (*(v13 + 32))(v11, a2, v6);
  (v14)(v11, 0, 1, v6);
  v17 = *(*v2 + 96);
  swift_beginAccess();
  (*(v8 + 40))(&v2[v17], v11, v7);
  swift_endAccess();
  return v2;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.setUp(transform:valueDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v32 = a2;
  v29 = a1;
  v6 = *v4;
  v38 = v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A010, "Ы\n");
  v7 = v6[10];
  v30 = sub_21D2396F8();
  v8 = sub_21DBF8F7C();
  v33 = *(v8 - 8);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v26 - v10;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CBCC08], v8, v9);
  v12 = sub_21DBF8F5C();
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = swift_allocObject();
  v27 = v16;
  *(v16 + 16) = 1;
  v17 = (v16 + 16);
  v39[0] = *(v5 + v6[14]);
  v18 = swift_allocObject();
  v18[2] = v7;
  v19 = v29;
  v18[3] = v6[11];
  v18[4] = v19;
  v18[5] = v32;

  sub_21DBF927C();

  sub_21DBF93AC();
  (*(v33 + 8))(v11, v8);
  v20 = swift_allocObject();
  v21 = v36;
  v22 = v37;
  v20[2] = v27;
  v20[3] = v21;
  v20[4] = v22;

  v23 = v34;
  swift_getWitnessTable(MEMORY[0x277CBCBE0], v34);
  v24 = sub_21DBF91AC();

  (*(v35 + 8))(v15, v23);
  *(v5 + *(*v5 + 104)) = v24;

  swift_beginAccess();
  *v17 = 0;
}

unint64_t sub_21D2396F8()
{
  result = qword_280D0C4B0;
  if (!qword_280D0C4B0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A010, "Ы\n");
    result = swift_getWitnessTable(MEMORY[0x277CBCD90], v3, v0, v1);
    atomic_store(result, &qword_280D0C4B0);
  }

  return result;
}

uint64_t sub_21D23975C(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return v2(&v4);
}

void sub_21D239798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128), uint64_t a5)
{
  v20 = a5;
  v21 = a4;
  v22 = a2;
  v7 = *(*a1 + 80);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = sub_21DBF9D8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0CE468();
  *v15 = sub_21DBFB12C();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_21DBF9DAC();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = *(v7 - 8);
    v18 = v22;
    (*(v17 + 16))(v11, v22, v7);
    (*(v17 + 56))(v11, 0, 1, v7);
    v19 = *(*a1 + 96);
    swift_beginAccess();
    (*(v9 + 40))(a1 + v19, v11, v8);
    swift_endAccess();
    swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      (v21)(v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D0D0E88(*(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 120) + 8));
  sub_21D0D0E88(*(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 128) + 8));
  return v0;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.__deallocating_deinit()
{
  TTRGeoLocationAuthorizationStatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D239BB4(uint64_t a1)
{
  result = sub_21DBFBA8C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TTRIShowRemindersDeferredItemUpdates.isEmpty.getter()
{
  if ((*v0 & 1) == 0)
  {
    sub_21D239D18((v0 + 8), &v3);
    if (v7 == 3 && !v6)
    {
      v1 = vorrq_s8(v4, v5);
      if (!(*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3))
      {
        sub_21D239E34(&v3);
        return 1;
      }
    }

    sub_21D239E34(&v3);
  }

  return 0;
}

uint64_t sub_21D239E34(uint64_t result)
{
  if (*(result + 41) < 3u || (*result + 3) <= 2)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_0(result);
    return v1;
  }

  return result;
}

__n128 TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 26);
  *(a3 + 34) = result;
  return result;
}

uint64_t destroy for TTRIShowRemindersDeferredItemUpdates(uint64_t result)
{
  if (*(result + 49) <= 2u)
  {
    return __swift_destroy_boxed_opaque_existential_0((result + 8));
  }

  return result;
}

uint64_t initializeWithCopy for TTRIShowRemindersDeferredItemUpdates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  v4 = *(a2 + 49);
  if (v4 == 2)
  {
    v8 = *(a2 + 32);
    *(a1 + 32) = v8;
    (**(v8 - 8))(v3, a2 + 8);
    *(a1 + 49) = 2;
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 32);
    *(a1 + 32) = v6;
    (**(v6 - 8))(v3, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 49) = 1;
  }

  else if (*(a2 + 49))
  {
    v9 = *(a2 + 24);
    *v3 = *(a2 + 8);
    v3[1] = v9;
    *(v3 + 26) = *(a2 + 34);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v3, a2 + 8);
    *(a1 + 49) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIShowRemindersDeferredItemUpdates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  if (a1 != a2)
  {
    sub_21D239E34(a1 + 8);
    v5 = *(a2 + 49);
    if (v5 == 2)
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v3, a2 + 8);
      *(a1 + 49) = 2;
    }

    else if (v5 == 1)
    {
      v7 = *(a2 + 32);
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(v3, a2 + 8);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 49) = 1;
    }

    else if (*(a2 + 49))
    {
      v9 = *(a2 + 8);
      v10 = *(a2 + 24);
      *(v3 + 26) = *(a2 + 34);
      *v3 = v9;
      v3[1] = v10;
    }

    else
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v3, a2 + 8);
      *(a1 + 49) = 0;
    }
  }

  return a1;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

__n128 assignWithTake for TTRIShowRemindersDeferredItemUpdates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_21D239E34(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    result = *(a2 + 34);
    *(a1 + 34) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[50])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destroy for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(void *a1)
{
  v1 = *(a1 + 41);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 <= 2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1);
    *(a1 + 41) = 2;
  }

  else if (v3 == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 41) = 1;
  }

  else if (v3)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 26) = *(a2 + 26);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = *(a1 + 41);
    if (v3 >= 3)
    {
      v3 = *a1 + 3;
    }

    if (v3 <= 2)
    {
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_0(a1);
      a2 = v4;
    }

    v5 = *(a2 + 41);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v9 = *(a2 + 3);
      *(a1 + 24) = v9;
      *(a1 + 32) = *(a2 + 4);
      (**(v9 - 8))(a1);
      *(a1 + 41) = 2;
    }

    else if (v5 == 1)
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      v8 = a2;
      (**(v7 - 8))(a1);
      *(a1 + 40) = *(v8 + 40);
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v10 = *a2;
      v11 = a2[1];
      *(a1 + 26) = *(a2 + 26);
      *a1 = v10;
      *(a1 + 16) = v11;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1);
      *(a1 + 41) = 0;
    }
  }

  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 41);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (v2 <= 2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_0(a1);
      a2 = v4;
      a1 = v3;
    }

    v5 = *(a2 + 41);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 41) = 2;
    }

    else if (v5 == 1)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      result = *(a2 + 26);
      *(a1 + 26) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 41) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 42))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 41);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D23A6B4(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_21D23A6D0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_21D23A708(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRICustomRecurrenceEditorModuleState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRecurrenceRuleModel.init(sourceRule:)(a1, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_21D23ABF4(v9, v5, type metadata accessor for TTRRecurrenceRuleModel);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_21D23A8F0(v5, v11);
    swift_unknownObjectRelease();
    sub_21D23BB08(v5, type metadata accessor for TTRICustomRecurrenceEditorModuleState);
  }

  return sub_21D23BB08(v9, type metadata accessor for TTRRecurrenceRuleModel);
}

uint64_t type metadata accessor for TTRICustomRecurrenceEditorModuleState(uint64_t a1)
{
  result = qword_27CE5A020;
  if (!qword_27CE5A020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D23A8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICustomRecurrenceEditorModuleState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v7 = objc_opt_self();
  v8 = sub_21DBFA12C();

  sub_21D23ABF4(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRICustomRecurrenceEditorModuleState);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21D23AC5C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D23ACC0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);

  [v7 withActionName:v8 block:v12];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D23ABF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D23AC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICustomRecurrenceEditorModuleState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D23ACC0()
{
  type metadata accessor for TTRICustomRecurrenceEditorModuleState(0);

  return sub_21D4592CC();
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICustomRecurrenceEditorViewModel(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = type metadata accessor for TTRRecurrenceEndModel(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v13 + 64));
      }

      else
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        swift_storeEnumTagMultiPayload();
      }

      (*(v13 + 56))(a1, 0, 1, v12);
    }

    *(a1 + v7[5]) = *(a2 + v7[5]);
    *(a1 + v7[6]) = *(a2 + v7[6]);
    *(a1 + v7[7]) = *(a2 + v7[7]);
    *(a1 + v7[8]) = *(a2 + v7[8]);
    *(a1 + v7[9]) = *(a2 + v7[9]);
    *(a1 + v7[10]) = *(a2 + v7[10]);
    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    v16 = *(v8 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v16(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

double destroy for TTRICustomRecurrenceEditorViewModel(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    v4 = type metadata accessor for TTRRecurrenceEndModel(0);
    if (!(*(*(v4 - 8) + 48))(a1, 1, v4) && !swift_getEnumCaseMultiPayload())
    {
      v5 = sub_21DBF563C();
      (*(*(v5 - 8) + 8))(a1, v5);
    }
  }

  return result;
}

char *initializeWithCopy for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRecurrenceEndModel(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v9 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v9 + 56))(a1, 0, 1, v8);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    v12 = *(v5 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v12(a1, 0, 1, v4);
    return a1;
  }
}

char *sub_21D23B4F0(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];
        sub_21DBF8E0C();

        *&a1[v4[9]] = *&a2[v4[9]];
        sub_21DBF8E0C();

        *&a1[v4[10]] = *&a2[v4[10]];
        sub_21DBF8E0C();

        *&a1[v4[11]] = *&a2[v4[11]];
        sub_21DBF8E0C();

        *&a1[v4[12]] = *&a2[v4[12]];
        sub_21DBF8E0C();

        *&a1[v4[13]] = *&a2[v4[13]];
        sub_21DBF8E0C();

        return a1;
      }

      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    v21 = *(v5 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v21(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D23BB08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRecurrenceEndModel(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v9 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 32))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v9 + 56))(a1, 0, 1, v8);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

char *sub_21D23BE28(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 32))(a1, a2, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 32))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];

        *&a1[v4[9]] = *&a2[v4[9]];

        *&a1[v4[10]] = *&a2[v4[10]];

        *&a1[v4[11]] = *&a2[v4[11]];

        *&a1[v4[12]] = *&a2[v4[12]];

        *&a1[v4[13]] = *&a2[v4[13]];

        return a1;
      }

      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8) + 64);

  return memcpy(a1, a2, v12);
}

void sub_21D23C400(uint64_t a1)
{
  sub_21D23C48C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D23C48C(uint64_t a1)
{
  if (!qword_27CE5A030)
  {
    type metadata accessor for TTRRecurrenceRuleModel(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE5A030);
    }
  }
}

uint64_t TTRReminderDetailPendingMoveSingleItemProvider.reminderChangeItems.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC09CF0;
  *(v2 + 32) = v1;
  v3 = v1;
  return v2;
}

uint64_t sub_21D23C56C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC09CF0;
  *(v2 + 32) = v1;
  v3 = v1;
  return v2;
}

uint64_t sub_21D23C5C8(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_21D23C848;
  a2[1] = v5;
  return result;
}

uint64_t TTRReminderDetailPendingMoveDynamicItemProvider.provider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRReminderDetailPendingMoveDynamicItemProvider.provider.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRReminderDetailPendingMoveDynamicItemProvider.init(provider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *assignWithCopy for TTRReminderDetailPendingMoveDynamicItemProvider(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *assignWithTake for TTRReminderDetailPendingMoveDynamicItemProvider(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t result, int a2, int a3)
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

uint64_t sub_21D23C880@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_21D23C8F0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A038);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A038);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NSDiffableDataSourceSnapshot.itemIdentifier(at:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v22[0] = a2;
  v3 = *(a1 + 16);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v22 - v6);
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5D0C();
  v12 = NSDiffableDataSourceSnapshot.sectionIdentifier(at:)(a1, v7);
  if ((*(v8 + 48))(v7, 1, v3, v12) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(*(a1 + 24) - 8) + 56))(v22[0], 1, 1);
  }

  else
  {
    v14 = v22[0];
    (*(v8 + 32))(v11, v7, v3);
    v15 = sub_21DBF8AAC();
    v16 = sub_21DBF5CFC();
    v25 = v15;
    v17 = *(a1 + 24);
    v18 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83980], v18);
    sub_21DBFAC2C();
    v23 = v24;
    v22[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050, &qword_21DC10D10);
    if (sub_21DBFAD8C())
    {
      sub_21DBFA78C();

      (*(v8 + 8))(v11, v3);
      v19 = *(*(v17 - 8) + 56);
      v20 = v14;
      v21 = 0;
    }

    else
    {
      (*(v8 + 8))(v11, v3);

      v19 = *(*(v17 - 8) + 56);
      v20 = v14;
      v21 = 1;
    }

    return v19(v20, v21, 1);
  }
}

double NSDiffableDataSourceSnapshot.sectionIdentifier(at:)@<D0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21DBF8AEC();
  v6 = *(a2 + 16);
  v7 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83980], v7);
  sub_21DBFAC2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050, &qword_21DC10D10);
  if (sub_21DBFAD8C())
  {
    sub_21DBFA78C();

    (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  }

  else
  {
    (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  return result;
}

uint64_t sub_21D23CE60(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  }

  else
  {

    return sub_21DBFC5CC();
  }
}

uint64_t TTRIRecurrenceRuleWeekday.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D23CF6C()
{
  result = qword_27CE5A058;
  if (!qword_27CE5A058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIRecurrenceRuleWeekday, &type metadata for TTRIRecurrenceRuleWeekday, v0, v1);
    atomic_store(result, &qword_27CE5A058);
  }

  return result;
}

unint64_t sub_21D23CFC4()
{
  result = qword_27CE5A060;
  if (!qword_27CE5A060)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A068, &qword_21DC0DE88);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE5A060);
  }

  return result;
}

char *assignWithCopy for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];
        sub_21DBF8E0C();

        *&a1[v4[9]] = *&a2[v4[9]];
        sub_21DBF8E0C();

        *&a1[v4[10]] = *&a2[v4[10]];
        sub_21DBF8E0C();

        *&a1[v4[11]] = *&a2[v4[11]];
        sub_21DBF8E0C();

        *&a1[v4[12]] = *&a2[v4[12]];
        sub_21DBF8E0C();

        *&a1[v4[13]] = *&a2[v4[13]];
        sub_21DBF8E0C();

        return a1;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    v21 = *(v5 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v21(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D23D650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *assignWithTake for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 32))(a1, a2, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 32))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];

        *&a1[v4[9]] = *&a2[v4[9]];

        *&a1[v4[10]] = *&a2[v4[10]];

        *&a1[v4[11]] = *&a2[v4[11]];

        *&a1[v4[12]] = *&a2[v4[12]];

        *&a1[v4[13]] = *&a2[v4[13]];

        return a1;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0) - 8) + 64);

  return memcpy(a1, a2, v12);
}

void sub_21D23DCA8(uint64_t a1)
{
  sub_21D23E16C(319, &qword_27CE5A030, type metadata accessor for TTRRecurrenceRuleModel);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for TTRListType.PredefinedSmartListType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListType.PredefinedSmartListType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D23DEA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0, &unk_21DC0E050);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v5) = (*(v5 + 8))(ObjectType, v5);
    result = swift_unknownObjectRelease();
    if (v5)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = *(v0 + 24);
        v8 = swift_getObjectType();
        v9 = OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_viewModel;
        swift_beginAccess();
        sub_21D23E1C0(v0 + v9, v3);
        (*(v7 + 16))(v3, v8, v7);
        swift_unknownObjectRelease();
        return sub_21D23E230(v3);
      }
    }
  }

  return result;
}

uint64_t sub_21D23DFD8()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D23E230(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_viewModel);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_router));

  return swift_deallocClassInstance();
}

void sub_21D23E094(uint64_t a1)
{
  sub_21D23E16C(319, &qword_27CE5A0A8, type metadata accessor for TTRICustomRecurrenceEditorViewModel);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D23E16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D23E1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0, &unk_21DC0E050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D23E230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0, &unk_21DC0E050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D23E2BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID;
  swift_beginAccess();
  sub_21D0D3954(v1 + v6, v5, &qword_27CE5FB90, &unk_21DC09290);
  v7 = sub_21D241C54(v5, a1);
  sub_21D0CF7E0(v5, &qword_27CE5FB90, &unk_21DC09290);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_21DC0E270);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  else
  {
    swift_beginAccess();
    sub_21D0EB8DC(a1, v1 + v6, &qword_27CE5FB90, &unk_21DC09290);
    swift_endAccess();
  }

  return sub_21D0CF7E0(a1, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t sub_21D23E488@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_21DC0E1F0);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a1 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);
  return result;
}

uint64_t sub_21D23E508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21DC0E1F0);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);
  return result;
}

unsigned __int8 *sub_21D23E5C0(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);
  if (v3 == 3)
  {
    if (v2 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath(byte_21DC0E1F0);
      MEMORY[0x28223BE20](KeyPath);
      sub_21D23FFBC();
      sub_21DBF5D8C();
    }
  }

  else if (v3 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel) = v2;
  return result;
}

uint64_t sub_21D23E6B8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_21DC0E298);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  a1[1] = v4;
  return result;
}

uint64_t sub_21D23E744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21DC0E298);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);
  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  a2[1] = v5;
  return result;
}

unsigned __int8 *sub_21D23E7D0(unsigned __int8 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return sub_21D23E810(v3);
}

unsigned __int8 *sub_21D23E810(unsigned __int8 *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  if (v2 != *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags) || ((v3 ^ v4[1]) & 1) != 0)
  {
    KeyPath = swift_getKeyPath(byte_21DC0E298);
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  else
  {
    *v4 = v2;
    v4[1] = v3;
  }

  return result;
}

uint64_t sub_21D23EA94@<X0>(const char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath(a1);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a3 = *(v3 + *a2);
  return result;
}

unsigned __int8 *sub_21D23EB84(unsigned __int8 *result, void *a2, const char *a3, uint64_t a4)
{
  v5 = *result;
  if (v5 == *(v4 + *a2))
  {
    *(v4 + *a2) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23ED80()
{
  swift_getKeyPath(byte_21DC0E3C0);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  return *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel);
}

uint64_t sub_21D23EDF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21DC0E3C0);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel);
  return result;
}

uint64_t sub_21D23EEA0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel) != result)
  {
    KeyPath = swift_getKeyPath(byte_21DC0E3C0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23F014@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath(a1);
  v12 = v5;
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v10 = *a2;
  swift_beginAccess();
  return sub_21D0D3954(v12 + v10, a5, a3, a4);
}

uint64_t sub_21D23F0F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_21D23F238()
{
  swift_getKeyPath(aX_4);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  sub_21DBF8E0C();
  return v1;
}

double sub_21D23F2C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_21DBFC64C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath(aX_4);
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_21D23F410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  *v3 = a2;
  v3[1] = a3;
  sub_21DBF8E0C();
}

double sub_21D23F458()
{
  swift_getKeyPath(byte_21DC0E150);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  sub_21DBF8E0C();
  return result;
}

double sub_21D23F4D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions;
  v4 = sub_21DBF8E0C();
  v5 = sub_21D1D56D8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21DC0E150);
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23F628@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_21D23F70C(const char *a1, void *a2)
{
  swift_getKeyPath(a1);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  return *(v2 + *a2);
}

uint64_t sub_21D23F7A4(uint64_t result, void *a2, const char *a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23F888(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v11 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v30 = v2;

  v28 = a1;
  v19 = v29;
  swift_getAtKeyPath();

  v20 = *(v8 + 56);
  sub_21D0D3954(v18, v10, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D0D3954(v19, &v10[v20], &qword_27CE5FB90, &unk_21DC09290);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90, &unk_21DC09290);
    if (v21(&v10[v20], 1, v4) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
    }

    goto LABEL_6;
  }

  sub_21D0D3954(v10, v15, &qword_27CE5FB90, &unk_21DC09290);
  if (v21(&v10[v20], 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D1068B8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v10, &qword_27CE5F2E0, &unk_21DC0F9C0);
LABEL_7:
    sub_21D0D3954(v19, v27, &qword_27CE5FB90, &unk_21DC09290);
    v30 = v2;

    swift_setAtReferenceWritableKeyPath();
  }

  v23 = v26;
  sub_21D241B94(&v10[v20], v26);
  v24 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v15, v23);
  sub_21D1068B8(v23, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v18, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D1068B8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D23FC64()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel, &qword_27CE5A0B8, &qword_21DC0E120);

  v1 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel___observationRegistrar;
  v2 = sub_21DBF5DBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListReminderCellObservableViewModel(uint64_t a1)
{
  result = qword_280D0D480;
  if (!qword_280D0D480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D23FDB8(uint64_t a1)
{
  sub_21D23FF50(319, &qword_280D14240, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v1 <= 0x3F)
  {
    sub_21D23FF50(319, qword_280D14120, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v2 <= 0x3F)
    {
      sub_21DBF5DBC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21D23FF50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21D23FFBC()
{
  result = qword_280D0D490;
  if (!qword_280D0D490)
  {
    v3 = type metadata accessor for TTRIRemindersListReminderCellObservableViewModel(255);
    result = swift_getWitnessTable(aI_10, v3, v0, v1);
    atomic_store(result, &qword_280D0D490);
  }

  return result;
}

uint64_t sub_21D240014()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel) = 3;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isUserInteractionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass) = 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__titleIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__notesIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing) = 0;
  v7 = (v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient) = 0;
  sub_21DBF5DAC();
  return v0;
}

uint64_t sub_21D24021C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0, &unk_21DC1F7F0);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v55 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v57);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  *&v10 = MEMORY[0x28223BE20](v9 - 8).n128_u64[0];
  v12 = &v55 - v11;
  KeyPath = swift_getKeyPath(byte_21DC0E270, v10);
  sub_21D241B2C(a1, v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_21D23F888(KeyPath, v12);

  sub_21D0CF7E0(v12, &qword_27CE5FB90, &unk_21DC09290);
  v15 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel(0);
  v16 = *(a1 + v15[5]);
  swift_getKeyPath(byte_21DC0E1F0);
  v61 = v1;
  sub_21D23FFBC();

  sub_21DBF5D9C();

  v17 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);

  if (v17 == 3)
  {
    if (v16 == 3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v16 == 3 || v17 != v16)
  {
LABEL_6:
    LOBYTE(v61) = v16;

    sub_21D23E5C0(&v61);
  }

LABEL_7:
  v18 = (a1 + v15[6]);
  v19 = *v18;
  v20 = v18[1];
  swift_getKeyPath(byte_21DC0E298);
  v61 = v2;

  sub_21DBF5D9C();

  v21 = (v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  v22 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  v23 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);

  if (v19 != v22 || ((v20 ^ v23) & 1) != 0)
  {
    if (v19 != *v21 || ((v20 ^ v21[1]) & 1) != 0)
    {
      v24 = swift_getKeyPath(byte_21DC0E298);
      v56 = &v55;
      MEMORY[0x28223BE20](v24);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v19;
      *(&v55 - 7) = v20;
      v61 = v2;

      sub_21DBF5D8C();
    }

    else
    {
      *v21 = v19;
      v21[1] = v20;
    }
  }

  v25 = *(a1 + v15[7]);
  swift_getKeyPath(aP_4);
  v61 = v2;

  sub_21DBF5D9C();

  v26 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isUserInteractionEnabled;
  v27 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isUserInteractionEnabled);

  if (v25 != v27)
  {
    if (v25 == *(v2 + v26))
    {
      *(v2 + v26) = v25;
    }

    else
    {
      v28 = swift_getKeyPath(aP_4);
      v56 = &v55;
      MEMORY[0x28223BE20](v28);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v25;
      v61 = v2;

      sub_21DBF5D8C();
    }
  }

  v29 = *(a1 + v15[8]);
  swift_getKeyPath(aP_5);
  v61 = v2;

  sub_21DBF5D9C();

  v30 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem;
  v31 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem);

  if (v29 != v31)
  {
    if (v29 == *(v2 + v30))
    {
      *(v2 + v30) = v29;
    }

    else
    {
      v32 = swift_getKeyPath(aP_5);
      v56 = &v55;
      MEMORY[0x28223BE20](v32);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v29;
      v61 = v2;

      sub_21DBF5D8C();
    }
  }

  v33 = *(a1 + v15[10]);
  swift_getKeyPath(a0_5);
  v61 = v2;

  sub_21DBF5D9C();

  v34 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState;
  v35 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState);

  if (v33 != v35)
  {
    if (v33 == *(v2 + v34))
    {
      *(v2 + v34) = v33;
    }

    else
    {
      v36 = swift_getKeyPath(a0_5);
      v56 = &v55;
      MEMORY[0x28223BE20](v36);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v33;
      v61 = v2;

      sub_21DBF5D8C();
    }
  }

  v37 = *(a1 + v15[11]);
  swift_getKeyPath(byte_21DC0E338);
  v61 = v2;

  sub_21DBF5D9C();

  v38 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState;
  v39 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState);

  if (v37 != v39)
  {
    if (v37 == *(v2 + v38))
    {
      *(v2 + v38) = v37;
    }

    else
    {
      v40 = swift_getKeyPath(byte_21DC0E338);
      v56 = &v55;
      MEMORY[0x28223BE20](v40);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v37;
      v61 = v2;

      sub_21DBF5D8C();
    }
  }

  v41 = *(a1 + v15[12]);
  swift_getKeyPath(byte_21DC0E360);
  v61 = v2;

  sub_21DBF5D9C();

  v42 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible;
  v43 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible);

  if (v41 != v43)
  {
    if (v41 == *(v2 + v42))
    {
      *(v2 + v42) = v41;
    }

    else
    {
      v44 = swift_getKeyPath(byte_21DC0E360);
      v56 = &v55;
      MEMORY[0x28223BE20](v44);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v41;
      v61 = v2;

      sub_21DBF5D8C();
    }
  }

  v45 = v60;
  sub_21D0D3954(a1 + v15[13], v60, &qword_27CE5A0C0, &unk_21DC1F7F0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8, &qword_21DC0E388);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
  {
    v47 = v58;
    sub_21D241B2C(v45, v58, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v45, &qword_27CE5A0C8, &qword_21DC0E388);
    v48 = v59;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v59);
    sub_21D1068B8(v47, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_40;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_21D1068B8(v48, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      v50 = 1;
      goto LABEL_41;
    }

    sub_21D1068B8(v48, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    goto LABEL_40;
  }

  sub_21D0CF7E0(v45, &qword_27CE5A0C0, &unk_21DC1F7F0);
LABEL_40:
  v50 = 0;
LABEL_41:
  swift_getKeyPath(byte_21DC0E390);
  v61 = v2;

  sub_21DBF5D9C();

  v51 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories;
  v52 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories);

  if (v50 != v52)
  {
    if (v50 == *(v2 + v51))
    {
      *(v2 + v51) = v50;
    }

    else
    {
      v54 = swift_getKeyPath(byte_21DC0E390);
      MEMORY[0x28223BE20](v54);
      *(&v55 - 2) = v2;
      *(&v55 - 8) = v50;
      v61 = v2;

      sub_21DBF5D8C();
    }
  }

  return result;
}

uint64_t sub_21D240DC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = sub_21DBF87BC();
  v5 = v4 & 1;
  swift_getKeyPath(byte_21DC0E240);
  v30 = v2;
  sub_21D23FFBC();

  sub_21DBF5D9C();

  v6 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode;
  v7 = *(v30 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v5 != v7)
  {
    if (v5 == *(v3 + v6))
    {
      *(v3 + v6) = v4 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_21DC0E240);
      MEMORY[0x28223BE20](KeyPath);

      sub_21DBF5D8C();
    }
  }

  v9 = sub_21DBF87AC();
  v10 = v9 & 1;
  swift_getKeyPath(byte_21DC0E218);

  sub_21DBF5D9C();

  v11 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped;
  v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped);

  if (v10 != v12)
  {
    if (v10 == *(v3 + v11))
    {
      *(v3 + v11) = v9 & 1;
    }

    else
    {
      v13 = swift_getKeyPath(byte_21DC0E218);
      MEMORY[0x28223BE20](v13);

      sub_21DBF5D8C();
    }
  }

  v14 = sub_21DBF875C();
  v15 = v14 & 1;
  swift_getKeyPath(byte_21DC0E128);

  sub_21DBF5D9C();

  v16 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded;
  v17 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded);

  if (v15 != v17)
  {
    if (v15 == *(v3 + v16))
    {
      *(v3 + v16) = v14 & 1;
    }

    else
    {
      v18 = swift_getKeyPath(byte_21DC0E128);
      MEMORY[0x28223BE20](v18);

      sub_21DBF5D8C();
    }
  }

  v19 = [a2 indentationLevel];
  swift_getKeyPath(byte_21DC0E3C0);

  sub_21DBF5D9C();

  v20 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel;
  v21 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel);

  if (v21 != v19 && *(v3 + v20) != v19)
  {
    v22 = swift_getKeyPath(byte_21DC0E3C0);
    MEMORY[0x28223BE20](v22);

    sub_21DBF5D8C();
  }

  v23 = sub_21DBF877C();
  v24 = [v23 horizontalSizeClass];

  swift_getKeyPath(byte_21DC0E3E8);

  sub_21DBF5D9C();

  v25 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass;
  v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass);

  if ((v24 == 1) != v26)
  {
    if (((v24 == 1) ^ *(v3 + v25)))
    {
      v28 = swift_getKeyPath(byte_21DC0E3E8);
      MEMORY[0x28223BE20](v28);

      sub_21DBF5D8C();
    }

    else
    {
      *(v3 + v25) = v24 == 1;
    }
  }

  return result;
}

uint64_t sub_21D2413A4()
{
  swift_getKeyPath(aP_5);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem))
  {
    return 1;
  }

  swift_getKeyPath(aX_3);
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__titleIsEditing))
  {
    return 1;
  }

  swift_getKeyPath(a8_2);
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__notesIsEditing))
  {
    return 1;
  }

  swift_getKeyPath(asc_21DC0E438);
  sub_21DBF5D9C();

  return *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing);
}

uint64_t sub_21D2414F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8, &qword_21DC0E120);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  swift_getKeyPath(byte_21DC0E240, v3);
  v11 = v0;
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode))
  {
    return 0;
  }

  swift_getKeyPath(byte_21DC0E360);
  v11 = v0;
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible))
  {
    return 0;
  }

  swift_getKeyPath(asc_21DC0E460);
  v11 = v0;
  sub_21DBF5D9C();

  v7 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v1 + v7, v5, &qword_27CE5A0B8, &qword_21DC0E120);
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5[*(v8 + 24) + 2];
  }

  sub_21D0CF7E0(v5, &qword_27CE5A0B8, &qword_21DC0E120);
  return v9;
}

uint64_t sub_21D2416E8@<X0>(char *a1@<X8>)
{
  swift_getKeyPath(byte_21DC0E1F0);
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel) == 1)
  {
    swift_getKeyPath(byte_21DC0E128);
    sub_21DBF5D9C();

    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21D2417CC()
{
  v1 = v0;
  v2 = sub_21DBF604C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D44DC8], v2, v4);
  v7 = sub_21DBF603C();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath(byte_21DC0E3E8);
  v10 = v1;
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass))
  {
    return 0;
  }

  if (sub_21D2413A4())
  {
    return 1;
  }

  swift_getKeyPath(byte_21DC0E338);
  v10 = v1;
  sub_21DBF5D9C();

  return *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState);
}

void sub_21D241970()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions) = *(v0 + 24);
  sub_21DBF8E0C();
}

void sub_21D2419B4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  *v2 = v0[3];
  v2[1] = v1;
  sub_21DBF8E0C();
}

void sub_21D241A78()
{
  v1 = *(v0 + 25);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  *v2 = *(v0 + 24);
  v2[1] = v1;
}

uint64_t sub_21D241B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D241B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D241C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21D0D3954(a1, &v20 - v12, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D0D3954(a2, &v13[v15], &qword_27CE5FB90, &unk_21DC09290);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &qword_27CE5FB90, &unk_21DC09290);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21D241B94(&v13[v15], v7);
      v18 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D1068B8(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D1068B8(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v13, &qword_27CE5FB90, &unk_21DC09290);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_21D1068B8(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE5F2E0, &unk_21DC0F9C0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21D0CF7E0(v13, &qword_27CE5FB90, &unk_21DC09290);
  v17 = 0;
  return v17 & 1;
}

uint64_t TTRListSharingUIType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void REMAccount.listSharingUIType.getter(char *a1@<X8>)
{
  v3 = [v1 accountTypeHost];
  sub_21DBFB2CC();

  v4 = v5;
  if (v5 == 3)
  {
    v4 = 2;
  }

  *a1 = v4;
}

unint64_t sub_21D2421F0()
{
  result = qword_27CE5A0D0;
  if (!qword_27CE5A0D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRListSharingUIType, &type metadata for TTRListSharingUIType, v0, v1);
    atomic_store(result, &qword_27CE5A0D0);
  }

  return result;
}

uint64_t sub_21D242254(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_21DBFA2AC();
  return sub_21DBFA3CC();
}

uint64_t sub_21D2422D4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A0D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A0D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderCellHashtagEditingPresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*TTRReminderCellHashtagEditingPresenter.delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D2424CC;
}

uint64_t TTRReminderCellHashtagEditingPresenter.presenterManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellHashtagEditingPresenter.presenterManager.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

void sub_21D242600(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

uint64_t sub_21D2426D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a2, a4, a5, v6, ObjectType, a3);
  swift_unknownObjectRelease();
  return v14;
}

double TTRReminderCellHashtagEditingPresenter.augmentation.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_21D24A7C4(v4, v5, v6, v7);
}

double sub_21D2427B8@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21D24A7C4(v4, v5, v6, v7);
}

double sub_21D242818(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_21D24A7C4(v2, v3, v4, v5);
  sub_21D24A7C4(v7, v8, v9, v10);
  sub_21D24A814(v7, v8);
  v12.n128_u64[0] = v7;
  v12.n128_u64[1] = v8;
  v13 = v9;
  v14 = v10;
  sub_21D2429B4(&v12);
  return sub_21D24A814(v7, v8);
}

double TTRReminderCellHashtagEditingPresenter.augmentation.setter(__n128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  sub_21D24A7C4(v4, v5, v6, v7);
  sub_21D24A814(v4, v5);
  v10.n128_u64[0] = v4;
  v10.n128_u64[1] = v5;
  v11 = v6;
  v12 = v7;
  sub_21D2429B4(&v10);
  return sub_21D24A814(v4, v5);
}

void sub_21D2429B4(__n128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v11 = *v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = *a1;
  v10[1] = a1[1];
  v10[0] = v7;
  sub_21D24A7C4(v11, v4, v5, v6);
  LOBYTE(a1) = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO2eeoiySbAC_ACtFZ_0(&v11, v10);
  sub_21D24A814(v11, v12);
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 48))(v1, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

void (*TTRReminderCellHashtagEditingPresenter.augmentation.modify(uint64_t *a1))(unint64_t **a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  sub_21D24A7C4(v7, v8, v9, v10);
  return sub_21D242B48;
}

void sub_21D242B48(unint64_t **a1, char a2, __n128 a3)
{
  v4 = *a1;
  v5 = ((*a1)[7] + (*a1)[8]);
  v6 = **a1;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = *v5;
  v10 = v5[1];
  v13 = v5[2];
  v12 = v5[3];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  if (a2)
  {
    sub_21D24A7C4(v6, v7, v8, v9);
    sub_21D24A7C4(v11, v10, v13, v12);
    sub_21D24A814(v11, v10);
    v16.n128_u64[0] = v11;
    v16.n128_u64[1] = v10;
    v17 = v13;
    v18 = v12;
    sub_21D2429B4(&v16);
    sub_21D24A814(v11, v10);
    v14 = *v4;
    v15 = v4[1];
  }

  else
  {
    sub_21D24A7C4(v11, v10, v13, v12);
    sub_21D24A814(v11, v10);
    v16.n128_u64[0] = v11;
    v16.n128_u64[1] = v10;
    v17 = v13;
    v18 = v12;
    sub_21D2429B4(&v16);
    v14 = v11;
    v15 = v10;
  }

  sub_21D24A814(v14, v15);

  free(v4);
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestAbortEditing()()
{
  if (qword_27CE565C8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5A0D8);
  v2 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminders List abort editing hashtag", 36, 2, v2);

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_shouldSkipSavingEditingSession) = 1;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestHandleBeginEditingHashtags(attributedText:)(NSAttributedString attributedText)
{
  v2 = v1;
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v14 = sub_21DBFBA3C();
  v101 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v100 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v16 - 8);
  v96 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F8, &qword_21DC0E538);
  v91 = *(v18 - 8);
  v92 = v18;
  MEMORY[0x28223BE20](v18);
  v90 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A100, &qword_21DC0E540);
  v94 = *(v20 - 8);
  v95 = v20;
  MEMORY[0x28223BE20](v20);
  v93 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A108, &qword_21DC0E548);
  v98 = *(v22 - 8);
  v99 = v22;
  MEMORY[0x28223BE20](v22);
  v97 = &v78 - v23;
  if (qword_27CE565C8 != -1)
  {
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_27CE5A0D8);
  v25 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminder List begin editing reminder hashtags", 45, 2, v25);

  sub_21D243970();
  *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels) = 0;

  v26 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  if (v26)
  {
    v79 = v5;
    v80 = v7;
    v81 = v10;
    v82 = v13;
    v83 = v4;
    v27 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    v28 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_interactor + 8);
    v102 = v2;
    ObjectType = swift_getObjectType();
    isa = attributedText.super.isa;
    v30 = ObjectType;
    v31 = swift_getObjectType();
    v32 = *(v27 + 32);
    swift_unknownObjectRetain();
    v88 = v26;
    v32(v104, v31, v27);
    v33 = v105;
    v34 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v35 = (*(v34 + 176))(v33, v34);
    v36 = (*(v28 + 8))(v35, v30, v28);

    __swift_destroy_boxed_opaque_existential_0(v104);
    v103 = *(v102 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_textSelectionPassthroughSubject);
    v104[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A110, &unk_21DC0E550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A118, &unk_21DC1F7E0);
    v87 = v14;
    sub_21D0D0F1C(&qword_280D0C498, &qword_27CE5A110, &unk_21DC0E550, MEMORY[0x277CBCD90]);
    sub_21D0D0F1C(&qword_27CE5A120, &qword_27CE5A118, &unk_21DC1F7E0, MEMORY[0x277CBCE20]);
    v37 = v90;
    sub_21DBF923C();

    v86 = objc_opt_self();
    v38 = [v86 mainRunLoop];
    v104[0] = v38;
    v39 = sub_21DBFBA0C();
    v85 = *(*(v39 - 8) + 56);
    v40 = v96;
    v85(v96, 1, 1, v39);
    v84 = sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
    sub_21D0D0F1C(&qword_27CE5A128, &qword_27CE5A0F8, &qword_21DC0E538, MEMORY[0x277CBCAF0]);
    sub_21D0D65DC(&qword_280D17660, &qword_280D17650, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v41 = v92;
    v42 = v93;
    sub_21DBF936C();
    sub_21D0CF7E0(v40, &qword_27CE5A0F0, &qword_21DC0E530);

    (*(v91 + 8))(v37, v41);
    v43 = v100;
    sub_21DBFBA1C();
    v44 = [v86 mainRunLoop];
    v104[0] = v44;
    v85(v40, 1, 1, v39);
    sub_21D0D0F1C(&qword_27CE5A130, &qword_27CE5A100, &qword_21DC0E540, MEMORY[0x277CBCD60]);
    v45 = v97;
    v46 = v95;
    v47 = isa;
    v48 = v102;
    sub_21DBF937C();
    sub_21D0CF7E0(v40, &qword_27CE5A0F0, &qword_21DC0E530);

    (*(v101 + 8))(v43, v87);
    (*(v94 + 8))(v42, v46);
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_21D24A864;
    *(v50 + 24) = v49;
    sub_21D0D0F1C(&qword_27CE5A138, &qword_27CE5A108, &qword_21DC0E548, MEMORY[0x277CBCCF8]);
    v51 = v99;
    v52 = sub_21DBF92AC();

    (*(v98 + 8))(v45, v51);
    *(v48 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagLabelsCancellable) = v52;

    v53 = [(objc_class *)v47 string];
    v54 = sub_21DBFA16C();
    v56 = v55;

    sub_21D242254(v54, v56);
    v58 = v57;

    if (!v58)
    {
LABEL_10:
      swift_unknownObjectRelease();
      return;
    }

    v59 = v47;
    v60 = v82;
    sub_21DBF4C1C();
    v61 = v81;
    sub_21DBF4C2C();
    v62 = v80;
    sub_21DBF4BDC();
    if (sub_21DBF4BFC())
    {
      swift_unknownObjectRelease();

      v63 = *(v79 + 8);
      v64 = v83;
      v63(v62, v83);
      v63(v61, v64);
      v63(v60, v64);
      return;
    }

    v65 = sub_21DBF4BFC();
    v66 = (v79 + 8);
    if (v65)
    {
      sub_21DBF4BFC();

      v67 = *v66;
      v68 = v83;
      (*v66)(v62, v83);
      v67(v61, v68);
      v67(v60, v68);
      v69 = [(objc_class *)v59 string];
      v70 = sub_21DBFA16C();
      v72 = v71;

      v73 = MEMORY[0x223D42B30](v70, v72);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v74 = *(v48 + 24);
        v75 = swift_getObjectType();
        (*(v74 + 24))(v48, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v73, 0, 32, 0xE100000000000000, v75, v74);
        swift_unknownObjectRelease();
      }

      goto LABEL_10;
    }

    swift_unknownObjectRelease();

    v76 = *v66;
    v77 = v83;
    (*v66)(v62, v83);
    v76(v61, v77);
    v76(v60, v77);
  }
}

uint64_t sub_21D243970()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
    swift_beginAccess();
    *(v1 + v3) = MEMORY[0x277D84FA0];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 16))(v1, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v4);
      v8 = v7;
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *v2 = v6;
    v2[1] = v8;
    swift_unknownObjectRelease();
    if (!*v2)
    {
      if (qword_27CE565C8 != -1)
      {
        swift_once();
      }

      v9 = sub_21DBF84BC();
      __swift_project_value_buffer(v9, qword_27CE5A0D8);

      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEBC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20[0] = v13;
        *v12 = 136315138;
        v14 = sub_21D25D250();
        v16 = sub_21D0CDFB4(v14, v15, v20);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_21D0C9000, v10, v11, "TTRReminderCellHashtagEditingPresenter: Could not acquire editing session to begin editing. {item: %s}", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);
      }
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v1 + 40);
    v19 = swift_getObjectType();
    (*(v18 + 88))(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_item, v19, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D243BF8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_27CE565C8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE5A0D8);
    v3 = v1;
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = v9;

      v11 = sub_21D0CDFB4(v8, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v4, v5, "fetchAllHashtagLabels failed {error: %s}", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D243DAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v11 = a2;
  if (Strong)
  {
    v12 = sub_21DBF6ABC();
    v13 = sub_21DBF6ACC();
    sub_21D5623AC(v13);
    *(Strong + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels) = v12;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v14 = sub_21DBF6ABC();
    sub_21D243ED4(v11, a3, a4, a5 & 1, v14);
  }
}

void sub_21D243ED4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v90 = a5;
  v11 = sub_21DBF4CAC();
  v88 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v89 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 string];
  v15 = sub_21DBFA16C();
  v17 = v16;

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v18 = *(v6 + 24), ObjectType = swift_getObjectType(), v20 = *(v18 + 8), v91 = v6, v21 = v20(ObjectType, v18), v6 = v91, v22 = v21, swift_unknownObjectRelease(), !v22))
  {

    goto LABEL_11;
  }

  v84 = v11;
  v23 = [v22 string];

  v24 = sub_21DBFA16C();
  v26 = v25;

  if (v15 == v24 && v17 == v26)
  {

    if ((a4 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    v29 = (v6 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    sub_21D24A7C4(v30, v31, v32, v33);
    sub_21D24A814(v30, v31);
    aBlock.n128_u64[0] = v30;
    aBlock.n128_u64[1] = v31;
    v94 = v32;
    v95 = v33;
    sub_21D2429B4(&aBlock);
    v34 = v30;
    v35 = v31;
    goto LABEL_12;
  }

  v28 = sub_21DBFC64C();

  if (v28 & 1) == 0 || (a4)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (a3 || sub_21DBF4B4C() == a2)
  {
    goto LABEL_11;
  }

  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v87 = a1;
  v36 = [a1 string];
  v37 = sub_21DBFA16C();
  v39 = v38;

  v40 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v37, v39, 0, a2);

  v41 = v40;
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = 0;
    v86 = &v94;
    v44 = (v40 + 24 * v42 + 24);
    v85 = v41;
    while (1)
    {
      if (v42 > *(v41 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v92 = v43;
      v45 = *(v44 - 2);
      v46 = *(v44 - 1);
      v47 = *v44;
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      v49 = (v48 + 16);
      v96 = sub_21D24BDA4;
      v97 = v48;
      aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
      aBlock.n128_u64[1] = 1107296256;
      v94 = sub_21D472974;
      v95 = &block_descriptor_68;
      v50 = _Block_copy(&aBlock);

      [v87 rem:v45 enumerateHashtagInRange:v46 options:0x100000 usingBlock:v50];
      _Block_release(v50);
      swift_beginAccess();
      LOBYTE(v49) = *v49;

      if ((v49 & 1) != 0 || v47 == 3)
      {
        break;
      }

      if (v47 == 2)
      {

        v53 = a2 + v92;
        if (__OFADD__(a2, v92))
        {
          __break(1u);
        }

        else
        {
          v52 = v87;
          if (!__OFADD__(v45, v46))
          {
            if (v53 <= v45 + v46)
            {
              v53 = v45 + v46;
            }

            if (a2 >= v45)
            {
              a2 = v45;
            }

            v43 = v53 - a2;
            if (!__OFSUB__(v53, a2))
            {
              goto LABEL_40;
            }

LABEL_57:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

      v51 = a2 + v92;
      if (__OFADD__(a2, v92))
      {
        goto LABEL_51;
      }

      if (__OFADD__(v45, v46))
      {
        goto LABEL_52;
      }

      if (v51 <= v45 + v46)
      {
        v51 = v45 + v46;
      }

      if (a2 >= v45)
      {
        a2 = v45;
      }

      v43 = v51 - a2;
      if (__OFSUB__(v51, a2))
      {
        goto LABEL_53;
      }

      v44 -= 24;
      --v42;
      v41 = v85;
      if (!v42)
      {
        goto LABEL_32;
      }
    }

    v43 = v92;
LABEL_32:

    v52 = v87;
LABEL_40:
    if (v43 < 1)
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      goto LABEL_49;
    }

    v54 = [v52 string];
    if (!v54)
    {
      sub_21DBFA16C();
      v54 = sub_21DBFA12C();
    }

    v55 = [v54 substringWithRange_];

    v56 = sub_21DBFA16C();
    v58 = v57;

    v59 = v89;
    v60 = sub_21DBF4C1C();
    MEMORY[0x28223BE20](v60);
    *(&v84 - 2) = v59;
    v61 = sub_21D3F7414(sub_21D24BE88, (&v84 - 4), v56, v58);
    if (v62)
    {

      v63 = 0;
      v64 = 0xE000000000000000;
    }

    else
    {
      v65 = sub_21D3F7BA8(v61, v56, v58);
      v67 = v66;
      v69 = v68;
      v71 = v70;

      v59 = v89;
      v63 = MEMORY[0x223D429B0](v65, v67, v69, v71);
      v64 = v72;
    }

    (*(v88 + 8))(v59, v84);
  }

  else
  {
LABEL_54:

    v43 = 0;
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  v52 = v87;
LABEL_49:
  v73 = v91;
  v74 = sub_21D248840(v63, v64, v52, a2, v43, v90);

  v75 = [v52 string];
  v76 = sub_21DBFA16C();
  v78 = v77;

  v79 = (v73 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];
  v82 = v79[2];
  v83 = v79[3];
  *v79 = v76;
  v79[1] = v78;
  v79[2] = MEMORY[0x277D84FA0];
  v79[3] = v74;
  sub_21D24A7C4(v80, v81, v82, v83);
  sub_21D24A814(v80, v81);
  aBlock.n128_u64[0] = v80;
  aBlock.n128_u64[1] = v81;
  v94 = v82;
  v95 = v83;
  sub_21D2429B4(&aBlock);
  v34 = v80;
  v35 = v81;
LABEL_12:
  sub_21D24A814(v34, v35);
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestHandleEditingHashtagsDidEnd(attributedText:)(NSAttributedString attributedText)
{
  if (qword_27CE565C8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5A0D8);
  v4 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminders List end editing reminder hashtags", 44, 2, v4);

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v5 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    *v5 = 0u;
    *(v5 + 1) = 0u;
    swift_unknownObjectRetain();
    sub_21D24A7C4(v6, v7, v8, v9);
    sub_21D24A814(v6, v7);
    v13.n128_u64[0] = v6;
    v13.n128_u64[1] = v7;
    v14 = v8;
    v15 = v9;
    sub_21D2429B4(&v13);
    sub_21D24A814(v6, v7);
    v13.n128_u64[0] = 0;
    sub_21D24A8D0(attributedText.super.isa, &v13);
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v10, "Missing editing session for editing hashtags", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }
}

uint64_t _s15RemindersUICore38TTRReminderCellHashtagEditingPresenterC010requestEndF0yyF_0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestHandleSelectionDidChange(attributedText:newSelection:)(NSAttributedString attributedText, __C::_NSRange_optional newSelection)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    is_nil = newSelection.is_nil;
    length = newSelection.value.length;
    location = newSelection.value.location;
    v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);
    swift_unknownObjectRetain();
    v9(v13, ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 216))(&v16, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v13);
    if (*(&v17 + 1))
    {
      sub_21D0CF7E0(&v16, &qword_27CE5A140, &unk_21DC0E560);
      *&v16 = attributedText;
      *(&v16 + 1) = location;
      *&v17 = length;
      BYTE8(v17) = is_nil;
      v12 = attributedText.super.isa;
      sub_21DBF906C();

      return;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  sub_21D0CF7E0(&v16, &qword_27CE5A140, &unk_21DC0E560);
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:)(NSAttributedString handleEditingTextChange, RemindersUICore::TTRReminderTextChangeDetail_optional *detail, Swift::Bool hasMarkedText)
{
  if (hasMarkedText)
  {
    return;
  }

  if (!*(v3 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_12;
  }

  isa = detail->value.originalText.super.isa;
  countAndFlagsBits = detail->value.replacementText.value._countAndFlagsBits;
  object = detail->value.replacementText.value._object;
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 32);
  swift_unknownObjectRetain();
  v9(v14, ObjectType, v7);
  swift_unknownObjectRelease();
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v11 + 216))(&v17, v10, v11);
  __swift_destroy_boxed_opaque_existential_0(v14);
  if (!*(&v18 + 1))
  {
LABEL_12:
    sub_21D0CF7E0(&v17, &qword_27CE5A140, &unk_21DC0E560);
    return;
  }

  sub_21D0CF7E0(&v17, &qword_27CE5A140, &unk_21DC0E560);
  if (isa && object)
  {
    v12 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v12 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      type metadata accessor for TTRHashtagEditingPresenterCapability();
      if (static TTRHashtagEditingPresenterCapability.tokenDelimiterExists(in:)(countAndFlagsBits, object))
      {
      }
    }
  }
}

id sub_21D244BB4(void *a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);
    swift_unknownObjectRetain();
    v6(v20, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_21D0D0FD0(v20, v21);
    v7 = v22;
    v8 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v8 + 216))(&v18, v7, v8);
    if (v19)
    {
      sub_21D0D0FD0(&v18, v20);
      v9 = a1;

      v10 = sub_21D479D70(v9, v9, v2);

      v11 = v10;
      v12 = sub_21D479D88(v11, v11, v2);

      v13 = v12;
      v14 = sub_21D479F54(v13, v13);

      sub_21D246CC4(v14);
      MEMORY[0x28223BE20](v15);
      v16 = NSAttributedString.withMutations(_:)(sub_21D24B374);

      __swift_destroy_boxed_opaque_existential_0(v20);
      __swift_destroy_boxed_opaque_existential_0(v21);
      return v16;
    }

    sub_21D0CF7E0(&v18, &qword_27CE5A140, &unk_21DC0E560);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return 0;
}

void sub_21D244DC4(id *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = [*a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_21DBFA12C();
    v11 = [v9 initWithString_];

    [v3 appendAttributedString_];
  }

  v12 = [objc_opt_self() attributeFromHashtag_];
  v13 = sub_21DBFA23C();
  v15 = v14;
  v16 = [v2 name];
  v17 = sub_21DBFA16C();
  v19 = v18;

  v28 = v15;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v17, v19);

  v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v21 = sub_21DBFA12C();

  v22 = [v20 initWithString_];

  v23 = [v22 string];
  v24 = sub_21DBFA16C();
  v26 = v25;

  v27 = MEMORY[0x223D42B30](v24, v26);

  [v22 rem:v12 addHashtag:0 range:v27];
  [v3 appendAttributedString_];
}

void TTRReminderCellHashtagEditingPresenter.requestSelect(_:currentAttributedText:currentSelection:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v6 = v5;
    v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 32);
    swift_unknownObjectRetain();
    v10(&v73, ObjectType, v8);
    v12 = v75;
    v11 = v76;
    __swift_project_boxed_opaque_existential_1(&v73, v75);
    (*(v11 + 216))(&v70, v12, v11);
    if (!v72)
    {
      swift_unknownObjectRelease();
      sub_21D0CF7E0(&v70, &qword_27CE5A140, &unk_21DC0E560);
      v42 = &v73;
LABEL_32:
      __swift_destroy_boxed_opaque_existential_0(v42);
      return;
    }

    sub_21D0D0FD0(&v70, v77);
    __swift_destroy_boxed_opaque_existential_0(&v73);
    sub_21D0CEB98(a1, &v73);
    if (swift_dynamicCast())
    {
      v13 = v70;
      v61 = v71;
      v62 = v72;
      if (qword_27CE565C8 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE5A0D8);
      v15 = sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC("User request selection apply suggestion to structured hashtags field", 68, 2, v15);

      sub_21DBF8E0C();
      v10(&v73, ObjectType, v8);
      v16 = v78;
      v17 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v18 = (*(v17 + 8))(v16, v17);
      sub_21D24857C(v13, *(&v13 + 1), v18);
      v20 = v19;

      if (!v20)
      {
        v21 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
        swift_beginAccess();
        v22 = *(v6 + v21);
        sub_21DBF8E0C();
        sub_21D24857C(v13, *(&v13 + 1), v22);
        v20 = v23;

        if (!v20)
        {
          v20 = sub_21D248408(&v73, v13, *(&v13 + 1));
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v73);
      v24 = sub_21DBFA23C();
      v26 = v25;
      v60 = v20;
      v27 = [v20 name];
      v28 = sub_21DBFA16C();
      v30 = v29;

      v73 = v24;
      v74 = v26;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v28, v30);

      v31 = v73;
      v32 = v74;
      v68 = v73;
      v69 = v74;
      sub_21DBF8E0C();
      v33 = sub_21DBF4B4C();

      v34 = &selRef_setAttributedText_;
      if (v61 == v33)
      {
        v35 = a3;
      }

      else
      {
        v35 = v61;
      }

      if (v61 == v33)
      {
        v36 = a4;
      }

      else
      {
        v36 = v62;
      }

      if (v61 == v33)
      {
        v43 = a2;
        if (a5)
        {
          v37 = [a2 string];
          v38 = sub_21DBFA16C();
          v40 = v39;

          v41 = v38;
          v34 = &selRef_setAttributedText_;
          v35 = MEMORY[0x223D42B30](v41, v40);

          v36 = 0;
        }
      }

      else
      {
        v43 = a2;
      }

      v44 = MEMORY[0x223D42B30](v31, v32);

      v45 = [v43 v34[155]];
      v46 = sub_21DBFA16C();
      v48 = v47;

      LOBYTE(v45) = sub_21D24AD90(v35, v46, v48);

      if (v45)
      {
        v49 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          return;
        }

        v44 = MEMORY[0x223D42B30](v31, v32);
        v73 = 32;
        v74 = 0xE100000000000000;
        MEMORY[0x223D42AA0](v31, v32);

        v68 = v73;
        v69 = v74;
      }

      else
      {
        v49 = v35;
      }

      MEMORY[0x223D42AA0](32, 0xE100000000000000);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = *(v6 + 24);
        v51 = swift_getObjectType();
        (*(v50 + 32))(v6, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v35, v36, v68, v69, v51, v50);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v52 = *(v6 + 24);
        v53 = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828, &qword_21DC09A70);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_21DC08D00;
        *(v54 + 32) = v60;
        *(v54 + 40) = v49;
        *(v54 + 48) = v44;
        v55 = v60;
        v56 = [a2 string];
        v57 = sub_21DBFA16C();
        v59 = v58;

        v67[0] = v54;
        v67[1] = v57;
        v67[2] = v59;
        (*(v52 + 40))(v6, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v67, v53, v52);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_31:
        v42 = v77;
        goto LABEL_32;
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_31;
  }
}

void sub_21D245604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v50 = a5;
  v49 = a4;
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348, 0x277D44648, MEMORY[0x277D85378]);
    sub_21DBFAB5C();
    v9 = v67;
    v10 = v68;
    v11 = v69;
    v12 = v70;
    v13 = v71;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);
    sub_21DBF8E0C();
    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  v51 = v9;
  v52 = v10;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_22:
      sub_21D0CFAF8(v9);
      if (v49)
      {
        v48 = v49;
      }

      else
      {
        v48 = v50;
      }

      sub_21D245B28(v48);
      return;
    }

    while (1)
    {
      v61 = 0x6E756F4372616863;
      v62 = 0xE900000000000074;
      v24 = [v22 name];
      sub_21DBFA16C();

      sub_21DBFA28C();

      v63 = sub_21DBFABEC();
      v64 = 1701869940;
      v65 = 0xE400000000000000;
      sub_21D0D8CF0(0, &qword_27CE5A168, 0x277CCACA8);
      v66 = sub_21DBFB66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E0, &qword_21DC090B8);
      v25 = sub_21DBFC40C();

      v26 = v61;
      v27 = v62;
      v28 = v63;
      sub_21DBF8E0C();
      v29 = v28;
      v30 = sub_21D0CEF70(v26, v27);
      if (v31)
      {
        break;
      }

      *(v25 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
      v32 = (v25[6] + 16 * v30);
      *v32 = v26;
      v32[1] = v27;
      *(v25[7] + 8 * v30) = v29;
      v33 = v25[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      v25[2] = v35;
      v36 = v64;
      v37 = v65;
      v38 = v66;
      sub_21DBF8E0C();
      v39 = v38;
      v40 = sub_21D0CEF70(v36, v37);
      if (v41)
      {
        break;
      }

      *(v25 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v40;
      v42 = (v25[6] + 16 * v40);
      *v42 = v36;
      v42[1] = v37;
      *(v25[7] + 8 * v40) = v39;
      v43 = v25[2];
      v34 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      v25[2] = v44;

      sub_21DBF835C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
      swift_arrayDestroy();
      MEMORY[0x223D40B00](0xD00000000000001DLL, 0x800000021DC48F50, v25, 0, 1);

      ObjectType = swift_getObjectType();
      (*(a3 + 72))(v58, ObjectType);
      v46 = v59;
      v47 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v54 = v22;
      v55 = 0;
      v56 = 0;
      v57 = 1;
      (*(v47 + 80))(&v54, v46, v47);
      sub_21D24B434(v54, v55, v56, v57);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v12 = v20;
      v13 = v21;
      v9 = v51;
      v10 = v52;
      v17 = (v11 + 64) >> 6;
      if ((v51 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v23 = sub_21DBFBDBC();
      if (v23)
      {
        v54 = v23;
        sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
        swift_dynamicCast();
        v22 = v58[0];
        v20 = v12;
        v21 = v13;
        if (v58[0])
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_22;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_21D245B28(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 32);
  swift_unknownObjectRetain();
  v39 = ObjectType;
  v40 = v3;
  v5(v51, ObjectType, v3);
  v6 = v52;
  v7 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v7 + 216))(&aBlock, v6, v7);
  v8 = v48;
  if (!v48)
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v51);
    sub_21D0CF7E0(&aBlock, &qword_27CE5A140, &unk_21DC0E560);
    return;
  }

  v9 = v49;
  __swift_project_boxed_opaque_existential_1(&aBlock, v48);
  v10 = (*(v9 + 1))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  __swift_destroy_boxed_opaque_existential_0(v51);
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

LABEL_9:
    swift_unknownObjectRelease();

    return;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = [a1 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84FA0];
  v17 = (v16 + 16);
  v49 = sub_21D24B444;
  v50 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_21D472974;
  v48 = &block_descriptor_61;
  v18 = _Block_copy(&aBlock);

  [a1 rem:0 enumerateHashtagInRange:v15 options:0x100000 usingBlock:v18];
  _Block_release(v18);
  swift_beginAccess();
  v19 = *v17;
  sub_21DBF8E0C();

  v20 = sub_21D24BA90(v10, v19);

  if ((v20 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348, 0x277D44648, MEMORY[0x277D85378]);
    sub_21DBFAB5C();
    v20 = aBlock;
    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = v49;
  }

  else
  {
    v23 = 0;
    v25 = -1 << *(v20 + 32);
    v21 = v20 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v20 + 56);
  }

  v28 = (v22 + 64) >> 6;
  if (v20 < 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (!v24)
    {
      break;
    }

LABEL_19:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
LABEL_27:
      sub_21D0CFAF8(v20);
      swift_unknownObjectRelease();
      return;
    }

    while (1)
    {
      if (qword_27CE565C8 != -1)
      {
        swift_once();
      }

      v35 = sub_21DBF84BC();
      __swift_project_value_buffer(v35, qword_27CE5A0D8);
      v36 = sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC("User removed hashtag", 20, 2, v36);

      (*(v40 + 72))(v51, v39);
      v37 = v52;
      v38 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      v41 = v33;
      v42 = 0;
      v43 = 0;
      v44 = 1;
      (*(v38 + 88))(&v41, v37, v38);
      sub_21D24B434(v41, v42, v43, v44);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v23 = v31;
      v24 = v32;
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_21:
      v34 = sub_21DBFBDBC();
      if (v34)
      {
        v41 = v34;
        sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
        swift_dynamicCast();
        v33 = v51[0];
        v31 = v23;
        v32 = v24;
        if (v51[0])
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v31 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_27;
    }

    v30 = *(v21 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_21D2460A8(void *a1, void *a2, uint64_t a3)
{
  v67 = a1;
  v65 = sub_21DBF4CAC();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v66 = type metadata accessor for TTRHashtagEditingPresenterCapability();
  v14 = [a2 string];
  v64 = sub_21DBFA16C();
  v16 = v15;

  v17 = [a2 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = MEMORY[0x223D42B30](v18, v20);

  v22 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v64, v16, 0, v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    v66 = v7;
    v24 = v5;
    v25 = 0;
    v26 = v22 + 32;
    v27 = (v24 + 8);
    v28 = MEMORY[0x277D84F90];
    v61 = v22;
    v62 = a2;
    v29 = a2;
    v59 = v22 + 32;
    v60 = v23;
    while (v25 < *(v22 + 16))
    {
      v30 = v26 + 24 * v25;
      v31 = *v30;
      if (*(v30 + 16) == 2 && v31 > 0)
      {
        v33 = [v29 string];
        if (!v33)
        {
          sub_21DBFA16C();
          v34 = sub_21DBFA12C();

          v33 = v34;
        }

        v63 = v31;
        v35 = [v33 rangeOfComposedCharacterSequenceAtIndex_];
        v64 = v33;
        v37 = [v33 substringWithRange_];
        v38 = sub_21DBFA16C();
        v40 = v39;

        v41 = HIBYTE(v40) & 0xF;
        v68 = v38;
        v69 = v40;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        v70 = 0;
        v71 = v41;
        sub_21DBFA30C();
        if (v42)
        {
          while (1)
          {
            sub_21DBF4C1C();
            sub_21DBF4C2C();
            sub_21DBF4BDC();
            if (sub_21DBF4BFC())
            {
              break;
            }

            if (sub_21DBF4BFC())
            {
              sub_21DBF4BFC();
              break;
            }

            v43 = *v27;
            v44 = v65;
            (*v27)(v66, v65);
            v43(v10, v44);
            v43(v13, v44);
            sub_21DBFA30C();
            if (!v45)
            {
              goto LABEL_3;
            }
          }

          v46 = *v27;
          v47 = v65;
          (*v27)(v66, v65);
          v46(v10, v47);
          v46(v13, v47);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_21D211158(0, *(v28 + 2) + 1, 1, v28);
          }

          v23 = v60;
          v22 = v61;
          v49 = *(v28 + 2);
          v48 = *(v28 + 3);
          if (v49 >= v48 >> 1)
          {
            v28 = sub_21D211158((v48 > 1), v49 + 1, 1, v28);
          }

          *(v28 + 2) = v49 + 1;
          v50 = &v28[16 * v49];
          v29 = v62;
          *(v50 + 4) = v63;
          *(v50 + 5) = 0;
        }

        else
        {
LABEL_3:

          v22 = v61;
          v29 = v62;
          v23 = v60;
        }

        v26 = v59;
      }

      if (++v25 == v23)
      {

        v51 = *(v28 + 2);
        if (v51)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
    v51 = *(MEMORY[0x277D84F90] + 16);
    if (!v51)
    {
LABEL_34:

      return;
    }

LABEL_29:
    swift_beginAccess();
    v52 = &v28[16 * v51 + 24];
    while (v51 <= *(v28 + 2))
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      v55 = sub_21DBFA12C();
      [v67 replaceCharactersInRange:v53 withString:{v54, v55}];

      if (swift_unknownObjectWeakLoadStrong())
      {
        v56 = *(a3 + 24);
        ObjectType = swift_getObjectType();
        (*(v56 + 32))(a3, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v53, v54, 32, 0xE100000000000000, ObjectType, v56);
        swift_unknownObjectRelease();
      }

      v52 -= 16;
      if (!--v51)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_21D246618(void *a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v72 = a1;
  v4 = sub_21DBF4CAC();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = sub_21DBF5B4C();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13);
  v59 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF5B9C();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  v67 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5B8C();
  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v17 = [a2 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v69 = a2;
  v21 = [a2 string];
  v22 = sub_21DBFA16C();
  v24 = v23;

  v25 = MEMORY[0x223D42B30](v22, v24);

  v26 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v18, v20, 0, v25);

  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150, &unk_21DC0E6E0);
    v47 = swift_allocBox();
    v48 = v59;
    sub_21DBF5B6C();
    sub_21DBF5B3C();
    (*(v60 + 8))(v48, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158, &unk_21DC289D0);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_21D24B41C;
    *(v49 + 24) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A160, &unk_21DC0E6F0);
    *(swift_allocObject() + 16) = v49;
    v50 = sub_21D1E4118();
    v51 = *(v50 + 16);
    v52 = v64;
    if (v51)
    {
      swift_beginAccess();
      v53 = (v50 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        v56 = sub_21DBFA12C();
        [v72 replaceCharactersInRange:v54 withString:{v55, v56}];

        if (swift_unknownObjectWeakLoadStrong())
        {
          v57 = *(v52 + 24);
          ObjectType = swift_getObjectType();
          (*(v57 + 32))(v52, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v54, v55, 0, 0xE000000000000000, ObjectType, v57);
          swift_unknownObjectRelease();
        }

        v53 += 2;
        --v51;
      }

      while (v51);
    }

    (*(v62 + 8))(v67, v63);
    return;
  }

  v28 = 0;
  v29 = v26 + 32;
  v30 = (v71 + 8);
  v65 = v26;
  v66 = v27;
  v68 = v26 + 32;
  while (v28 < *(v26 + 16))
  {
    v31 = v29 + 24 * v28;
    if (*(v31 + 16) != 2)
    {
      goto LABEL_5;
    }

    v32 = *v31;
    v70 = *(v31 + 8);
    v33 = [v69 string];
    v71 = v32;
    if (v33)
    {
      v34 = v32 - 1;
      if (v32 >= 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21DBFA16C();
      v33 = sub_21DBFA12C();
      v35 = v71;

      v34 = v35 - 1;
      if (v35 >= 1)
      {
LABEL_12:
        v36 = [v33 rangeOfComposedCharacterSequenceAtIndex_];
        v38 = [v33 substringWithRange_];
        v39 = sub_21DBFA16C();
        v41 = v40;

        v42 = HIBYTE(v41) & 0xF;
        v73 = v39;
        v74 = v41;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = v39 & 0xFFFFFFFFFFFFLL;
        }

        v75 = 0;
        v76 = v42;
        sub_21DBFA30C();
        if (v43)
        {
          while (1)
          {
            sub_21DBF4C1C();
            sub_21DBF4C2C();
            sub_21DBF4BDC();
            if ((sub_21DBF4BFC() & 1) == 0)
            {
              break;
            }

            v44 = *v30;
            (*v30)(v6, v4);
            v44(v9, v4);
            v44(v12, v4);
            sub_21DBFA30C();
            if (!v45)
            {
              goto LABEL_17;
            }
          }

          if (sub_21DBF4BFC())
          {
            sub_21DBF4BFC();
          }

          v46 = *v30;
          (*v30)(v6, v4);
          v46(v9, v4);
          v46(v12, v4);

          v26 = v65;
          v27 = v66;
        }

        else
        {
LABEL_17:

          v27 = v66;
          if (v70 + v71 < v71)
          {
            goto LABEL_29;
          }

          sub_21DBF5ADC();
          v26 = v65;
        }

        goto LABEL_4;
      }
    }

LABEL_4:
    v29 = v68;
LABEL_5:
    if (++v28 == v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

double sub_21D246CC4(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
  swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v6 = sub_21DBFBD7C();

    if (!v6)
    {
      return result;
    }
  }

  else if (!*(v5 + 16))
  {
    return result;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v8 = [a1 string];
  v9 = sub_21DBFA16C();
  v11 = v10;

  v12 = MEMORY[0x223D42B30](v9, v11);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v7;
  aBlock[4] = sub_21D24B408;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472974;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v16 rem:0 enumerateHashtagInRange:v12 options:0 usingBlock:v15];
  _Block_release(v15);
  v17 = sub_21DBF8E0C();
  *(v1 + v3) = sub_21D249A40(v17, (v7 + 16));

  return result;
}

uint64_t sub_21D246EE4(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280D177C0;
  v11 = [a2 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  sub_21D0D32E4(a4, v25);
  sub_21D0D32E4(a5, v24);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  sub_21D0D0FD0(v25, (v16 + 4));
  sub_21D0D0FD0(v24, (v16 + 9));
  v16[14] = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D24B380;
  *(v17 + 24) = v16;
  v23[4] = sub_21D24B3B4;
  v23[5] = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21D1A6068;
  v23[3] = &block_descriptor_7;
  v18 = _Block_copy(v23);
  v19 = a2;

  v20 = a1;

  [v19 enumerateAttribute:v10 inRange:0 options:v15 usingBlock:{2, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D247128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v158 = a8;
  v148 = a7;
  v171 = a2;
  v156 = sub_21DBF78CC();
  v13 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v149 = &v146 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v146 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v146 - v21;
  v161 = sub_21DBF4CAC();
  *&v24 = MEMORY[0x28223BE20](v161).n128_u64[0];
  v172 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    return;
  }

  v160 = v23;
  v162 = v13;
  v153 = v22;
  v154 = v19;
  v163 = a9;
  v26 = [a5 string];
  if (!v26)
  {
    sub_21DBFA16C();
    v26 = sub_21DBFA12C();
  }

  v27 = v171;
  v28 = [v26 substringWithRange_];

  v29 = sub_21DBFA16C();
  v31 = v30;

  v32 = swift_allocObject();
  v147 = v32;
  *(v32 + 16) = v27;
  v33 = (v32 + 16);
  swift_beginAccess();
  v34 = HIBYTE(v31) & 0xF;
  v170 = v29;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v34 = v29;
  }

  v165 = (v34 << 16) | 7;
  v169 = (a3 + v27);
  v35 = MEMORY[0x277D84F90];
  v167 = &v175;
  v173 = a6;
  v168 = a5;
  v166 = v31;
  v36 = *v33;
  if ((v31 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  for (i = sub_21DBFA36C(); ; i = sub_21DBFA35C())
  {
    if (__OFADD__(v171, i))
    {
      goto LABEL_64;
    }

    v164 = v35;
    if (v36 >= v171 + i)
    {

      v56 = *(v35 + 2);
      if (!v56)
      {
LABEL_60:

        return;
      }

      v159 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels;
      v57 = (a6 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
      v166 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
      swift_beginAccess();
      v157 = v57;
      swift_beginAccess();
      swift_beginAccess();
      v58 = 0;
      ++v160;
      v152 = (v162 + 8);
      v59 = &v35[16 * v56 + 24];
      v150 = xmmword_21DC08D00;
      v60 = v168;
      v151 = (v162 + 32);
      while (1)
      {
        if (v56 > *(v35 + 2))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v62 = *(v59 - 1);
        v61 = *v59;
        v169 = v59;
        v63 = [v60 string];
        if (!v63)
        {
          sub_21DBFA16C();
          v63 = sub_21DBFA12C();
        }

        v171 = v56;
        v167 = v61;
        v64 = [v63 substringWithRange_];

        v65 = sub_21DBFA16C();
        v67 = v66;

        v68 = v172;
        v69 = sub_21DBF4C1C();
        MEMORY[0x28223BE20](v69);
        *(&v146 - 2) = v68;
        v70 = sub_21D3F7414(sub_21D24B3BC, (&v146 - 4), v65, v67);
        v170 = v58;
        if (v71)
        {

          v72 = 0;
          v73 = 0xE000000000000000;
        }

        else
        {
          v74 = sub_21D3F7BA8(v70, v65, v67);
          v76 = v75;
          v78 = v77;
          v80 = v79;

          v72 = MEMORY[0x223D429B0](v74, v76, v78, v80);
          v73 = v81;
        }

        (*v160)(v172, v161);
        v82 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v82 = v72 & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {

          v58 = v170;
          v60 = v168;
          goto LABEL_25;
        }

        v83 = *(a6 + v166);
        if ((v83 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v84 = sub_21DBFBD7C();

          if (v84)
          {
            goto LABEL_41;
          }
        }

        else if (*(v83 + 16))
        {
          goto LABEL_41;
        }

        v85 = *(a6 + v159);
        if (v85 && *(v85 + 16))
        {
LABEL_41:
          v165 = v62;
          v86 = v153;
          sub_21DBF78BC();
          v87 = *(a6 + v159);
          v88 = v156;
          v89 = v154;
          v90 = v152;
          v91 = v151;
          if (v87)
          {
            sub_21DBF8E0C();
            sub_21DBF784C();
            v92 = v149;
            sub_21DBF782C();
            v93 = *v90;
            (*v90)(v89, v88);
            v93(v86, v88);
            (*v91)(v86, v92, v88);
          }

          aBlock.n128_u64[0] = *(v173 + v166);
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148, &qword_21DC21710);
          sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148, &qword_21DC21710, MEMORY[0x277D83B68]);
          v94 = v155;
          sub_21DBF789C();
          sub_21DBF782C();
          v95 = *v90;
          (*v90)(v86, v88);
          (*v91)(v86, v89, v88);
          v96 = sub_21DBF781C();
          v98 = v97;
          v95(v94, v88);
          v95(v86, v88);
          if (v98)
          {

            v72 = v96;
            v73 = v98;
          }

          a6 = v173;
          v62 = v165;
        }

        v99 = v158[3];
        v100 = v158[4];
        __swift_project_boxed_opaque_existential_1(v158, v99);
        v101 = (*(v100 + 8))(v99, v100);
        sub_21D24857C(v72, v73, v101);
        v103 = v102;

        if (!v103)
        {
          v104 = *(a6 + v166);
          sub_21DBF8E0C();
          sub_21D24857C(v72, v73, v104);
          v103 = v105;

          if (!v103)
          {
            v103 = sub_21D248408(v148, v72, v73);
          }
        }

        v106 = sub_21DBFA23C();
        v108 = v107;
        v109 = [v103 name];
        v110 = sub_21DBFA16C();
        v112 = v111;

        aBlock.n128_u64[0] = v106;
        aBlock.n128_u64[1] = v108;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v110, v112);

        v113 = aBlock.n128_u64[1];
        v114 = aBlock.n128_u64[0];
        v115 = MEMORY[0x223D42B30](aBlock.n128_u64[0], aBlock.n128_u64[1]);
        v116 = [v168 string];
        v117 = sub_21DBFA16C();
        v119 = v118;

        LOBYTE(v116) = sub_21D24AD90(v62, v117, v119);

        if (v116)
        {
          v120 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_63;
          }

          aBlock.n128_u64[0] = 32;
          aBlock.n128_u64[1] = 0xE100000000000000;
          MEMORY[0x223D42AA0](v114, v113);

          v113 = aBlock.n128_u64[1];
          v114 = aBlock.n128_u64[0];
        }

        else
        {
          v120 = v62;
        }

        v121 = sub_21DBFA12C();
        v122 = v163;
        v123 = v167;
        [v163 replaceCharactersInRange:v62 withString:{v167, v121}];

        v124 = [objc_opt_self() attributeFromHashtag_];
        v162 = v120;
        v165 = v115;
        [v122 rem:v124 addHashtag:v120 range:v115];

        v125 = v157;
        v127 = *v157;
        v126 = v157[1];
        v128 = v62;
        v130 = v157[2];
        v129 = v157[3];
        *v157 = 0u;
        *(v125 + 1) = 0u;
        sub_21D24A7C4(v127, v126, v130, v129);
        sub_21D24A814(v127, v126);
        aBlock.n128_u64[0] = v127;
        aBlock.n128_u64[1] = v126;
        v175 = v130;
        v176 = v129;
        v131 = v173;
        sub_21D2429B4(&aBlock);
        v132 = v127;
        a6 = v131;
        sub_21D24A814(v132, v126);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v133 = *(v131 + 24);
          ObjectType = swift_getObjectType();
          (*(v133 + 32))(v131, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v128, v123, v114, v113, ObjectType, v133);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v136 = v165;
        if (Strong)
        {
          v137 = *(v131 + 24);
          v138 = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828, &qword_21DC09A70);
          v139 = swift_allocObject();
          *(v139 + 16) = v150;
          v140 = v162;
          *(v139 + 32) = v103;
          *(v139 + 40) = v140;
          *(v139 + 48) = v136;
          v141 = v103;
          v142 = [v163 string];
          v143 = sub_21DBFA16C();
          v145 = v144;

          a6 = v173;
          aBlock.n128_u64[0] = v139;
          aBlock.n128_u64[1] = v143;
          v175 = v145;
          (*(v137 + 40))(v173, &protocol witness table for TTRReminderCellHashtagEditingPresenter, &aBlock, v138, v137);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v60 = v168;
        v58 = v170;
LABEL_25:
        v59 = v169 - 2;
        v56 = v171 - 1;
        v35 = v164;
        if (v171 == 1)
        {
          goto LABEL_60;
        }
      }
    }

    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = [v168 string];
    if (!v40)
    {
      goto LABEL_68;
    }

    v41 = *v33;
    v42 = v169 - *v33;
    if (__OFSUB__(v169, *v33))
    {
      goto LABEL_65;
    }

    v43 = v40;
    v44 = v33;
    v45 = swift_allocObject();
    v45[2] = v38;
    v45[3] = v39;
    v45[4] = v147;
    v177 = sub_21D24B3DC;
    v178 = v45;
    aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
    aBlock.n128_u64[1] = 1107296256;
    v175 = sub_21D8682A8;
    v176 = &block_descriptor_26;
    v46 = _Block_copy(&aBlock);

    [v43 enumerateSubstringsInRange:v41 options:v42 usingBlock:{2, v46}];
    _Block_release(v46);
    swift_beginAccess();
    v47 = *(v39 + 16);
    v48 = v41 + v47;
    if (__OFADD__(v41, v47))
    {
      break;
    }

    v49 = *v44;
    v50 = v48 - *v44;
    if (__OFSUB__(v48, *v44))
    {
      goto LABEL_67;
    }

    v51 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_21D211158(0, *(v51 + 2) + 1, 1, v51);
    }

    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    v54 = v51;
    if (v53 >= v52 >> 1)
    {
      v54 = sub_21D211158((v52 > 1), v53 + 1, 1, v51);
    }

    *(v54 + 2) = v53 + 1;
    v35 = v54;
    v55 = &v54[16 * v53];
    *(v55 + 4) = v49;
    *(v55 + 5) = v50;
    v33 = v44;
    *v44 = v48;

    a6 = v173;
    v36 = *v44;
    if ((v166 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    ;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}